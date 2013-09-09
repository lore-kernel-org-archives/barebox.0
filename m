Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJ7dq-0000M4-TQ
 for barebox@lists.infradead.org; Mon, 09 Sep 2013 20:01:01 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 6CE6BA620F
 for <barebox@lists.infradead.org>; Mon,  9 Sep 2013 22:00:29 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Mon,  9 Sep 2013 22:00:25 +0200
Message-Id: <1378756826-18061-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 1/2] mxs_spi: fix compile error
To: barebox@lists.infradead.org

dGhpcyBmaXggOgpkcml2ZXJzL3NwaS9teHNfc3BpLmM6Mjk6MjI6IGZhdGFsIGVycm9yOiBtYWNo
L214cy5oOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5CmFuZApkcml2ZXJzL3NwaS9teHNfc3Bp
LmM6IEluIGZ1bmN0aW9uICdteHNfc3BpX3NldHVwJzoKZHJpdmVycy9zcGkvbXhzX3NwaS5jOjEw
MjoyOiBlcnJvcjogdG9vIGZldyBhcmd1bWVudHMgdG8gZnVuY3Rpb24gJ3N0bXBfcmVzZXRfYmxv
Y2snCmluY2x1ZGUvc3RtcC1kZXZpY2UuaDoyMToxMjogbm90ZTogZGVjbGFyZWQgaGVyZQoKb25s
eSBjb21waWxlIHRlc3RlZCBBVE0KClNpZ25lZC1vZmYtYnk6IEVyaWMgQsOpbmFyZCA8ZXJpY0Bl
dWtyZWEuY29tPgotLS0KIGRyaXZlcnMvc3BpL214c19zcGkuYyB8IDMgKy0tCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9zcGkvbXhzX3NwaS5jIGIvZHJpdmVycy9zcGkvbXhzX3NwaS5jCmluZGV4IDRlNTM5YmYuLmE4
MDM2NTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3BpL214c19zcGkuYworKysgYi9kcml2ZXJzL3Nw
aS9teHNfc3BpLmMKQEAgLTI2LDcgKzI2LDYgQEAKICNpbmNsdWRlIDxhc20vbW11Lmg+CiAjaW5j
bHVkZSA8bWFjaC9nZW5lcmljLmg+CiAjaW5jbHVkZSA8bWFjaC9pbXgtcmVncy5oPgotI2luY2x1
ZGUgPG1hY2gvbXhzLmg+CiAjaW5jbHVkZSA8bWFjaC9jbG9jay5oPgogI2luY2x1ZGUgPG1hY2gv
c3NwLmg+CiAKQEAgLTEwMCw3ICs5OSw3IEBAIHN0YXRpYyBpbnQgbXhzX3NwaV9zZXR1cChzdHJ1
Y3Qgc3BpX2RldmljZSAqc3BpKQogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKLQlzdG1wX3Jlc2V0
X2Jsb2NrKG14cy0+cmVncyArIEhXX1NTUF9DVFJMMCk7CisJc3RtcF9yZXNldF9ibG9jayhteHMt
PnJlZ3MgKyBIV19TU1BfQ1RSTDAsIDApOwogCiAJdmFsIHw9IFNTUF9DVFJMMF9TU1BfQVNTRVJU
X09VVChzcGktPmNoaXBfc2VsZWN0KTsKIAl2YWwgfD0gU1NQX0NUUkwwX0JVU19XSURUSCgwKTsK
LS0gCjEuOC4zLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
