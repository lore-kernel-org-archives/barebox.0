Delivery-date: Thu, 23 Jun 2022 12:32:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4K8f-00BqbV-Ii
	for lore@lore.pengutronix.de; Thu, 23 Jun 2022 12:32:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4K8f-0005gV-6S
	for lore@pengutronix.de; Thu, 23 Jun 2022 12:32:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=syHvgwQ8oWhGHXuJbCYFvWt59n0eQeZ8yuiqbl1vnOo=; b=HU/nppGMO5hJix1gPOydumCnUD
	QcxGhTAIsxSExuQj2I93dblRelr4776VDEmFT6WqRr9yww+3tD+u4Hjh70pcPWwZlzmQFwLAJlUOw
	t65mH3L/Mvzjo2babctwHhz6BInHAah9EYvpcc3pTeOAet6jGuOtX11as5SFsmDW8hedTo19OFoLl
	9GqsxENohWJNRQ+nk4ZOiNOCR9wZ2lSiLab1+zv43QaND8hAV4T8AplMErn6fOxyj+tzwKH3+NwxA
	aJ+u/FKbEFZsOrzZj+yG330ihbCJz0WqCNwUsOU45R1L+htGAE22cf9yqTVcAQPRVgnq9a33+Akg3
	gG4jg7GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4K7H-00EXTc-Hp; Thu, 23 Jun 2022 10:31:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4K7A-00EXR4-2R
	for barebox@lists.infradead.org; Thu, 23 Jun 2022 10:31:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o4K70-0005Ii-IS; Thu, 23 Jun 2022 12:30:58 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4K6v-002DTR-7o; Thu, 23 Jun 2022 12:30:54 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4K6v-002PvO-D1; Thu, 23 Jun 2022 12:30:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Teresa Remmet <t.remmet@phytec.de>,
	lst@pengutronix.de,
	Joacim Zetterling <joacim.zetterling@westermo.com>,
	Andrey Smirnov <andrew.smirnov@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 Jun 2022 12:30:48 +0200
Message-Id: <20220623103051.572885-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623103051.572885-1-a.fatoum@pengutronix.de>
References: <20220623103051.572885-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_033108_155134_D0FBDC51 
X-CRM114-Status: GOOD (  14.79  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/4] ARM: i.MX8M: esdctl: ignore ADDRMAP8 for non-DDR4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ADDRMAP8 handling was added for i.MX8MN DDR4 handling,
but as done currently has a few issues:

  - Bank groups are a DDR4 feature (well, borrowed from GDDR5),
    so we should just skip it for other RAM types

  - addrmap[8] == 0 is actually a valid value according
    to both reference manual and spreadsheet

  - Spreadsheet claims DDRC_ADDRMAP8_BG_B0 to be 6-bit, while
    reference manual claims 5-bit

  - Spreadsheet claims DDRC_ADDRMAP8_BG_B0 == 63 to be the
    neutral value. The code assumes 31 and the reference manual
    describes all values 0-31 to have an effect.

This commit fixes the first two issues. The calculation may still
be wrong, but at least for the i.MX8MN-DDR4-EVK it seems to return
a correct value of 2G.

Fixes: 42d45ef380c5 ("ARM: imx: Add imx8 support for SDRAM with two or more bank groups")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index b070ebc62a45..d7802e2a4d16 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -317,6 +317,7 @@ static int vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 #define DDRC_ADDRMAP0_CS_BIT0			GENMASK(4, 0)
 
 #define DDRC_MSTR				0x0000
+#define DDRC_MSTR_DDR4				BIT(4)
 #define DDRC_MSTR_LPDDR4			BIT(5)
 #define DDRC_MSTR_DATA_BUS_WIDTH		GENMASK(13, 12)
 #define DDRC_MSTR_ACTIVE_RANKS			GENMASK(27, 24)
@@ -423,7 +424,12 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[DDRC_ADDRMAP_LENGTH],
 	if (FIELD_GET(DDRC_ADDRMAP1_BANK_B2, addrmap[1]) != 0b11111)
 		banks++;
 
-	if (addrmap[8]) {
+	if (is_imx8 && (mstr & DDRC_MSTR_DDR4)) {
+		/* FIXME: DDR register spreasheet claims this to be
+		 * 6-bit and 63 meaning bank group address bit 0 is 0,
+		 * but reference manual claims 5-bit without 'neutral' value
+		 * See MX8M_Mini_DDR4_RPA_v17, MX8M_Nano_DDR4_RPA_v8
+		 */
 		if (FIELD_GET(DDRC_ADDRMAP8_BG_B0, addrmap[8]) != 0b11111)
 			banks++;
 		if (FIELD_GET(DDRC_ADDRMAP8_BG_B1, addrmap[8]) != 0b111111)
-- 
2.30.2



