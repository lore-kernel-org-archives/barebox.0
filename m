Delivery-date: Thu, 13 Mar 2025 07:39:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tscDk-00DSE7-2T
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 07:39:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tscDj-0005bJ-HS
	for lore@pengutronix.de; Thu, 13 Mar 2025 07:39:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8rM2ZDardjYB4t2nc1EZBy8i/9dwSLF7mhFG0g3jAdE=; b=OhxuTBUT8VAlzIkEmD62F6P/aj
	oDP9a1I6XrIr3NS3Y1cRbky77YfQ18TMikmEkVgg5Ypk/6LaI3Xx/HnhS4Qp1P74ncClbK1OMfdww
	7Z4lHW/ZQwCEVixeGeHbn34fHpJzEPZ3F9bsok/douGVexsYMfaa1xXHfYcdikkLJ2l5bPxpLslAl
	97b6XNHKdWFxnMpZYGcBALD8qCXXTMqnxVLYRExYoEY1t4OMP7VHnBYsNLkrPkPhwMuMA6tbEYl3d
	yLZodYtkkrekrxNLI84PYe+nZKL4BgHV3u2dTTBd90qKNI5jBasWAFsLkETUtw6XXR37QD+LMq/jZ
	q2+lCMbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tscD8-0000000AEjF-2h8X;
	Thu, 13 Mar 2025 06:38:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tscCD-0000000AEeA-1Bby
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 06:37:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscC9-0005NV-CI; Thu, 13 Mar 2025 07:37:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscC9-005UIA-0b;
	Thu, 13 Mar 2025 07:37:29 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscC9-000ISd-0J;
	Thu, 13 Mar 2025 07:37:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 07:37:27 +0100
Message-Id: <20250313063727.70946-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313063727.70946-1-a.fatoum@pengutronix.de>
References: <20250313063727.70946-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_233733_319194_F0438DE4 
X-CRM114-Status: GOOD (  10.67  )
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
Subject: [PATCH 2/2] kbuild: override host system KCONFIG_DEFCONFIG_LIST
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

KCONFIG_DEFCONFIG_LIST contains some default locations where a Kernel
config can be found (e.g. /boot/config-$(uname -r)).

Currently, if a config is found in these default locations, it's used as
initial config for barebox as well, which doesn't work well, because
barebox architecture symbols defer quite a bit from the Linux ones.

Let's therefore set the make variable to an empty string to avoid this
issue.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 760fd7381ece..5433927ed197 100644
--- a/Makefile
+++ b/Makefile
@@ -602,10 +602,10 @@ include $(srctree)/arch/$(SRCARCH)/Makefile
 export KBUILD_DEFCONFIG CC_VERSION_TEXT
 
 config: outputmakefile scripts_basic FORCE
-	$(Q)$(MAKE) $(build)=scripts/kconfig $@
+	$(Q)$(MAKE) $(build)=scripts/kconfig KCONFIG_DEFCONFIG_LIST= $@
 
 %config: outputmakefile scripts_basic FORCE
-	$(Q)$(MAKE) $(build)=scripts/kconfig $@
+	$(Q)$(MAKE) $(build)=scripts/kconfig KCONFIG_DEFCONFIG_LIST= $@
 
 else #!config-build
 # ===========================================================================
-- 
2.39.5



