Delivery-date: Mon, 16 Dec 2024 12:37:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN9PV-008ntp-1s
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 12:37:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN9PV-0003QH-3y
	for lore@pengutronix.de; Mon, 16 Dec 2024 12:37:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=chzzl6zzmO3OsQC5KwDO0RYcFvxxVddp4zOyfwfW1M8=; b=UbsnkyWssvpRatRUujyjCi1z4K
	35rnmlNhLxJ3DO7AvR3Cj9P/veMd42mcMVRla5CCwj9cPx298QzMEi9HCSWdPnWbSW2OrPDU1VhEz
	BI6ErWoXXquISDwo1KLUW/mh6duMb8T6uIWpn7W6UUxp+onNN9IX5TRRSk1GaiRvpPD5yqfcVi96A
	pe9f/y2GOajxOlvhqSqAfMstSa+zTRxcmgmMu+JjPDRU5737nI0oAUthwHEqDI/9nnX0MnToSMvB9
	HJ4o5L+h70nDTryzs07WbVm/cUARFKi5bTYickholj2SlnceGSJ1/o02yvieYuzeGf5QGP+gp9i5y
	tFr01lew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9P5-00000009r9I-1XDg;
	Mon, 16 Dec 2024 11:36:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9P1-00000009r6l-0GzO
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 11:36:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tN9Oz-0003AO-LQ; Mon, 16 Dec 2024 12:36:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tN9Oy-003ghQ-2I;
	Mon, 16 Dec 2024 12:36:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tN9Oz-001hq4-1G;
	Mon, 16 Dec 2024 12:36:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Dec 2024 12:36:37 +0100
Message-Id: <20241216113640.403845-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_033643_103687_4871ACB6 
X-CRM114-Status: GOOD (  13.72  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] sandbox: add support for --loglevel option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To simplify debugging, let's allow the user to override the default log
level from the command line.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/os/common.c | 37 ++++++++++++++++++++++++++++++++++---
 1 file changed, 34 insertions(+), 3 deletions(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index d8bb345614ac..7067c94d9b45 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -20,6 +20,7 @@
  * files here...
  */
 #define _GNU_SOURCE
+#include <limits.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <stdint.h>
@@ -46,6 +47,12 @@
 #include <mach/linux.h>
 #include <mach/hostfile.h>
 
+#ifdef CONFIG_CONSOLE_NONE
+int __attribute__((unused)) barebox_loglevel;
+#else
+extern int barebox_loglevel;
+#endif
+
 #define DELETED_OFFSET (sizeof(" (deleted)") - 1)
 
 void __sanitizer_set_death_callback(void (*callback)(void));
@@ -506,6 +513,8 @@ const char *barebox_cmdline_get(void)
 
 static void print_usage(const char*);
 
+#define OPT_LOGLEVEL		(CHAR_MAX + 1)
+
 static struct option long_options[] = {
 	{"help",     0, 0, 'h'},
 	{"malloc",   1, 0, 'm'},
@@ -518,6 +527,9 @@ static struct option long_options[] = {
 	{"stdinout", 1, 0, 'B'},
 	{"xres",     1, 0, 'x'},
 	{"yres",     1, 0, 'y'},
+#ifndef CONFIG_CONSOLE_NONE
+	{"loglevel", 1, 0, OPT_LOGLEVEL},
+#endif
 	{0, 0, 0, 0},
 };
 
@@ -528,7 +540,7 @@ int main(int argc, char *argv[])
 	void *ram;
 	int opt, ret, fd, fd2;
 	int malloc_size = CONFIG_MALLOC_SIZE;
-	int fdno = 0, envno = 0, option_index = 0;
+	int loglevel = -1, fdno = 0, envno = 0, option_index = 0;
 	char *new_cmdline;
 	char *aux;
 
@@ -551,6 +563,9 @@ int main(int argc, char *argv[])
 		case 'm':
 			malloc_size = strtoul(optarg, NULL, 0);
 			break;
+		case OPT_LOGLEVEL:
+			loglevel = strtoul(optarg, NULL, 0);
+			break;
 		case 'i':
 			break;
 		case 'c':
@@ -665,6 +680,10 @@ int main(int argc, char *argv[])
 	barebox_register_console(fileno(stdin), fileno(stdout));
 
 	rawmode();
+
+	if (loglevel >= 0)
+		barebox_loglevel = loglevel;
+
 	start_barebox();
 
 	/* never reached */
@@ -705,7 +724,19 @@ static void print_usage(const char *prgname)
 "                       stdin and stdout. <filein> and <fileout> can be regular\n"
 "                       files or FIFOs.\n"
 "  -x, --xres=<res>     SDL width.\n"
-"  -y, --yres=<res>     SDL height.\n",
-	prgname
+"  -y, --yres=<res>     SDL height.\n"
+#ifndef CONFIG_CONSOLE_NONE
+"      --loglevel=<num> Default log level to use, where <num> is one of:\n"
+"			  0    system is unusable (emerg)\n"
+"			  1    action must be taken immediately (alert)\n"
+"			  2    critical conditions (crit)\n"
+"			  3    error conditions (err)\n"
+"			  4    warning conditions (warn)\n"
+"			  5    normal but significant condition (notice)\n"
+"			  6    informational (info)\n"
+"			  7    debug-level messages (debug)\n"
+"			  8    verbose debug messages (vdebug)\n"
+#endif
+	, prgname
 	);
 }
-- 
2.39.5



