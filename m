Delivery-date: Mon, 17 Oct 2022 09:11:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKHe-00BNhm-9C
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 09:11:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKHb-0005ql-7G
	for lore@pengutronix.de; Mon, 17 Oct 2022 09:11:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PBXYor5yUbxq2Vxfn98Pf8M2gcrSpWnOPGUg3MDt6pY=; b=qSG6cTWuiSV/Ky+BOBQJaCbjsd
	EVC/Df6SgKc+UjljSVvyyJii5kWVm2sJVoXq7+IY3uMS0xYdeInybPfeNllZdgZ5Y7WmhENjqh38v
	8iwjcAdMrTstlUsxng5t5niWewQTOtowIF+qg3eP5gmPtlV5GSHSUjYIRzVTlG28dHgHYEhco/1sF
	zB3Dam2ICei5fOkp8Zbxh1Rxi67niT3tSeb++puRITlUmgKA2Z+6syBGv/B8hUnZvMg1M7a9Iuk3p
	/8ilOeo4CyMBVM9VtnmuPNyrl1GT9JoF9iKaSzY/xRwBn+WLe83OAYAmGcyYT1PejvOirjeJulfax
	oWhZilkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKGP-008MfD-BJ; Mon, 17 Oct 2022 07:10:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKGD-008MZt-1Z
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 07:10:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1okKGB-0004yH-Ig; Mon, 17 Oct 2022 09:10:03 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKGA-0021Ue-SQ; Mon, 17 Oct 2022 09:10:02 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKG8-0067Om-Pu; Mon, 17 Oct 2022 09:10:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Oct 2022 09:09:57 +0200
Message-Id: <20221017071000.1458292-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221017071000.1458292-1-a.fatoum@pengutronix.de>
References: <20221017071000.1458292-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_001005_247476_4D5E064F 
X-CRM114-Status: UNSURE (   8.15  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/8] watchdog: imxwd: set imxwd-warm as reboot mode default handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Set RESTART_FLAG_WARM_BOOTROM for imxwd-warm, so reset -w directly
selects this handler. i.MX6QDL/8MM Users now can just do

  gpr.reboot_mode.next=serial reset -w

and it should behave as expected.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/imxwd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index b669f6702d62..5e9962866f54 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -230,6 +230,7 @@ static int imx21_wd_init(struct imx_wd *priv)
 	priv->restart_warm.name = "imxwd-warm";
 	priv->restart_warm.restart = imxwd_force_soc_reset_internal;
 	priv->restart_warm.priority = RESTART_DEFAULT_PRIORITY - 10;
+	priv->restart_warm.flags = RESTART_FLAG_WARM_BOOTROM;
 
 	restart_handler_register(&priv->restart_warm);
 
-- 
2.30.2



