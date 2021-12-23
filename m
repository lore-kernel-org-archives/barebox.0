Delivery-date: Thu, 23 Dec 2021 17:06:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n0QbX-00Fsdl-5G
	for lore@lore.pengutronix.de; Thu, 23 Dec 2021 17:06:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n0QbR-0008FL-UP
	for lore@pengutronix.de; Thu, 23 Dec 2021 17:06:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DeS2HSY/8uJ8vQf4grV7d3Ptnpj9BvYks+7C1C0r+ZY=; b=nG+fZ2mD79blcN
	MDiIzxgd/znCOVEM+jeNuxHMet5tsdyRHJzPmS3vVhRj2wvF2PIucc3GxIvuV60BBPmfxaTOFgtCA
	twlmBMCht7+96HBnaRcd+dKm/Lp+fU+b9nEhx5eDJCOdLZtqUaG5SRCyzCO6STJwstMOwtDBXBlps
	59SwmNaKS8JkCSGw14GhGwwW7MLRuf0sWdp8lMHq2NBfZyj8NBsoadyDOiAl/fX3ZLSK2IjM2q5Jo
	SvoXRUPFq3rxBHzEHBpRdNMGO9lSbzIf2atDgeot9DunMgYoctG81OeEvN6AEkoaKOkMNxZFQYf9c
	OYWToGsJ9jXfIf3CxBHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0QZu-00D0bR-49; Thu, 23 Dec 2021 16:04:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0QZe-00D0XW-K3
 for barebox@lists.infradead.org; Thu, 23 Dec 2021 16:04:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1n0QZb-0007gF-MQ; Thu, 23 Dec 2021 17:04:07 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>)
 id 1n0QZb-006DLM-Ly; Thu, 23 Dec 2021 17:04:06 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>)
 id 1n0QZY-000VDt-RD; Thu, 23 Dec 2021 17:04:04 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.tretter@pengutronix.de
Date: Thu, 23 Dec 2021 17:03:59 +0100
Message-Id: <20211223160404.119970-4-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211223160404.119970-1-m.tretter@pengutronix.de>
References: <20211223160404.119970-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211223_080410_726569_D0D67062 
X-CRM114-Status: UNSURE (   8.48  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/8] i2c: stub device_i2c_driver if I2C is disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows drivers that support multiple buses to keep the code for
registering their I2C variant even if I2C is disabled.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changelog:

v2:

- new patch
---
 include/i2c/i2c.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index af6287602ca5..7207b1180e1d 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -333,9 +333,14 @@ static inline int i2c_driver_register(struct driver_d *drv)
 	return register_driver(drv);
 }
 
+#ifdef CONFIG_I2C
 #define coredevice_i2c_driver(drv) \
 	register_driver_macro(coredevice, i2c, drv)
 #define device_i2c_driver(drv) \
 	register_driver_macro(device, i2c, drv)
+#else
+#define coredevice_i2c_driver(drv)
+#define device_i2c_driver(drv)
+#endif
 
 #endif /* I2C_I2C_H */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

