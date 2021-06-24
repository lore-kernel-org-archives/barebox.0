Delivery-date: Thu, 24 Jun 2021 17:11:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwR0Z-0005F9-Oz
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 17:11:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwR0Y-0003DU-Ux
	for lore@pengutronix.de; Thu, 24 Jun 2021 17:11:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uG82c6Im8L89n36x10lKHa45fvEENNYg24kQeQtq9So=; b=z4dcgmEfz7KIct
	uuUdzatQldjNmUq+SeGkgHY7AdVAZ3ldGT/3lOB8J8S10xiZCY1RHPHDbMO/42503giNdGL4HfJYp
	9SSHvzFRyIITF3ic7Dk7LpeRelTfd6xLb5rz04HK7mSn/eWSA8/v8xsXvFqgzMjiUB6+6KlaZXHrK
	1SLyHM8CfGLcv4bKcCqbR73EuI4VcOX16Lv3DBN4eokwZFmIPGBs47Pxd5Ma0SVm0r4aS8ChKh1Ae
	Kge780I120a0vCHMdzP1L5Oz0H6WlEJwWDr12ySdOQzufmxNpa2DbVPo8uPuV7IsMwLsLpawxbZP1
	EZmgj2B3jgL00cgMg21w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwQzI-00FCfu-CJ; Thu, 24 Jun 2021 15:09:52 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwQzC-00FCdw-2U
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 15:09:47 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:1476:ce84:e216:add8])
 by andre.telenet-ops.be with bizsmtp
 id M39f2500Y2B1U990139fxA; Thu, 24 Jun 2021 17:09:39 +0200
Received: from rox.of.borg ([192.168.97.57])
 by ramsan.of.borg with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1lwQz5-003JGi-61; Thu, 24 Jun 2021 17:09:39 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1lwQz4-003jq1-K2; Thu, 24 Jun 2021 17:09:38 +0200
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 24 Jun 2021 17:09:31 +0200
Message-Id: <20210624150931.891123-1-geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_080946_272498_F4FB76F8 
X-CRM114-Status: UNSURE (   7.15  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] clk: starfive-jh7100: Fix duplicate numbers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fixes: 6f92e74e5b94d8e6 ("clk: add initial StarFive clock support")
Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
---
Completely untested.

 include/dt-bindings/clock/starfive-jh7100.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/dt-bindings/clock/starfive-jh7100.h b/include/dt-bindings/clock/starfive-jh7100.h
index 9ad5e7f9bfd5f655..2512bb810ec45c8b 100644
--- a/include/dt-bindings/clock/starfive-jh7100.h
+++ b/include/dt-bindings/clock/starfive-jh7100.h
@@ -42,9 +42,9 @@
 #define CLK_U74_CORE1		33
 #define CLK_U74_AXI		34
 #define CLK_U74RTC_TOGGLE	35
-#define CLK_SGDMA2P_AXI		35
+#define CLK_SGDMA2P_AXI		36
 #define CLK_DMA2PNOC_AXI	37
-#define CLK_SGDMA2P_AHB		37
+#define CLK_SGDMA2P_AHB		38
 #define CLK_DLA_BUS		39
 #define CLK_DLA_AXI		40
 #define CLK_DLANOC_AXI		41
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

