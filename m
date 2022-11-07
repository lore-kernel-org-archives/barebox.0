Delivery-date: Mon, 07 Nov 2022 11:35:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1orzTC-000Lg9-Q0
	for lore@lore.pengutronix.de; Mon, 07 Nov 2022 11:35:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1orzTA-0007ON-PJ
	for lore@pengutronix.de; Mon, 07 Nov 2022 11:35:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=btB5RLKXh2UBTp9lnl/V61ASFHXRrLq4UXhZScV0Kv4=; b=i7ax4Fo6N0npwIKQFiqKvKg4Hc
	DYkZZbJ7O6jyEYxOeGxY+eIY8nKO8cDRLJYnMSxXhhp4xGKDKSQL/l1hxIO7HVaBXQBXK5ArgHDf5
	1xk6UfFa+n5GYkkJlicOlPYtCpym0m3MtXVxyE9afuIfMnSkB6gO07CxVcHF3/j98AGaNzQGwmdfh
	shNYF9+k1kwvUKQa4WNWWfy+H1fVfW5X+O/CRPxsdLqF0IC7xOOMokwNmk/c4QlOHq6dD+8SV10jD
	dft8I8h+kXxLrAfLU09vN1gC4wmJ6hE6fMZVp096LidAGE4/TKETIAC9JD3ImuH70uLbJPEOV6+In
	EP70QM7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orzRs-00Dk4d-60; Mon, 07 Nov 2022 10:33:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orzRo-00Dk40-Cs
	for barebox@lists.infradead.org; Mon, 07 Nov 2022 10:33:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1orzRm-0007B6-Oo; Mon, 07 Nov 2022 11:33:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1orzRl-002pnw-5N; Mon, 07 Nov 2022 11:33:42 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1orzRl-00GQ28-DH; Mon, 07 Nov 2022 11:33:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Nov 2022 11:33:40 +0100
Message-Id: <20221107103340.3913098-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_023344_452522_98239BB3 
X-CRM114-Status: GOOD (  12.63  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX: romapi: Hide using NULL pointers from gcc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The i.MX ROM API lies in the NULL page. Accessing that results in
compiler warnings like:

include/asm-generic/io.h:27:51: warning: array subscript 0 is outside array bounds of 'volatile unsigned char[0]' [-Warray-bounds]

Use OPTIMIZER_HIDE_VAR() to hide using NULL pointers from the compiler.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx8mq.h | 7 +++++--
 arch/arm/mach-imx/romapi.c              | 2 ++
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx8mq.h b/arch/arm/mach-imx/include/mach/imx8mq.h
index d02c5f23cf..e58a3935f7 100644
--- a/arch/arm/mach-imx/include/mach/imx8mq.h
+++ b/arch/arm/mach-imx/include/mach/imx8mq.h
@@ -58,10 +58,13 @@ static inline int imx8mq_cpu_revision(void)
 {
 	void __iomem *anatop = IOMEM(MX8MQ_ANATOP_BASE_ADDR);
 	void __iomem *ocotp = IOMEM(MX8MQ_OCOTP_BASE_ADDR);
+	void __iomem *rom = IOMEM(0x0);
 	uint32_t revision = FIELD_GET(DIGPROG_MINOR,
 				      readl(anatop + MX8MQ_ANATOP_DIGPROG));
 	uint32_t rom_version;
 
+	OPTIMIZER_HIDE_VAR(rom);
+
 	if (revision != IMX_CHIP_REV_1_0)
 		return revision;
 	/*
@@ -74,9 +77,9 @@ static inline int imx8mq_cpu_revision(void)
 	 * For B0 chip, the DIGPROG is not updated, still TO1.0.
 	 * we have to check ROM version further
 	 */
-	rom_version = readb(IOMEM(IMX8MQ_ROM_VERSION_A0));
+	rom_version = readb(IOMEM(rom + IMX8MQ_ROM_VERSION_A0));
 	if (rom_version != IMX_CHIP_REV_1_0) {
-		rom_version = readb(IOMEM(IMX8MQ_ROM_VERSION_B0));
+		rom_version = readb(IOMEM(rom + IMX8MQ_ROM_VERSION_B0));
 		if (rom_version >= IMX_CHIP_REV_2_0)
 			revision = IMX_CHIP_REV_2_0;
 	}
diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index 5d00d71154..56bf7e135f 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -35,6 +35,8 @@ int imx8mp_bootrom_load_image(void)
 {
 	struct rom_api *rom_api = (void *)0x980;
 
+	OPTIMIZER_HIDE_VAR(rom_api);
+
 	return imx8m_bootrom_load_image(rom_api);
 }
 
-- 
2.30.2



