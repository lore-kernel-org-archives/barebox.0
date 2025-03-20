Delivery-date: Thu, 20 Mar 2025 06:17:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Hf-001l1P-3A
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:17:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8He-0002aJ-M7
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:17:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jpyyc+8pyg3iXV6vcQBtjzceSaRDNV1jcnz2GhyLBZo=; b=Qoe2u9/0QSu2W2wVGcpK3pJk7W
	mP7X+/E/yy/QkjSgJ2mG418k7k+FTMVCdOyQOV8wsf8sdmftxm9SL37DnHZvcrC7WXbpOT6w/TRdU
	jXQICC+kSc5ZIoYHNh/H8nv9xCrwDy4oroRPwKrYM8/+wHkUdQoCCJdji4PEK2Y8tpIAgx2alpcuE
	vtcBHKFbxODUOr8sLTUpLxXsRksjsBmDyOzA/9LRkYlBzVjwbBxM2VbMcGA4u2R5THuJzJS/+Bns8
	41mAqrK20F80d+azipn+WYeXqPfhIrCDreYj5sH8Zvk/NdHqWzjK1d3mSy02YSD42DLLsnn3J7RBx
	ySfC532Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8Gy-0000000BBgi-21Z9;
	Thu, 20 Mar 2025 05:16:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8Gt-0000000BBej-0pUD
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:16:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Gq-0001yV-Sj; Thu, 20 Mar 2025 06:16:44 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Go-000huQ-1e;
	Thu, 20 Mar 2025 06:16:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Go-007EvV-2j;
	Thu, 20 Mar 2025 06:16:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 06:16:36 +0100
Message-Id: <20250320051641.1721377-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250320051641.1721377-1-a.fatoum@pengutronix.de>
References: <20250320051641.1721377-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_221647_248980_3E2C1101 
X-CRM114-Status: GOOD (  10.94  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/8] sandbox: do not enable SANDBOX_LINUX_I386 in allyesconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On sandbox, CONFIG_32BIT and CONFIG_64BIT are determined by the used
compiler. As special case, building sandbox on x86_64 allows
selecting a 32-bit build via CONFIG_SANDBOX_LINUX_I386 if the compiler
supports it.

This option is disabled by default, but allyesconfig turns it on,
alongside drivers requiring host libraries like FTDI and SDL, which
are usually not required.

To make allyesconfig work out-of-the-box, restructure the config
symbols and give 64BIT a prompt only if i386 support is possible.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix typo in symbol name (32_BIT -> 32BIT)
---
 arch/sandbox/Kconfig | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index c1a51d4f021d..d4380aba0b5f 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -44,17 +44,23 @@ config CC_HAS_LINUX_I386_SUPPORT
 
 config 64BIT
 	bool
-	default n if SANDBOX_LINUX_I386
+	prompt "64-bit barebox" if CC_HAS_LINUX_I386_SUPPORT
 	default CC_IS_64BIT
 	select ARCH_DMA_ADDR_T_64BIT
 	select PHYS_ADDR_T_64BIT
 	select ARCH_HAS_ASAN_FIBER_API if ASAN
+	help
+	  Say n here if you want to build a 32-bit barebox, either
+	  to be more similar to a target platform or to reduce
+	  memory usage when fuzzing for example.
+
+	  If unsure, say y.
 
 config 32BIT
 	def_bool !64BIT
 
 config SANDBOX_LINUX_I386
-	bool "32-bit x86 barebox" if CC_HAS_LINUX_I386_SUPPORT
+	def_bool 32BIT && CC_HAS_LINUX_I386_SUPPORT
 
 config SANDBOX_REEXEC
 	prompt "exec(2) reset handler"
-- 
2.39.5



