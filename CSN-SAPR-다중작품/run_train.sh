ROOT_DIR=""
BERT_PRETRAINED_DIR="klue/roberta-small"
CHECKPOINT_DIR=""
DATA_PREFIX="./data"

# source ${ROOT_DIR}/.bashrc

CUDA_VISIBLE_DEVICES=0 python train.py \
--model_name CSN \
--pooling_type max_pooling \
--dropout 0.5 \
--optimizer adam \
--margin 1.0 \
--lr 2e-5 \
--num_epochs 1 \
--batch_size 16 \
--patience 10 \
--bert_pretrained_dir ${BERT_PRETRAINED_DIR} \
--train_file \
${DATA_PREFIX}/train/train_unsplit_symbol3.txt \
--dev_file \
${DATA_PREFIX}/dev/dev_unsplit_symbol3.txt \
--test_file \
${DATA_PREFIX}/test/test_unsplit_symbol3.txt \
--name_list_path \
${DATA_PREFIX}/name_list_symbol.txt \
--namelist_file \
${DATA_PREFIX}/name_list_per_novel1.json \
--length_limit 510 \
# --checkpoint_dir ${CHECKPOINT_DIR}