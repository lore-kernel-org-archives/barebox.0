Delivery-date: Tue, 19 Nov 2024 09:57:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDK2t-003lbP-16
	for lore@lore.pengutronix.de;
	Tue, 19 Nov 2024 09:57:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDK2s-0003KH-Nn
	for lore@pengutronix.de; Tue, 19 Nov 2024 09:57:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M+4xPIHgC4HGFDm644D35e4IS4wI8fv7c2V+KsyyYmU=; b=AtpCeM/hATnoWIz+Qa/7Xjnt+n
	Xkzy8l8zZX7v5+KUdo1Xvgq6Kg5Tx6iaimXyTJJnkXb8UqN/6UeH78eSSKUlXEmI5OTnzMFMKIN1l
	RTb2nSB+yfaxm/Xrg3R57WI0Mmw4qPal2oT49RipDck3ND8z2nNypnHVtQPfHpmcmMq8zfP+2Th/l
	su32ZjG5IQiyG0jD2HGLA1MysX8/fnTp3cL9CdjOn87eoi+A8cCHRK6/S/9mBO/MNtE/W81oyvofm
	S4nAriPkZ+PI6Qkd0fQxlmMc5aGlqQVn2SCqK5kdtAVU5jN3ea5JGj+rGH9CGqNembqD25BCizJj7
	DsWSGjYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDK2Q-0000000Bob8-2kja;
	Tue, 19 Nov 2024 08:56:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDK2O-0000000BoaM-23J8
	for barebox@lists.infradead.org;
	Tue, 19 Nov 2024 08:56:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDK2M-00039c-Jt; Tue, 19 Nov 2024 09:56:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDK2M-001XD8-1N;
	Tue, 19 Nov 2024 09:56:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDK2M-00Au31-16;
	Tue, 19 Nov 2024 09:56:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Stefano Manni <stefano.manni@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Nov 2024 09:56:41 +0100
Message-Id: <20241119085641.2598035-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241119085641.2598035-1-a.fatoum@pengutronix.de>
References: <20241119085641.2598035-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241119_005644_527253_50739605 
X-CRM114-Status: GOOD (  16.74  )
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
Subject: [PATCH 2/2] remoteproc: imx: add support for loading ELF data sections into DRAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Cortex-A MPU and the Cortex-M co-processor on the i.MX have
different address space layouts. The driver thus keeps
struct imx_rproc_att[] tables for the different SoCs to translate device
addresses in the ELF headers to the virtual addresses used by the
Cortex-A, which loads the ELF image.

The maximum size of this mapping was so far 8, which may not be large
enough for some ELF images. Enlarge it to 32 like Linux does.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/remoteproc/imx_rproc.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index 6ae8ef3966ae..d50b164bed93 100644
--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -44,7 +44,7 @@
 					 | IMX6SX_SW_M4C_NON_SCLR_RST \
 					 | IMX6SX_SW_M4C_RST)
 
-#define IMX7D_RPROC_MEM_MAX		8
+#define IMX_RPROC_MEM_MAX		32
 
 /**
  * struct imx_rproc_mem - slim internal memory structure
@@ -84,7 +84,7 @@ struct imx_rproc {
 	struct regmap			*gpr;
 	struct rproc			*rproc;
 	const struct imx_rproc_dcfg	*dcfg;
-	struct imx_rproc_mem		mem[IMX7D_RPROC_MEM_MAX];
+	struct imx_rproc_mem		mem[IMX_RPROC_MEM_MAX];
 	struct clk			*clk;
 };
 
@@ -362,7 +362,7 @@ static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
 	if (imx_rproc_da_to_sys(priv, da, len, &sys))
 		return NULL;
 
-	for (i = 0; i < IMX7D_RPROC_MEM_MAX; i++) {
+	for (i = 0; i < IMX_RPROC_MEM_MAX; i++) {
 		if (sys >= priv->mem[i].sys_addr && sys + len <
 		    priv->mem[i].sys_addr +  priv->mem[i].size) {
 			unsigned int offset = sys - priv->mem[i].sys_addr;
@@ -398,7 +398,7 @@ static int imx_rproc_addr_init(struct imx_rproc *priv,
 		if (!(att->flags & ATT_OWN))
 			continue;
 
-		if (b >= IMX7D_RPROC_MEM_MAX)
+		if (b >= IMX_RPROC_MEM_MAX)
 			break;
 
 		res_cpu = request_iomem_region(dev_name(dev),
@@ -431,7 +431,7 @@ static int imx_rproc_addr_init(struct imx_rproc *priv,
 			return err;
 		}
 
-		if (b >= IMX7D_RPROC_MEM_MAX)
+		if (b >= IMX_RPROC_MEM_MAX)
 			break;
 
 		/*
-- 
2.39.5



