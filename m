Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VbTbv-0007k1-9B
 for barebox@lists.infradead.org; Wed, 30 Oct 2013 11:06:51 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1VbTbY-0003oj-RY
 for barebox@lists.infradead.org; Wed, 30 Oct 2013 12:06:28 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 30 Oct 2013 12:06:28 +0100
Message-Id: <1383131188-22043-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] pinctrl: don't allow drivers to be selected by menuconfig user
To: barebox@lists.infradead.org

VGhlcmUgaXMgbm8gbXVjaCBzZW5zZSBpbiBoYXZpbmcgdGhlIHBpbmN0cmwgZHJpdmVycyBiZSB1
c2VyIHNlbGVjdGFibGUKYXMgYWxsIGFyY2hlcyB1c2luZyBvbiBvZiB0aGVtIGFscmVhZHkgc2Vs
ZWN0cyB0aGUgcmlnaHQgb25lLgoKU28gdG8gYXZvaWQgcHJlc2VudGluZyB0aGUgdXNlciB3aXRo
IHRoZSBjaG9pY2UgdG8gZW5hYmxlIHVucmVsYXRlZApwaW5jdHJsIGRyaXZlcnMgb3IgcHVzaGlu
ZyBsb3RzIG9mIGRlcGVuZGVuY2llcyBpbnRvIHRoZSBLY29uZmlnIGp1c3QKZHJvcCB0aGUgY29u
ZmlndXJhYmlsaXR5LgoKUmVwb3J0ZWQtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1r
b2VuaWdAcGVuZ3V0cm9uaXguZGU+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNo
QHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvcGluY3RybC9LY29uZmlnIHwgMTIgKysrKy0t
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGluY3RybC9LY29uZmlnIGIvZHJpdmVycy9waW5jdHJsL0tj
b25maWcKaW5kZXggMGI4NTliOC4uNTgzOTdhMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9waW5jdHJs
L0tjb25maWcKKysrIGIvZHJpdmVycy9waW5jdHJsL0tjb25maWcKQEAgLTEsNSArMSwzIEBACi1t
ZW51ICJQaW4gY29udHJvbGxlcnMiCi0KIGNvbmZpZyBQSU5DVFJMCiAJYm9vbCAiUGluIGNvbnRy
b2xsZXIgY29yZSBzdXBwb3J0IgogCWRlcGVuZHMgb24gT0ZERVZJQ0UKQEAgLTEwLDI1ICs4LDIz
IEBAIGNvbmZpZyBQSU5DVFJMCiAJICBzdXBwb3J0IGJ1dCBpbnN0ZWFkIHByb3ZpZGUgdGhlaXIg
b3duIFNvQyBzcGVjaWZpYyBBUElzCiAKIGNvbmZpZyBQSU5DVFJMX0lNWF9JT01VWF9WMQotCWJv
b2wgImkuTVggaW9tdXggdjEiCisJYm9vbAogCWhlbHAKIAkgIFRoaXMgaW9tdXggY29udHJvbGxl
ciBpcyBmb3VuZCBvbiBpLk1YMSwyMSwyNy4KIAogY29uZmlnIFBJTkNUUkxfSU1YX0lPTVVYX1Yy
Ci0JYm9vbCAiaS5NWCBpb211eCB2MiIKKwlib29sCiAJaGVscAogCSAgVGhpcyBpb211eCBjb250
cm9sbGVyIGlzIGZvdW5kIG9uIGkuTVgzMS4KIAogY29uZmlnIFBJTkNUUkxfSU1YX0lPTVVYX1Yz
CiAJc2VsZWN0IFBJTkNUUkwgaWYgT0ZERVZJQ0UKLQlib29sICJpLk1YIGlvbXV4IHYzIgorCWJv
b2wKIAloZWxwCiAJICBUaGlzIGlvbXV4IGNvbnRyb2xsZXIgaXMgZm91bmQgb24gaS5NWDI1LDM1
LDUxLDUzLDYuCiAKIGNvbmZpZyBQSU5DVFJMX1RFR1JBMjAKIAlzZWxlY3QgUElOQ1RSTAotCWJv
b2wgIlRlZ3JhIDIwIHBpbm11eCIKKwlib29sCiAJaGVscAogCSAgVGhlIHBpbm11eCBjb250cm9s
bGVyIGZvdW5kIG9uIHRoZSBUZWdyYSAyMCBsaW5lIG9mIFNvQ3MuCi0KLWVuZG1lbnUKLS0gCjEu
OC40LnJjMwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
