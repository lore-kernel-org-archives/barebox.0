Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gs0O9-0005jV-Sk
 for barebox@lists.infradead.org; Fri, 08 Feb 2019 07:15:56 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Fri,  8 Feb 2019 08:15:19 +0100
Message-Id: <20190208071526.19150-1-u.oelmann@pengutronix.de>
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
Subject: [PATCH 0/7] Harmonize barebox' and dt-utils' state code
To: Barebox List <barebox@lists.infradead.org>

VGhlc2UgcGF0Y2hlcyByZW1vdmUgZnVydGhlciBkaWZmZXJlbmNlcyBiZXR3ZWVuIHRoZSBjb21t
b24gY29kZWJhc2Ugb2YgYmFyZWJveCcKYW5kIGR0LXV0aWxzJyBzdGF0ZSBpbXBsZW1lbnRhdGlv
bi4KClVscmljaCDDlmxtYW5uICg3KToKICBjb21tb246IHN0YXRlOiBmaXggY29tcGlsZXIgd2Fy
bmluZ3MgYWJvdXQgd3JvbmcgdHlwZSBjb252ZXJzaW9uIGluCiAgICBtZXNzYWdlcwogIGNvbW1v
bjogc3RhdGU6IGZpeCBmb3JtYXR0aW5nIG9mICJvZmZfdCIgdmFyaWFibGVzCiAgY29tbW9uOiBz
dGF0ZTogZml4IGZvcm1hdHRpbmcgb2YgInVpbnQzMl90IiB2YXJpYWJsZXMKICBjb21tb246IHN0
YXRlOiBoYXJtb25pemUgY29kZSB3aXRoIGR0LXV0aWxzCiAgY29tbW9uOiBzdGF0ZTogaGFybW9u
aXplIGNvZGUgd2l0aCBkdC11dGlscwogIGNvbW1vbjogc3RhdGU6IGhhcm1vbml6ZSBjb2RlIHdp
dGggZHQtdXRpbHMKICBjb21tb246IHN0YXRlOiBoYXJtb25pemUgY29kZSB3aXRoIGR0LXV0aWxz
CgogY29tbW9uL3N0YXRlL2JhY2tlbmRfYnVja2V0X2NpcmN1bGFyLmMgfCA0MCArKysrKysrKysr
KysrKy0tLS0tLS0tLS0tLQogY29tbW9uL3N0YXRlL2JhY2tlbmRfYnVja2V0X2RpcmVjdC5jICAg
fCAgMyArKwogY29tbW9uL3N0YXRlL2JhY2tlbmRfc3RvcmFnZS5jICAgICAgICAgfCAyMiArKysr
KysrLS0tLS0tLQogY29tbW9uL3N0YXRlL3N0YXRlLmMgICAgICAgICAgICAgICAgICAgfCAxMCAr
KysrKy0tCiA0IGZpbGVzIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKyksIDMxIGRlbGV0aW9ucygt
KQoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
