Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAuuQ-00014t-Uq
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 06:24:59 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile12) with ESMTP id
 t0D6OaLU018047
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 15:24:36 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili12) with ESMTP id t0D6Oao19742
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 15:24:36 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue, 13 Jan 2015 15:24:33 +0900
Message-Id: <1421130273-6507-1-git-send-email-yamada.m@jp.panasonic.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] commands: fix a warning in help.c
To: barebox@lists.infradead.org

Rml4IHRoZSBmb2xsb3dpbmcgd2FybmluZzoKCmNvbW1hbmRzL2hlbHAuYzogSW4gZnVuY3Rpb24g
4oCYbGlzdF9ncm91cOKAmToKY29tbWFuZHMvaGVscC5jOjU3OjQ6IHdhcm5pbmc6IGZvcm1hdCBu
b3QgYSBzdHJpbmcgbGl0ZXJhbCBhbmQKbm8gZm9ybWF0IGFyZ3VtZW50cyBbLVdmb3JtYXQtc2Vj
dXJpdHldCiAgICBwcmludGYoY21kdHAtPm5hbWUpOwogICAgXgoKU2lnbmVkLW9mZi1ieTogTWFz
YWhpcm8gWWFtYWRhIDx5YW1hZGEubUBqcC5wYW5hc29uaWMuY29tPgotLS0KCiBjb21tYW5kcy9o
ZWxwLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9jb21tYW5kcy9oZWxwLmMgYi9jb21tYW5kcy9oZWxwLmMKaW5kZXgg
ODk4NTMzNS4uNmU2MWJkZSAxMDA2NDQKLS0tIGEvY29tbWFuZHMvaGVscC5jCisrKyBiL2NvbW1h
bmRzL2hlbHAuYwpAQCAtNTQsNyArNTQsNyBAQCBzdGF0aWMgdm9pZCBsaXN0X2dyb3VwKGludCB2
ZXJib3NlLCBjb25zdCBjaGFyICpncnBuYW1lLCB1aW50MzJfdCBncm91cCkKIAkJCQlwcmludGYo
IiwgIik7CiAJCQkJcG9zICs9IDI7CiAJCQl9Ci0JCQlwcmludGYoY21kdHAtPm5hbWUpOworCQkJ
cHV0cyhjbWR0cC0+bmFtZSk7CiAJCQlwb3MgKz0gbGVuOwogCQl9CiAJfQotLSAKMS45LjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1h
aWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
