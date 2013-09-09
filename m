Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJ7dq-0000MI-SU
 for barebox@lists.infradead.org; Mon, 09 Sep 2013 20:01:00 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 4AC6DA6312
 for <barebox@lists.infradead.org>; Mon,  9 Sep 2013 22:00:33 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Mon,  9 Sep 2013 22:00:26 +0200
Message-Id: <1378756826-18061-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1378756826-18061-1-git-send-email-eric@eukrea.com>
References: <1378756826-18061-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 2/2] serial_auart: fix compile error
To: barebox@lists.infradead.org

dGhpcyBmaXggOgpkcml2ZXJzL3NlcmlhbC9zZXJpYWxfYXVhcnQuYzo0OToyMjogZmF0YWwgZXJy
b3I6IG1hY2gvbXhzLmg6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKYW5kCmRyaXZlcnMvc2Vy
aWFsL3NlcmlhbF9hdWFydC5jOiBJbiBmdW5jdGlvbiAnYXVhcnRfc2VyaWFsX2luaXRfcG9ydCc6
CmRyaXZlcnMvc2VyaWFsL3NlcmlhbF9hdWFydC5jOjE3NDoyOiB3YXJuaW5nOiBpbXBsaWNpdCBk
ZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiAnc3RtcF9yZXNldF9ibG9jaycgWy1XaW1wbGljaXQtZnVu
Y3Rpb24tZGVjbGFyYXRpb25dCgpvbmx5IGNvbXBpbGUgdGVzdGVkIEFUTQoKU2lnbmVkLW9mZi1i
eTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogZHJpdmVycy9zZXJpYWwvc2Vy
aWFsX2F1YXJ0LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3NlcmlhbC9zZXJpYWxfYXVhcnQuYyBiL2Ry
aXZlcnMvc2VyaWFsL3NlcmlhbF9hdWFydC5jCmluZGV4IDY1MThkYmIuLjBlMWFiODMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvc2VyaWFsL3NlcmlhbF9hdWFydC5jCisrKyBiL2RyaXZlcnMvc2VyaWFs
L3NlcmlhbF9hdWFydC5jCkBAIC00MiwxMSArNDIsMTEgQEAKICNpbmNsdWRlIDxpby5oPgogI2lu
Y2x1ZGUgPG1hbGxvYy5oPgogI2luY2x1ZGUgPG5vdGlmaWVyLmg+CisjaW5jbHVkZSA8c3RtcC1k
ZXZpY2UuaD4KICNpbmNsdWRlIDxsaW51eC9jbGsuaD4KICNpbmNsdWRlIDxsaW51eC9lcnIuaD4K
IAogI2luY2x1ZGUgPG1hY2gvY2xvY2suaD4KLSNpbmNsdWRlIDxtYWNoL214cy5oPgogI2luY2x1
ZGUgPG1hY2gvaW14LXJlZ3MuaD4KIAogI2RlZmluZSBIV19VQVJUQVBQX0NUUkwwCQkoMHgwMDAw
MDAwMCkKLS0gCjEuOC4zLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
