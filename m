Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from pig2.dooz.org ([88.191.118.219])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RETQT-0003ND-DL
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 22:06:53 +0000
Received: from bee.dooz.org (unknown
	[IPv6:2a01:e35:8a6e:5e80:224:7eff:fe14:65c3])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "bee.dooz.org", Issuer "dooz.org CA" (verified OK))
	by pig2.dooz.org (Postfix) with ESMTPS id D8ACBC01C1
	for <barebox@lists.infradead.org>;
	Fri, 14 Oct 2011 00:06:46 +0200 (CEST)
From: =?UTF-8?q?Lo=C3=AFc=20Minier?= <loic.minier@linaro.org>
Date: Fri, 14 Oct 2011 00:06:36 +0200
Message-Id: <1318543601-20819-1-git-send-email-loic.minier@linaro.org>
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
Subject: [RFC] Fix misc warnings when building sandbox on 64-bits
To: barebox@lists.infradead.org

ICAgICAgICBIaQoKIEkgd2FzIGdldHRpbmcgYSBidW5jaCBvZiBkaWZmZXJlbnQgd2FybmluZ3Ms
IHNvbWUgcXVpdGUgYW5ub3lpbmcgb25lcywKIHdoZW4gYnVpbGRpbmcgc2FuZGJveCBvbiB4ODYt
NjQsIG5vdCBhbGwgb2YgdGhlbSByZWxhdGVkIHRvIDY0LWJpdHMuCgogSSdtIGNvbXBsZXRlbHkg
bmV3IHRvIHRoZSBiYXJlYm94IGNvZGViYXNlIGFuZCBub3QgbmVjZXNzYXJpbHkgZmFtaWxpYXIK
IHdpdGggdGhlIGxpbnV4IGtlcm5lbCBoZWFkZXIgdXNhZ2UgaW4gYmFyZWJveCwgc28gc2VuZGlu
ZyB0aGVzZSBwYXRjaGVzCiBhcyBSRkMgdG8gc2VlIHdoYXQgb3RoZXJzIHRoaW5rIG9mIHRoZSBm
aXhlcy4KCiBTb21lIGNvbW1lbnRzIG9uIHRoZSBwYXRjaGVzOgoKIFRoZSBmaXJzdCB0d28gc2Vl
bXMgcHJldHR5IHNhZmU6CiAtIE9ubHkgcGFzcyAtUCB0byBjcHAgd2hlbiBnZW5lcmF0aW5nIGxk
IHNjcmlwdHMKIC0gQXZvaWQgd2FybmluZ3MgYnkgdXNpbmcgZm9ybWF0KF9fcHJpbnRmX18pCgog
VGhpcyBvbmUgbWlnaHQgY2hhbmdlIHNvbWUgQVBJIGJ1dCBzZWVtcyByaWdodCBpbiB0ZXJtcyBv
ZiBzZW1hbnRpY3M7CiBzYW5kYm94IGJ1aWxkcyBhbmQgc3RhcnRzIHVwIGZpbmU6CiAtIGZwcmlu
dGYoKSByZXR1cm5zIGFuIGludAoKIFRoZXNlIHR3byBhcmUgc29tZSBzaG90cyBhdCBzdXBwb3J0
aW5nIHNhbmRib3ggb24geDg2LTY0OgogLSBVc2UgJXAgaW4gZm9ybWF0IGZvciBwb2ludGVycwog
LSBVc2Ugc2l6ZV90IGZvciBtZW1vcnkgb2Zmc2V0cwogZXNzZW50aWFsbHkgSSd2ZSBub3RpY2Vk
IHRoYXQgbm9ib2R5IGlzIHNldHRpbmcKIENPTkZJR19QSFlTX0FERFJfVF82NEJJVCwgeWV0IGJh
cmVib3ggdXNlcyB0aGUgcmVzb3VyY2Vfc2l6ZV90IHR5cGUKIHdoaWNoIHJlcXVpcmVzIHRoaXMg
Y29uZmlnIHRvIGJlIHNldCBwcm9wZXJseS4gIE5vdywgYmVjYXVzZSBJIGRvbid0CiBzZXQgQ09O
RklHX1BIWVNfQUREUl9UXzY0QklUIGluIHRoaXMgcGF0Y2ggc2VyaWVzLCB3aGF0IHlvdSdsbCBn
ZXQgaXMKIGFjdHVhbGx5IG5ldyB3YXJuaW5ncyBhZnRlciB0aGUgY2hhbmdlcyB0byB1c2Ugc2l6
ZV90IG9yICVwIGZvcgogcG9pbnRlcnMgYmVjYXVzZSB0aGV5IGFyZSBzdGlsbCBzdG9yZWQgb24g
dTMyIG9uIHg4Ni02NC4uLiAgQWxzbywgdGhpcwogbWlnaHQgYnJlYWsgc29tZSBBUEkvQUJJLiAg
SSBkb24ndCByZWFsbHkga25vdyBob3cgdG8gc2V0CiBDT05GSUdfUEhZU19BRERSX1RfNjRCSVQg
YXV0b21hdGljYWxseSBmb3Igc2FuZGJveCwgc28gc3VnZ2VzdGlvbnMKIHdlbGNvbWUuCgogICAg
VGhhbmtzIQotLSAKTG/Dr2MgTWluaWVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJl
Ym94Cg==
