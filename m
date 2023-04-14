Delivery-date: Fri, 14 Apr 2023 19:15:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnN1g-003WbE-K2
	for lore@lore.pengutronix.de; Fri, 14 Apr 2023 19:15:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnN1g-0003Te-GM
	for lore@pengutronix.de; Fri, 14 Apr 2023 19:15:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=K8RyPn8u0J5dqx8dMq5wuYGqj9qfNkNGOxYxHLejZto=; b=nQ+Ye8Y4W8m9KeBxOvLPUiWfL5
	iICe7tX/juDJSwpGgoPb9tM6O60McvRi3phDIQJHlCEqrFGEikvrvCPLE0AyWtK7WfxfE/OsCdC+q
	6LrEdxaStnWu8bY2xqeBysh73lPYUtMupp9O7YsA/7OYbaVgtyOKFVSdLVmOtkR10m5WUKHcbu2ky
	WFB2Efm0e9cC8u6zPfOQkVrgsXlUFkP7MHd5cfyo7Xl7bcD78TiMH9L64QDBcSwiM4Y2JgtsDJl51
	Ne/xOTCkLvuAuREEywbzbHpFrm0/iDd4+1U9HjzoMKwhkBdFnnD2Ee+7dmjGnXBt22FseDh/jSBDU
	SpJyrs6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnN0I-00AD2z-2k;
	Fri, 14 Apr 2023 17:14:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnN0F-00AD29-0K
	for barebox@lists.infradead.org;
	Fri, 14 Apr 2023 17:14:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pnN0B-0003DO-Ue; Fri, 14 Apr 2023 19:14:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnN0B-00BFRL-9G; Fri, 14 Apr 2023 19:14:23 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnN0A-007KZJ-Co; Fri, 14 Apr 2023 19:14:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Apr 2023 19:14:21 +0200
Message-Id: <20230414171421.1745965-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_101427_142264_0FB76BDA 
X-CRM114-Status: GOOD (  12.89  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] arm: error out if __LINUX_ARM_ARCH__ is undefined
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With recent multiarch (really, multiplatform) rework, oldconfig will
reask users what platforms they want to build for. The default is N,
so holding return (or an olddefconfig) will just disable all boards and
with it all CPUs leading to a cryptic torrent of:

  arch/arm/include/asm/swab.h:31:28: warning: "__LINUX_ARM_ARCH__" is not defined, evaluates to 0 [-Wundef]
     31 | #if defined(__KERNEL__) && __LINUX_ARM_ARCH__ >= 6
        |                            ^~~~~~~~~~~~~~~~~~

Make user experience a bit better by printing an error message instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Makefile                 | 1 +
 arch/arm/include/asm/arch-check.h | 9 +++++++++
 2 files changed, 10 insertions(+)
 create mode 100644 arch/arm/include/asm/arch-check.h

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 9bd7db6ba9f8..a506f1e3a3e5 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -42,6 +42,7 @@ endif
 # Note that GCC does not numerically define an architecture version
 # macro, but instead defines a whole series of macros which makes
 # testing for a specific architecture or later rather impossible.
+arch-y				:= -include asm/arch-check.h
 arch-$(CONFIG_CPU_64v8)		:= -D__LINUX_ARM_ARCH__=8 $(call cc-option,-march=armv8-a)
 arch-$(CONFIG_CPU_32v7)		:=-D__LINUX_ARM_ARCH__=7 $(call cc-option,-march=armv7-a,-march=armv5t -Wa$(comma)-march=armv7-a)
 arch-$(CONFIG_CPU_32v6)		:=-D__LINUX_ARM_ARCH__=6 $(call cc-option,-march=armv6,-march=armv5t -Wa$(comma)-march=armv6)
diff --git a/arch/arm/include/asm/arch-check.h b/arch/arm/include/asm/arch-check.h
new file mode 100644
index 000000000000..2cf1b624a4de
--- /dev/null
+++ b/arch/arm/include/asm/arch-check.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __ARM_ASM_ARCH_CHECK_H__
+#define __ARM_ASM_ARCH_CHECK_H__
+
+#ifndef __LINUX_ARM_ARCH__
+#error No boards/CPUs selected in Kconfig
+#endif
+
+#endif
-- 
2.39.2



