Delivery-date: Wed, 23 Feb 2022 13:05:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMqOy-007bcU-5I
	for lore@lore.pengutronix.de; Wed, 23 Feb 2022 13:05:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMqOt-0005vf-0G
	for lore@pengutronix.de; Wed, 23 Feb 2022 13:05:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=onxOESLWZFZ/eaws+P6Flibhytt/cHxvMBD2yzKWnlk=; b=VIfVvdNa4ylTmI
	vv3mc+0w2M4Nj+zTXYNUqvLlE7ST9kHTHlZO1eHmPpWj9z5xcL16LG0oMulAKScOtp6RSyU/ud/e9
	XXOLoGxkcmtthSM6Fd1T5eXQgwVRmlnQrybyLCzjbtHyCm8kcfMn2X7/E6EwPeB9xKJttCd9giPlD
	cG3IpPetcMSfegHsGHfLcKzbmgvamP/Tr6fnxYX1Ur02mJLgSaXS7Lr2ABKXy+0UWfpuxPIVqgtjt
	8jFV1whHx3W+g3jUMJvOouf8ULccEQucsv6zpNB61j1jP6G9fTxwx1IKT62IGhz5qKJrLc5watJjr
	mr3ndLCEQFVvRc/2JFTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMqNS-00E3WM-Qa; Wed, 23 Feb 2022 12:04:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMpz7-00DvNP-7n
 for barebox@lists.infradead.org; Wed, 23 Feb 2022 11:39:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nMpz5-0001QO-U4; Wed, 23 Feb 2022 12:39:03 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nMpz5-00CgNC-FW; Wed, 23 Feb 2022 12:39:03 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 23 Feb 2022 12:38:47 +0100
Message-Id: <20220223113846.3022227-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_033905_306689_EFACDD72 
X-CRM114-Status: GOOD (  11.12  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: stm32mp: ddrctl: add STM32MP131 RAM size querying support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

buswidth is read from HW. With nb_bytes == 2, there is a possibility
that we get a zero size out here, if driver and device are
mismatched, e.g. because barebox is booted in FIP with mismatched
external device tree.

As this runs very early before relocation, round up instead of crashing
to be a bit more on the safe side.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/ddrctrl.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
index 7f0944d7e77c..ed211cf58ebc 100644
--- a/arch/arm/mach-stm32mp/ddrctrl.c
+++ b/arch/arm/mach-stm32mp/ddrctrl.c
@@ -101,7 +101,8 @@ static unsigned long ddrctrl_addrmap_ramsize(struct stm32mp1_ddrctl __iomem *d,
 	if (LINE_UNUSED(reg, ADDRMAP6_ROW_B13)) rows--;
 	if (LINE_UNUSED(reg, ADDRMAP6_ROW_B12)) rows--;
 
-	return memory_sdram_size(cols, rows, BIT(banks), nb_bytes / BIT(buswidth));
+	return memory_sdram_size(cols, rows, BIT(banks),
+				 DIV_ROUND_UP(nb_bytes, BIT(buswidth)));
 }
 
 static inline unsigned ddrctrl_ramsize(void __iomem *base, unsigned nb_bytes)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

