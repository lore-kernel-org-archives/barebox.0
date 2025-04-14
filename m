Delivery-date: Mon, 14 Apr 2025 08:59:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DnP-000XTT-21
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:59:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DnP-0000kc-2H
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:59:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F5pNgd8+v+KKTEpPY5r/HfAar2VwnGwPYUChiWAXabQ=; b=mP9dDIe8QwqdlZ+a8qm17bvMFR
	mFua0PDXNUs/8hM7bYG8/5GRlUA/XkPKpzClCdEEUQ+HaOmeKq+NhfsKi5dNqevVqQ3fQ4rgf3oIq
	Fw3xinCzutA/detWDWLIvtyDEcCfClSwQngnoOhFBF9JiAIMI8DBMQ7mX8z9UT5+sHtX5tFEFX9j5
	Q+W4HeeEiEDuPjIHpt19OY9rFEWwIt6CjjPAYWbbhEmdZacfPg7y1Eru8Nt2J1SU9glwtwtrD6/mN
	KtvuKOEAKxqIhpapjQDlh+mnvt3rxeWCWw0yJgcXSwmFrVVwhQuldhkb/sNAXA4YDBUtgQ7rEZk8o
	XYb+QYHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Dn0-00000000roo-0zSC;
	Mon, 14 Apr 2025 06:59:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4De1-00000000qkx-3roB
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:50:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4De0-0006V1-Fn; Mon, 14 Apr 2025 08:50:12 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4De0-000Cok-0t;
	Mon, 14 Apr 2025 08:50:12 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4De0-00BcuJ-0b;
	Mon, 14 Apr 2025 08:50:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:50:06 +0200
Message-Id: <20250414065009.2770749-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414065009.2770749-1-a.fatoum@pengutronix.de>
References: <20250414065009.2770749-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_235014_053128_8436992E 
X-CRM114-Status: UNSURE (   9.86  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/6] ARM: i.MX8MP: skov: assert switch reset early
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Switch reset is pulled up, so it's asserted when its rail is powered up.
This happens in parallel to the rail being powered on, which violates
the power sequencing. Workaround this, by moving the switch into reset
as early as possible to avoid erratic behavior until the driver is ready
to take it out of reset.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/skov-imx8mp/lowlevel.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boards/skov-imx8mp/lowlevel.c b/arch/arm/boards/skov-imx8mp/lowlevel.c
index 692482f43580..637fc50b3f30 100644
--- a/arch/arm/boards/skov-imx8mp/lowlevel.c
+++ b/arch/arm/boards/skov-imx8mp/lowlevel.c
@@ -16,6 +16,7 @@
 #include <pbl/i2c.h>
 #include <pbl/pmic.h>
 #include <soc/imx8m/ddr.h>
+#include <mach/imx/imx-gpio.h>
 
 extern char __dtb_z_imx8mp_skov_start[];
 
@@ -70,6 +71,12 @@ static void power_init_board(void)
 {
 	struct pbl_i2c *i2c;
 
+	/* Assert switch reset early to avoid erratic behavior due to
+	 * violating power sequencing
+	 */
+	imx8mp_setup_pad(MX8MP_PAD_SAI3_TXD__GPIO5_IO01);
+	imx8m_gpio_direction_output(IOMEM(MX8MP_GPIO5_BASE_ADDR), 1, 0);
+
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
 
-- 
2.39.5



