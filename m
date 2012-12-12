Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Timyc-0007yH-Bk
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 14:07:58 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TimyW-0005I5-SD
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 15:07:52 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TimyW-0001to-Qn
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 15:07:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Dec 2012 15:07:49 +0100
Message-Id: <1355321271-27915-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fix device tree corruption
To: barebox@lists.infradead.org

ClRoaXMgZml4ZXMgYSBkZXZpY2UgdHJlZSBjb3JydXB0aW9uIG9uIGN1cnJlbnQgbWFzdGVyLiBS
ZXBvcnRlZCBieSBKYW4gTMO8YmJlCgpTYXNjaGEKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KU2FzY2hhIEhhdWVyICgyKToK
ICAgICAgZnM6IG1vdmUgZGV2X2FkZF9jaGlsZCBiZWZvcmUgZGV2aWNlX3JlZ2lzdGVyCiAgICAg
IGRyaXZlcnMvYmFzZTogZml4IGNvcnJ1cHQgZGV2aWNlIHRyZWUKCiBjb21tb24vY29uc29sZS5j
ICAgICAgICAgICB8ICAgIDIgKy0KIGRyaXZlcnMvYmFzZS9kcml2ZXIuYyAgICAgIHwgICAzMiAr
KysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9pMmMvaTJjLmMgICAgICAg
ICAgfCAgICA0IC0tLS0KIGRyaXZlcnMvbWNpL21jaS1jb3JlLmMgICAgIHwgICAgMiArLQogZHJp
dmVycy9tdGQvY29yZS5jICAgICAgICAgfCAgICA0ICstLS0KIGRyaXZlcnMvbmV0L3BoeS9tZGlv
X2J1cy5jIHwgICAgNCAtLS0tCiBkcml2ZXJzL25ldC9waHkvcGh5LmMgICAgICB8ICAgIDMgKyst
CiBkcml2ZXJzL3NwaS9zcGkuYyAgICAgICAgICB8ICAgIDIgKy0KIGRyaXZlcnMvdzEvdzEuYyAg
ICAgICAgICAgIHwgICAgNCAtLS0tCiBmcy9mcy5jICAgICAgICAgICAgICAgICAgICB8ICAgMTAg
KysrKystLS0tLQogaW5jbHVkZS9kcml2ZXIuaCAgICAgICAgICAgfCAgICA1IC0tLS0tCiBuZXQv
ZXRoLmMgICAgICAgICAgICAgICAgICB8ICAgIDIgKy0KIDEyIGZpbGVzIGNoYW5nZWQsIDIzIGlu
c2VydGlvbnMoKyksIDUxIGRlbGV0aW9ucygtKQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2JhcmVib3gK
