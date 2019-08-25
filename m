Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1uut-00006y-J2
 for barebox@lists.infradead.org; Sun, 25 Aug 2019 15:58:56 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Sun, 25 Aug 2019 17:58:37 +0200
Message-Id: <20190825155844.18455-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v2 0/7] clean up and complement reset source handling
To: barebox@lists.infradead.org

SGVsbG8sCgpjb21wYXJlZCB0byB0aGUgc2VudCBlYXJsaWVyIChpbXBsaWNpdCkgdjEgdGhlcmUg
aXMgYSBuZXcgcGF0Y2ggdG8gZml4CnRoZSBvcmRlcmluZyBvZiBleHBvcnRlZCBmdW5jdGlvbnMg
YW5kIHBhdGNoZWQgNCB0byA3IGFkZCB0aGUgY29uY2VwdCBvZgphIHJlc2V0X3NvdXJjZSBkZXZp
Y2UuIEFsc28gdjEgaGFkIHNvbWUgd2hpdGVzcGFjZSBwcm9ibGVtcyB0aGF0IGFyZQpmaXhlZCBo
ZXJlLgoKQmVzdCByZWdhcmRzClV3ZQoKVXdlIEtsZWluZS1Lw7ZuaWcgKDcpOgogIHJlc2V0X3Nv
dXJjZTogdXNlIGluc3RhbmNlID0gLTEgYXMgZGVmYXVsdAogIHJlc2V0X3NvdXJjZTogZml4IG9y
ZGVyaW5nIG9mIGV4cG9ydGVkIGZ1bmN0aW9ucwogIHJlc2V0X3NvdXJjZTogZHJvcCByZXNldF9z
b3VyY2Vfc2V0X2luc3RhbmNlKCkKICByZXNldF9zb3VyY2U6IGltcGxlbWVudCBoZWxwZXIgdG8g
c2V0IGEgZGV2aWNlIGFzIHJlc2V0IHNvdXJjZQogIG1mZDogZGE5MDUzOiB1c2UgbmV3IHJlc2V0
X3NvdXJjZV9zZXRfZGV2aWNlKCkKICBtZmQ6IGRhOTA2MzogdXNlIG5ldyByZXNldF9zb3VyY2Vf
c2V0X2RldmljZSgpCiAgb2Z0cmVlOiBleHBvc2UgcmVzZXRfc291cmNlIGRldmljZSBpbiBkZXZp
Y2UgdHJlZQoKIGFyY2gvYXJtL21hY2gtaW14L2lteC5jICAgICAgIHwgIDQgKy0tLQogY29tbW9u
L29mdHJlZS5jICAgICAgICAgICAgICAgfCAxOSArKysrKysrKysrKysrKy0tCiBjb21tb24vcmVz
ZXRfc291cmNlLmMgICAgICAgICB8IDM4ICsrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0t
CiBkcml2ZXJzL21mZC9kYTkwNTMuYyAgICAgICAgICB8ICA0ICstLS0KIGRyaXZlcnMvbWZkL2Rh
OTA2My5jICAgICAgICAgIHwgIDQgKy0tLQogZHJpdmVycy93YXRjaGRvZy9zdG0zMl9pd2RnLmMg
fCAgMyArLS0KIGluY2x1ZGUvcmVzZXRfc291cmNlLmggICAgICAgIHwgNDEgKysrKysrKysrKysr
KysrKysrKysrKystLS0tLS0tLS0tLS0KIDcgZmlsZXMgY2hhbmdlZCwgNzUgaW5zZXJ0aW9ucygr
KSwgMzggZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYmFyZWJveAo=
