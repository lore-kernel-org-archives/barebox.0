Delivery-date: Mon, 31 May 2021 09:41:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncYE-0003EK-7V
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:41:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncYD-0001Eh-13
	for lore@pengutronix.de; Mon, 31 May 2021 09:41:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNqF3ts6blJu1bgsX+yXnSU1wsuWkWGEbkdCjcrQZv8=; b=dQ4RKItjqLH8GH
	vWCSZhtNl/5vVjSjU7+NbXT+A0A1tybJrQklwOgHyk0IaTQLmF7CIkd5iuYQhX8OTO5yuutNqM+CM
	26je7iWadGxJvGUc2sWSCX7F5ubg/S4VdWAYdahhpCHw8nmetx3Misc/RPkC++arb/OfBPTKiAoSB
	qplSm9YQdY6N+1HmicLu5Bd2CEV2ZEf1OkOKC1yENWjgu3CZlajoN56TcW62YKohmcIXBVsFKlDi3
	i7KFTwrcAk+JVYcfWoKQOsqUSyx0H3f842dgDnOq27X1tm+z+T31xTTF0kLS5/Vu2uAC8MlDGEVKK
	EIyEG5HHhoOZU07AkyjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncWk-00BDTD-Iw; Mon, 31 May 2021 07:39:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncVN-00BChq-RP
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:38:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVE-00080I-BR; Mon, 31 May 2021 09:38:24 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVD-00045t-16; Mon, 31 May 2021 09:38:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:38:08 +0200
Message-Id: <20210531073821.15257-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531073821.15257-1-a.fatoum@pengutronix.de>
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_003834_008696_02EDCF5B 
X-CRM114-Status: GOOD (  13.13  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/20] RISC-V: support incoherent I-Cache
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SiFive SoCs have separate I-Caches that require self-modifying code
like barebox' relocation and PBL extraction code to do cache
maintenance. Implement sync_caches_for_execution and use it where
appropriate.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig.socs                | 2 ++
 arch/riscv/boot/uncompress.c           | 2 ++
 arch/riscv/cpu/core.c                  | 7 +++++++
 arch/riscv/include/asm/barebox-riscv.h | 2 ++
 arch/riscv/lib/reloc.c                 | 8 ++++++++
 arch/riscv/lib/setupc.S                | 2 ++
 6 files changed, 23 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 9c82a36fe4bd..d2970ba1d67f 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -18,6 +18,7 @@ config SOC_VIRT
 	select RISCV_S_MODE
 	select BOARD_RISCV_GENERIC_DT
 	select CLINT_TIMER
+	select HAS_CACHE
 	help
 	  Generates an image tht can be be booted by QEMU. The image is called
 	  barebox-dt-2nd.img
@@ -30,6 +31,7 @@ config SOC_SIFIVE
 	select RISCV_TIMER
 	select HAS_MACB
 	select HAS_ASM_DEBUG_LL
+	select HAS_CACHE
 	help
 	  This enables support for SiFive SoC platform hardware.
 
diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
index 35a91e8cb62a..9f1d25efb59b 100644
--- a/arch/riscv/boot/uncompress.c
+++ b/arch/riscv/boot/uncompress.c
@@ -63,6 +63,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	pbl_barebox_uncompress((void*)barebox_base, pg_start, pg_len);
 
+	sync_caches_for_execution();
+
 	barebox = (void *)barebox_base;
 
 	pr_debug("jumping to uncompressed image at 0x%p. dtb=0x%p\n", barebox, fdt);
diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
index 62eb0ca87164..b4727fe7449b 100644
--- a/arch/riscv/cpu/core.c
+++ b/arch/riscv/cpu/core.c
@@ -18,6 +18,7 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <memory.h>
+#include <asm/barebox-riscv.h>
 #include <asm-generic/memory_layout.h>
 #include <globalvar.h>
 #include <magicvar.h>
@@ -91,3 +92,9 @@ static struct driver_d riscv_driver = {
 	.of_compatible = riscv_dt_ids,
 };
 postcore_platform_driver(riscv_driver);
+
+static void arch_shutdown(void)
+{
+	sync_caches_for_execution();
+}
+archshutdown_exitcall(arch_shutdown);
diff --git a/arch/riscv/include/asm/barebox-riscv.h b/arch/riscv/include/asm/barebox-riscv.h
index bbe6cd040642..abb320242769 100644
--- a/arch/riscv/include/asm/barebox-riscv.h
+++ b/arch/riscv/include/asm/barebox-riscv.h
@@ -27,6 +27,8 @@ void setup_c(void);
 void relocate_to_current_adr(void);
 void relocate_to_adr(unsigned long target);
 
+void sync_caches_for_execution(void);
+
 void __noreturn __naked barebox_riscv_entry(unsigned long membase, unsigned long memsize,
 					    void *boarddata, unsigned int flags);
 
diff --git a/arch/riscv/lib/reloc.c b/arch/riscv/lib/reloc.c
index 2fc8818cd698..165190775361 100644
--- a/arch/riscv/lib/reloc.c
+++ b/arch/riscv/lib/reloc.c
@@ -24,6 +24,12 @@
 
 #define RISC_R_TYPE(x)	((x) & 0xFF)
 
+void sync_caches_for_execution(void)
+{
+	if (IS_ENABLED(CONFIG_HAS_CACHE))
+		asm volatile ("fence.i" ::: "memory");
+}
+
 void relocate_to_current_adr(void)
 {
 	unsigned long offset;
@@ -63,4 +69,6 @@ void relocate_to_current_adr(void)
 			panic("");
 		}
 	}
+
+	sync_caches_for_execution();
 }
diff --git a/arch/riscv/lib/setupc.S b/arch/riscv/lib/setupc.S
index 5fdd81c2c3ec..d225186c79fd 100644
--- a/arch/riscv/lib/setupc.S
+++ b/arch/riscv/lib/setupc.S
@@ -46,6 +46,8 @@ ENTRY(relocate_to_adr)
 
 	jal	__memcpy
 
+	jal	sync_caches_for_execution
+
 	REG_L	a0, (SZREG * 1)(sp)
 	jr	a0 			/* jump to relocated address */
 copied:
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

