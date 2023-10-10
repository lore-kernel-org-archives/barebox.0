Delivery-date: Tue, 10 Oct 2023 16:35:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpI-003BMX-8M
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:35:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpF-00009o-6r
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:35:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3yaSQZbG+RxR0bkGTVYuRdeiC/0EhQz+1jmuCatvFww=; b=xqUFwLuuD3lGFZ/6lYDUQg4eqY
	vO6htk/6Utj2ZCdrKeuGkqz5Qz33Qa0yaWFckVi8xEJXdHU6K1Laj6/AdTRrVRPGzUaf0CGADMsB8
	8Ed/ee1z63dtpVHUywaVyyiObn3q1R2OO9Z5vvMaCvxEGXwo3hZKa8Wx5cMiOCSOVSpgmqz3Z6WX4
	ORgzlV75n2F8prHNkaBlZska5uWp3g/iV+jEOzgag7FbhA6RM0EX1obXD06Px3Xkb7eTfLAjZ9UmU
	lHjC+vD/l/jZd73A0jec38zTB0smN4VCKqrtzyT/LhA/9tOgaXZAbacpbyeBV+wtKeHQVbEagvdKI
	aBmgbxjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnw-00DZqv-1B;
	Tue, 10 Oct 2023 14:33:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnq-00DZjK-1d
	for barebox@bombadil.infradead.org;
	Tue, 10 Oct 2023 14:33:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=3yaSQZbG+RxR0bkGTVYuRdeiC/0EhQz+1jmuCatvFww=; b=VgKtFcLBKTBsewnSi/L5PmHpGQ
	R7CG2mXAbdnIN950nZH0DfnM2+lL4Odvbirl43QbGMrN18XHBZZD9jAhB19eitfNTBzd4WFwttwab
	CMriLZircXV9dBcC6SiH43aDf8ZN60Z6n5XbjSPmw+/OdxO9fa0N9ESAqnjEJY0CpdHpd1uFyQyWU
	+QpLWoHU9L7Akwz8y+mn6PKvzxt8CC6lok5FndkxKWXDu4yLXdwBVh7ORxVmO1d86bc0Q/gQdw0Iv
	qiL9gK2vbBpmxW9h48qOsUqnl8ngKV+9z3Ek9JFBBE0sui69Q7ZW/O0VmTRzURAlq/d3+tv4vNcjP
	9m26E51A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnh-00GvG0-1F
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:33:41 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qqDnV-0007Dl-SB
	for barebox@lists.infradead.org; Tue, 10 Oct 2023 16:33:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Oct 2023 16:33:14 +0200
Message-Id: <20231010143314.2031253-27-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010143314.2031253-1-m.felsch@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_153335_002858_616D56D4 
X-CRM114-Status: GOOD (  11.75  )
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
Subject: [PATCH 26/26] Documentation: boards: imx: add FlexSPI sub-section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Document the FlexSPI image and boot feature to make it easier for users
to enable the support. Also document the image layout since it became
more complex with FlexSPI and HAB, so a detailed overview is very
helpful.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/boards/imx.rst | 77 ++++++++++++++++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index a8f014dd1b91..1b34c12cf4c6 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -394,6 +394,83 @@ with only the image name as argument:
 
   scripts/imx/imx-usb-loader images/barebox-freescale-imx51-babbage.img
 
+FlexSPI Boot
+^^^^^^^^^^^^
+
+FlexSPI boot is currently supported on: i.MX8MM, i.MX8MN and i.MX8MP.
+
+To generate FlexSPI/QSPI image(s) the board flash header file must specify:
+``flexspi_ivtofs`` and ``flexspi_fcfbofs``.
+
+It is recommended to do this via the ``include/mach/imx/flexspi-imx8m*-cfg.h``
+header files due to HAB boot. In this case ``CONFIG_SPI_NXP_FLEXSPI`` must be
+enabled too
+
+.. code-block:: none
+
+  #include <mach/imx/flexspi-imx8mp-cfg.h>
+
+There are two different headers, one for the i.MX8MM and one for the i.MX8MP/N.
+It's important to use the correct one because the BootROM expects the IVT and
+flash configuration block (FCB) on different offsets.
+
+Barebox doesn't generate a separate FlexSPI image instead the same image used
+for SD/MMC/USB is extended to support FlexSPI boot. This is done by adding a 2nd
+IVT header and the required FCB at the required boot offsets.
+
+The FlexSPI boot(-image) also supports `High Assurance Boot`_ if enabled. A fully
+featured image with FlexSPI and HAB support for an i.MX8MM looks like::
+
+                 0x0 +------------------------------------------+
+                     | Barebox Header                           |
+          header_gap +------------------------------------------+
+                     | FlexSPI Flash Configuration Block (FCFB) |
+  header_gap + 0x400 +------------------------------------------+                            ---
+                     | i.MX MMC/SD/USB IVT Header               |                             |
+                     | Boot Data                                +--.                          |
+                     | CSF Pointer                              +--|--.                       |
+ header_gap + 0x1000 +------------------------------------------+  |  |     ---               |
+                     | i.MX FlexSPI IVT Header                  |  |  |      |                | Signed Area
+                     | Boot Data                                +--+  |      |                |  MMC/SD/
+                     | CSF Pointer                              +--|--|--.   | Signed Area    |    USB
+ header_gap + 0x2000 +------------------------------------------+  |  |  |   |  FlexSPI       |
+                     | Barebox Prebootloader (PBL)              |<-´  |  |   |                |
+                     | Piggydata Hash (SHA256)                  |     |  |   |                |
+                     +------------------------------------------+     |  |  ---              ---
+                     | Command Sequence File (CSF) Slot-0       |<----´  |
+                     +------------------------------------------+        |
+                     | Command Sequence File (CSF) Slot-1       |<-------´
+                     +------------------------------------------+           ---
+                     | Piggydata (Main Barebox Binary)          |            | Hashed Area
+                     +------------------------------------------+           ---
+
+For i.MX8MP/N devices the image does differ slightly due to different offsets::
+
+                 0x0 +------------------------------------------+
+                     | Barebox Header                           |
+          header_gap +------------------------------------------+                            ---
+                     | i.MX MMC/SD/USB IVT Header               |                             |
+                     | Boot Data                                +--.                          |
+                     | CSF Pointer                              +--|--.                       |
+  header_gap + 0x400 +------------------------------------------+  |  |                       |
+                     | FlexSPI Flash Configuration Block (FCFB) |  |  |                       | Signed Area
+ header_gap + 0x1000 +------------------------------------------+  |  |     ---               |  MMC/SD/
+                     | i.MX FlexSPI IVT Header                  |  |  |      |                |    USB
+                     | Boot Data                                +--+  |      |                |
+                     | CSF Pointer                              +--|--|--.   | Signed Area    |
+ header_gap + 0x2000 +------------------------------------------+  |  |  |   |  FlexSPI       |
+                     | Barebox Prebootloader (PBL)              |<-´  |  |   |                |
+                     | Piggydata Hash (SHA256)                  |     |  |   |                |
+                     +------------------------------------------+     |  |  ---              ---
+                     | Command Sequence File (CSF) Slot-0       |<----´  |
+                     +------------------------------------------+        |
+                     | Command Sequence File (CSF) Slot-1       |<-------´
+                     +------------------------------------------+           ---
+                     | Piggydata (Main Barebox Binary)          |            | Hashed Area
+                     +------------------------------------------+           ---
+
+At the moment ``header_gap`` is always 32K for all supported devices.
+
 External Boot Mode
 ------------------
 
-- 
2.39.2



