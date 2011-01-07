Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PbFHw-00083E-43
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 16:35:42 +0000
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Fri,  7 Jan 2011 17:35:28 +0100
Message-Id: <1294418133-5256-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1294418133-5256-1-git-send-email-eric@eukrea.com>
References: <1294418133-5256-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 2/7] defaultenv/bin/boot: make ubi root's name configurable
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

YWxsIHJvb3QgYXJlIG5vdCBuYW1lZCByb290IHNvIGdpdmUgdGhlIHBvc3NpYmlsaXR5IHRvCmNv
bmZpZ3VyZSB0aGlzIGluIHRoZSBjb25maWcgZmlsZS4KClNpZ25lZC1vZmYtYnk6IEVyaWMgQsOp
bmFyZCA8ZXJpY0BldWtyZWEuY29tPgotLS0KIGRlZmF1bHRlbnYvYmluL2Jvb3QgfCAgICA1ICsr
KystCiAxIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kZWZhdWx0ZW52L2Jpbi9ib290IGIvZGVmYXVsdGVudi9iaW4vYm9vdAppbmRl
eCA0MmM3ZWMyLi41MDliNDYzIDEwMDY0NAotLS0gYS9kZWZhdWx0ZW52L2Jpbi9ib290CisrKyBi
L2RlZmF1bHRlbnYvYmluL2Jvb3QKQEAgLTM0LDcgKzM0LDEwIEBAIGVsc2UKIAlmaQogCiAJaWYg
WyB4JHJvb3Rmc190eXBlID0geHViaWZzIF07IHRoZW4KLQkJYm9vdGFyZ3M9IiRib290YXJncyBy
b290PXViaTA6cm9vdCB1YmkubXRkPSRyb290ZnNfbXRkYmxvY2siCisJCWlmIFsgeCR1Ymlyb290
ID0geCBdOyB0aGVuCisJCQl1Ymlyb290ID0gInJvb3QiCisJCWZpCisJCWJvb3RhcmdzPSIkYm9v
dGFyZ3Mgcm9vdD11YmkwOiR1Ymlyb290IHViaS5tdGQ9JHJvb3Rmc19tdGRibG9jayIKIAllbHNl
CiAJCWJvb3RhcmdzPSIkYm9vdGFyZ3Mgcm9vdD0vZGV2L210ZGJsb2NrJHJvb3Rmc19tdGRibG9j
ayIKIAlmaQotLSAKMS43LjMuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
