Delivery-date: Thu, 16 May 2024 09:09:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7VEo-00GuUM-3C
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 09:09:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7VEm-0006UE-Cm
	for lore@pengutronix.de; Thu, 16 May 2024 09:09:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RB9+jIYZ3ogug6kyUyQcGnO0PYDd9MElE0MYiAlo2tA=; b=rgDXHMfnqJy90CAfIdUnVr7uno
	9dAHbbjnqWV0D9ilSsRmahrf0mJP9McPG8O+7aXTfy+x8Y4NroCPW/TAjF3lvRrfDKWOV1+3Se4C1
	o79p+klK1pq1LPYGgvDzNSucIq75orrvkXqIovth8hbZAuQdaIVShcE295/mylhcx8g/Zxxypvdnq
	g3KQ9RD9/tJNmP40W6nEfYzc9I2+8n479bPuKnk5kn7mxBN3NuVWwumCkiaUOnLFHoX0erxsVbnSj
	WWwG9hMrTLzVhAVaX8/i9C3O1sF55q5CQ8yIgEEo59gcRLYky+FRVrAr/9cd9a1ygRlchQz7hRYvL
	ELnkcXbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7VED-00000003wQf-1iWO;
	Thu, 16 May 2024 07:08:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7VE4-00000003wLb-0hCY
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 07:08:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VDz-00061p-S7; Thu, 16 May 2024 09:08:23 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VDz-001fSy-FW; Thu, 16 May 2024 09:08:23 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VDz-00BWfZ-1D;
	Thu, 16 May 2024 09:08:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 16 May 2024 09:08:16 +0200
Message-Id: <20240516070822.2746845-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240516070822.2746845-1-s.hauer@pengutronix.de>
References: <20240516070822.2746845-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_000828_333804_ACD82187 
X-CRM114-Status: GOOD (  13.26  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] ARM: Freescale i.MX23 evk: use cdev_open_by_name()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

cdev_by_name() returns a cdev without increasing its reference count. In
order to maintain a proper reference counting use cdev_open_by_name()
instead and make sure it's closed afterwards when no longer needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index d4de99eafb..b10a6e8dcd 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -52,22 +52,21 @@ static struct fsl_usb2_platform_data usb_pdata = {
  */
 static int register_persistent_environment(void)
 {
-	struct cdev *cdev;
+	struct cdev *cdev, *env;
 
 	/*
 	 * The imx23-olinuxino only has one MCI card socket.
 	 * So, we expect its name as "disk0".
 	 */
-	cdev = cdev_by_name("disk0");
+	cdev = cdev_open_by_name("disk0", O_RDONLY);
 	if (cdev == NULL) {
 		pr_err("No MCI card preset\n");
 		return -ENODEV;
 	}
-
-
+	cdev_close(cdev);
 
 	/* MCI card is present, also a useable partition on it? */
-	cdev = cdev_by_name("disk0.1");
+	cdev = cdev_open_by_name("disk0.1", O_RDONLY);
 	if (cdev == NULL) {
 		pr_err("No second partition available\n");
 		pr_info("Please create at least a second partition with"
@@ -76,8 +75,10 @@ static int register_persistent_environment(void)
 	}
 
 	/* use the full partition as our persistent environment storage */
-	cdev = devfs_add_partition("disk0.1", 0, cdev->size,
+	env = devfs_add_partition("disk0.1", 0, cdev->size,
 						DEVFS_PARTITION_FIXED, "env0");
+	cdev_close(cdev);
+
 	return PTR_ERR_OR_ZERO(cdev);
 }
 
-- 
2.39.2



