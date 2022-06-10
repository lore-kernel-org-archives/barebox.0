Delivery-date: Fri, 10 Jun 2022 09:07:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzYk0-009lZG-N5
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 09:07:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzYjz-0002vr-As
	for lore@pengutronix.de; Fri, 10 Jun 2022 09:07:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3QleL2GIJR639tTkOHjYqFPPygtVckudtTdxaBJjpDY=; b=Zfa9Gi7p2ZbPkz
	HAkv7e2eG5tUNW7tYLBEArc4Ma7bOorlhhgu9c2JDG1iaB3vH1y6hTaFXPnSQhRNwzKNdabFUo042
	vZjzmQHrIuXBH4ANiH5IsTorh+q1U2q7WFcepnKQ0u3eX9OXnWcaC8KDNeAjKNUwSAerXyb2nf608
	MzmgjYTAdWssuja9Q1L/LEwbJuBWayq3epIap21JS72sv5FaL/uuw8+8Ia+FN5gt1uBktXNKqozpx
	JSJFgLekf4kF2K+sFWg5MX+7LLaJlM8ibxGtfIGuOlmR0jEuE2PriRjrPF55sRl2y8jy7CI5CS/wz
	1cJmOnJqbOG/Yg37NcPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzYii-006KZ0-9A; Fri, 10 Jun 2022 07:06:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzYia-006KXX-4o
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 07:06:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1nzYiW-0002aX-77; Fri, 10 Jun 2022 09:06:00 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1nzYiW-007XDG-Sj; Fri, 10 Jun 2022 09:05:59 +0200
Received: from ukl by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1nzYiU-00B8Ez-Mb; Fri, 10 Jun 2022 09:05:58 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?J=C3=BCrgen=20Borleis?= <jbe@pengutronix.de>
Date: Fri, 10 Jun 2022 09:05:57 +0200
Message-Id: <20220610070557.2651943-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_000604_225303_BA8E2F4B 
X-CRM114-Status: GOOD (  10.06  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX7/8M: Make sure the output parameter is always assigned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Q2FsbGVycyBvZiAqX2dldF9ib290X3NvdXJjZSAoZS5nLiBzdGFydF9hdGYoKSBvZgpueHAtaW14
OG1tLWV2ayBvciBwcm90b25pYy1pbXg4bSkgZXhwZWN0IHNyYyB0byBob2xkIHRoZSBib290c291
cmNlCmFmdGVyIHJldHVybi4gU28gYXNzaWduIGEgdmFsdWUgcmVsaWFibHkuCgpGaXhlczogZWE1
NTc3MDMwOGMwICgiQVJNOiBpLk1YOiBBZGQgaS5NWDcgYmFzZSBhcmNoaXRlY3R1cmUgc3VwcG9y
dCIpClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVu
Z3V0cm9uaXguZGU+Ci0tLQogYXJjaC9hcm0vbWFjaC1pbXgvYm9vdC5jIHwgMSArCiAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLWlteC9i
b290LmMgYi9hcmNoL2FybS9tYWNoLWlteC9ib290LmMKaW5kZXggNjNhZmRmMWVmNGVkLi42NTJl
Mjg2OWYyZDcgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL21hY2gtaW14L2Jvb3QuYworKysgYi9hcmNo
L2FybS9tYWNoLWlteC9ib290LmMKQEAgLTUyNiw2ICs1MjYsNyBAQCBzdGF0aWMgdm9pZCBfX2lt
eDdfZ2V0X2Jvb3Rfc291cmNlKGVudW0gYm9vdHNvdXJjZSAqc3JjLCBpbnQgKmluc3RhbmNlLAog
CQkqc3JjID0gQk9PVFNPVVJDRV9TRVJJQUw7CiAJCWJyZWFrOwogCWRlZmF1bHQ6CisJCSpzcmMg
PSBCT09UU09VUkNFX1VOS05PV047CiAJCWJyZWFrOwogCX0KIH0KCmJhc2UtY29tbWl0OiA2YTNm
OWVkMWY1YzU1OTU3YjJlZDRmNDYwOTU1MjgxNTM5ZThlNzg1Ci0tIAoyLjMwLjIKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcg
bGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

