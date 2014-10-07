Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XbQKn-0005HJ-S2
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 08:41:30 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 2EA8DA004F4
 for <barebox@lists.infradead.org>; Tue,  7 Oct 2014 10:41:16 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Tue, 7 Oct 2014 10:40:37 +0200
Message-Id: <1412671237-46551-5-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1412671237-46551-1-git-send-email-t.gamez@phytec.de>
References: <1412671237-46551-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH 4/4] pfla03: add to am335x_defconfig
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Stefan=20M=C3=BCller-Klieser?= <s.mueller-klieser@phytec.de>

RnJvbTogU3RlZmFuIE3DvGxsZXItS2xpZXNlciA8cy5tdWVsbGVyLWtsaWVzZXJAcGh5dGVjLmRl
PgoKU2lnbmVkLW9mZi1ieTogU3RlZmFuIE3DvGxsZXItS2xpZXNlciA8cy5tdWVsbGVyLWtsaWVz
ZXJAcGh5dGVjLmRlPgotLS0KIGFyY2gvYXJtL2NvbmZpZ3MvYW0zMzV4X2RlZmNvbmZpZyAgICAg
fCAxICsKIGFyY2gvYXJtL2NvbmZpZ3MvYW0zMzV4X21sb19kZWZjb25maWcgfCAxICsKIDIgZmls
ZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vY29uZmln
cy9hbTMzNXhfZGVmY29uZmlnIGIvYXJjaC9hcm0vY29uZmlncy9hbTMzNXhfZGVmY29uZmlnCmlu
ZGV4IDZlZjljODMuLjBmOTI1NjQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2NvbmZpZ3MvYW0zMzV4
X2RlZmNvbmZpZworKysgYi9hcmNoL2FybS9jb25maWdzL2FtMzM1eF9kZWZjb25maWcKQEAgLTUs
NiArNSw3IEBAIENPTkZJR19PTUFQX01VTFRJX0JPQVJEUz15CiBDT05GSUdfTUFDSF9BRklfR0Y9
eQogQ09ORklHX01BQ0hfQkVBR0xFQk9ORT15CiBDT05GSUdfTUFDSF9QQ00wNTE9eQorQ09ORklH
X01BQ0hfUEZMQTAzPXkKIENPTkZJR19USFVNQjJfQkFSRUJPWD15CiBDT05GSUdfQVJNX0JPQVJE
X0FQUEVORF9BVEFHPXkKIENPTkZJR19BUk1fT1BUSU1aRURfU1RSSU5HX0ZVTkNUSU9OUz15CmRp
ZmYgLS1naXQgYS9hcmNoL2FybS9jb25maWdzL2FtMzM1eF9tbG9fZGVmY29uZmlnIGIvYXJjaC9h
cm0vY29uZmlncy9hbTMzNXhfbWxvX2RlZmNvbmZpZwppbmRleCBkZWU4YzViLi5kNjkxNTcwIDEw
MDY0NAotLS0gYS9hcmNoL2FybS9jb25maWdzL2FtMzM1eF9tbG9fZGVmY29uZmlnCisrKyBiL2Fy
Y2gvYXJtL2NvbmZpZ3MvYW0zMzV4X21sb19kZWZjb25maWcKQEAgLTQsNiArNCw3IEBAIENPTkZJ
R19PTUFQX01VTFRJX0JPQVJEUz15CiBDT05GSUdfTUFDSF9BRklfR0Y9eQogQ09ORklHX01BQ0hf
QkVBR0xFQk9ORT15CiBDT05GSUdfTUFDSF9QQ00wNTE9eQorQ09ORklHX01BQ0hfUEZMQTAzPXkK
IENPTkZJR19USFVNQjJfQkFSRUJPWD15CiAjIENPTkZJR19DTURfQVJNX0NQVUlORk8gaXMgbm90
IHNldAogIyBDT05GSUdfTUVNSU5GTyBpcyBub3Qgc2V0Ci0tIAoxLjkuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0
CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
