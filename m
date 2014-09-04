Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPQst-0006d9-4f
 for barebox@lists.infradead.org; Thu, 04 Sep 2014 06:51:08 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 7F7EAA006C1
 for <barebox@lists.infradead.org>; Thu,  4 Sep 2014 08:50:48 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Thu, 4 Sep 2014 08:50:36 +0200
Message-Id: <1409813440-9512-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH 1/5] ARM: phyCORE-AM335x: Updated SPI NOR dts entries
To: barebox@lists.infradead.org

VXBkYXRlZCB0aGUgU1BJIE5PUiBmbGFzaCBlbnRyaWVzLiBOT1IgZmxhc2ggZ290CmRldGVjdGVk
IGJ1dCBkaWQgbm90IHdvcmsuCgotIFVwZGF0ZWQgbXV4aW5nCi0gRml4ZWQgZnJlcXVlbmN5Ci0g
Rml4ZWQgQ1MKLSBSZW1vdmVkIGZpcnN0IGNvbXBhdGlibGUgZW50cnkgKHRoZSBmbGFzaGVzIHVz
ZWQgaXMgY2hhbmdpbmcgZnJlcXVlbnRseSkKClNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXog
PHQuZ2FtZXpAcGh5dGVjLmRlPgotLS0KIGFyY2gvYXJtL2R0cy9hbTMzNXgtcGh5dGVjLXBoeWNv
cmUuZHRzIHwgICAxNCArKysrKysrLS0tLS0tLQogMSBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL2FtMzM1eC1w
aHl0ZWMtcGh5Y29yZS5kdHMgYi9hcmNoL2FybS9kdHMvYW0zMzV4LXBoeXRlYy1waHljb3JlLmR0
cwppbmRleCA1Njc4MTM4Li4xNmZlYmQzIDEwMDY0NAotLS0gYS9hcmNoL2FybS9kdHMvYW0zMzV4
LXBoeXRlYy1waHljb3JlLmR0cworKysgYi9hcmNoL2FybS9kdHMvYW0zMzV4LXBoeXRlYy1waHlj
b3JlLmR0cwpAQCAtNTAsMTAgKzUwLDEwIEBACiAKIAlzcGkwX3BpbnM6IHBpbm11eF9zcGkwX3Bp
bnMgewogCQlwaW5jdHJsLXNpbmdsZSxwaW5zID0gPAotCQkJMHgxNTAgKElOUFVUX0VOIHwgTVVY
X01PREUwKQotCQkJMHgxNTQgKFBVTExfVVAgfCBJTlBVVF9FTiB8IE1VWF9NT0RFMCkKLQkJCTB4
MTU4IChJTlBVVF9FTiB8IE1VWF9NT0RFMCkKLQkJCTB4MTVjIChQVUxMX1VQIHwgSU5QVVRfRU4g
fCBNVVhfTU9ERTApCisJCQkweDE1MCAoUElOX0lOUFVUX1BVTExET1dOIHwgTVVYX01PREUwKQkv
KiBzcGkwX2Nsay5zcGkwX2NsayAqLworCQkJMHgxNTQgKFBJTl9JTlBVVF9QVUxMRE9XTiB8IE1V
WF9NT0RFMCkJLyogc3BpMF9kMC5zcGkwX2QwICovCisJCQkweDE1OCAoUElOX0lOUFVUX1BVTExV
UCB8IE1VWF9NT0RFMCkJLyogc3BpMF9kMS5zcGkwX2QxICovCisJCQkweDE1YyAoUElOX0lOUFVU
X1BVTExVUCB8IE1VWF9NT0RFMCkJLyogc3BpMF9jczAuc3BpMF9jczAgKi8KIAkJPjsKIAl9Owog
CkBAIC0xNzIsOSArMTcyLDkgQEAKIAlzdGF0dXMgPSAib2theSI7CiAKIAlmbGFzaDogbTI1cDgw
IHsKLQkJY29tcGF0aWJsZSA9ICJzc3Qsc3N0MjV2ZjAzMmIiLCAibTI1cDgwIjsKLQkJc3BpLW1h
eC1mcmVxdWVuY3kgPSA8MTUwMDAwMDA+OwotCQlyZWcgPSA8MT47CisJCWNvbXBhdGlibGUgPSAi
bTI1cDgwIjsKKwkJc3BpLW1heC1mcmVxdWVuY3kgPSA8NDgwMDAwMDA+OworCQlyZWcgPSA8MD47
CiAJCSNhZGRyZXNzLWNlbGxzID0gPDE+OwogCQkjc2l6ZS1jZWxscyA9IDwxPjsKIAotLSAKMS43
LjAuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJh
cmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
