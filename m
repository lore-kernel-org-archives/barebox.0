Delivery-date: Fri, 07 Jul 2023 14:15:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHkN0-001a8U-US
	for lore@lore.pengutronix.de; Fri, 07 Jul 2023 14:15:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHkMy-0004dM-NB
	for lore@pengutronix.de; Fri, 07 Jul 2023 14:15:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Enz+Q3vSulvp2CRGyt+EE6Hjk3FJn105R3dbIEXD3qc=; b=KD1WacITLfLdV+5lJ+Wbhz52nH
	cJJDhtLsmgk0xJTyPWfcgCeBktQpKd2ANE6iz9mKt63PkdVz3TMvU29F73tHpMhe9WU1L6AUlCu6f
	dZ9rVV2+aOrN1NMjfg8LVt2srTeSKjxsJeEdmQEJy6pijEwk0U+Ff5+RThwxwlhVaw2tiwN+JfoEl
	T4nMEMzK7m1CfCVx23AcUsM+ikXjYtmVCIJcm4AIig9fIdSIq3HeQNWZHhgfGASd6objDd29JNkQt
	vdpdZjvhl8itFRNYpkxM0I6i/QiWHKhUnbnCC9+EHJbRVC2rE5IJyRSgXsYCsjMKMidJImnrCiXwJ
	gL5ujunw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHkLe-004azY-2M;
	Fri, 07 Jul 2023 12:14:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHkLb-004ay8-1i
	for barebox@lists.infradead.org;
	Fri, 07 Jul 2023 12:14:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qHkLU-0004Dt-84; Fri, 07 Jul 2023 14:13:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qHkLT-00Cj6T-Ic; Fri, 07 Jul 2023 14:13:55 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qHkLT-00Dd3P-0H;
	Fri, 07 Jul 2023 14:13:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Jul 2023 14:13:54 +0200
Message-Id: <20230707121354.3248365-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230707121354.3248365-1-a.fatoum@pengutronix.de>
References: <20230707121354.3248365-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230707_051403_613891_16B79232 
X-CRM114-Status: GOOD (  10.77  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 3/3] usb: gadget: return error on missing UDC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Recent sync with kernel added the match_existing_only member, but set it
no where, leading to usb_gadget_register_driver succeeding on missing
UDC. This used to be an error and we depend on it, e.g.
global.usbgadget.autostart=1 is a no-op once usb_composite_probe has
succeeded, but if we signal success in error cases, it can't be used
to retry registration.

Fixes: 14211ab8b0e1 ("usb: gadget: Update core to Linux-6.3-rc2")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/composite.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/gadget/composite.c b/drivers/usb/gadget/composite.c
index 58c10f1191f8..f55ae5698e08 100644
--- a/drivers/usb/gadget/composite.c
+++ b/drivers/usb/gadget/composite.c
@@ -2496,6 +2496,7 @@ int usb_composite_probe(struct usb_composite_driver *driver)
 	gadget_driver->function =  (char *) driver->name;
 	gadget_driver->driver.name = driver->name;
 	gadget_driver->max_speed = driver->max_speed;
+	gadget_driver->match_existing_only = true;
 
 	return usb_gadget_register_driver(gadget_driver);
 }
-- 
2.39.2



