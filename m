Delivery-date: Fri, 16 Jan 2026 09:35:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgfJE-001toY-0w
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 09:35:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgfJD-00080G-6u
	for lore@pengutronix.de; Fri, 16 Jan 2026 09:35:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C2MnVoOonUWudlX9W99xO/c6jfCGgXMwK2QHU+dtjNQ=; b=hDqavfkkDOesYeKSd25zDWG5H5
	c80lJk0uyKZHyjdVinjm7xlkfXYrhSxfdIAO8bJnglZ1K6PYhCCInMU+mPvfhuysu9HoKMS7zW8J0
	oOCzgyTetO82LtNOYj9bCNK4iSejWJksaCtfHq9LiQULUKkkI4dkdhZLwasOM8aOpd7C1BHQ12NHw
	DU7OwpfyamjFC0iL6MYq82CG2KdJXHeUkd5CIy91rBA2Hw7Vsd4gzJb8rLoRuRnDf1VOhBFpfPc42
	VbxXHaNbTZ2R9pc8d3tu8tEQtHKUPvBtBOZyN0Efyv4YpjDSKQ6xhiXdO7xpl8olMvVHJLYgy0frP
	G9uJ1s/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfIh-0000000DlnK-495h;
	Fri, 16 Jan 2026 08:35:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfId-0000000Dlh1-0Dj1
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 08:35:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgfIb-0007RD-Eu; Fri, 16 Jan 2026 09:35:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgfIb-000tDy-2s;
	Fri, 16 Jan 2026 09:35:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-00000005hOg-1jI3;
	Fri, 16 Jan 2026 09:12:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Jan 2026 09:12:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-pbl-load-elf-v5-17-51d042021c5a@pengutronix.de>
References: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
In-Reply-To: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768551133; l=2717;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=0NBgz09O4Ej69Tu9h6Xdpxy0jcsdn9p0KNRFoHzreO4=;
 b=0FTVA3Fs7ieN2kt1eSriUKItlC1mgnO3NCZCAy6CyrhGI7VjfwdaBKMZZxBcBXQqACZ/eu1g6
 IVTbcsXrVHZCm9xuP+4L/oICcw4usSH2EiDHmPYNAL1QqMahH9u29gc
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_003519_099165_75352FC9 
X-CRM114-Status: GOOD (  14.16  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v5 17/22] ARM: cleanup barebox proper entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As barebox proper is now an ELF file we no longer need to map the entry
function to the start of the image. Just link it to wherever the linker
wants it and drop the text_entry section. Also, remove the start()
function and set the ELF entry to barebox_non_pbl_start() directly.

While at it also remove the bare_init stuff from the barebox proper
linker script as it's only relevant to the PBL linker script which
is a separate script.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c         | 11 -----------
 arch/arm/lib32/barebox.lds.S |  7 +------
 arch/arm/lib64/barebox.lds.S |  7 +------
 3 files changed, 2 insertions(+), 23 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 2498bdb894..c2f14736da 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -189,14 +189,3 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 
 	start_barebox();
 }
-
-void start(unsigned long membase, unsigned long memsize, struct handoff_data *hd);
-/*
- * First function in the uncompressed image. We get here from
- * the pbl. The stack already has been set up by the pbl.
- */
-void __section(.text_entry) start(unsigned long membase,
-		unsigned long memsize, struct handoff_data *hd)
-{
-	barebox_non_pbl_start(membase, memsize, hd);
-}
diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index c098993615..02db3b9790 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -6,7 +6,7 @@
 
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
-ENTRY(start)
+ENTRY(barebox_non_pbl_start)
 
 PHDRS
 {
@@ -27,17 +27,12 @@ SECTIONS
 	.text      :
 	{
 		_stext = .;
-		*(.text_entry*)
-		__bare_init_start = .;
-		*(.text_bare_init*)
-		__bare_init_end = .;
 		. = ALIGN(0x20);
 		__exceptions_start = .;
 		KEEP(*(.text_exceptions*))
 		__exceptions_stop = .;
 		*(.text*)
 	} :text
-	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4096);
 	__start_rodata = .;
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index 1ce2c67df0..bd76a0ca96 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -5,7 +5,7 @@
 
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
-ENTRY(start)
+ENTRY(barebox_non_pbl_start)
 
 PHDRS
 {
@@ -26,13 +26,8 @@ SECTIONS
 	.text      :
 	{
 		_stext = .;
-		*(.text_entry*)
-		__bare_init_start = .;
-		*(.text_bare_init*)
-		__bare_init_end = .;
 		*(.text*)
 	} :text
-	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4096);
 	__start_rodata = .;

-- 
2.47.3



