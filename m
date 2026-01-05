Delivery-date: Mon, 05 Jan 2026 09:46:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcgEc-001Sg6-1P
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:46:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcgEb-0004Wp-RB
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:46:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GEwzE1XG+6NrDW2kxm5kyuot4OX62NS/ZgKibXDrrwQ=; b=U8qeSvk4izwsg/t42rrWiLBJcJ
	LW3J5GbJ46wzKAR0t3xeF2qiBvzkP7b/N2ijwiSaoZzedlvu8ECyYa8cKOlfpZTrtjoOv532sJsqa
	uMngMBByWxuH2daTRGUu4XVIuBJbsMIJaXV4upRCNS2OEtwFIL/nuTGcI/ZdWI7me2SRHmiQibCM7
	EIUte85GiqLLBTQ+sSXBB3pXXM14hRZGH/u4xXaq+WO8n42kQO8fhcrdElhJojwXGhPXcum+HYVch
	Zl4oPGTxwrdxfEpL5H6l7Mz2M9YPziilzLPgBcm3BWRd3/+td/h5iAYLeveWuDG9fbLwj5wOFQ4Q/
	keaw1grA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcgEA-0000000B0VK-30oo;
	Mon, 05 Jan 2026 08:46:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcgE4-0000000B0Uo-3iHF
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:46:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcgE2-0004Qb-Uf; Mon, 05 Jan 2026 09:46:07 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:46:01 +0100
Message-ID: <20260105084604.3288407-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_004608_925882_734B8AD9 
X-CRM114-Status: GOOD (  13.31  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: remove unused constructor support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_CONSTRUCTORS was added alongside KASAN support, but it appears to
be unused and not necessary for KASAN to work.

While at it, we also remove the legacy CONSTRUCTORS directive that only
exists in the 32-bit, but not 64-bit ARM linker script.

I suspect that in Linux, constructors are needed for external modules,
but in barebox, we don't currently make use of it, so it should be safe
to drop.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/lib32/barebox.lds.S      |  4 +---
 common/startup.c                  | 15 ---------------
 include/asm-generic/barebox.lds.h | 12 ------------
 lib/Kconfig                       |  3 ---
 lib/kasan/Kconfig                 |  1 -
 5 files changed, 1 insertion(+), 34 deletions(-)

diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index 2d08b95758b7..c704dd6d70f3 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -59,9 +59,7 @@ SECTIONS
 	_sdata = .;
 
 	. = ALIGN(4);
-	.data : { *(.data*)
-		CONSTRUCTORS
-	}
+	.data : { *(.data*) }
 
 	. = .;
 
diff --git a/common/startup.c b/common/startup.c
index 81a3ae1513c2..6730b6c49220 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -396,19 +396,6 @@ static int run_init(void)
 	hang();
 }
 
-typedef void (*ctor_fn_t)(void);
-
-/* Call all constructor functions linked into the kernel. */
-static void do_ctors(void)
-{
-#ifdef CONFIG_CONSTRUCTORS
-	ctor_fn_t *fn = (ctor_fn_t *) __ctors_start;
-
-	for (; fn < (ctor_fn_t *) __ctors_end; fn++)
-		(*fn)();
-#endif
-}
-
 int (*barebox_main)(void)
 	= !IS_ENABLED(CONFIG_SHELL_NONE) &&
            IS_ENABLED(CONFIG_COMMAND_SUPPORT) ? run_init : NULL;
@@ -418,8 +405,6 @@ void __noreturn start_barebox(void)
 	initcall_t *initcall;
 	int result;
 
-	do_ctors();
-
 	for (initcall = __barebox_initcalls_start;
 			initcall < __barebox_initcalls_end; initcall++) {
 		pr_debug("initcall-> %pS\n", *initcall);
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 092dbc6dffa6..12082d567a4d 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -129,24 +129,12 @@
 #endif
 
 
-#ifdef CONFIG_CONSTRUCTORS
-#define KERNEL_CTORS()  . = ALIGN(8);                      \
-			__ctors_start = .;                 \
-			KEEP(*(.ctors))                    \
-			KEEP(*(SORT(.init_array.*)))       \
-			KEEP(*(.init_array))               \
-			__ctors_end = .;
-#else
-#define KERNEL_CTORS()
-#endif
-
 #define RO_DATA_SECTION				\
 	BAREBOX_INITCALLS			\
 	BAREBOX_EXITCALLS			\
 	BAREBOX_CMDS				\
 	BAREBOX_RATP_CMDS			\
 	BAREBOX_SYMS				\
-	KERNEL_CTORS()				\
 	BAREBOX_MAGICVARS			\
 	BAREBOX_CLK_TABLE			\
 	BAREBOX_DTB				\
diff --git a/lib/Kconfig b/lib/Kconfig
index 58993bc5d3c9..9b8e0c2fa77d 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -80,9 +80,6 @@ config REED_SOLOMON
 config BASE64
 	bool "include base64 encode/decode support"
 
-config CONSTRUCTORS
-	bool
-
 config GENERIC_FIND_NEXT_BIT
 	def_bool n
 
diff --git a/lib/kasan/Kconfig b/lib/kasan/Kconfig
index 532412953ba5..62645ba8ea95 100644
--- a/lib/kasan/Kconfig
+++ b/lib/kasan/Kconfig
@@ -7,7 +7,6 @@ config KASAN
 	bool "KASAN: runtime memory debugger"
 	depends on (HAVE_ARCH_KASAN && CC_HAS_KASAN_GENERIC)
 	depends on MALLOC_TLSF
-	select CONSTRUCTORS
 	select PRINTF_HEXSTR
 	help
 	  Enables KASAN (KernelAddressSANitizer) - runtime memory debugger,
-- 
2.47.3



