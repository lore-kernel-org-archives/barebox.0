Delivery-date: Wed, 19 Jan 2022 15:47:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nACFG-006jWR-Lm
	for lore@lore.pengutronix.de; Wed, 19 Jan 2022 15:47:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nACFF-0006qR-A0
	for lore@pengutronix.de; Wed, 19 Jan 2022 15:47:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2kNetDfs1aYyJahNco0+Pj0BeO+ytxfKwJGFxYyICaM=; b=Ny64/Mpkevoa1I
	DkVVinkidLiHEh1U09qTlw6ol9qD0kjUKJuMgyO77CW2MNsDqSmiIi1AzgmrTEi7t3O9EgzhdH8UP
	b3oMRRe7+ZHJ01Dg5xrrdF2bZW2o4xNJWzSShRMwKHQD66UiGDuZc67FRMS/3F21uukW+eG9A6f4U
	mrtfSca4E2+JZxrWomIPxhbRZngLv1gtFgB6BNPxCt0jC4SVkvCjw3xaJ+vNq2IQZOTsWEl9DoEDV
	0IVOb51VRYLDQOXp/QU0FdW1wDNQ0SRuvTLxie/YHqSk86OZc6sRqginzUz9nTFPj7TX8MnpfnCwO
	ziZyKtTYayTtzf2DXxYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nACDr-005wOe-Tp; Wed, 19 Jan 2022 14:46:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nACDc-005wLN-6b
 for barebox@lists.infradead.org; Wed, 19 Jan 2022 14:45:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <uol@pengutronix.de>)
 id 1nACDZ-0006dX-3R; Wed, 19 Jan 2022 15:45:45 +0100
Received: from uol by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <uol@pengutronix.de>)
 id 1nACDY-008A0R-KE; Wed, 19 Jan 2022 15:45:44 +0100
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 19 Jan 2022 15:45:43 +0100
Message-Id: <20220119144543.1944438-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_064548_271568_57A21037 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] power: reset: Kconfig: fix copy-&-paste bug in help text
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

U2lnbmVkLW9mZi1ieTogVWxyaWNoIMOWbG1hbm4gPHUub2VsbWFubkBwZW5ndXRyb25peC5kZT4K
LS0tCiBkcml2ZXJzL3Bvd2VyL3Jlc2V0L0tjb25maWcgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcG93
ZXIvcmVzZXQvS2NvbmZpZyBiL2RyaXZlcnMvcG93ZXIvcmVzZXQvS2NvbmZpZwppbmRleCBlNDE1
MWQ4YmM2MDguLjBhODhiY2RlZmE5YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9wb3dlci9yZXNldC9L
Y29uZmlnCisrKyBiL2RyaXZlcnMvcG93ZXIvcmVzZXQvS2NvbmZpZwpAQCAtMTIsNyArMTIsOCBA
QCBjb25maWcgU1lTQ09OX1JFQk9PVF9NT0RFCiAJaGVscAogCSAgU2F5IHkgaGVyZSB3aWxsIGVu
YWJsZSByZWJvb3QgbW9kZSBkcml2ZXIuIFRoaXMgd2lsbAogCSAgZ2V0IHJlYm9vdCBtb2RlIGFy
Z3VtZW50cyBhbmQgc3RvcmUgaXQgaW4gU1lTQ09OIG1hcHBlZAotCSAgcmVnaXN0ZXIsIHRoZW4g
dGhlIGJvb3Rsb2FkZXIgY2FuIHJlYWQgaXQgdG8gdGFrZSBkaWZmZXJlbnQKKwkgIHJlZ2lzdGVy
LCB0aGVuIHRoZSBib290bG9hZGVyIGNhbiByZWFkIGl0IGFuZCB0YWtlIGRpZmZlcmVudAorCSAg
YWN0aW9uIGFjY29yZGluZyB0byB0aGUgbW9kZS4KIAogY29uZmlnIE5WTUVNX1JFQk9PVF9NT0RF
CiAJYm9vbCAiR2VuZXJpYyBOVk1FTSByZWJvb3QgbW9kZSBkcml2ZXIiCi0tIAoyLjMwLjIKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1h
aWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==

