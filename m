Delivery-date: Tue, 27 Oct 2026 08:45:17 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLbrx-003pTI-0c
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 08:45:17 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 12B1F202928
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 08:45:17 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=d5IMeFcs;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793087117; a=rsa-sha256;
	cv=none;
	b=b9wLUwuAa9VG04DtKXfvAKf3F7Az4lbvnUAhOkXomdgtK1lm5tmtzcK8c1iJMkhTI9Xd6X
	NXzV4F8eRaTdmpHPG8XAcwCw3Cg10kMbMkoBuu9HOYZ/zLk5SyFAjYFpQ/tgGf5u7a2fGw
	0KgUlNiRMOptJGgfqRWZE0sQjlX0YWDmKONF9t5WEYzA2Z4QkmTcHMZbYkMlLZimlRC3gP
	iOHGphm5Xo0C3Qk2WdBY6NSZBVkD//x1L7VmlAnz0lTkgi343j2NYmzvpzzJyErN7gqPpb
	EjGRcjvOuTmCNOB5uqmw9C6GG7NncBSjOADxnAe4HI4qr00SeX0shqHBO/mbiA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=d5IMeFcs;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793087117;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=WOZcnM+oEa57ClHoNpWUS9BnQD7AHTinovhZI+QMwrw=;
	b=HSBcKtVKL/Q0VX1E2/pdJ0GvtoEM0hb+2nH+YvsHcGMPJfyAssbA+wK7YP5/j+ek6CPFRS
	61cfLuWnLE4BiDHLyccKJ4xB971HE4AwT+ye1JIFh77EBdey8RELvjiXhPEAZzwjn6e03p
	A4JxrnJyqtIyZ+jJy1XYvhL2SRpCtRO7Z0WwHiPS8LBCsxNYUfxSXTDROnMjWiRnZf9lhw
	nUnm/koJlBsoZffPkvirbntZna6hwLHt/jKHqqgK8iGmGJfIZn9N6Ar/ORhqK52JAPNH+w
	BpYMEunQBKFI1y4Pyfp1krZovszLvWIINvORpSWVPFWemHA/6hEzqc+c6FjUKg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=WOZcnM+oEa57ClHoNpWUS9BnQD7AHTinovhZI+QMwrw=; b=d5IMeFcskgS4Q0
	+qlTMNq9nLGLiM8v8Xvju4WEk1sLckqe3YOth2yH1/jYBRHkBH/zjAVpAKXefaYqWUYNz0keQEVAm
	QISTlqeH2OjANppiOUvUzQNU1adAL142UXuO5iDyU8SR/e/aCF2Q+mvDoYxTT1TCDiCuMmeKFQtli
	7SF1ExrjqVdaW/PCRUygyoNMIfUEWQ2UzTBRkpIOB2QtBhQ9z4LpfoG9F0RE7/68G+rRQEZg390wP
	fQl0qmHv/PQ/iGLOEl3nCPvUecGnjckTP2l4nMT304oU11Twu1f5p6hZDMTQqB5ExJc9gw/JZoJcd
	naHHa85cbqCKmubTlavw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnH-00000003uzi-0WEO;
	Tue, 27 Oct 2026 07:40:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnA-00000003uu1-1R8t
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 07:40:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xLbn7-0003zV-Eh; Tue, 27 Oct 2026 08:40:17 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [RFC PATCH 06/17] PBL: describe the console in the board info and report the stage
Date: Tue, 27 Oct 2026 08:24:39 +0100
Message-ID: <20261027074014.3280396-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261027074014.3280396-1-a.fatoum@barebox.org>
References: <20261027074014.3280396-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_004020_412021_E755EC0A 
X-CRM114-Status: GOOD (  23.55  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Board entry points usually set up the console UART first thing
    and print a '>' with putc_ll() to show that they have been reached. Let's
    make the console part of the board info instead and have the stage dispatch
    print the stage number followed by '>', e.g. "2>", once it's up. As the UART
    may need clocks enabled by SoC init or a [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 12B1F202928
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	NEURAL_HAM(-0.00)[-1.000];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: cakrjeegwbt8tzsy1ciqhpmykidjqt7o

Board entry points usually set up the console UART first thing and
print a '>' with putc_ll() to show that they have been reached.

Let's make the console part of the board info instead and have the stage
dispatch print the stage number followed by '>', e.g. "2>", once it's
up. As the UART may need clocks enabled by SoC init or a description
only filled in by board init, the console is tried before SoC init and
again after each of the two.

Without PBL console support or a console description, the stage number
goes to DEBUG_LL. With DEBUG, each callback run is reported as well.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/devel/troubleshooting.rst |  6 +++
 include/pbl.h                           |  6 +++
 include/pbl/entry.h                     | 19 ++++++-
 pbl/entry.c                             | 67 ++++++++++++++++++++++++-
 4 files changed, 96 insertions(+), 2 deletions(-)

diff --git a/Documentation/devel/troubleshooting.rst b/Documentation/devel/troubleshooting.rst
index 2aef57c3c1e2..39cc88a9a7dd 100644
--- a/Documentation/devel/troubleshooting.rst
+++ b/Documentation/devel/troubleshooting.rst
@@ -62,6 +62,12 @@ options:
   the serial console needs to be done in software in some situations before
   the UART is accessible from the outside.
 
+  Boards using the board info entry point (``ENTRY_POINT()``) will
+  also indicate the boot stage before the ``>`` character, e.g. ``1>2>``
+  means the prebootloader entered its 1st stage followed by entering the
+  2nd stage. ``CONFIG_DEBUG_PBL`` would provide more information on what
+  callback is being executed.
+
   .. note::
      Make sure the correct UART index or address is selected under
      **Kernel low-level debugging port** in ``menuconfig``.
diff --git a/include/pbl.h b/include/pbl.h
index 45640c26e32e..9efc520d6a69 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -57,4 +57,10 @@ void __noreturn barebox_pbl_entry(ulong, ulong, void *);
 #define pbl_puts	puts_ll
 #endif
 
+#ifdef DEBUG
+#define pbl_debug	pbl_puts
+#else
+#define pbl_debug	(void)
+#endif
+
 #endif /* __PBL_H__ */
diff --git a/include/pbl/entry.h b/include/pbl/entry.h
index 17056a3ab1ca..acf0ea1e1824 100644
--- a/include/pbl/entry.h
+++ b/include/pbl/entry.h
@@ -26,12 +26,27 @@ enum pbl_stage_idx {
 typedef void (*pbl_board_fn_t)(void);
 typedef enum pbl_stage_idx (*pbl_locate_pc_fn_t)(void);
 
+struct pbl_console_driver {
+	void (*putc)(void *arg, int c);	/* as accepted by pbl_set_putc() */
+};
+
+/*
+ * arg is usually the UART base address. A console without setup callback
+ * is registered before soc_init, else after. Without a console, the PBL
+ * prints through DEBUG_LL.
+ */
+struct pbl_console {
+	void (*setup)(void *arg);
+	void *arg;
+	const struct pbl_console_driver *driver;
+};
+
 /*
  * Only the callbacks of the stage the PBL was entered in are run.
  *
  * prereloc_cpu_init runs on the stage's stack, but unrelocated and before
  * BSS is cleared, so it must be __prereloc and may not use globals.
- * The other callbacks run relocated with BSS cleared.
+ * The console setup and the other callbacks run relocated with BSS cleared.
  */
 struct pbl_stage {
 	unsigned long stacktop;		/* stack top or PBL_STACKTOP_* */
@@ -60,6 +75,8 @@ struct pbl_board_info {
 	/* Called without a stack, so it must not spill */
 	pbl_locate_pc_fn_t assembly_locate_pc;
 
+	struct pbl_console console;
+
 	struct pbl_stage rom_stage;	/* PBL_STAGE_ROM */
 	struct pbl_stage first_stage;	/* PBL_STAGE_OCRAM */
 	struct pbl_stage second_stage;	/* PBL_STAGE_DRAM */
diff --git a/pbl/entry.c b/pbl/entry.c
index 1349e7c56a93..827af905964b 100644
--- a/pbl/entry.c
+++ b/pbl/entry.c
@@ -11,7 +11,11 @@
 #include <asm/reloc.h>
 #include <asm/sections.h>
 #include <asm-generic/registers.h>
+#include <console.h>
+#include <debug_ll.h>
+#include <stdio.h>
 #include <barebox.h>
+#include <pbl.h>
 #include <pbl/entry.h>
 #include <pbl/soc-type.h>
 #include <pbl/handoff-data.h>
@@ -136,6 +140,44 @@ pbl_head_reloc_v1(ulong stage_ul, ulong entry_data)
 	pbl_head_entry_v1(entry_data);
 }
 
+static void pbl_console_report_stage(int stage_idx)
+{
+	static bool stage_reported;
+	char stage_str[2] = "0";
+
+	if (stage_reported)
+		return;
+
+	stage_str[0] += stage_idx;
+
+	pbl_puts(stage_str);
+	pbl_puts(">");
+
+	stage_reported = true;
+}
+
+/* Called until there is a console, board_init may still describe it */
+static void pbl_console_init(const struct pbl_console *console,
+			     int stage_idx)
+{
+	static bool console_initialized;
+
+	if (console_initialized)
+		return;
+
+	if (console->setup)
+		console->setup(console->arg);
+
+	if (console->driver && console->driver->putc) {
+		pbl_set_putc(console->driver->putc, console->arg);
+		console_initialized = true;
+	}
+
+	/* Without PBL_CONSOLE, pbl_puts() is DEBUG_LL's puts_ll() */
+	if (console_initialized || !IS_ENABLED(CONFIG_PBL_CONSOLE))
+		pbl_console_report_stage(stage_idx);
+}
+
 /* noinline, so &__pbl_board_info isn't computed before relocation */
 static void noinline pbl_head_entry_v1(ulong entry_data)
 {
@@ -154,12 +196,35 @@ static void noinline pbl_head_entry_v1(ulong entry_data)
 
 	current_stage = stage;
 
+	/* A console needing no setup is readily usable in soc_init */
+	if (!pbi->console.setup)
+		pbl_console_init(&pbi->console, stage_idx);
+
 	if (stage->soc_init)
 		stage->soc_init();
+
+	/* Initialize console if possible */
+	pbl_console_init(&pbi->console, stage_idx);
+
+	if (stage->soc_init)
+		pbl_debug("soc_init done\n");
+
 	if (stage->board_init)
 		stage->board_init(entry_data);
-	if (stage->soc_chainload)
+
+	/* Initialize console if possible */
+	pbl_console_init(&pbi->console, stage_idx);
+
+	/* Without a console, the stage goes to the DEBUG_LL fallback */
+	pbl_console_report_stage(stage_idx);
+
+	if (stage->board_init)
+		pbl_debug("board_init done\n");
+
+	if (stage->soc_chainload) {
+		pbl_debug("Chainloading..\n");
 		stage->soc_chainload(stage->board_data);
+	}
 
 	hang();
 }
-- 
2.47.3



