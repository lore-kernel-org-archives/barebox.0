Delivery-date: Mon, 12 Jun 2023 14:54:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h4G-003qBY-LW
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:54:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h4E-0006VD-6c
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:54:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F0Lx3jiJzGa/13WsA/Fsw6PM/FeeqHiBF9MwoqBtX08=; b=PWLB4oxzBQPVv2DWpd4evsL8eP
	wyk3KAFwF/v3ViWoQlkGfqgymrh59AUpjKTiYXxwdVXI6WFKWwvspE1CtrYrdwJ3AnL76SbV9UUX2
	DfoBlIoqwSUEpG4CxoCZi40nHhCm6FCjVr0Mlp6U2zBDIXD/I9ZOXy6EB85mt8aTpVSLNDXh6Un6F
	gNHcjumCyjFGn8+D++Izc83ZY/iRWRUbQlsqPCfHUufItCEdYHGS6sY6vO5Ddw2RU8gwURnLxtqdM
	nLoU+ZWSR7YI3ntYnZpvs8lKvc/+JAyZSlWHHNO0HTznFbzp7tLzR4D8KKlekvcLBu1It+OQ7TLM0
	K+0VJV2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h3H-0045NC-0d;
	Mon, 12 Jun 2023 12:53:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h39-0045HL-1s
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:53:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h38-0006Ba-BW; Mon, 12 Jun 2023 14:53:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h37-006tTi-N8; Mon, 12 Jun 2023 14:53:33 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h36-004YHa-6s; Mon, 12 Jun 2023 14:53:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 14:53:28 +0200
Message-Id: <20230612125331.1085059-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612125331.1085059-1-a.fatoum@pengutronix.de>
References: <20230612125331.1085059-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_055335_617300_58BDB677 
X-CRM114-Status: GOOD (  10.83  )
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
Subject: [PATCH master 3/6] clocksource: armv7m_systick: fix MMIO address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SYST_CALIB is a register within the ARMv7-M SysTick peripheral, but we
erroneously dereferenced some random spot within the barebox data
section. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clocksource/armv7m_systick.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clocksource/armv7m_systick.c b/drivers/clocksource/armv7m_systick.c
index f299d334a76e..33ac426878ba 100644
--- a/drivers/clocksource/armv7m_systick.c
+++ b/drivers/clocksource/armv7m_systick.c
@@ -64,7 +64,7 @@ static int armv7m_systick_probe(struct device *dev)
 
 	writel_relaxed(SYSTICK_LOAD_RELOAD_MASK, systick_base + SYST_RVR);
 
-	cal = readl(&systick_base + SYST_CALIB);
+	cal = readl(systick_base + SYST_CALIB);
 	if (cal & SYSTICK_CAL_NOREF)
 		writel(SYSTICK_CTRL_EN | SYSTICK_CTRL_CPU_CLK, systick_base + SYST_CSR);
 	else
-- 
2.39.2



