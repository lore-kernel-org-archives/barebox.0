Delivery-date: Wed, 12 Feb 2025 11:57:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiAQU-001OXH-05
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 11:57:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiAQS-0000Ha-LD
	for lore@pengutronix.de; Wed, 12 Feb 2025 11:57:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nL4jrAf9D5+QlaPIs45BWFJNg+YSZG71RwcwBU7jxqU=; b=Fl5Q1FnAIhV2hlLc13HJaSOvqk
	mK6YrdsuDl5VuNPqMSyCINek/o/TnlgJr03vs98VcDhvxwVssQqLBrDUKZ29gelLDU7RJmRC+zuIT
	YyqjhJ2Mg1EHXJZdEUu9R/pho9t1qXOy7ohF1RaCGQpY3YPw9Mn9p/CBD2uWV9RDHxDBMuZ5RMglt
	iBYlLjqg7+uXGEWf5E8bgn52ME8Q3tRNpp+Mx3Tk77T+ETXcNJLQPvSdqel5qAWpNBISoFpDaqF8S
	1W03IrlyVgA7WJnSh/s0J4Ya1m3ld7bV5xKUGgkHGCM/mIvpmv43BWI//48uiWy2tYVKqWYjOWdEK
	rhjWonYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiAPx-000000074Wr-1DTO;
	Wed, 12 Feb 2025 10:56:33 +0000
Received: from zdiv.net ([46.226.106.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiAJT-0000000734q-1RYD
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 10:49:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1739357364;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=nL4jrAf9D5+QlaPIs45BWFJNg+YSZG71RwcwBU7jxqU=;
	b=CWnut6TqdqUPpZV1eIcBOkwSZWHyDFdNR6yMEbX8D8OvhXlkZlbGtzoHm5S8bvKj/pQgTl
	7H533hBuYzFJaNKV7IAtg96dVBN0U4Lmpz3Egl2ppZHlJGMQWv/9YfRWnYcT2nYkUYxanE
	eLICigduTw+ouQCg9Q/0ZnHo4JaSKSs2JaSl9TWUXSnY7k1Od61pRra05yfNB1VivxTiJR
	v+ZJeieTuOBoeWs4YTkLrxvegjkY46m8Rd3/aRIbPOKPLDkYrwOZ8dh/gVDLRpCqFh9sEd
	qh5coDuz2bYxf58onji3w8rndOz9PeAU60ekgf4apYsLd6AZI5P1g4pTxMF0dw==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:6f02:8f71:b5f4:2800])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 66848830 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Wed, 12 Feb 2025 11:49:24 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Wed, 12 Feb 2025 11:48:36 +0100
Message-ID: <20250212104842.504-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_024951_642431_24B578A7 
X-CRM114-Status: GOOD (  11.26  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 0/6] Initial support for Allwinner A64 SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds an initial support for Allwinner, currently only
targetting the Pine64+ board, based on the A64 SoC.

This first series is intented as a second boot image only, that can
be started from u-boot. This series provides the bare minimal for
barebox to load the next OS from sd/mmc.

v2 highlights:
The main change in the V2 series is the new "one-size fit all"
clk driver only used right for the mmc0/mmc1/mmc2 clock source
(composite with a gate, a mux, two divs plus a fixed post-div).

v3 highlights:
Rework of the timeouts in the mci driver.
Split the lowlevel documentation out of this serie and added a
user documentation instead.
Replaced the sunxi_v8_defconfig with the multi_v8_defconfig

Jules Maselbas (6):
  clk: divider: add error code propagation
  clk: Add clock driver for sun50i-a64
  pinctrl: Add sun50i-a64 pinctrl driver
  mci: Add sunxi-mmc driver
  ARM: sunxi: Introduce mach-sunxi
  Documentation: sunxi: Add some documentation

 Documentation/boards/sunxi.rst             | 116 ++++
 arch/arm/Kconfig                           |  12 +
 arch/arm/Makefile                          |   1 +
 arch/arm/configs/multi_v8_defconfig        |   2 +
 arch/arm/mach-sunxi/Kconfig                |  13 +
 arch/arm/mach-sunxi/Makefile               |   1 +
 drivers/clk/Makefile                       |   1 +
 drivers/clk/clk-divider.c                  |   4 +-
 drivers/clk/sunxi/Makefile                 |   3 +
 drivers/clk/sunxi/clk-sun50i-a64.c         | 294 ++++++++++
 drivers/clk/sunxi/clk-sun50i-a64.h         |  62 +++
 drivers/clk/sunxi/clk-sunxi.c              | 348 ++++++++++++
 drivers/clk/sunxi/clk-sunxi.h              |  79 +++
 drivers/mci/Kconfig                        |   6 +
 drivers/mci/Makefile                       |   2 +
 drivers/mci/sunxi-mmc-common.c             | 238 +++++++++
 drivers/mci/sunxi-mmc-pbl.c                |  81 +++
 drivers/mci/sunxi-mmc.c                    | 176 ++++++
 drivers/mci/sunxi-mmc.h                    | 222 ++++++++
 drivers/pinctrl/Kconfig                    |   2 +
 drivers/pinctrl/Makefile                   |   1 +
 drivers/pinctrl/sunxi/Kconfig              |  13 +
 drivers/pinctrl/sunxi/Makefile             |   3 +
 drivers/pinctrl/sunxi/pinctrl-sun50i-a64.c | 594 +++++++++++++++++++++
 drivers/pinctrl/sunxi/pinctrl-sunxi.c      | 369 +++++++++++++
 drivers/pinctrl/sunxi/pinctrl-sunxi.h      | 224 ++++++++
 include/mach/sunxi/xload.h                 |  12 +
 27 files changed, 2878 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/boards/sunxi.rst
 create mode 100644 arch/arm/mach-sunxi/Kconfig
 create mode 100644 arch/arm/mach-sunxi/Makefile
 create mode 100644 drivers/clk/sunxi/Makefile
 create mode 100644 drivers/clk/sunxi/clk-sun50i-a64.c
 create mode 100644 drivers/clk/sunxi/clk-sun50i-a64.h
 create mode 100644 drivers/clk/sunxi/clk-sunxi.c
 create mode 100644 drivers/clk/sunxi/clk-sunxi.h
 create mode 100644 drivers/mci/sunxi-mmc-common.c
 create mode 100644 drivers/mci/sunxi-mmc-pbl.c
 create mode 100644 drivers/mci/sunxi-mmc.c
 create mode 100644 drivers/mci/sunxi-mmc.h
 create mode 100644 drivers/pinctrl/sunxi/Kconfig
 create mode 100644 drivers/pinctrl/sunxi/Makefile
 create mode 100644 drivers/pinctrl/sunxi/pinctrl-sun50i-a64.c
 create mode 100644 drivers/pinctrl/sunxi/pinctrl-sunxi.c
 create mode 100644 drivers/pinctrl/sunxi/pinctrl-sunxi.h
 create mode 100644 include/mach/sunxi/xload.h

-- 
2.48.1



