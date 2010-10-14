Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P6OR8-0008Vg-1k
	for barebox@lists.infradead.org; Thu, 14 Oct 2010 14:05:39 +0000
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu, 14 Oct 2010 16:05:26 +0200
Message-Id: <1287065132-20372-4-git-send-email-eric@eukrea.com>
In-Reply-To: <1287065132-20372-1-git-send-email-eric@eukrea.com>
References: <1287065132-20372-1-git-send-email-eric@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/10] mci-core: add more tested SD Cards
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

bm90ZSA6Ci0gVHJhbnNjZW5kIDE2R2lCIGZhaWxzIChubyBsb2cpCi0gTWljcm9uIDhHaUIgZU1N
QyBmYWlscyAoaGFuZ3MgYWZ0ZXIgOiBEZXRlY3RpbmcgYSA0LjAgcmV2aXNpb24gY2FyZCkKClNp
Z25lZC1vZmYtYnk6IEVyaWMgQsOpbmFyZCA8ZXJpY0BldWtyZWEuY29tPgotLS0KIGRyaXZlcnMv
bWNpL21jaS1jb3JlLmMgfCAgICAzICsrKwogMSBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tY2kvbWNpLWNvcmUuYyBi
L2RyaXZlcnMvbWNpL21jaS1jb3JlLmMKaW5kZXggZWEyNzA2Mi4uYzkyZDVhOSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9tY2kvbWNpLWNvcmUuYworKysgYi9kcml2ZXJzL21jaS9tY2ktY29yZS5jCkBA
IC00Niw5ICs0NiwxMiBAQAogICoKICAqIENoZWNrZWQgd2l0aCB0aGUgZm9sbG93aW5nIGNhcmRz
OgogICogLSBDYW5vbiBNTUMgMTYgTWlCCisgKiAtIEludGVncmFsIE1pY3JvU0RIQywgOCBHaUIg
KENsYXNzIDQpCiAgKiAtIEtpbmdzdG9uIDUxMiBNaUIKICAqIC0gU2FuRGlzayA1MTIgTWlCCiAg
KiAtIFRyYW5zY2VuZCBTRCBVbHRyYSwgMSBHaUIgKEluZHVzdHJpYWwpCisgKiAtIFRyYW5zY2Vu
ZCBTREhDLCA0IEdpQiAoQ2xhc3MgNikKKyAqIC0gVHJhbnNjZW5kIFNESEMsIDggR2lCIChDbGFz
cyA2KQogICovCiAKIC8qKgotLSAKMS43LjAuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2JhcmVib3gK
