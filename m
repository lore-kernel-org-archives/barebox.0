Delivery-date: Tue, 17 Oct 2023 16:55:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTO-00BseW-8z
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:55:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTM-0003ZI-Hw
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:55:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wldUHchLCQpC+TNkR9y1qBuqBH1t+xtrEU5Yte4Zu1o=; b=lPYoeLYuXpHfDvGyHMqj6NNNli
	Yyt2EKR4Jg2wHywqYq7/pwO9WaKZuAanmpPzLqc1QTAUexvwAk1zVzmP3gW8heq7MEx58o1UY9fEa
	AAcpiab5P46Ihr89r8ZXwb5XIAg80y6rmaFI6U6+Q/cntHUTsuloePU2FzJOCUaEubbOVtiQJf4dY
	72WHbZ29dnQk6z06XUoX1P+cfiq9qSzdB5vMEouwcDL+jzbbEFyrt0h1YZhpEHsk5e1IBTdLW9MCQ
	R14b0xSjms7mOw6TFSzHnICgkhQXzhsH8VYri43Z8D0ve0fkd7RD0jO5XwHXXI4l29d623SgOoOG0
	7AENqVLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslRm-00CeVZ-0x;
	Tue, 17 Oct 2023 14:53:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ2-00CcMU-00
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:39 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPy-0001wJ-NZ
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:13 +0200
Message-Id: <20231017145131.3069283-12-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_075138_050434_7DD0B657 
X-CRM114-Status: GOOD (  10.69  )
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
Subject: [PATCH v2 11/29] ARM: i.MX8M: add flexspi-imx8m{m,p}-cfg.h header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add dedicated configuration headers to be more user-friendly. No
functional change.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- dropped ifdef guard
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 include/mach/imx/flexspi-imx8mm-cfg.h | 8 ++++++++
 include/mach/imx/flexspi-imx8mp-cfg.h | 8 ++++++++
 2 files changed, 16 insertions(+)
 create mode 100644 include/mach/imx/flexspi-imx8mm-cfg.h
 create mode 100644 include/mach/imx/flexspi-imx8mp-cfg.h

diff --git a/include/mach/imx/flexspi-imx8mm-cfg.h b/include/mach/imx/flexspi-imx8mm-cfg.h
new file mode 100644
index 000000000000..81de224fa704
--- /dev/null
+++ b/include/mach/imx/flexspi-imx8mm-cfg.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+/*
+ * This snippet can be included from a i.MX flash header configuration
+ * file for generating FlexSPI compatible images.
+ */
+flexspi_ivtofs 0x1000
+flexspi_fcfbofs 0x0
diff --git a/include/mach/imx/flexspi-imx8mp-cfg.h b/include/mach/imx/flexspi-imx8mp-cfg.h
new file mode 100644
index 000000000000..d01adaf62cca
--- /dev/null
+++ b/include/mach/imx/flexspi-imx8mp-cfg.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+/*
+ * This snippet can be included from a i.MX flash header configuration
+ * file for generating FlexSPI compatible images.
+ */
+flexspi_ivtofs 0x0
+flexspi_fcfbofs 0x400
-- 
2.39.2



