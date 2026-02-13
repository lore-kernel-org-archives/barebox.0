Delivery-date: Fri, 13 Feb 2026 20:13:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqybi-001LbU-0U
	for lore@lore.pengutronix.de;
	Fri, 13 Feb 2026 20:13:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqybi-0007TQ-ES
	for lore@pengutronix.de; Fri, 13 Feb 2026 20:13:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lLYf0OErFsT0Z0elTTHMpgATfu4h+oBnSQCb388xx/c=; b=iT0ixvF5qhffyQ
	xRqKmuclTlG1LGsWHo6n75YQRdWnqGAA2YzGFTSGlzsOPvxDM8JR2gXTLK8oNLCOd2xDnlbji9fuR
	jPIN4GxgDLNOKQuw4BM8z05koU77p+9IfnL9YA4UZeyJUgAbEE9RJAzVnPIXQI0eCL/F/Lfvap5uw
	jy1sqhfgdCY1BvaoyBkgp9zh86dHXMfNcD4ZlqzpDSWlqnBwKML5LdEpY74uFf0SJ7Ep+HcuPRzpr
	nXam/aDYzF3RAl5LDeKvIa4xAUcysVxAhRxrR8WRORzfcnegsSgpTJa1wtAfhUz9al9//uvV04GeO
	hQ9Kr+fK/PBGjzAX/NLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqybA-00000003pia-415O;
	Fri, 13 Feb 2026 19:13:04 +0000
Received: from www153.your-server.de ([213.133.104.153])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqyb6-00000003pgB-3dH8
	for barebox@lists.infradead.org;
	Fri, 13 Feb 2026 19:13:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=amelchem.com; s=default2004; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=lLYf0OErFsT0Z0elTTHMpgATfu4h+oBnSQCb388xx/c=; b=kOlusREGAR4nE1ezpCIIZvKj7Y
	5OvJmaxhgZVQ2W53nyfn7Mi4s2qghUvNyGS4wx5Yz0mjioIwMgDlu3Gj4BXoYV+FIfrivp7j0Eb8Q
	ez2q3FFgWNafFlNAfENFL30bcnlRaJEXDKaH064R2W3nX5J7YzHkpekErz4iDTIP5BTP/0PUpYcCb
	AxaX/JSLfzmt6XTV+sl5cioayQbBLaTfMmlIR6q0dfeewn0sGFQDuuqBN2c878pbNslmRlLNoKRxL
	j2CU8URkD/WlYYwrHC4HUQ/9k4/ECyUSqilSKJsPGo4lXn8fsVcgX3GjmU3j/CYwuyeIAcnmklSk/
	s7bArMUw==;
Received: from sslproxy08.your-server.de ([78.47.166.52])
	by www153.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <rossi@amelchem.com>)
	id 1vqyaw-000HNT-18;
	Fri, 13 Feb 2026 20:12:50 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy08.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rossi@amelchem.com>)
	id 1vqyav-000J4V-2o;
	Fri, 13 Feb 2026 20:12:50 +0100
From: Giandomenico Rossi <rossi@amelchem.com>
To: barebox@lists.infradead.org
Date: Fri, 13 Feb 2026 20:12:43 +0100
Message-Id: <20260213191247.1671231-1-rossi@amelchem.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/27911/Fri Feb 13 08:25:28 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_111301_087836_1753D61B 
X-CRM114-Status: GOOD (  10.32  )
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
Cc: Giandomenico Rossi <rossi@amelchem.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 0/4] video: add ILI9488 panel support with MIPI DBI Type C1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

this series adds support for TFT LCD panels based on the Ilitek ILI9488
controller connected via MIPI DBI Type C Option 1 over SPI.

The target panel is the Winstar WF35-320480UD (480x320, RGB666 18-bit),
used on a custom STM32MP151A-based board by Amel s.r.l.

MIPI DBI Type C Option 1 requires 9-bit SPI transfers where the MSB
encodes the Data/Command flag. Since many SPI controllers do not support
9 bits-per-word natively, a native 9-bit implementation and an 8-bit
emulation fallback are both provided.

The series is structured as follows:

  [1/4] Extends the mipi_dbi core with Type C Option 1 transfer
        support, including 8-bit emulation for controllers that lack
        native 9-bit SPI capability.

  [2/4] Adds a rotation field to struct mipi_dbi_dev so that panel
        drivers can configure the MADCTL register from a device tree
        property.

  [3/4] Device tree binding documentation for ILI9488-based panels,
        with a vendor-specific compatible for the Winstar WF35-320480UD.

  [4/4] The ILI9488 panel driver itself, with RGB565-to-RGB666
        framebuffer conversion, backlight control and rotation support.

Tested on an STM32MP151A-based board with SPI and a WF35-320480UD
panel.

Giandomenico Rossi (4):
  video: mipi-dbi: support for MIPI DBI Type C Option 1
  video: mipi-dbi: add display rotation support
  dt-bindings: display: panel: add Ilitek ILI9488 panel
  video: add Ilitek ILI9488 driver for WF35 panel

 drivers/video/Kconfig                         |  10 +
 drivers/video/Makefile                        |   1 +
 drivers/video/mipi_dbi.c                      | 263 +++++++++-
 drivers/video/panel-ilitek-ili9488.c          | 490 ++++++++++++++++++
 .../display/panel/panel-ilitek-ili9488.yaml   | 120 +++++
 include/video/mipi_dbi.h                      |  17 +
 6 files changed, 892 insertions(+), 9 deletions(-)
 create mode 100644 drivers/video/panel-ilitek-ili9488.c
 create mode 100644 dts/Bindings/display/panel/panel-ilitek-ili9488.yaml

--
2.34.1



