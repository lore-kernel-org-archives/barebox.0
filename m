Delivery-date: Mon, 07 Jul 2025 07:56:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYepc-00EvdG-2b
	for lore@lore.pengutronix.de;
	Mon, 07 Jul 2025 07:56:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYepc-0006xj-6y
	for lore@pengutronix.de; Mon, 07 Jul 2025 07:56:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1i3QGTNUztxFwFxwzqElKI9L9pOJiAU42ef+mZsH7c=; b=mx5+1OJaTtSCoK
	XNEcObim4K56102QzmkXF3JgoblFxKk0kWKUAY995XOMvvx6ZFobFqFWreIrW8i+iuqw71+jQ3EvB
	gMHWj6IPeOwWhtYI2SZwinxyKGVrCr2wWmimtBZ34rYBsESiPkpW42d4SSrvq/Ie4QAOD64umMyM3
	Y162XNt2cnrOBO1MzEATXfM/VIiQ5WZnqnsFD0zhlzqGBSLFdC+JYjqcA7vW7mJ5Msq4KyYYSNdGZ
	tom568SHPRvEvE2aIYc0+YvecNrdwKLW/B4gflLhdHzfqcD9rlra8OfjxkXyYWZVX7JoLo0Qahl9C
	kha2SViz5QTCQ2FqoZ3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYeow-00000001UDH-3Zle;
	Mon, 07 Jul 2025 05:55:18 +0000
Received: from ns3108948.ip-54-37-254.eu ([54.37.254.54] helo=kmf2.trabucayre.com)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYenI-00000001U6M-2GTC
	for barebox@lists.infradead.org;
	Mon, 07 Jul 2025 05:53:39 +0000
Received: from kmf3.. (localhost [IPv6:::1])
	by kmf2.trabucayre.com (Postfix) with ESMTP id 6F750160516;
	Mon,  7 Jul 2025 05:53:33 +0000 (UTC)
From: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
To: barebox@lists.infradead.org
Date: Mon,  7 Jul 2025 05:53:30 +0000
Message-Id: <20250707055331.2355809-2-gwenj@trabucayre.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250707055331.2355809-1-gwenj@trabucayre.com>
References: <20250707055331.2355809-1-gwenj@trabucayre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250706_225336_744449_4FB76032 
X-CRM114-Status: UNSURE (   8.65  )
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
Subject: [PATCH 2/3] arch/arm/boards/avnet-zedboard/lowlevel.c: added SDIO clk frequency configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>

As mentionned in [1] MMC sometime fails to be initialized/ is not
working with this type of error:

arasan-sdhci e0100000.mmc@e0100000.of: registered as mmc0
malloc space: 0x17e00000 -> 0x1fdfffff (size 128 MiB)
arasan-sdhci e0100000.mmc@e0100000.of: error while transferring data for command 6
arasan-sdhci e0100000.mmc@e0100000.of: state = 0x01ff0202 , interrupt = 0x00208000
mmc0: Card's startup fails with -74
barebox-environment chosen:environment-sd.of: probe failed: No such file or directory
environment load /dev/env0: No such file or directory

This patch adds SDIO clck configuration allowing to have a valid MMC
clock frequency.

[1] https://lore.barebox.org/barebox/VI1PR02MB4429606E3B06D0F53D2B4175AB4DA@VI1PR02MB4429.eurprd02.prod.outlook.com/T/#m1cb8598da4741c0b7a41944e1aecef373dd74319

Signed-off-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
---
 arch/arm/boards/avnet-zedboard/lowlevel.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index 605aab783a..b7a98f5a82 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -241,6 +241,7 @@ static void avnet_zedboard_ps7_init(void)
 	/* poor mans clkctrl */
 	writel(0x00001403, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_UART_CLK_CTRL);
 	writel(0x00000101, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_LQSPI_CLK_CTRL);
+	writel(0x00001401, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_SDIO_CLK_CTRL);
 
 	/* GEM0 */
 	writel(0x00000001, 0xf8000138);
-- 
2.47.2



