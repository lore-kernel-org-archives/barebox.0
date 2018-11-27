Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx01.eckelmann.de ([217.19.183.92])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRfu9-00088m-FQ
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 16:08:15 +0000
Received: from ex-srv2.eckelmann.group ([172.18.35.5]:20281
 helo=smtp.eckelmann.de)
 by mx01.eckelmann.de with esmtps (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.82_1-5b7a7c0-XX) (envelope-from <T.Scherer@eckelmann.de>)
 id 1gRfts-0006Wq-0a
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 17:07:48 +0100
From: "Thorsten K. Scherer" <t.scherer@eckelmann.de>
Date: Tue, 27 Nov 2018 17:07:30 +0100
Message-ID: <20181127160730.20147-1-t.scherer@eckelmann.de>
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
Subject: [PATCH] imd: fix missing error message
To: barebox@lists.infradead.org
Cc: "Thorsten K. Scherer" <t.scherer@eckelmann.de>

aW1kIC10IGp1c3QgcmV0dXJucyAnaW1kOiBlcnJvciA2MScsIGlmIHRoZXJlIGlzIG5vdCB0YWcg
Zm9yIDx0eXBlPgoKcmVmZXJlbmNlOiBjb21tb24vaW1kLmM6MzU3IGlmICghaW1kKSB7IC4uLgpT
aWduZWQtb2ZmLWJ5OiBUaG9yc3RlbiBLLiBTY2hlcmVyIDx0LnNjaGVyZXJAZWNrZWxtYW5uLmRl
PgotLS0KIGNvbW1vbi9taXNjLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9jb21tb24vbWlzYy5jIGIvY29tbW9uL21p
c2MuYwppbmRleCA2NjVmNzJiZTcuLjY2YWJhNTM0ZiAxMDA2NDQKLS0tIGEvY29tbW9uL21pc2Mu
YworKysgYi9jb21tb24vbWlzYy5jCkBAIC02NywxMSArNjcsMTEgQEAgY29uc3QgY2hhciAqc3Ry
ZXJyb3IoaW50IGVycm51bSkKIAljYXNlCUVUSU1FRE9VVAk6IHN0ciA9ICJDb25uZWN0aW9uIHRp
bWVkIG91dCI7IGJyZWFrOwogCWNhc2UJRVBST0JFX0RFRkVSCTogc3RyID0gIlJlcXVlc3RlZCBw
cm9iZSBkZWZlcnJhbCI7IGJyZWFrOwogCWNhc2UJRUxPT1AJCTogc3RyID0gIlRvbyBtYW55IHN5
bWJvbGljIGxpbmtzIGVuY291bnRlcmVkIjsgYnJlYWs7CisJY2FzZQlFTk9EQVRBCQk6IHN0ciA9
ICJObyBkYXRhIGF2YWlsYWJsZSI7IGJyZWFrOwogI2lmIDAgLyogVGhlc2UgYXJlIHByb2JhYmx5
IG5vdCBuZWVkZWQgKi8KIAljYXNlCUVOT1RCTEsJCTogc3RyID0gIkJsb2NrIGRldmljZSByZXF1
aXJlZCI7IGJyZWFrOwogCWNhc2UJRUZCSUcJCTogc3RyID0gIkZpbGUgdG9vIGxhcmdlIjsgYnJl
YWs7CiAJY2FzZQlFQkFEU0xUCQk6IHN0ciA9ICJJbnZhbGlkIHNsb3QiOyBicmVhazsKLQljYXNl
CUVOT0RBVEEJCTogc3RyID0gIk5vIGRhdGEgYXZhaWxhYmxlIjsgYnJlYWs7CiAJY2FzZQlFVElN
RQkJOiBzdHIgPSAiVGltZXIgZXhwaXJlZCI7IGJyZWFrOwogCWNhc2UJRU5PTkVUCQk6IHN0ciA9
ICJNYWNoaW5lIGlzIG5vdCBvbiB0aGUgbmV0d29yayI7IGJyZWFrOwogCWNhc2UJRUFEVgkJOiBz
dHIgPSAiQWR2ZXJ0aXNlIGVycm9yIjsgYnJlYWs7Ci0tIAoyLjE5LjEKCgotLSAKRWNrZWxtYW5u
IEFHClZvcnN0YW5kOiBEaXBsLi1JbmcuIFBldGVyIEZyYW5rZW5iYWNoIChTcHJlY2hlcikgRGlw
bC4tV2kuLUluZy4gUGhpbGlwcCBFY2tlbG1hbm4KRHIuLUluZy4gTWFyY28gTcO8bmNoaG9mIERy
Li1JbmcuIEZyYW5rIFVobGVtYW5uClZvcnNpdHplbmRlciBkZXMgQXVmc2ljaHRzcmF0czogSHVi
ZXJ0dXMgRy4gS3Jvc3NhClN0di4gVm9yc2l0emVuZGVyIGRlcyBBdWZzaWNodHNyYXRzOiBEci4t
SW5nLiBHZXJkIEVja2VsbWFubgpTaXR6IGRlciBHZXNlbGxzY2hhZnQ6IEJlcmxpbmVyIFN0ci4g
MTYxLCA2NTIwNSBXaWVzYmFkZW4sIEFtdHNnZXJpY2h0IFdpZXNiYWRlbiBIUkIgMTI2MzYKaHR0
cDovL3d3dy5lY2tlbG1hbm4uZGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
