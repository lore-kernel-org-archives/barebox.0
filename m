Delivery-date: Fri, 27 Jun 2025 16:20:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV9vv-00BeF1-0V
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 16:20:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV9vt-0004EZ-MH
	for lore@pengutronix.de; Fri, 27 Jun 2025 16:20:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bkLFSWEvobtSQQUCrv8SGT78klolPcoroYTyy2k7qro=; b=b5dslhtQtZATCjiiV50eys7aNZ
	RhvaBX+ZDPMoEqZuXUWBWP8pHqiSz2y5KntFzSR1NB4xc5130rMXwjEMdWwhpRGa/r1Pey+lwkbiQ
	9WnQDIxNiqMIygVnq3Uhzg9c8x73IgWW48oLkeVpfB2CJvuKGqb174ZzVyGNXDV1xpxnLphU1djzT
	PXbHLCm6Nz+i7haRk2P4iKfRpuWwKTNJ61tocTN/WxnFoOMIlgNXJkN1V6GJF6nQ8big1pG5u85+y
	rH9Y9n0kn/svlSUUYhWoO4uns+pxuSeBc8Gyt7oaFoX46FbqUrySZ8eo5lSWirOoaVakgKgWAblNx
	fBupmpjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV9vR-0000000Et17-2yEV;
	Fri, 27 Jun 2025 14:19:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV9kJ-0000000ErWY-3Yrh
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 14:08:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kH-0004vP-AK; Fri, 27 Jun 2025 16:08:01 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kG-005dAY-2o;
	Fri, 27 Jun 2025 16:08:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kG-004uPv-2O;
	Fri, 27 Jun 2025 16:08:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Jun 2025 16:07:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250627-arm-optee-early-helper-v1-5-4b098e8ac7cd@pengutronix.de>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
In-Reply-To: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751033280; l=1604;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Wmu2IrPWZKJGxFFKg8rcbFj9iuF6aH665sJZLulbTLs=;
 b=qa2W658UuPyPHOhSoxbFisahM1z2QSB4XszWyZnnq+QT7h7IJvdH1VAEuQ28gMd3tymE95WGO
 ppwyA+GtCigDX1RZLBhZVoEnQCgeLj38THKT1VEQQt/LDKz4f3DfNXn
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_070803_960145_AFEE4C10 
X-CRM114-Status: UNSURE (   9.49  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/14] ARM: i.MX6Q: add imx6_get_mmdc_sdram_size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

Add a helper to query the MMDC configured SDRAM size.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 5 +++++
 include/mach/imx/esdctl.h  | 1 +
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 4b67b52ca45eea178889dfc5554a8a9a8ddf51b7..4c4c3528e1a6e68c508edc48ad38c9e2e6324c1c 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -286,6 +286,11 @@ static inline resource_size_t imx6_mmdc_sdram_size(void __iomem *mmdcbase)
 	return size;
 }
 
+resource_size_t imx6_get_mmdc_sdram_size(void)
+{
+	return imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR));
+}
+
 static int imx6_mmdc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data)
 {
 	return arm_add_mem_device("ram0", data->base0,
diff --git a/include/mach/imx/esdctl.h b/include/mach/imx/esdctl.h
index d79bf17959e6d46d19af35be8c10003007d21223..97bd444b1a4ca2defdeb9f82180c0366296a32a0 100644
--- a/include/mach/imx/esdctl.h
+++ b/include/mach/imx/esdctl.h
@@ -151,6 +151,7 @@ void __noreturn imx7d_barebox_entry(void *boarddata);
 void __noreturn imx93_barebox_entry(void *boarddata);
 #define imx6sx_barebox_entry(boarddata) imx6ul_barebox_entry(boarddata)
 void imx_esdctl_disable(void);
+resource_size_t imx6_get_mmdc_sdram_size(void);
 resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth);
 resource_size_t imx9_ddrc_sdram_size(void);
 #endif

-- 
2.39.5



