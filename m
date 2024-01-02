Delivery-date: Tue, 02 Jan 2024 18:02:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKi9m-000qLW-0R
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 18:02:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKi9k-00077c-Vr
	for lore@pengutronix.de; Tue, 02 Jan 2024 18:02:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jLSafdzftF4plo7RETrWjTEaRl5EYJe5Tm4QAabphPM=; b=OVxdMkk2D3pLPBAnfNuPd5vul2
	QKu5wzvmsENra/idOb1AwVDAGqXLOIQROTvMAuVL8uPPtqoBqPlos3shKBz+9r/bP9IY84PG3AnWV
	C9hXY17YTygZsaE1de3tvu7TK2ezYIpfjr5zT2nGs6jDi1Dobv4/q+ENz/uNzU91VPE56O0HKPmbu
	oi12tA8Ya8soKJ9h/rV8HYL0RsOAcZxTwDSxR8V4EtdIcO8LK2+mefyc+ePcl2s0CpNl8K2qc6Tn2
	5mglKjVF5H612P0Q1se52YKSQqWTdjnskjEc3w0650PYIaeEBxCSl8uHOUXTmdJdhphHm3wCafgAA
	OwJpXaMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKi8f-008Xw6-0w;
	Tue, 02 Jan 2024 17:01:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKi8W-008XrD-0Q
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 17:01:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8V-0006Gv-04; Tue, 02 Jan 2024 18:01:03 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8T-003DrR-Dy; Tue, 02 Jan 2024 18:01:02 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8U-006ocT-1H;
	Tue, 02 Jan 2024 18:01:02 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jan 2024 18:00:58 +0100
Message-Id: <20240102170100.1596372-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
References: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_090104_335553_1E3B10EA 
X-CRM114-Status: GOOD (  14.70  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 5/7] nvmem: ocotp: correct regmap's max_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Fuse words of the i.MX are 32-bit wide each and their number vary by
SoC. For the i.MX, there are 128 fuse words, which if linearized, are a
total 512 bytes in size.

The barebox driver calls the total size num_regs, which is misleading
and then sets the max_register to be the total_size - 1, which is wrong
as it's supposed to be e a multiple of the register stride, which is not
the case for (512 / 4) - 1 == 127.

Instead, we should be setting 508. Fix the calculation to do this and
while at it, rename the driver data member to its Linux counterpart.

Fixes: 2ee6bb35043d ("ARM: i.MX: ocotp: Switch to regmap support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 641c825986cb..76c50a964435 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -107,7 +107,7 @@ enum imx_ocotp_format_mac_direction {
 struct ocotp_priv;
 
 struct imx_ocotp_data {
-	int num_regs;
+	int nregs;
 	u32 (*addr_to_offset)(u32 addr);
 	void (*format_mac)(u8 *dst, const u8 *src,
 			   enum imx_ocotp_format_mac_direction dir);
@@ -769,7 +769,7 @@ static int imx_ocotp_probe(struct device *dev)
 	priv->map_config.reg_bits = 32;
 	priv->map_config.val_bits = 32;
 	priv->map_config.reg_stride = 4;
-	priv->map_config.max_register = data->num_regs - 1;
+	priv->map_config.max_register = priv->map_config.reg_stride * (data->nregs - 1);
 
 	priv->map = regmap_init(dev, &imx_ocotp_regmap_bus, priv, &priv->map_config);
 	if (IS_ERR(priv->map))
@@ -853,7 +853,7 @@ static u32 vf610_addr_to_offset(u32 addr)
 }
 
 static struct imx_ocotp_data imx6q_ocotp_data = {
-	.num_regs = 512,
+	.nregs = 128,
 	.addr_to_offset = imx6q_addr_to_offset,
 	.mac_offsets_num = 1,
 	.mac_offsets = { MAC_OFFSET_0 },
@@ -864,7 +864,7 @@ static struct imx_ocotp_data imx6q_ocotp_data = {
 };
 
 static struct imx_ocotp_data imx6sl_ocotp_data = {
-	.num_regs = 256,
+	.nregs = 64,
 	.addr_to_offset = imx6sl_addr_to_offset,
 	.mac_offsets_num = 1,
 	.mac_offsets = { MAC_OFFSET_0 },
@@ -875,7 +875,7 @@ static struct imx_ocotp_data imx6sl_ocotp_data = {
 };
 
 static struct imx_ocotp_data imx6ul_ocotp_data = {
-	.num_regs = 512,
+	.nregs = 128,
 	.addr_to_offset = imx6q_addr_to_offset,
 	.mac_offsets_num = 2,
 	.mac_offsets = { MAC_OFFSET_0, IMX6UL_MAC_OFFSET_1 },
@@ -886,7 +886,7 @@ static struct imx_ocotp_data imx6ul_ocotp_data = {
 };
 
 static struct imx_ocotp_data imx6ull_ocotp_data = {
-	.num_regs = 256,
+	.nregs = 64,
 	.addr_to_offset = imx6q_addr_to_offset,
 	.mac_offsets_num = 2,
 	.mac_offsets = { MAC_OFFSET_0, IMX6UL_MAC_OFFSET_1 },
@@ -897,7 +897,7 @@ static struct imx_ocotp_data imx6ull_ocotp_data = {
 };
 
 static struct imx_ocotp_data vf610_ocotp_data = {
-	.num_regs = 512,
+	.nregs = 128,
 	.addr_to_offset = vf610_addr_to_offset,
 	.mac_offsets_num = 2,
 	.mac_offsets = { MAC_OFFSET_0, MAC_OFFSET_1 },
@@ -914,7 +914,7 @@ static struct imx8m_featctrl_data imx8mp_featctrl_data = {
 };
 
 static struct imx_ocotp_data imx8mp_ocotp_data = {
-	.num_regs = 1024,
+	.nregs = 256,
 	.addr_to_offset = imx6sl_addr_to_offset,
 	.mac_offsets_num = 2,
 	.mac_offsets = { 0x90, 0x94 },
@@ -923,7 +923,7 @@ static struct imx_ocotp_data imx8mp_ocotp_data = {
 };
 
 static struct imx_ocotp_data imx8mq_ocotp_data = {
-	.num_regs = 2048,
+	.nregs = 512,
 	.addr_to_offset = imx6sl_addr_to_offset,
 	.mac_offsets_num = 1,
 	.mac_offsets = { 0x90 },
@@ -939,7 +939,7 @@ static struct imx8m_featctrl_data imx8mm_featctrl_data = {
 };
 
 static struct imx_ocotp_data imx8mm_ocotp_data = {
-	.num_regs = 2048,
+	.nregs = 512,
 	.addr_to_offset = imx6sl_addr_to_offset,
 	.mac_offsets_num = 1,
 	.mac_offsets = { 0x90 },
@@ -956,7 +956,7 @@ static struct imx8m_featctrl_data imx8mn_featctrl_data = {
 };
 
 static struct imx_ocotp_data imx8mn_ocotp_data = {
-	.num_regs = 2048,
+	.nregs = 512,
 	.addr_to_offset = imx6sl_addr_to_offset,
 	.mac_offsets_num = 1,
 	.mac_offsets = { 0x90 },
@@ -968,7 +968,7 @@ static struct imx_ocotp_data imx8mn_ocotp_data = {
 };
 
 static struct imx_ocotp_data imx7d_ocotp_data = {
-	.num_regs = 2048,
+	.nregs = 512,
 	.addr_to_offset = imx6sl_addr_to_offset,
 	.mac_offsets_num = 1,
 	.mac_offsets = { MAC_OFFSET_0, IMX6UL_MAC_OFFSET_1 },
-- 
2.39.2



