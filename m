Delivery-date: Mon, 05 Jun 2023 08:30:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63jx-00BRvD-2F
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:30:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63ju-0002gq-FO
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:30:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dTLqQ/aRUVHWnRWCMp+22JKZWwNRfzjgo/bc5biw/7M=; b=U3XKVqqGXwZNbqypXSbbHdqD0a
	xmaXaD3k4eRvYPs+Ninv2/86F24wy5F79fXUxjEcUAzyBaavs8rjWhoWlTTgi7tLTsMn4j54PcKQK
	z0Z0Xwgj1XqYP2ii4GaCKCX+wQosS2055uLdcVtj5qarjbazeePI4/gdS0247keAm7vhFlCl3UNQw
	g9VXUyDWdWQuPHRVRIpPx+4OAWfxTVhrBG3vRW+pkt30Q1PhhTS1GRLgnmgDfRtI27d7qGX1a1xdE
	tiNwv/SuTkt42q+4iMaNgVRtf3t0CibtevUJTIAhd7qALPma5Y45GBYEDdLcct24lESfb4mPQkAol
	CiVxda0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63is-00ELhM-1m;
	Mon, 05 Jun 2023 06:29:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63ip-00ELex-2L
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:29:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63io-00024T-Da; Mon, 05 Jun 2023 08:29:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63in-005Cpb-My; Mon, 05 Jun 2023 08:29:41 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63im-001C2s-QX; Mon, 05 Jun 2023 08:29:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:29:38 +0200
Message-Id: <20230605062939.242063-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230605062939.242063-1-a.fatoum@pengutronix.de>
References: <20230605062939.242063-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_232943_769022_475E0CBA 
X-CRM114-Status: UNSURE (   9.16  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 6/7] MIPS: longsoon: restart: hide access to zero page
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Watchdog on Longsoon appears to be at address 0. Let's use
OPTIMIZER_HIDE_VAR, so GCC doesn't warn about it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/mips/mach-loongson/loongson1_reset.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/mips/mach-loongson/loongson1_reset.c b/arch/mips/mach-loongson/loongson1_reset.c
index 85752f4ab825..9b4da217f80d 100644
--- a/arch/mips/mach-loongson/loongson1_reset.c
+++ b/arch/mips/mach-loongson/loongson1_reset.c
@@ -11,9 +11,13 @@
 
 static void __noreturn longhorn_restart_soc(struct restart_handler *rst)
 {
-	__raw_writel(0x1, WDT_EN);
-	__raw_writel(0x1, WDT_SET);
-	__raw_writel(0x1, WDT_TIMER);
+	void __iomem *wdt = IOMEM(0);
+
+	OPTIMIZER_HIDE_VAR(wdt);
+
+	__raw_writel(0x1, wdt + WDT_EN);
+	__raw_writel(0x1, wdt + WDT_SET);
+	__raw_writel(0x1, wdt + WDT_TIMER);
 
 	hang();
 }
-- 
2.39.2



