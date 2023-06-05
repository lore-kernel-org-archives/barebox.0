Delivery-date: Mon, 05 Jun 2023 08:39:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63ru-00BSPG-0L
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:39:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63rr-0004qM-Ja
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:39:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=E5OqPSHwIGNb56b69j6izPYrvxuMDT2K8WU1Df/e0kw=; b=q9zuittndsIWHbpaXfGKho2Rpe
	nEEE+4oQMoJxNUMw30DobYoh4UGf3rUCDOWtwCnQnqLFDlBIMWKP69NzBo9nblSUGsvHoh8eyNGRx
	ya3GFXfrPgZd2nYsklzhDI3HztzX2sgYaDINrVC9mDaxjVjMP+6MXshtfFXyef62FAokofiIdBmXY
	5JusmPEtWRXtmeHiJhiG/FRz1SslatM2OQY5r7zq/3gIJMnDgDS1D0uQM0yipJy49fIdWKgomsncd
	njbFaVRsopeJV6HEzAOaPM5z0cOs5EmrkpXofnTSW77dS4WzWD7eeBFP4QpLPMgfAeAJvQmr4FtzT
	iHn2LaqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63qt-00EONr-08;
	Mon, 05 Jun 2023 06:38:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63qp-00EOL3-2q
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:38:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63qo-0004Ua-J2; Mon, 05 Jun 2023 08:37:58 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63qn-005CuO-Se; Mon, 05 Jun 2023 08:37:57 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63qn-00628d-2n; Mon, 05 Jun 2023 08:37:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:37:55 +0200
Message-Id: <20230605063755.1438127-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_233759_918346_3B7A783D 
X-CRM114-Status: GOOD (  12.37  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] common: add CONFIG_WERROR option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For development, it may be useful to enforce warning-free builds.
Add a Kconfig option for this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
This can be enabled for CI, once my other series with warning
fixes is merged.
---
 Makefile       |  4 ++++
 common/Kconfig | 14 ++++++++++++++
 2 files changed, 18 insertions(+)

diff --git a/Makefile b/Makefile
index 4fdb8f1b41af..af5c1448b378 100644
--- a/Makefile
+++ b/Makefile
@@ -648,6 +648,8 @@ endif
 # Force gcc to behave correct even for buggy distributions
 KBUILD_CFLAGS          += $(call cc-option, -fno-stack-protector)
 
+KBUILD_CFLAGS-$(CONFIG_WERROR) += -Werror
+
 # This warning generated too much noise in a regular build.
 # Use make W=1 to enable this warning (see scripts/Makefile.build)
 KBUILD_CFLAGS += $(call cc-disable-warning, unused-but-set-variable)
@@ -692,6 +694,8 @@ KBUILD_CFLAGS += $(call cc-option,-Wno-pointer-sign,)
 # change __FILE__ to the relative path from the srctree
 KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
 
+KBUILD_CFLAGS += $(KBUILD_CFLAGS-y)
+
 include-y +=scripts/Makefile.ubsan
 include-$(CONFIG_KASAN)         += scripts/Makefile.kasan
 
diff --git a/common/Kconfig b/common/Kconfig
index 11aabbb509df..5cfe717aa70d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1701,6 +1701,20 @@ config COMPILE_TEST
 	  say Y here. If you are a user, say N here to avoid being prompted for
 	  inclusion of unrelated drivers.
 
+config WERROR
+	bool "Compile barebox with warnings as errors"
+	default COMPILE_TEST
+	help
+	  A barebox build should not cause any compiler warnings, and this
+	  enables the '-Werror' flags to enforce that rule by default.
+
+	  However, if you have a new (or very old) compiler with odd and
+	  unusual warnings, or you have some architecture with problems,
+	  you may need to disable this config option in order to
+	  successfully build barebox.
+
+	  If in doubt, say Y.
+
 endmenu
 
 source "common/efi/Kconfig"
-- 
2.39.2



