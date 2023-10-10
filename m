Delivery-date: Tue, 10 Oct 2023 16:34:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDox-003BFz-64
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:34:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDov-0008J7-PO
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:34:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uJvj15bsmQjnXIGqW2hA4xRJ+VsVh95Iq/x5nZyQjjI=; b=07xPV71z+8PHH5X34www8wawN4
	/+m82tlYtdx+9vE6c2ECm1OzgecXxK7gAjm9VERdUukZhlUFYZQSkstaKHeRwwq4xDZllXuzNhts8
	sbiHnVbwdbiyb/Surdfdf+Tt2KP85aa2m8VKd8sTGfTlmpTo5jsTVrxkffWwOU2RkFTUdIEc/yOrk
	r9zFSQBD4yKldDwyIVgwIxr4pzey7vtwtbMbR6r28TtzjwoYlvzoparntxilOEQmDuztnWUIQ6x6F
	MDCGqdBUZ5G6mpfyOfgcEra0GaVi5m5YglVEWI0R/WSBWX+NF0eQqoqs28QptSNw7A07luhs7+jfj
	+4AzTjow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnc-00DZVN-0L;
	Tue, 10 Oct 2023 14:33:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnY-00DZQE-0k
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:33:25 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qqDnV-0007Dl-CW
	for barebox@lists.infradead.org; Tue, 10 Oct 2023 16:33:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Oct 2023 16:32:59 +0200
Message-Id: <20231010143314.2031253-12-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010143314.2031253-1-m.felsch@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_073324_264904_83F887DF 
X-CRM114-Status: GOOD (  10.70  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/26] ARM: i.MX8M: add flexspi-imx8m{m,p}-cfg.h header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add dedicated configuration headers which guard the flexspi_* options
like it is done for the HABV4 configuration block to be more
user-friendly.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/mach/imx/flexspi-imx8mm-cfg.h | 10 ++++++++++
 include/mach/imx/flexspi-imx8mp-cfg.h | 10 ++++++++++
 2 files changed, 20 insertions(+)
 create mode 100644 include/mach/imx/flexspi-imx8mm-cfg.h
 create mode 100644 include/mach/imx/flexspi-imx8mp-cfg.h

diff --git a/include/mach/imx/flexspi-imx8mm-cfg.h b/include/mach/imx/flexspi-imx8mm-cfg.h
new file mode 100644
index 000000000000..f7f0310a57f4
--- /dev/null
+++ b/include/mach/imx/flexspi-imx8mm-cfg.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+/*
+ * This snippet can be included from a i.MX flash header configuration
+ * file for generating FlexSPI compatible images.
+ */
+#if defined(CONFIG_SPI_NXP_FLEXSPI)
+flexspi_ivtofs 0x1000
+flexspi_fcfbofs 0x0
+#endif
diff --git a/include/mach/imx/flexspi-imx8mp-cfg.h b/include/mach/imx/flexspi-imx8mp-cfg.h
new file mode 100644
index 000000000000..bbc061241748
--- /dev/null
+++ b/include/mach/imx/flexspi-imx8mp-cfg.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+/*
+ * This snippet can be included from a i.MX flash header configuration
+ * file for generating FlexSPI compatible images.
+ */
+#if defined(CONFIG_SPI_NXP_FLEXSPI)
+flexspi_ivtofs 0x0
+flexspi_fcfbofs 0x400
+#endif
-- 
2.39.2



