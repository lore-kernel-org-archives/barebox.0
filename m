Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22d.google.com ([2a00:1450:400c:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEl3L-00008l-NU
 for barebox@lists.infradead.org; Tue, 05 Aug 2014 20:09:48 +0000
Received: by mail-we0-f173.google.com with SMTP id q58so1624326wes.4
 for <barebox@lists.infradead.org>; Tue, 05 Aug 2014 13:09:25 -0700 (PDT)
Received: from localhost.localdomain
 (AGrenoble-651-1-418-79.w90-52.abo.wanadoo.fr. [90.52.162.79])
 by mx.google.com with ESMTPSA id u3sm10796573wif.12.2014.08.05.13.09.23
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Tue, 05 Aug 2014 13:09:23 -0700 (PDT)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Tue,  5 Aug 2014 13:09:15 -0700
Message-Id: <1407269357-20471-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH v2 0/2] Add atmel pinctrl driver
To: barebox@lists.infradead.org

Q2hhbmdlIHNpbmNlIHYxOgogICAgICAgICogRml4IGNvZGluZyBzdHlsZSBpc3N1ZS4KCSogUmVn
aXN0ZXIgZ3BpbyBjbG9ja3Mgd2l0aCBDTEtERVZfREVWX0lEIGluc3RlYWQgb2YgQ0xLREVWX0NP
Tl9ERVZfSUQKClRoaXMgcGF0Y2hzZXQgYWRkIGF0bWVsIHBpbmN0cmwvZ3BpbyBkcml2ZXIgYW5k
IHRoZSBjb3JyZXNwb25kaW5nIGNsb2NrcyBmb3IKdGhlIGF0OTFzYW05ZzQ1IGRldmljZS4KClRo
ZSBwaW5jdHJsIGRyaXZlciBhbHNvIGluY2x1ZGUgdGhlIGdwaW8gZHJpdmVyIChsaWtlIGluIGxp
bnV4KSBiZWNhdXNlIHRoZSBncGlvIGFuZCBwaW5jdHJsIHBhcnRzIHNoYXJlIHNhbWUgc3RydWN0
dXJlcy4KClJhcGhhw6tsIFBvZ2dpICgyKSA6CiAgICAgICAgKDEpIHBpbmN0cmw6IGF0OTE6IGFk
ZCBwaW5jdHJsIGRyaXZlcgogICAgICAgICgyKSBhdDkxc2FtOWc0NTogYWRkIGRldmljZSB0cmVl
IGdwaW8gY2xvY2tzCgoKYXJjaC9hcm0vbWFjaC1hdDkxL2F0OTFzYW05ZzQ1LmMgfCAgIDUgKysK
IGRyaXZlcnMvcGluY3RybC9LY29uZmlnICAgICAgICAgIHwgICA2ICsrCiBkcml2ZXJzL3BpbmN0
cmwvTWFrZWZpbGUgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1hdDkx
LmMgICB8IDUyOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKwogZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtYXQ5MS5oICAgfCAxNDgg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogNSBmaWxlcyBjaGFuZ2VkLCA2ODgg
aW5zZXJ0aW9ucygrKQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
