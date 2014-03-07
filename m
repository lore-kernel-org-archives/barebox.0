Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WLsCi-0002qc-4w
 for barebox@lists.infradead.org; Fri, 07 Mar 2014 10:40:37 +0000
Received: from e6520eb.local.eukrea.com (unknown [88.170.243.169])
 by smtp2-g21.free.fr (Postfix) with ESMTP id CB0044B0152
 for <barebox@lists.infradead.org>; Fri,  7 Mar 2014 11:40:14 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Fri,  7 Mar 2014 11:40:00 +0100
Message-Id: <1394188803-13456-4-git-send-email-eric@eukrea.com>
In-Reply-To: <1394188803-13456-1-git-send-email-eric@eukrea.com>
References: <20140210091152.GM17250@pengutronix.de>
 <1394188803-13456-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH v2 4/7] ARM: mx53-qsrb: enable USB host
To: barebox@lists.infradead.org

LSBkZWNsYXJlIHRoZSByaWd0aCBtdXggZm9yIHRoZSBHUElPIHVzZWQgdG8gZW5hYmxlIHRoZSBV
U0IncyA1VgotIGVuYWJsZSBVU0IgaG9zdCBjb250cm9sbGVyCgp0ZXN0ZWQgb24gaS5NWDUzIFNU
QVJULVIgOgpiYXJlYm94QEZyZWVzY2FsZSBpLk1YNTMgUXVpY2sgU3RhcnQtUiBCb2FyZDovIHVz
YiAtZgpVU0I6IHNjYW5uaW5nIGJ1cyBmb3IgZGV2aWNlcy4uLgpCdXMgMDAxIERldmljZSAwMDE6
IElEIDAwMDA6MDAwMCBFSENJIEhvc3QgQ29udHJvbGxlcgpVc2luZyBpbmRleCAwIGZvciB0aGUg
bmV3IGRpc2sKQnVzIDAwMiBEZXZpY2UgMDAzOiBJRCAwOTUxOjE2NTQgRFQgUjUwMApCdXMgMDAy
IERldmljZSAwMDI6IElEIDAwMDA6MDAwMCBFSENJIEhvc3QgQ29udHJvbGxlcgozIFVTQiBEZXZp
Y2UocykgZm91bmQKClNpZ25lZC1vZmYtYnk6IEVyaWMgQsOpbmFyZCA8ZXJpY0BldWtyZWEuY29t
PgotLS0KIGFyY2gvYXJtL2R0cy9pbXg1My1xc2ItY29tbW9uLmR0c2kgfCA2ICsrKysrLQogMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2R0cy9pbXg1My1xc2ItY29tbW9uLmR0c2kgYi9hcmNoL2FybS9kdHMvaW14NTMt
cXNiLWNvbW1vbi5kdHNpCmluZGV4IGYyZjkxMmIuLjRhZTFmNDkgMTAwNjQ0Ci0tLSBhL2FyY2gv
YXJtL2R0cy9pbXg1My1xc2ItY29tbW9uLmR0c2kKKysrIGIvYXJjaC9hcm0vZHRzL2lteDUzLXFz
Yi1jb21tb24uZHRzaQpAQCAtMTU4LDYgKzE1OCw3IEBACiAJCQkJTVg1M19QQURfRUlNX0RBMTNf
X0dQSU8zXzEzICAgICAgIDB4ODAwMDAwMDAKIAkJCQlNWDUzX1BBRF9QQVRBX0RBXzBfX0dQSU83
XzYgICAgICAgMHg4MDAwMDAwMAogCQkJCU1YNTNfUEFEX0dQSU9fMTZfX0dQSU83XzExICAgICAg
ICAweDgwMDAwMDAwCisJCQkJTVg1M19QQURfUEFUQV9EQV8yX19HUElPN184ICAgICAgIDB4ODAw
MDAwMDAKIAkJCT47CiAJCX07CiAKQEAgLTIxNiw5ICsyMTcsMTIgQEAKIH07CiAKICZ1c2JoMSB7
Ci0gICAgICAgc3RhdHVzID0gIm9rYXkiOworCXBoeV90eXBlID0gInV0bWkiOworCWRyX21vZGUg
PSAiaG9zdCI7CisJc3RhdHVzID0gIm9rYXkiOwogfTsKIAogJnVzYm90ZyB7CiAgICAgICAgc3Rh
dHVzID0gIm9rYXkiOwogfTsKKwotLSAKMS44LjMuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2JhcmVib3gK
