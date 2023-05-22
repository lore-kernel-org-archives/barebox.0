Delivery-date: Mon, 22 May 2023 07:30:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7f-009JEW-3s
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:30:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7c-00033C-Br
	for lore@pengutronix.de; Mon, 22 May 2023 07:30:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aduq0x5HaX2drOVd2jM2rJPTzIKPbVuBKL7mrh+vRyw=; b=AoUXnl4/yR9MPt
	bWyRY44foNLfNUPoHM/fbmJIP7lLSvLnAI0MjCs5ZpUw4MtDlQs1wgEZby4J8j77MnUYvifgrywUO
	LOFxD1ZJ/zbEedyrotI6lsTdAeHyqQSa2bpLexObqvewhKYdO+M85myaz+ToCuOTfKtnEyV1hrt9V
	CPsc8OJpcwPQoi6TbAO+917vW5iKbXmxB52ZBUrQp7whQQcRFe88OUttTYwEOjeoTIIkGGHjHnRXL
	c+InrkwuUNc1aETEZZEHsrOkTca226oARF4AmtwdHjJALkKn9v05w0YLIEkEmXDFJZH+YHOmC3whV
	+muKZuu4YT4tBM6gQYig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y6R-005OkV-1u;
	Mon, 22 May 2023 05:29:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y6M-005OfF-31
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:29:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y64-0002NJ-Dw; Mon, 22 May 2023 07:28:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y63-001vwC-Kx; Mon, 22 May 2023 07:28:39 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y60-004MLk-NU; Mon, 22 May 2023 07:28:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 22 May 2023 07:28:35 +0200
Message-Id: <20230522052835.1039143-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
References: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222858_974565_F5C8DC70 
X-CRM114-Status: GOOD (  15.56  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, lst@pengutronix.de, rcz@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 11/11] ARM: mmuinfo: add options for enabling/disabling zero page trapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

mmuinfo 0 will most likely trigger a translation fault. To allow
decoding the zero page or to allow reading BootROM code at address 0,
teach mmuinfo -z to disable trapping of the zero page and mmuinfo -Z to
reinstate the faulting zero page.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmuinfo.c | 47 ++++++++++++++++++++++++++++++++++++++++--
 include/zero_page.h    | 12 +++++++++++
 2 files changed, 57 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmuinfo.c b/arch/arm/cpu/mmuinfo.c
index 413f2f337e95..44d6980a7569 100644
--- a/arch/arm/cpu/mmuinfo.c
+++ b/arch/arm/cpu/mmuinfo.c
@@ -6,8 +6,10 @@
 
 #include <common.h>
 #include <command.h>
+#include <getopt.h>
 #include <asm/mmuinfo.h>
 #include <asm/system_info.h>
+#include <zero_page.h>
 #include <mmu.h>
 
 int mmuinfo(void *addr)
@@ -23,8 +25,40 @@ int mmuinfo(void *addr)
 static __maybe_unused int do_mmuinfo(int argc, char *argv[])
 {
 	unsigned long addr;
+	int access_zero_page = -1;
+	int opt;
 
-	if (argc < 2)
+	while ((opt = getopt(argc, argv, "zZ")) > 0) {
+		switch (opt) {
+		case 'z':
+			access_zero_page = true;
+			break;
+		case 'Z':
+			access_zero_page = false;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (access_zero_page >= 0) {
+		if (argc - optind != 0)
+			return COMMAND_ERROR_USAGE;
+
+		if (!zero_page_remappable()) {
+			pr_warn("No architecture support for zero page remap\n");
+			return -ENOSYS;
+		}
+
+		if (access_zero_page)
+			zero_page_access();
+		else
+			zero_page_faulting();
+
+		return 0;
+	}
+
+	if (argc - optind != 1)
 		return COMMAND_ERROR_USAGE;
 
 	addr = strtoul_suffix(argv[1], NULL, 0);
@@ -32,11 +66,20 @@ static __maybe_unused int do_mmuinfo(int argc, char *argv[])
 	return mmuinfo((void *)addr);
 }
 
+BAREBOX_CMD_HELP_START(mmuinfo)
+BAREBOX_CMD_HELP_TEXT("Show MMU/cache information using the cp15/model-specific registers.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-z",  "enable access to zero page")
+BAREBOX_CMD_HELP_OPT ("-Z",  "disable access to zero page")
+BAREBOX_CMD_HELP_END
+
 #ifdef CONFIG_COMMAND_SUPPORT
 BAREBOX_CMD_START(mmuinfo)
 	.cmd            = do_mmuinfo,
 	BAREBOX_CMD_DESC("show MMU/cache information of an address")
-	BAREBOX_CMD_OPTS("ADDRESS")
+	BAREBOX_CMD_OPTS("[-zZ | ADDRESS]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_HELP(cmd_mmuinfo_help)
 BAREBOX_CMD_END
 #endif
diff --git a/include/zero_page.h b/include/zero_page.h
index a71c0e0b8733..79e0f22c7b5b 100644
--- a/include/zero_page.h
+++ b/include/zero_page.h
@@ -20,6 +20,13 @@ void zero_page_faulting(void);
  */
 void zero_page_access(void);
 
+void zero_page_access(void);
+
+static inline bool zero_page_remappable(void)
+{
+	return true;
+}
+
 #else
 
 static inline void zero_page_faulting(void)
@@ -30,6 +37,11 @@ static inline void zero_page_access(void)
 {
 }
 
+static inline bool zero_page_remappable(void)
+{
+	return false;
+}
+
 #endif
 
 static inline bool zero_page_contains(unsigned long addr)
-- 
2.39.2



