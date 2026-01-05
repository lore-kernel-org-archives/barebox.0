Delivery-date: Mon, 05 Jan 2026 09:22:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfqj-001SJS-1E
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:22:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfqi-0001M8-Q4
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:22:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nR+zdQQMmIRb31Fw/Be6IsRjFHew/bYVYFHH+3EOR9E=; b=WbVyQFZlt0ZoPNA1E5Xm53Wo94
	P4ekIPKPsjlMLR0jE560+NpKSGDbQ/KaKvyq0edp75ShPAstodIL4rgkZ0MEbc5KPjfp0xSKkNroO
	SocEuxqQo3uuHiq6bLVPMTbNKbcyvbTc7mjEaJCxHJZT4BVEpxOYY98TLw64U1iVaq/tuoz2HOywp
	JKseCbuUhjYdQ2LGtW644uUCmSh3ADK4wA9eM88ZVpxLuvcqTszrDlOp5Hlbjf0V+ecdnoFqkmFlm
	4SdS7x/MDBFG4jHXoORR54/X3RBoUIkzrekVj+IidV8jsjRjZVJpHTVPJWQRtJuY8maTrtn3FG1e7
	magxSU4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfqH-0000000AyUI-4A5p;
	Mon, 05 Jan 2026 08:21:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfqG-0000000AyU5-3Z8l
	for barebox@bombadil.infradead.org;
	Mon, 05 Jan 2026 08:21:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=nR+zdQQMmIRb31Fw/Be6IsRjFHew/bYVYFHH+3EOR9E=; b=bDiaoitSO/a6xTTPFoo2KE5yPn
	6EJUE2FKLMbjje9+Emf0WNCyQdZsuSKI9llLl6ZTYNZwX8JKqfY+g4h+aB2n0K7ieZx5VfEawbKvk
	TWVZ2JNoR5Dq+7nHG+xkh5K4wd/pttvCEWmqBLfTKFn6JXr4ss4g5McU6+OCTelYyIDugFbMvoiAU
	d2VwIUpZ35H9yw+L1DaWWxcsimkMvnVbMMP4+CxmZO6m5QdfJG40oXv3AyFlXNb3QJmi56uvSlW7N
	8WUNtMqiv0bd1QaVpi6r5JimEbESDxFT4eNUfcbMBPuGw0QHuRIQ46BRoI7GPSIpIGmRHB5wumLlp
	Uv7AbJDQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfqE-00000007pMH-0WjA
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:21:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcfqD-0001Hc-7X; Mon, 05 Jan 2026 09:21:29 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:21:14 +0100
Message-ID: <20260105082128.3248033-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_082130_339350_E1EE5648 
X-CRM114-Status: GOOD (  13.61  )
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
Subject: [PATCH] startup: attempt poweroff if no shell and nothing to do
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For testing noshell configuration in virtual machines and sandbox,
it's useful if the process would just exit instead of hanging
indefinitely.

This is usually handled with panic(), which can be customized to
poweroff or reset, but in this case a panic with CONFIG_PANIC_RESET=y
would just lead to a reboot loop.

Instead, let's explicitly poweroff in that case. For platforms that
don't support powering off, the function will hang as before, but for
others, it will not waste as much energy.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/migration-guides/migration-master.rst | 9 +++++++++
 common/startup.c                                    | 5 +++--
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
index ebf69e3c6bb1..e258f656cae3 100644
--- a/Documentation/migration-guides/migration-master.rst
+++ b/Documentation/migration-guides/migration-master.rst
@@ -35,3 +35,12 @@ ARM i.MX6 RIoTboard
 
 The barebox update handler has been changed to write barebox to the
 eMMC boot partitions rather than the user data area.
+
+CONFIG_SHELL_NONE
+-----------------
+
+If there's nothing to do for a shell-less barebox, it will now attempt
+to poweroff the system instead of busy-looping indefinitely.
+This changes behavior for systems that rely on a watchdog to reset
+a hanging barebox in this situation. If this breaks anything for you,
+please reach out.
diff --git a/common/startup.c b/common/startup.c
index 81a3ae1513c2..05ed75de29a4 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -20,6 +20,7 @@
 #include <shell.h>
 #include <init.h>
 #include <command.h>
+#include <poweroff.h>
 #include <malloc.h>
 #include <debug_ll.h>
 #include <fs.h>
@@ -440,8 +441,8 @@ void __noreturn start_barebox(void)
 		barebox_main();
 
 	if (IS_ENABLED(CONFIG_SHELL_NONE)) {
-		pr_err("Nothing left to do\n");
-		hang();
+		pr_crit("Nothing left to do\n");
+		poweroff_machine(0);
 	} else {
 		while (1)
 			run_shell();
-- 
2.47.3



