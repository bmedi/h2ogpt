

position_ids = attention_mask.long().cumsum(-1) - 1 RuntimeError: MPS does not support cumsum op with int64 input

change to fix the error above
position_ids = attention_mask.float().cumsum(-1) - 1


change back to default here
position_ids = position_ids.long()
