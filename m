Delivery-date: Fri, 25 Feb 2022 11:05:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNXTg-009nFb-NV
	for lore@lore.pengutronix.de; Fri, 25 Feb 2022 11:05:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNXTf-0003LN-Fz
	for lore@pengutronix.de; Fri, 25 Feb 2022 11:05:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jMdY7yla6i4jELsGhbqXiyHzX+dJ+OGl5cDC20dU4Ow=; b=iBgC1F1WL4iktM
	fw0Jn3/n84qaPw1sY0qNLCvdLoydXMWVTHM4Z9J9OEoDBlgKXzD4ENayksaz5u+IaUhMB6O1+Xjrf
	1dDE9V0pgMuRpFRp2QxsD95DvavLnrhNhM0nB0YX0VyFs0TBJOIH4CKwOei4WcjE9uv701Mn+ZaBV
	N7zDVW/ONOtyogn3WLx3eVsuq9U7IQqjYNimAFK5vauwus5ItWetdjkbP8LGBA7pSBo9kC4vzzoSY
	dJYqMGYPcwQEHR/02xMQ08WHD4Cm5tRRFo5RoW4H8/M3IffqwOxDCYHQY1luNR9jeczF8ORXljTKC
	R5lF3c1R05Kpc83oVMgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNXS7-004Gpm-Tq; Fri, 25 Feb 2022 10:03:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNXS2-004GpE-27
 for barebox@lists.infradead.org; Fri, 25 Feb 2022 10:03:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <bst@pengutronix.de>)
 id 1nNXRy-00035V-BV; Fri, 25 Feb 2022 11:03:46 +0100
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 25 Feb 2022 11:03:44 +0100
Message-Id: <20220225100344.4166248-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_020350_142646_EF08F9B8 
X-CRM114-Status: UNSURE (   6.53  )
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
Cc: Bastian Krause <bst@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] arch: arm: mach-imx: document field return in CSF template
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Activating the field return configuration returns a locked-down board
(nearly) to its open state. In order to burn the FIELD_RETURN fuse, the
CSF must contain a specific unlock command with the device's UID.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 .../include/mach/habv4-imx6-gencsf-template.h        | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
index a60b485292..45da2981cb 100644
--- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
+++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
@@ -39,6 +39,18 @@ hab Engine = SETUP_HABV4_ENGINE
 hab Features = SETUP_HABV4_FEATURES
 #endif
 
+/*
+// allow fusing FIELD_RETURN
+// # ocotp0.permanent_write_enable=1
+// # mw -l -d /dev/imx-ocotp 0xb8 0x1
+hab [Unlock]
+hab Engine = OCOTP
+hab Features = FIELD RETURN
+// device-specific UID:
+// $ dd if=/sys/bus/nvmem/devices/imx-ocotp0/nvmem bs=4 skip=1 count=2 status=none | hexdump -ve '1/1 "0x%.2x, "' | sed 's/, $//'
+hab UID = 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08
+*/
+
 hab [Install Key]
 /* verification key index in key store (0, 2...4) */
 hab Verification index = 0
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

