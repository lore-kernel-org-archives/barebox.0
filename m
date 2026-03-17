Delivery-date: Tue, 17 Mar 2026 14:48:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2Ump-001p7B-33
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 14:48:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2Ump-00008l-A8
	for lore@pengutronix.de; Tue, 17 Mar 2026 14:48:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3+s0f/XRbwdVIEMjc2vGNzETzfxDEEXT1kUJ4dfRVwc=; b=qUP5z4XY75SLbntZ8g0ME+HKna
	ltZ0zoXlaHXG/+XEmYQpPDZneH35qp/lsVzEdkTahwsCZc4ImaL4tK+oN43uhK44KLhKK00hC6ZZP
	0ZTFAPDtm+dLnPVsK+bh+mvxjNQIrc+T6nLFEKvZGC8x9Mfqz7ttPIC4HDiA/QIaJgzvas/W53M0m
	CXR/Zkslsj1I8jUHz966RFzKHRuEY0EfWCz0nv8CU3QWzp64jKgz3BWot0L4I3x1V9s+nglTyKITX
	DdEOVvia9FTvn6dY3o79fVKW+LHwdOyv74q6bo19lphEItawmI38h6x5O7PnIMJkxocullfq6H70l
	MxhOVDDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2UmA-00000006TbJ-309P;
	Tue, 17 Mar 2026 13:48:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Um7-00000006TaI-1u1Z
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 13:48:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Um4-0008O6-S2; Tue, 17 Mar 2026 14:47:56 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Um4-000kcb-2A;
	Tue, 17 Mar 2026 14:47:56 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Um4-0000000DMJW-2JWu;
	Tue, 17 Mar 2026 14:47:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 17 Mar 2026 14:47:55 +0100
Message-ID: <20260317134755.3184029-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_064759_490766_8B966828 
X-CRM114-Status: GOOD (  17.51  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] nvmem: rockchip-otp: implement SoC UID reading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Rockchip SoCs supported by the rockchip-otp driver have a SoC UID in
the OTP data. Read it out and forward it to barebox. The raw SoC UID
goes through some crc32 code before it is used. This is based on U-Boot
code which itself is based on the Rockchip Downstream Linux support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/rockchip-otp.c | 54 ++++++++++++++++++++++++++++++++++--
 1 file changed, 51 insertions(+), 3 deletions(-)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index d2145bba52..041d628480 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -9,6 +9,7 @@
 #include <common.h>
 #include <driver.h>
 #include <init.h>
+#include <crc.h>
 #include <of.h>
 #include <of_device.h>
 #include <linux/clk.h>
@@ -86,6 +87,7 @@ struct rockchip_data {
 	const char * const *clks;
 	int num_clks;
 	int (*reg_read)(void *ctx, unsigned int reg, void *val, size_t val_size);
+	int cpuid_offset;
 };
 
 struct rockchip_otp {
@@ -400,6 +402,7 @@ static const struct rockchip_data px30_data = {
 	.clks = px30_otp_clocks,
 	.num_clks = ARRAY_SIZE(px30_otp_clocks),
 	.reg_read = px30_otp_read,
+	.cpuid_offset = -1,
 };
 
 static const char * const rk3562_otp_clocks[] = {
@@ -411,6 +414,7 @@ static const struct rockchip_data rk3562_data = {
 	.clks = rk3562_otp_clocks,
 	.num_clks = ARRAY_SIZE(rk3562_otp_clocks),
 	.reg_read = rk3562_otp_read,
+	.cpuid_offset = -1,
 };
 
 static const char * const rk3568_otp_clocks[] = {
@@ -422,6 +426,7 @@ static const struct rockchip_data rk3568_data = {
 	.clks = rk3568_otp_clocks,
 	.num_clks = ARRAY_SIZE(rk3568_otp_clocks),
 	.reg_read = rk3568_otp_read,
+	.cpuid_offset = 0xa,
 };
 
 static const struct rockchip_data rk3576_data = {
@@ -429,6 +434,7 @@ static const struct rockchip_data rk3576_data = {
 	.clks = px30_otp_clocks,
 	.num_clks = ARRAY_SIZE(px30_otp_clocks),
 	.reg_read = rk3588_otp_read,
+	.cpuid_offset = 0xa,
 };
 
 static const char * const rk3588_otp_clocks[] = {
@@ -440,6 +446,7 @@ static const struct rockchip_data rk3588_data = {
 	.clks = rk3588_otp_clocks,
 	.num_clks = ARRAY_SIZE(rk3588_otp_clocks),
 	.reg_read = rk3588_otp_read,
+	.cpuid_offset = 0x7,
 };
 
 static __maybe_unused const struct of_device_id rockchip_otp_match[] = {
@@ -471,6 +478,42 @@ static __maybe_unused const struct of_device_id rockchip_otp_match[] = {
 };
 MODULE_DEVICE_TABLE(of, rockchip_otp_match);
 
+#define CPUID_SIZE 16
+
+static int rockchip_otp_read_socuid(struct rockchip_otp *otp, struct nvmem_device *nvmem)
+{
+	u8 low[CPUID_SIZE / 2], high[CPUID_SIZE / 2];
+	unsigned char cpuid[CPUID_SIZE];
+	char uidstr[CPUID_SIZE * 2 + 1];
+	u64 serialno;
+	int i, ret, offset;
+
+	offset = otp->data->cpuid_offset;
+	if (offset < 0)
+		return 0;
+
+	ret = rockchip_otp_read(otp, offset, cpuid, CPUID_SIZE);
+	if (ret < 0)
+		return ret;
+
+	/*
+	 * Do the same mangling as U-Boot and downstream Rockchip Linux does.
+	 */
+	for (i = 0; i < CPUID_SIZE / 2; i++) {
+		low[i] = cpuid[1 + (i << 1)];
+		high[i] = cpuid[i << 1];
+	}
+
+	serialno = crc32_no_comp(0, low, CPUID_SIZE / 2);
+	serialno |= (u64)crc32_no_comp(serialno, high, CPUID_SIZE / 2) << 32;
+
+	snprintf(uidstr, sizeof(uidstr), "%016llx", serialno);
+
+	barebox_set_soc_uid(uidstr, &serialno, sizeof(serialno));
+
+	return 0;
+}
+
 static int rockchip_otp_probe(struct device *dev)
 {
 	struct rockchip_otp *otp;
@@ -521,11 +564,16 @@ static int rockchip_otp_probe(struct device *dev)
 	otp_config.dev = dev;
 
 	nvmem = nvmem_register(&otp_config);
-	if (!IS_ERR(nvmem))
-		return 0;
+	if (IS_ERR(nvmem)) {
+		ret = PTR_ERR(nvmem);
+		goto err_register;
+	}
 
-	ret = PTR_ERR(nvmem);
+	rockchip_otp_read_socuid(otp, nvmem);
+
+	return 0;
 
+err_register:
 	reset_control_put(otp->rst);
 
 err_rst:
-- 
2.47.3



