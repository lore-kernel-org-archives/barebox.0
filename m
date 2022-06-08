Delivery-date: Wed, 08 Jun 2022 12:39:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyt5Z-007O7a-BP
	for lore@lore.pengutronix.de; Wed, 08 Jun 2022 12:39:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyt5Y-0000FK-6o
	for lore@pengutronix.de; Wed, 08 Jun 2022 12:39:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mZ+2ZB9UCc9JjZtHo7JiD2H5AqgWOEQcdt0s/IOsfBQ=; b=P3dgzzKwCljJk/
	mf1kkVllAkME6Rrccw7VNAoCO/S/KqTKnJMijJOt2PlwamrP3u+86pKJeF5tfQitWnO35Yx4vnXHp
	WQ1oCp5Z8uxnrRvniCmu0CD56OXJ8M4dQXbR1QbYVM14UQMrITKYXzxP8csB+BX5Ft7lgLoirqptB
	VT6xwVqfnW6mGldhua7gOcUiMdadgqXwrqIyMW/GD2NllH3CTczTq8xipN6NWKdJaJDQH5Hxe7ZRO
	T5Lr6SkiUNR/8eCjkFlbs6sYn/lWPuehurhJ/m7CLvAwVjTjdxrth8BtlzS+l3MLEaEfxWebFMLvJ
	UZFTL7lyW/QKhXrz+CiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyt3v-00CnxO-8u; Wed, 08 Jun 2022 10:37:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyt3o-00CntP-AQ
	for barebox@lists.infradead.org; Wed, 08 Jun 2022 10:37:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1nyt3e-0008To-OZ; Wed, 08 Jun 2022 12:37:02 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1nyt3f-007AO0-De; Wed, 08 Jun 2022 12:37:02 +0200
Received: from ukl by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1nyt3d-000V90-0d; Wed, 08 Jun 2022 12:37:01 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  8 Jun 2022 12:36:54 +0200
Message-Id: <20220608103654.118355-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_033712_402945_6FE20F17 
X-CRM114-Status: GOOD (  10.89  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX8MN: Fix script to extract firmware blobs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

VGhlIGRpcmVjdG9yeSBjcmVhdGVkIGJ5IGV4dHJhY3RpbmcgZmlybXdhcmUtaW14LTguMTIuYmlu
IGlzIGNhbGxlZApmaXJtd2FyZS1pbXgtOC4xMiwgbm90IGZpcm13YXJlLWlteC04LjAuCgpGaXhl
czogMzVkNGNmOTk2MDM0ICgiQVJNOiBpLk1YOE1OOiBhZGQgaS5NWDhNTi1FVksgc3VwcG9ydCIp
ClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0
cm9uaXguZGU+Ci0tLQogRG9jdW1lbnRhdGlvbi9ib2FyZHMvaW14L254cC1pbXg4bW4tZXZrLnJz
dCB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2JvYXJkcy9pbXgvbnhwLWlteDhtbi1ldmsu
cnN0IGIvRG9jdW1lbnRhdGlvbi9ib2FyZHMvaW14L254cC1pbXg4bW4tZXZrLnJzdAppbmRleCA0
NGNkMGM2OGU0ZDkuLmI5MjBlMjJkMzNlOSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9ib2Fy
ZHMvaW14L254cC1pbXg4bW4tZXZrLnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2JvYXJkcy9pbXgv
bnhwLWlteDhtbi1ldmsucnN0CkBAIC00MCw3ICs0MCw3IEBAIEFzIGEgbGFzdCBzdGVwIG9mIHRo
aXMgcHJvY2VzcyB0aG9zZSBmaWxlcyBuZWVkIHRvIGJlIHBsYWNlZCBpbgogCSAgIGxwZGRyNF9w
bXVfdHJhaW5fMmRfZG1lbS5iaW4gIFwKIAkgICBscGRkcjRfcG11X3RyYWluXzJkX2ltZW0uYmlu
OyBcCiAgIGRvIFwKLQkgICBjcCBmaXJtd2FyZS1pbXgtOC4wL2Zpcm13YXJlL2Rkci9zeW5vcHN5
cy8ke2Z9IFwKKwkgICBjcCBmaXJtd2FyZS1pbXgtOC4xMi9maXJtd2FyZS9kZHIvc3lub3BzeXMv
JHtmfSBcCiAJICAgICAgZmlybXdhcmUvJHtmfTsgXAogICBkb25lCiAKQEAgLTQ5LDcgKzQ5LDcg
QEAgQXMgYSBsYXN0IHN0ZXAgb2YgdGhpcyBwcm9jZXNzIHRob3NlIGZpbGVzIG5lZWQgdG8gYmUg
cGxhY2VkIGluCiAgICAgICAgICAgIGRkcjRfZG1lbV8yZF8yMDE4MTAuYmluICBcCiAgICAgICAg
ICAgIGRkcjRfaW1lbV8yZF8yMDE4MTAuYmluOyBcCiAgIGRvIFwKLQkgICBjcCBmaXJtd2FyZS1p
bXgtOC4wL2Zpcm13YXJlL2Rkci9zeW5vcHN5cy8ke2Z9IFwKKwkgICBjcCBmaXJtd2FyZS1pbXgt
OC4xMi9maXJtd2FyZS9kZHIvc3lub3BzeXMvJHtmfSBcCiAJICAgICAgZmlybXdhcmUvJHtmJV8y
MDE4MTAuYmlufS5iaW47IFwKICAgZG9uZQogCi0tIAoyLjMwLjIKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJl
Ym94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iYXJlYm94Cg==

