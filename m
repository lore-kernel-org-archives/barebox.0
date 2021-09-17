Delivery-date: Fri, 17 Sep 2021 19:43:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRHtU-0001NH-9E
	for lore@lore.pengutronix.de; Fri, 17 Sep 2021 19:43:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRHtT-0006yp-82
	for lore@pengutronix.de; Fri, 17 Sep 2021 19:43:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lo6winIoP8Uv+4MSk9whW16RKc/g4dOHplXFxGqUxh4=; b=Bj/Y0eqSha8p/S
	LRSesZhOpSiiKwZsldczT9MlzS12w1QpawnBXz6Zziz9wii0zXk3kgjgw3YJq2ZRLuz7nSiBvwW8D
	qX5aAvNM14M1s5+de/grsVQ1tusx04sNtk1BKhM1TguFu2xFUBzB0BzStJ0RLfCmdkPLvr3+atHX8
	Mbwt1P/f8OnQt4blDeRJ/Lk9DdEWCWe9j2vmHQe+UIkfhbIyDndH44MGRKP3ovw7GQP7lCTi7X1qM
	RpQflzkwindJHEeP9fT3nawUDu8jKJvpq8iZ1a6rDHgN1FSY1NWGapnkyTi9s37OjyEoYDD7D1DHj
	cpxy37lcAyq44Q8nHNQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRHs3-00Eked-Ct; Fri, 17 Sep 2021 17:41:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRHry-00EkeE-Oy
 for barebox@lists.infradead.org; Fri, 17 Sep 2021 17:41:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mRHrh-0006g2-G6; Fri, 17 Sep 2021 19:41:33 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mRHrg-0006ov-VU; Fri, 17 Sep 2021 19:41:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de, Trent Piepho <trent.piepho@igorinstitute.com>,
 Roland Hieber <rhi@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Sep 2021 19:41:25 +0200
Message-Id: <20210917174127.23345-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210917174127.23345-1-a.fatoum@pengutronix.de>
References: <20210917174127.23345-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_104150_852787_D70B3383 
X-CRM114-Status: GOOD (  13.98  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/4] common: add new menu for target tools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have four target tools and will add 3 more in a follow up commit.
Add a new menu to collect them.

Acked-by: Roland Hieber <rhi@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 common/Kconfig  | 26 --------------------------
 scripts/Kconfig | 30 ++++++++++++++++++++++++++++++
 2 files changed, 30 insertions(+), 26 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 222a438ee545..9dab7532e15e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -734,18 +734,6 @@ config IMD
 	select CRC32
 	bool "barebox metadata support"
 
-config IMD_TARGET
-	bool "build bareboximd target tool"
-	depends on IMD
-
-config KERNEL_INSTALL_TARGET
-	bool
-	prompt "Build kernel-install utility for the target"
-	help
-	  Enable this to compile the kernel-install script using the cross
-	  compiler. The utility for the target will be under
-	  scripts/kernel-install-target
-
 choice
 	prompt "console support"
 	default CONSOLE_FULL
@@ -980,20 +968,6 @@ config DEFAULT_ENVIRONMENT_PATH
 	  be taken. Relative paths will be relative to the barebox top-level
 	  directory, but absolute paths are fine as well.
 
-config BAREBOXENV_TARGET
-	bool
-	prompt "build bareboxenv tool for target"
-	help
-	  'bareboxenv' is a tool to access the barebox environment from a running Linux
-	  system. Say yes here to build it for the target.
-
-config BAREBOXCRC32_TARGET
-	bool
-	prompt "build bareboxcrc32 tool for target"
-	help
-	  'bareboxcrc32' is a userspacetool to generate the crc32 checksums the same way
-	  barebox does. Say yes here to build it for the target.
-
 config HAS_SCHED
 	bool
 
diff --git a/scripts/Kconfig b/scripts/Kconfig
index b903486ecd8f..f7ed775fbc66 100644
--- a/scripts/Kconfig
+++ b/scripts/Kconfig
@@ -40,3 +40,33 @@ config OMAP4_HOSTTOOL_USBBOOT
 	  You need libusb-1.0 to compile this tool.
 
 endmenu
+
+menu "Target Tools"
+
+config IMD_TARGET
+	bool "build bareboximd target tool"
+	depends on IMD
+
+config KERNEL_INSTALL_TARGET
+	bool
+	prompt "Build kernel-install utility for the target"
+	help
+	  Enable this to compile the kernel-install script using the cross
+	  compiler. The utility for the target will be under
+	  scripts/kernel-install-target
+
+config BAREBOXENV_TARGET
+	bool
+	prompt "build bareboxenv tool for target"
+	help
+	  'bareboxenv' is a tool to access the barebox environment from a running Linux
+	  system. Say yes here to build it for the target.
+
+config BAREBOXCRC32_TARGET
+	bool
+	prompt "build bareboxcrc32 tool for target"
+	help
+	  'bareboxcrc32' is a userspacetool to generate the crc32 checksums the same way
+	  barebox does. Say yes here to build it for the target.
+
+endmenu
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

