Delivery-date: Wed, 09 Apr 2025 16:40:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2Wbe-00ARo6-1m
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 16:40:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2Wbd-0003ID-PF
	for lore@pengutronix.de; Wed, 09 Apr 2025 16:40:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=btdSolmOD52t9d1KzY+Da3kX+RU4gV6EIyy/xiSKB1I=; b=vByoxa2wpyEbAafFd6ZVldCQqM
	AJlAof3lfFa7J3BlTiMLH3tjVP9Yxt0naU8XRJFf5pcRvMe/0O5sXx1F8ueBAuFsl2xQ2fJW6wsFR
	DHUwlSNBHq2njIETSb6r3JmIgxTCOtPHlccABhxVa1xCSS61M06D6+um2hG5AdduW5L3ZhQ5U4LjB
	jiTI3KosqSiGYQr6Ni2Mc7Ep2TG9oXazDrMGiLJcUYSesAIT+kCzClIEKuykTaSXyO/5dt9TtewV1
	NZyaXA+L89ztiZZMsXY+hjy+HINLfKWlchnb1HMQdSDchF4MIED4emqSgEXIWYQO22MwYf5f+CcdK
	t9uU3aNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2WbF-00000007Utf-0Eyk;
	Wed, 09 Apr 2025 14:40:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Vzo-00000007NXk-0DCv
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 14:01:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-0004qD-O8; Wed, 09 Apr 2025 16:01:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-00470B-1i;
	Wed, 09 Apr 2025 16:01:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-008jBv-1P;
	Wed, 09 Apr 2025 16:01:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Apr 2025 16:01:32 +0200
Message-Id: <20250409140134.2079552-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250409140134.2079552-1-a.fatoum@pengutronix.de>
References: <20250409140134.2079552-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_070140_113428_62EA2B15 
X-CRM114-Status: GOOD (  12.11  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] ARM: legacy: make architecture number unsigned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The number is effectively unsigned, but we have some places where we
still use int. Switch it over to use unsigned throughout.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/armlinux.h |  4 ++--
 arch/arm/lib32/armlinux.c       | 12 ++++++------
 include/bootstrap.h             |  2 +-
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
index 8d8e05105b08..c648ef3d78d0 100644
--- a/arch/arm/include/asm/armlinux.h
+++ b/arch/arm/include/asm/armlinux.h
@@ -9,7 +9,7 @@
 
 #if defined CONFIG_ARM_LINUX && defined CONFIG_CPU_32
 void armlinux_set_bootparams(void *params);
-void armlinux_set_architecture(int architecture);
+void armlinux_set_architecture(unsigned architecture);
 void armlinux_set_revision(unsigned int);
 void armlinux_set_serial(u64);
 #else
@@ -17,7 +17,7 @@ static inline void armlinux_set_bootparams(void *params)
 {
 }
 
-static inline void armlinux_set_architecture(int architecture)
+static inline void armlinux_set_architecture(unsigned architecture)
 {
 }
 
diff --git a/arch/arm/lib32/armlinux.c b/arch/arm/lib32/armlinux.c
index eb30f4a952ee..0b332d23639d 100644
--- a/arch/arm/lib32/armlinux.c
+++ b/arch/arm/lib32/armlinux.c
@@ -30,7 +30,7 @@
 static struct tag *params;
 static void *armlinux_bootparams = NULL;
 
-static int armlinux_architecture;
+static unsigned armlinux_architecture;
 static u32 armlinux_system_rev;
 static u64 armlinux_system_serial;
 
@@ -38,13 +38,13 @@ BAREBOX_MAGICVAR(armlinux_architecture, "ARM machine ID");
 BAREBOX_MAGICVAR(armlinux_system_rev, "ARM system revision");
 BAREBOX_MAGICVAR(armlinux_system_serial, "ARM system serial");
 
-void armlinux_set_architecture(int architecture)
+void armlinux_set_architecture(unsigned architecture)
 {
 	export_env_ull("armlinux_architecture", architecture);
 	armlinux_architecture = architecture;
 }
 
-static int armlinux_get_architecture(void)
+static unsigned armlinux_get_architecture(void)
 {
 	getenv_uint("armlinux_architecture", &armlinux_architecture);
 
@@ -241,7 +241,7 @@ static void setup_tags(unsigned long initrd_address,
 	setup_end_tag();
 
 	printf("commandline: %s\n"
-	       "arch_number: %d\n", commandline, armlinux_get_architecture());
+	       "arch_number: %u\n", commandline, armlinux_get_architecture());
 
 }
 
@@ -251,9 +251,9 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 		 unsigned long initrd_size, void *oftree,
 		 enum arm_security_state state, void *optee)
 {
-	void (*kernel)(int zero, int arch, void *params) = adr;
+	void (*kernel)(int zero, unsigned arch, void *params) = adr;
 	void *params = NULL;
-	int architecture;
+	unsigned architecture;
 	int ret;
 
 	if (IS_ENABLED(CONFIG_ARM_SECURE_MONITOR) && state > ARM_STATE_SECURE) {
diff --git a/include/bootstrap.h b/include/bootstrap.h
index 3e006d3cc9f7..801cbeb3da4b 100644
--- a/include/bootstrap.h
+++ b/include/bootstrap.h
@@ -10,7 +10,7 @@
 
 #define bootstrap_err(fmt, arg...) printf(fmt, ##arg)
 
-typedef void (*kernel_entry_func)(int zero, int arch, void *params);
+typedef void (*kernel_entry_func)(int zero, unsigned arch, void *params);
 void bootstrap_boot(kernel_entry_func func, bool barebox);
 
 #ifdef CONFIG_BOOTSTRAP_DEVFS
-- 
2.39.5



