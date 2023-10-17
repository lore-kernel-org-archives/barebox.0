Delivery-date: Tue, 17 Oct 2023 16:55:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTi-00BsiL-1y
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:55:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTg-0003w0-Jo
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:55:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mPN/Nj3d4v8T9D0o7mh9+3TEd95QIs08YLTd0QisVyQ=; b=c4RFjx8ZjiAOQMBwwE0gzd2gOW
	qUgCex5BHzUNrzBf9ruuf8UHnpiYSWpcSpzKXOQmcLGHnjj21s7KMN2DqYtYjuZNUPcq35UfMAc75
	YzH7I7kMzZACpLKndAtjE+CaDO1J8WmfZg+N0G1BKMP3RtfkvXwGMBjdrzvZP2FBlAMh4UU7haXtH
	YTCKz+MXHPsOluH78hiBop9Bvk92BoU+tcn8w4znbvTKnv/SUuQcoytgtJwUMbh+RUFijLyCUjzrg
	dAaJmn6JmbYwUc3uS2PsbIk3soQLPkTdoNM458Zr8Kx4rQTH3HVhb8E/QG/cnNDJchgiyBQqmOQ21
	XfjBXW8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslSN-00Ceu6-0n;
	Tue, 17 Oct 2023 14:54:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQA-00Ccb4-33
	for barebox@bombadil.infradead.org;
	Tue, 17 Oct 2023 14:51:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=mPN/Nj3d4v8T9D0o7mh9+3TEd95QIs08YLTd0QisVyQ=; b=mwaP4UdUctXkUxmUYybhnd23pm
	59LeA9GsepB1BApG3sPAfdO2/UoYjDqNODYrl3Z1RpdEsNHmD8FXbSoJcsz5pqbV5crPgvKt2KZkb
	wQeBMaipgBtQJMKoQjD+2SsVZ8MrLDf1hlhYsJFL1DPTFVebaBoq5JKe0xM9Q7W4k85Nq7EIXMCTv
	QWAxYKNJFRlWqXMrLc+eHMdEtkmi6RUwvihwD0l+++BMRbmmUk4pKiD6irahz0VI8lvssRU1JIxiz
	QFpG5fMNbCGLe1aiCefSTAkFzRY9B/277edEkgl9LUwAEilwh1ejfwWKf0ZEW1FIW4ZEGBlVPzoqK
	Wn5YR1DQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ5-007AEn-2F
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:44 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPz-0001wJ-E6
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:31 +0200
Message-Id: <20231017145131.3069283-30-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_155141_914092_13BD4E1D 
X-CRM114-Status: GOOD (  11.77  )
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
Subject: [PATCH v2 29/29] Documentation: boards: imx: add FlexSPI sub-section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Document the FlexSPI image and boot feature to make it easier for users
to enable the support. Also document the image layout since it became
more complex with FlexSPI and HAB, so a detailed overview is very
helpful.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- Adapt wording to reflect new CONFIG_HABV4_QSPI config
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 Documentation/boards/imx.rst | 80 ++++++++++++++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index a8f014dd1b91..2a5168190620 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -394,6 +394,86 @@ with only the image name as argument:
 
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
+header files.
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
+Barebox also support `High Assurance Boot`_ images for QSPI boot mediums. This
+feature must be enabled via the ``CONFIG_HABV4_QSPI`` option. The below figures
+show a fully featured MMC/SD/USB/FlexSPI image with enabled HAB support for the
+i.MX8M family.
+
+i.MX8MM layout::
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
+i.MX8MP/N layout::
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



