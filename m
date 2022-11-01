Delivery-date: Tue, 01 Nov 2022 16:33:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optGj-00B02q-5d
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 16:33:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optGh-0005NB-6I
	for lore@pengutronix.de; Tue, 01 Nov 2022 16:33:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8qZVFI9F1AqE7NIJX1YI87UV4sQuJscm26ghY3/j2K4=; b=NeGmQ0HjlftkLPoufYPNkECEnP
	A2ottQZLsJ79iRiIghXItUemfW9W4i+xTwWwIGqpeskAXx4fzSl7Yv9bC/eQj1FGlqvjJM7GDhxYk
	yXPC2vKGp63wwHtq9n2nTrWDHDYN77W38C0i5QDEZ7X+HZ/CvtSHWlwdzFWYT2ULot6v+lDjGMfcb
	0mnAUmu3mTXDzX0kFnYXVChO5U9aIlSIUssCVi6ADA7I+iAe/0TZoJDBtqCoZkvc1aqMTp4BOZyjh
	L/q/aqZjiwv8rFtbLF7lGJunU3K34DKbjy8vJ6DCzJ4/KFdETNMPfGuV6lQfvcR2GuQ8Sc6nJFlCd
	mV3oSSMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optFC-005ovZ-0N; Tue, 01 Nov 2022 15:32:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optEu-005oX8-48
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 15:31:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1optE3-0004fE-Nf; Tue, 01 Nov 2022 16:30:51 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE3-001hdY-T9; Tue, 01 Nov 2022 16:30:50 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE1-003Exz-DZ; Tue, 01 Nov 2022 16:30:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Nov 2022 16:30:41 +0100
Message-Id: <20221101153048.772146-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101153048.772146-1-s.hauer@pengutronix.de>
References: <20221101153048.772146-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_083144_289366_09503558 
X-CRM114-Status: GOOD (  12.37  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/14] imx-bbu-nand-fcb: pull printing debug info out of get_fcb()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

get_fcb() will be split into SoC specific variants. As a preparation
pull printing the fcb debug info out of this function to not have
to duplicate it in the SoC specific variants later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/xload-gpmi-nand.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-imx/xload-gpmi-nand.c b/arch/arm/mach-imx/xload-gpmi-nand.c
index a7398cc26a..dc4cc45be0 100644
--- a/arch/arm/mach-imx/xload-gpmi-nand.c
+++ b/arch/arm/mach-imx/xload-gpmi-nand.c
@@ -869,17 +869,6 @@ static int get_fcb(struct mxs_nand_info *info, void *databuf)
 			continue;
 		}
 
-		pr_debug("Found FCB:\n");
-		pr_debug("PageDataSize:     0x%08x\n", fcb->PageDataSize);
-		pr_debug("TotalPageSize:    0x%08x\n", fcb->TotalPageSize);
-		pr_debug("SectorsPerBlock:  0x%08x\n", fcb->SectorsPerBlock);
-		pr_debug("FW1_startingPage: 0x%08x\n",
-			fcb->Firmware1_startingPage);
-		pr_debug("PagesInFW1:       0x%08x\n", fcb->PagesInFirmware1);
-		pr_debug("FW2_startingPage: 0x%08x\n",
-			fcb->Firmware2_startingPage);
-		pr_debug("PagesInFW2:       0x%08x\n", fcb->PagesInFirmware2);
-
 		return 0;
 	}
 
@@ -1031,6 +1020,17 @@ static int __maybe_unused imx6_nand_load_image(struct imx_nand_params *params,
 
 	fcb = &info->fcb;
 
+	pr_debug("Found FCB:\n");
+	pr_debug("PageDataSize:     0x%08x\n", fcb->PageDataSize);
+	pr_debug("TotalPageSize:    0x%08x\n", fcb->TotalPageSize);
+	pr_debug("SectorsPerBlock:  0x%08x\n", fcb->SectorsPerBlock);
+	pr_debug("FW1_startingPage: 0x%08x\n",
+		fcb->Firmware1_startingPage);
+	pr_debug("PagesInFW1:       0x%08x\n", fcb->PagesInFirmware1);
+	pr_debug("FW2_startingPage: 0x%08x\n",
+		fcb->Firmware2_startingPage);
+	pr_debug("PagesInFW2:       0x%08x\n", fcb->PagesInFirmware2);
+
 	get_dbbt(info, databuf);
 
 	ret = read_firmware(info, fcb->Firmware1_startingPage, dest, len);
-- 
2.30.2



