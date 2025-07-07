Delivery-date: Mon, 07 Jul 2025 07:56:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYepd-00Evdb-24
	for lore@lore.pengutronix.de;
	Mon, 07 Jul 2025 07:56:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYepd-0006yD-2c
	for lore@pengutronix.de; Mon, 07 Jul 2025 07:56:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JyPy4rN8kFxDWJ9ePhK1fNVUc5sNJ3h0wgMpHYb5x1M=; b=Xw0jwNpAaZYgsl
	RROxz84DKgdFUXZpDu/Jtw+KdtxX5CX1Y8BMWblY32XYPAToySL2XAvOlT0caPVSHI9TVwSOkSuKs
	DeTb8t60JZT76B3RPtzIN8Oya5N72g1KkEM24i6ohEoOffvOgBv+ezLo3rNb1pwF6r25lG43hI5dQ
	KiqNESrwZf1Eent6pbf48LKKm60OuAaCe8ZbC8QdBNF3Co4l2o1BCWXFtUfQSQ0DiGHL1gciBnWne
	Puv9KzSSWEX9EGvEMqJZOHU4WihiSAJ+G5qKtZyI+ZAS8+a3I65wLwBVzXlOGhn5sadkmvCcdSEtm
	YJI0kef2nCZ61TbGmV7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYeox-00000001UDh-3ocD;
	Mon, 07 Jul 2025 05:55:19 +0000
Received: from ns3108948.ip-54-37-254.eu ([54.37.254.54] helo=kmf2.trabucayre.com)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYenL-00000001U7S-08XX
	for barebox@lists.infradead.org;
	Mon, 07 Jul 2025 05:53:40 +0000
Received: from kmf3.. (localhost [IPv6:::1])
	by kmf2.trabucayre.com (Postfix) with ESMTP id 563FA160227;
	Mon,  7 Jul 2025 05:53:33 +0000 (UTC)
From: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
To: barebox@lists.infradead.org
Date: Mon,  7 Jul 2025 05:53:29 +0000
Message-Id: <20250707055331.2355809-1-gwenj@trabucayre.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250706_225339_211060_51D521CF 
X-CRM114-Status: UNSURE (   6.51  )
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
Cc: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>, Johannes Roith <johannes@gnu-linux.rocks>, Sascha Hauer <sha@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] arch/arm/boards/avnet-zedboard/zedboard.zynqcfg: removed everything but stop instruction to fix barebox boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>

As mentionned in [1,2] sequence present in arch/arm/boards/avnet-zedboard/zedboard.zynqcfg
causes boot failure without any messages.

This patch removes all instructions but the last one allowing to have
access to the barebox prompt

[1] https://lore.barebox.org/barebox/VI1PR02MB4429606E3B06D0F53D2B4175AB4DA@VI1PR02MB4429.eurprd02.prod.outlook.com/T/#m5fa4fe7832215a7e8160ef6fbd3d122dd58b0a92
[2] https://lore.barebox.org/barebox/VI1PR02MB4429606E3B06D0F53D2B4175AB4DA@VI1PR02MB4429.eurprd02.prod.outlook.com/T/#m5fa4fe7832215a7e8160ef6fbd3d122dd58b0a92

Signed-off-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
---
 .../boards/avnet-zedboard/zedboard.zynqcfg    | 20 -------------------
 1 file changed, 20 deletions(-)

diff --git a/arch/arm/boards/avnet-zedboard/zedboard.zynqcfg b/arch/arm/boards/avnet-zedboard/zedboard.zynqcfg
index c6a96aec7b..8e68bbf618 100644
--- a/arch/arm/boards/avnet-zedboard/zedboard.zynqcfg
+++ b/arch/arm/boards/avnet-zedboard/zedboard.zynqcfg
@@ -1,24 +1,4 @@
 #include <zynq/zynq7000-header-regs.h>
 
-wm 32 ZYNQ_SLCR_UNLOCK		0x0000DF0D
-wm 32 ZYNQ_CLK_621_TRUE		0x00000001
-wm 32 ZYNQ_APER_CLK_CTRL	0x01FC044D
-
-wm 32 ZYNQ_ARM_PLL_CTRL		0x00028008
-wm 32 ZYNQ_ARM_PLL_CFG		0x000FA220
-wm 32 ZYNQ_ARM_PLL_CTRL		0x00028010
-wm 32 ZYNQ_ARM_PLL_CTRL		0x00028011
-wm 32 ZYNQ_ARM_PLL_CTRL		0x00028010
-wm 32 ZYNQ_ARM_PLL_CTRL		0x00028000
-
-wm 32 ZYNQ_IO_PLL_CTRL		0x0001E008
-wm 32 ZYNQ_IO_PLL_CFG		0x001452C0
-wm 32 ZYNQ_IO_PLL_CTRL		0x0001E010
-wm 32 ZYNQ_IO_PLL_CTRL		0x0001E011
-wm 32 ZYNQ_IO_PLL_CTRL		0x0001E010
-wm 32 ZYNQ_IO_PLL_CTRL		0x0001E000
-
-wm 32 ZYNQ_SDIO_CLK_CTRL	0x00000a03
-
 /* stop */
 wm 32 0xFFFFFFFF			0x00000000
-- 
2.47.2



