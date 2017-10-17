Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e4Rjq-0000O5-Nz
 for barebox@lists.infradead.org; Tue, 17 Oct 2017 13:17:00 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Tue, 17 Oct 2017 15:16:25 +0200
Message-Id: <20171017131625.23837-3-u.oelmann@pengutronix.de>
In-Reply-To: <20171017131625.23837-1-u.oelmann@pengutronix.de>
References: <20171017131625.23837-1-u.oelmann@pengutronix.de>
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
Subject: [PATCH 2/2] commands: spi: do not restrict spi's data to be
 hex-formatted
To: Barebox List <barebox@lists.infradead.org>

VGhlIHByaWNlIHRvIHBheSBpcyBuZWVkaW5nIHRoZSB1c3VhbCBwcmVmaXggIjB4IiBmb3IgZWFj
aCBoZXgtZm9ybWF0dGVkIG51bWJlci4KClNpZ25lZC1vZmYtYnk6IFVscmljaCDDlmxtYW5uIDx1
Lm9lbG1hbm5AcGVuZ3V0cm9uaXguZGU+Ci0tLQogY29tbWFuZHMvc3BpLmMgfCAyICstCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9j
b21tYW5kcy9zcGkuYyBiL2NvbW1hbmRzL3NwaS5jCmluZGV4IDY2MDNiMzRiNjczYy4uN2JmMTkz
YjBiYmJiIDEwMDY0NAotLS0gYS9jb21tYW5kcy9zcGkuYworKysgYi9jb21tYW5kcy9zcGkuYwpA
QCAtODQsNyArODQsNyBAQCBzdGF0aWMgaW50IGRvX3NwaShpbnQgYXJnYywgY2hhciAqYXJndltd
KQogCXJ4X2J1ZiA9IHhtYWxsb2MocmVhZCk7CiAKIAlmb3IgKGkgPSAwOyBpIDwgY291bnQ7IGkr
KykKLQkJdHhfYnVmW2ldID0gKHU4KSBzaW1wbGVfc3RydG9sKGFyZ3Zbb3B0aW5kICsgaV0sIE5V
TEwsIDE2KTsKKwkJdHhfYnVmW2ldID0gKHU4KSBzaW1wbGVfc3RydG9sKGFyZ3Zbb3B0aW5kICsg
aV0sIE5VTEwsIDApOwogCiAJcmV0ID0gc3BpX3dyaXRlX3RoZW5fcmVhZCgmc3BpLCB0eF9idWYs
IGNvdW50LCByeF9idWYsIHJlYWQpOwogCWlmIChyZXQpCi0tIAoyLjExLjAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlz
dApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
