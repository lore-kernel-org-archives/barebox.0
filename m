Delivery-date: Thu, 11 Jan 2024 12:50:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtZv-00Cw1K-17
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 12:50:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtZu-0002Ik-8F
	for lore@pengutronix.de; Thu, 11 Jan 2024 12:50:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dZMK5SxVakECC6L9H4OK2yApAHntzd2O8HIQO5lPtSY=; b=Lw1hUsK2IA2Zh4F9L+68tTrZQa
	UaVnadFhL2es6nE+8dm2mL6hr1q4NEusJ7GvC5P8gARq52ruihCm72ZywbCD5jobMG8wTTAC4aqNO
	kxLQp2DN4Fskmm0lddq1NOYnbCm8gSojBkjU59iH7RsMs/l0OsTaBhISjN1jpfxKY5xwRqXBtbbVO
	6VzrJpKPkTP28JqB7TRz5Fbj1WIFmLMCXPfzji2VgbZ/tn99IE671axwYrHg1PVy6KAvTv0zbJLyO
	zIBHXaeWKM5IvGNVsOQpVk+5o765bZ0X4CHasW4Zooi46zjWzhpQrPYizw38Uypml9c4eNG7R1Jio
	Q2RzYcfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYU-00HShU-2F;
	Thu, 11 Jan 2024 11:49:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYP-00HSaj-16
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 11:49:00 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rNtYK-000137-Kj
	for barebox@lists.infradead.org; Thu, 11 Jan 2024 12:48:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jan 2024 12:48:28 +0100
Message-Id: <20240111114841.2676939-6-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240111114841.2676939-1-m.felsch@pengutronix.de>
References: <20240111114841.2676939-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_034857_544979_51EEE645 
X-CRM114-Status: GOOD (  11.91  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 05/18] ARM: i.MX8M: scratch: add optee_hdr area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a new scratch storage slot for possible optee-hdr information which
have to passed between barebox-pbl and barebox-proper. Reserve 512 bytes
between the bootrom-log and the optee-hdr in case the bootrom-log need
more space in the future.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/scratch.c | 29 +++++++++++++++++++++++++++++
 include/mach/imx/scratch.h  |  5 +++++
 2 files changed, 34 insertions(+)

diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
index f4faff835c8c..6ba9b9d55b7d 100644
--- a/arch/arm/mach-imx/scratch.c
+++ b/arch/arm/mach-imx/scratch.c
@@ -8,10 +8,13 @@
 #include <mach/imx/esdctl.h>
 #include <mach/imx/scratch.h>
 #include <memory.h>
+#include <tee/optee.h>
 #include <pbl.h>
 
 struct imx_scratch_space {
 	u32 bootrom_log[128];
+	u32 reserved[128];		/* reserve for bootrom log */
+	struct optee_header optee_hdr;
 };
 
 static struct imx_scratch_space *scratch;
@@ -53,6 +56,32 @@ const u32 *imx8m_scratch_get_bootrom_log(void)
 	return scratch->bootrom_log;
 }
 
+void imx8m_scratch_save_optee_hdr(const struct optee_header *hdr)
+{
+	size_t sz = sizeof(*hdr);
+
+	if (!scratch) {
+		pr_err("No scratch area initialized, skip saving optee-hdr");
+		return;
+	}
+
+	pr_debug("Saving optee-hdr to scratch area 0x%p\n", &scratch->optee_hdr);
+
+	memcpy(&scratch->optee_hdr, hdr, sz);
+}
+
+const struct optee_header *imx8m_scratch_get_optee_hdr(void)
+{
+	if (!scratch) {
+		if (IN_PBL)
+			return ERR_PTR(-EINVAL);
+		else
+			scratch = (void *)arm_mem_scratch_get();
+	}
+
+	return &scratch->optee_hdr;
+}
+
 static int imx8m_reserve_scratch_area(void)
 {
 	return PTR_ERR_OR_ZERO(request_sdram_region("scratch area",
diff --git a/include/mach/imx/scratch.h b/include/mach/imx/scratch.h
index 487171fbee97..59681145e76f 100644
--- a/include/mach/imx/scratch.h
+++ b/include/mach/imx/scratch.h
@@ -8,6 +8,11 @@ void imx8m_init_scratch_space(int ddr_buswidth, bool zero_init);
 const u32 *imx8m_scratch_get_bootrom_log(void);
 void imx8m_scratch_save_bootrom_log(const u32 *rom_log);
 
+struct optee_header;
+
+const struct optee_header *imx8m_scratch_get_optee_hdr(void);
+void imx8m_scratch_save_optee_hdr(const struct optee_header *hdr);
+
 #define imx8mq_init_scratch_space() imx8m_init_scratch_space(32, true)
 #define imx8mm_init_scratch_space() imx8m_init_scratch_space(32, true)
 #define imx8mn_init_scratch_space() imx8m_init_scratch_space(16, true)
-- 
2.39.2



