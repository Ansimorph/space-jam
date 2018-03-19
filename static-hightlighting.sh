#!/bin/bash
# takes prism.js output and creates nord styled netscape 2 compatible code
cat $1 \
| sed s@'<span class="token tag">'@'<font color="#e06c75">'@g \
| sed s@'<span class="token punctuation">'@'<font color="#98c379">'@g \
| sed s@'<span class="token comment">'@'<font color="#98c379">'@g \
| sed s@'<span class="token attr-name">'@'<font color="#d19a66">'@g \
| sed s@'<span class="token attr-value">'@'<font color="#a3be8c">'@g \
| sed s@'<span class="token entity" title="'.*'">'@'<font color="#98c379">'@g \
| sed s@'<span class="token script language-javascript">'@'<font color="#e06c75">'@g \
| sed s@'</span>'@'</font>'@g
