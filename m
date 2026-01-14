Delivery-date: Wed, 14 Jan 2026 13:36:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg06T-001EXx-1Z
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:36:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg06S-0005Yr-0h
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:36:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sq0QXP7fbev2kLxoQbQP+nrvFKiXW1jcoBVu8eMG6vY=; b=pk7iejB8tBc4QL1GC9d3fpDAR3
	NbqKWAR+LNHqW4cZE6YU43Hogxr5HSiwzBevBIZDEPY85jmiL9buXd+OEJmNDLUL13aqBqRYhdUOy
	R5LpUmlgTC8GLBY0N5f5f0+8Q5MNL9hzXQQmgfREk9t4p/MhCzMSdEO6rX+aGR+4XtRvqHDuuLmbu
	psYHYxKkhI8Ay0twGkrIIM0GDhO5DcLPRvr3rSY/ABXB/VsOWSLfM0ODKKhs+CIQisoiN9lhWgcpC
	/+7CrqJzDGH3qh7D9x7lw8UXMlv5wyGkTRTFwmvgMUVjbWeJiImb0hV44iZDQE1OuzivL6x72XyjV
	Nw+5wTjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg05t-00000009C1X-1IzL;
	Wed, 14 Jan 2026 12:35:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg05n-00000009Bvj-19Yu
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:35:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vg05l-00051x-LW; Wed, 14 Jan 2026 13:35:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vg05m-000afd-0R;
	Wed, 14 Jan 2026 13:35:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfzlc-00000000TKs-19Do;
	Wed, 14 Jan 2026 13:14:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jan 2026 13:14:42 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-pbl-load-elf-v4-17-0afa78d95a7e@pengutronix.de>
References: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
In-Reply-To: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768392868; l=2897;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=wFh4kKQY6pegpO5dJKpUiTFnqDls/Hq1Zv7Ml8JNh0k=;
 b=0yb1HFcYe7hyMKOk5MTIi6NVDq0bdmVZjNmS3GBXMVeUt6cg+cImYfMZejHScRmRNvxP8fwJj
 tfIkenXgMTzC0gDfB5LdS3eLkpAJU2nQ5iXPQF4GXldFC6LjJ+aWk27
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_043520_136831_9D2848B9 
X-CRM114-Status: GOOD (  14.32  )
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
Subject: [PATCH v4 17/22] ARM: cleanup barebox proper entry
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
index 2498bdb894c261f587af6542ea4574c497a6edc0..c2f14736dac5948d0b751f2307690420ee4c23ca 100644
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
index c09899361599dfc8d50b38e35b68c08f48ea9913..02db3b9790b72ca2286b4f29b4908f2d2ec3bebd 100644
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
index 1ce2c67df03068e5328a41b394aa1bcbbe63c027..bd76a0ca96910712dd845c667956c6e89966a079 100644
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



