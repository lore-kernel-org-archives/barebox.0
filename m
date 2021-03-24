Delivery-date: Wed, 24 Mar 2021 09:28:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOysf-0006Cm-CK
	for lore@lore.pengutronix.de; Wed, 24 Mar 2021 09:28:45 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOyse-0003Mp-G8
	for lore@pengutronix.de; Wed, 24 Mar 2021 09:28:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W8uccUbKX3k0Eh4u7XmHRsx/Kbk5mRk/3XgYz8vKRAg=; b=MaP1OVTjKgrP93ZWuJ4Z7TgNr
	91tvllInzoeJNhi65ZDAwibAhZpbQhDH3g9OzJ7qTgJJ3dDnmPFKDDE+bjDv8h1jK8U9VBnSU0LOK
	UHDbOLpe5sHn4hQhOrdDvR6X9FlKB1ObZt1KZuZ0EsS/PUqBlLopOfoiJPCAvkqYvA/OXMK2u0YVg
	MBx+bdYxGRVWyICHqgSTFgXcJiJcoT2dgT6olIlYNKT1OS7i27oLXSztx1t0Ax1RcHZ2idKUwgVAV
	/mzIMZmKtUmEQzVnOlGK3QcV47o+qqu8z8Hxhn04jap7Owqr/2VZp10pueo2594YxbgzehxHpPDft
	DydS8JIiA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOyrO-00Gbxu-Qd; Wed, 24 Mar 2021 08:27:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOynH-00GaAK-3w
 for barebox@lists.infradead.org; Wed, 24 Mar 2021 08:23:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lOynF-0002Ft-C9; Wed, 24 Mar 2021 09:23:09 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lOynF-00082w-46; Wed, 24 Mar 2021 09:23:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Mar 2021 09:23:03 +0100
Message-Id: <20210324082304.30858-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210324082304.30858-1-a.fatoum@pengutronix.de>
References: <20210324082304.30858-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_082312_022028_1D3CD11F 
X-CRM114-Status: GOOD (  16.71  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] RISC-V: board-dt-2nd: ensure FDT doesn't overlap
 with early mem regions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RISC-V PBL code currently reserves the last 2M of the memory for
firmware and places the stack before that. This serves virt, as qemu
places the FDT here, but negatively impacts normal targets with embedded
device tree as it increases fragmentation.

Add code to the generic DT entry point that cuts of a number of MiB from
the end of RAM, so the PBL arrives at a stack top that doesn't overlap
FDT.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Prequisite for fix in next patch
---
 arch/riscv/boot/board-dt-2nd.c    | 20 ++++++++++++++++++--
 arch/riscv/boot/uncompress.c      |  5 +----
 arch/riscv/include/asm/sections.h |  9 +++++++++
 3 files changed, 28 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/boot/board-dt-2nd.c b/arch/riscv/boot/board-dt-2nd.c
index 25fa7d4f2bef..be28ea23cd6d 100644
--- a/arch/riscv/boot/board-dt-2nd.c
+++ b/arch/riscv/boot/board-dt-2nd.c
@@ -1,8 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0
 
 #include <common.h>
+#include <asm/sections.h>
+#include <linux/sizes.h>
 #include <debug_ll.h>
 #include <pbl.h>
+#include <fdt.h>
 
 #if __riscv_xlen == 64
 #define IMAGE_LOAD_OFFSET 0x200000 /* Image load offset(2MB) from start of RAM */
@@ -21,8 +24,8 @@
 
 ENTRY_FUNCTION(start_dt_2nd, a0, _fdt, a2)
 {
-	unsigned long membase, memsize;
-	void *fdt = (void *)_fdt;
+	unsigned long membase, memsize, endmem, endfdt, uncompressed_len;
+	struct fdt_header *fdt = (void *)_fdt;
 
 	if (!fdt)
 		hang();
@@ -31,6 +34,19 @@ ENTRY_FUNCTION(start_dt_2nd, a0, _fdt, a2)
 	setup_c();
 
 	fdt_find_mem(fdt, &membase, &memsize);
+	endmem = membase + memsize;
+	endfdt = _fdt + be32_to_cpu(fdt->totalsize);
+
+	/*
+	 * QEMU likes to place the FDT at the end of RAM, where barebox
+	 * would normally extract itself to. Accommodate this by moving
+	 * memory end, so it doesn't overlap FDT
+	 */
+	uncompressed_len = input_data_len() + MAX_BSS_SIZE;
+
+	if (riscv_mem_barebox_image(membase, endmem, uncompressed_len) < endfdt &&
+	    _fdt < riscv_mem_stack_top(membase, endmem))
+		memsize = ALIGN_DOWN(_fdt - membase, SZ_1M);
 
 	barebox_riscv_entry(membase, memsize, fdt);
 }
diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
index cf268bece1bf..411cefb0e31b 100644
--- a/arch/riscv/boot/uncompress.c
+++ b/arch/riscv/boot/uncompress.c
@@ -22,9 +22,6 @@
 unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
 
-extern unsigned char input_data[];
-extern unsigned char input_data_end[];
-
 void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 				  void *fdt)
 {
@@ -49,7 +46,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 		relocate_to_adr(membase);
 
 	pg_len = pg_end - pg_start;
-	uncompressed_len = get_unaligned((const u32 *)(pg_start + pg_len - 4));
+	uncompressed_len = input_data_len();
 
 	barebox_base = riscv_mem_barebox_image(membase, endmem,
 					       uncompressed_len + MAX_BSS_SIZE);
diff --git a/arch/riscv/include/asm/sections.h b/arch/riscv/include/asm/sections.h
index b5fbba8f165a..725fd8db474e 100644
--- a/arch/riscv/include/asm/sections.h
+++ b/arch/riscv/include/asm/sections.h
@@ -5,12 +5,21 @@
 #ifndef __ASSEMBLY__
 #include <asm-generic/sections.h>
 #include <linux/types.h>
+#include <asm/unaligned.h>
 
 extern char __rel_dyn_start[];
 extern char __rel_dyn_end[];
 extern char __dynsym_start[];
 extern char __dynsym_end[];
 
+extern char input_data[];
+extern char input_data_end[];
+
+static inline unsigned int input_data_len(void)
+{
+	return get_unaligned((const u32 *)(input_data_end - 4));
+}
+
 #endif
 
 #endif /* __ASM_SECTIONS_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

