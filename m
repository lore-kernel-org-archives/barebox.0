Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dGrDS-0001Y3-Ks
 for barebox@lists.infradead.org; Fri, 02 Jun 2017 18:22:32 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri,  2 Jun 2017 20:22:03 +0200
Message-Id: <20170602182204.32309-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 1/2] docs: mvebu can do 2nd stage booting
To: barebox@lists.infradead.org

U2luY2UgY29tbWl0CgoJODIzZDA4ZTNlMjYxICgia3diaW1hZ2VfdjE6IGFkZCBzdXBwb3J0IHRv
IGJvb3QgYSBtdmVidSBpbWFnZSIpCgpiYXJlYm94IGNhbiB1c2UgYm9vdG0gdG8gbG9hZCBhIDJu
ZCBiYXJlYm94IGltYWdlLiBVcGRhdGUgdGhlCmRvY3VtZW50YXRpb24gYWNjb3JkaW5nbHkuCgpT
aWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJv
bml4LmRlPgotLS0KIERvY3VtZW50YXRpb24vYm9hcmRzL212ZWJ1LnJzdCB8IDQgKystLQogMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2JvYXJkcy9tdmVidS5yc3QgYi9Eb2N1bWVudGF0aW9uL2JvYXJkcy9t
dmVidS5yc3QKaW5kZXggYjRmOGU2MDQzZGFjLi40ZGZkYzRhOGY3NjEgMTAwNjQ0Ci0tLSBhL0Rv
Y3VtZW50YXRpb24vYm9hcmRzL212ZWJ1LnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2JvYXJkcy9t
dmVidS5yc3QKQEAgLTI4LDggKzI4LDggQEAgaW5pdGlhbGlzYXRpb24gdGhhdCBjb3VsZCBiZSB0
YWtlbi4KIEJvb3Rpbmcgc2Vjb25kIHN0YWdlCiAtLS0tLS0tLS0tLS0tLS0tLS0tLQogCi1UaGlz
IGlzIGN1cnJlbnRseSBub3QgcG9zc2libGUgYmVjYXVzZSBiYXJlYm94IGFzc3VtZXMgdGhlIHJl
Z2lzdGVycyBhcmUgbWFwcGVkCi1hdCAweGQwMDAwMDAwIGFzIGlzIHRoZSBjYXNlIHdoZW4gdGhl
IGJvb3QgUk9NIGdpdmVzIGNvbnRyb2wgdG8gdGhlIGJvb3Rsb2FkZXIuCitTaW5jZSBgYHYyMDE3
LjA0LjBgYCBiYXJlYm94IGNhbiBib290IGEgYmFyZWJveCBpbWFnZSBldmVuIGlmIHRoZSByZWdp
c3Rlcgord2luZG93IGlzIG1vdmVkLiBUaGlzIGlzIGltcGxlbWVudGVkIGJ5IHdyaXRpbmcgdGhl
IGFjdHVhbCB3aW5kb3cgcG9zaXRpb24gaW50byB0aGUgaW1hZ2Ugd2hlcmUgaXQgaXMgdGhlbiBw
aWNrZWQgdXAgYnkgdGhlIHNlY29uZCBzdGFnZSBib290bG9hZGVyLgogCiBCb290aW5nIGZyb20g
VUFSVAogLS0tLS0tLS0tLS0tLS0tLS0KLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK
