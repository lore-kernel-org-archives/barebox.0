Delivery-date: Fri, 13 May 2022 15:55:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1npVll-00C0Ao-9m
	for lore@lore.pengutronix.de; Fri, 13 May 2022 15:55:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1npVlj-0000ds-Su
	for lore@pengutronix.de; Fri, 13 May 2022 15:55:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tpD+ngd+NDwEZqk/jP3tesgBhpntFlQkIUKSC5SkRx0=; b=nZtUURxPqE+eTA
	ZRuKNC+UaruFLYUhkhgA8kEfFzOTfEIRDBbS1ieWdfBmTiY83L1SEDACSjaON0ZDq+N/9MUPJa18v
	Nyp/li6+5fmqADVw3BQXGWFL7W9xn9zlgd+3yzyMcqxyo1x7hh1uHjN91BvmWCjRJkQRq8F+uTDtY
	oKroGjr1lzqRUV34rSi9HFEf9LCeHqyKq0gbF5gNS+b0qDqCObdXRQAA7VGRPgL8CEtC88u0svk/h
	MbSPW+hCX7pZYYhyQkqlIuhHEfmQttXZ2iQLp/AdT0Ese7yW18efh6dcP9t2kP62XSF9Rv/lF6PKo
	lJo81+U5Lc6JobVjB2zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npVk7-00GLgm-S8; Fri, 13 May 2022 13:54:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npVk2-00GLfo-6S
 for barebox@lists.infradead.org; Fri, 13 May 2022 13:54:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1npVjy-0000UZ-Ls; Fri, 13 May 2022 15:53:58 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1npVjv-0025lR-5Q; Fri, 13 May 2022 15:53:53 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1npVjt-008eBJ-5g; Fri, 13 May 2022 15:53:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Joacim Zetterling <joacim.zetterling@westermo.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 13 May 2022 15:53:52 +0200
Message-Id: <20220513135352.2061026-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_065402_279140_E382591E 
X-CRM114-Status: GOOD (  10.67  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] ARM: i.MX7: esdctl: fix out-of-bounds read on memory size
 calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

addrmap[] has 9 elements on i.MX8M platforms and 7 elements on i.MX7.
Checking unconditionally for addrmap[8] is thus out-of-bounds on the
i.MX7. Get both arrays to the same size to fix this. This is ok,
because an addrmap of 0 is a no-op.

Fixes: 42d45ef380c5 ("ARM: imx: Add imx8 support for SDRAM with two or more bank groups")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - Just align array sizes to reduce surprise. No functional change
 arch/arm/mach-imx/esdctl.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index d3dbfff423da..c1ed2f0b2fd4 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -350,6 +350,8 @@ static int vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 #define DDRC_ADDRMAP8_BG_B1			GENMASK(13,  8)
 #define DDRC_ADDRMAP8_BG_B0			GENMASK(4,  0)
 
+#define DDRC_ADDRMAP_LENGTH			9
+
 static unsigned int
 imx_ddrc_count_bits(unsigned int bits, const u8 config[],
 		     unsigned int config_num)
@@ -365,7 +367,7 @@ imx_ddrc_count_bits(unsigned int bits, const u8 config[],
 }
 
 static resource_size_t
-imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
+imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[DDRC_ADDRMAP_LENGTH],
 		    u8 col_max, const u8 col_b[], unsigned int col_b_num,
 		    u8 row_max, const u8 row_b[], unsigned int row_b_num,
 		    bool reduced_adress_space, bool is_imx8)
@@ -446,7 +448,7 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
 
 static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
 {
-	const u32 addrmap[] = {
+	const u32 addrmap[DDRC_ADDRMAP_LENGTH] = {
 		readl(ddrc + DDRC_ADDRMAP(0)),
 		readl(ddrc + DDRC_ADDRMAP(1)),
 		readl(ddrc + DDRC_ADDRMAP(2)),
@@ -498,7 +500,7 @@ static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 
 static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
 {
-	const u32 addrmap[] = {
+	const u32 addrmap[DDRC_ADDRMAP_LENGTH] = {
 		readl(ddrc + DDRC_ADDRMAP(0)),
 		readl(ddrc + DDRC_ADDRMAP(1)),
 		readl(ddrc + DDRC_ADDRMAP(2)),
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

