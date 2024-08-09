Delivery-date: Fri, 09 Aug 2024 16:19:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQT5-007rRq-31
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:19:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQT5-0007GE-A5
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:19:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Vo0JPKxhx39QGfEJZEBd9iXcuIEA3pAvPz6cnpvZuzY=; b=1IvKh0lxD/vuK4z5hUaPi7G3G5
	zRfg/aQmvAPGIYjSbPHJZF3AXTMHkcRD5HXm2Zq6TcJRNfz0TGwDM6/PhjX8AyBsKsGSByPZShbxc
	/dprLdguNfL+4Z3UBM7+1W31rMxxwEjuXDv5k6XSfQH/FTUEzCv+oYgVFmNsX270JKDlngIgON/Yh
	JQrj5JRn3fMLaXwhm8+1W+IqTeLw75s421IxBHKBNeBYQgSosJDVCsp+cNt9/OaHmLpj0iT+sv9A2
	UwPTISCfX85oStO6oEj+1mLjk7OmJh3NgrqHSX6NcCUUGt2EeGO7/q0OTkI/ij4iqizAJfVChFWRF
	xu3MZ8lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQSh-0000000BVIs-3WTm;
	Fri, 09 Aug 2024 14:19:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQRX-0000000BUl3-3UqL
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:18:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQRW-0006oO-2w; Fri, 09 Aug 2024 16:18:10 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQRV-005gZQ-ME; Fri, 09 Aug 2024 16:18:09 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQRV-001JNn-1u;
	Fri, 09 Aug 2024 16:18:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:18:08 +0200
Message-Id: <20240809141808.312818-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_071812_572221_BFCDFF70 
X-CRM114-Status: UNSURE (   9.70  )
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
Subject: [PATCH] common: make BOOTM_SHOW_TYPE depend on UIMAGE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The config option only controls whether some extra uImage tags are
displayed extracted by calling functions in image.c.

Rename image.c to uimage_types.c to make clear that it is
uImage-specific and hide the option when UIMAGE is not enabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig                     | 4 ++--
 common/Makefile                    | 2 +-
 common/{image.c => uimage_types.c} | 0
 3 files changed, 3 insertions(+), 3 deletions(-)
 rename common/{image.c => uimage_types.c} (100%)

diff --git a/common/Kconfig b/common/Kconfig
index 4500feb66c92..e505032e14d1 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -573,8 +573,8 @@ menuconfig BOOTM
 
 config BOOTM_SHOW_TYPE
 	bool
-	depends on BOOTM
-	prompt "show image information"
+	depends on BOOTM && UIMAGE
+	prompt "show uImage information"
 	help
 	  Displays some tags from the uImage:
 
diff --git a/common/Makefile b/common/Makefile
index e88f60b6d762..e66dc04bd874 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -69,7 +69,7 @@ obj-$(CONFIG_SHELL_SIMPLE)	+= parser.o
 obj-$(CONFIG_STATE)		+= state/
 obj-$(CONFIG_RATP)		+= ratp/
 obj-$(CONFIG_BOOTCHOOSER)	+= bootchooser.o
-obj-$(CONFIG_UIMAGE)		+= image.o uimage.o
+obj-$(CONFIG_UIMAGE)		+= uimage_types.o uimage.o
 obj-$(CONFIG_FITIMAGE)		+= image-fit.o
 obj-$(CONFIG_MENUTREE)		+= menutree.o
 lwl-$(CONFIG_IMD)		+= imd-barebox.o
diff --git a/common/image.c b/common/uimage_types.c
similarity index 100%
rename from common/image.c
rename to common/uimage_types.c
-- 
2.39.2



