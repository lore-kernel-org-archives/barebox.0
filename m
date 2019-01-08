Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr770094.outbound.protection.outlook.com
 ([40.107.77.94] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggo08-0007wZ-A8
 for barebox@lists.infradead.org; Tue, 08 Jan 2019 09:48:49 +0000
From: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Date: Tue, 8 Jan 2019 09:48:46 +0000
Message-ID: <20190108094829.20913-2-florian.baeuerle@allegion.com>
References: <a86ae0154c6069405619d7752fcb227d5f2384b6.camel@allegion.com>
 <20190108094829.20913-1-florian.baeuerle@allegion.com>
In-Reply-To: <20190108094829.20913-1-florian.baeuerle@allegion.com>
Content-Language: en-US
Content-ID: <C9C7E49D5650F245871E06BEFB6E8407@prod.exchangelabs.com>
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
Subject: [PATCH 2/2] envfs: fix problem #2
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

U2lnbmVkLW9mZi1ieTogRmxvcmlhbiBCw6R1ZXJsZSA8Zmxvcmlhbi5iYWV1ZXJsZUBhbGxlZ2lv
bi5jb20+DQotLS0NCiBsaWIvcmVjdXJzaXZlX2FjdGlvbi5jIHwgNCArKy0tDQogMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2xp
Yi9yZWN1cnNpdmVfYWN0aW9uLmMgYi9saWIvcmVjdXJzaXZlX2FjdGlvbi5jDQppbmRleCA0Y2Nk
ZGMzOWIuLjk1MDVjODYyOCAxMDA2NDQNCi0tLSBhL2xpYi9yZWN1cnNpdmVfYWN0aW9uLmMNCisr
KyBiL2xpYi9yZWN1cnNpdmVfYWN0aW9uLmMNCkBAIC0xNDksNyArMTQ5LDcgQEAgaW50IHJlY3Vy
c2l2ZV9hY3Rpb24oY29uc3QgY2hhciAqZmlsZU5hbWUsDQogDQogCQlpZiAoRE9fU09SVChmbGFn
cykpIHsNCiAJCQlzdHJ1Y3QgZGlybGlzdCAqZSA9IHhtYWxsb2Moc2l6ZW9mKCplKSk7DQotCQkJ
ZS0+ZGlybmFtZSA9IHhzdHJkdXAobmV4dC0+ZF9uYW1lKTsNCisJCQllLT5kaXJuYW1lID0gbmV4
dEZpbGU7DQogCQkJbGlzdF9hZGQoJmUtPmxpc3QsICZkaXJzKTsNCiAJCX0gZWxzZSB7DQogCQkJ
LyogZGVzY2VuZCBpbnRvIGl0LCBmb3JjaW5nIHJlY3Vyc2lvbi4gKi8NCkBAIC0xNTcsOCArMTU3
LDggQEAgaW50IHJlY3Vyc2l2ZV9hY3Rpb24oY29uc3QgY2hhciAqZmlsZU5hbWUsDQogCQkJCQkJ
ZmlsZUFjdGlvbiwgZGlyQWN0aW9uLCB1c2VyRGF0YSwgZGVwdGgrMSkpIHsNCiAJCQkJc3RhdHVz
ID0gMDsNCiAJCQl9DQorCQkJZnJlZShuZXh0RmlsZSk7DQogCQl9DQotCQlmcmVlKG5leHRGaWxl
KTsNCiAJfQ0KIA0KIAlpZiAoRE9fU09SVChmbGFncykpIHsNCi0tIA0KMi4xOS4yDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGlu
ZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
