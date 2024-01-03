Delivery-date: Wed, 03 Jan 2024 19:32:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62k-002NXy-2C
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:32:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62h-0003T7-7E
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:32:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=whCCPk5eMtB2ZPa9nv8ENpgUZGk8AyvwbzqjOZFaJbo=; b=uhOXrzcb1IC639mSIB/3P0m0Zs
	9E03HXQMoFJWPovJ8ARp2u0KyOpG1ou2JSd7L+D7GU927HHqjm9gpDsvrT4wCwvQ0MroT3rrvSZoZ
	0QunBhIbwzdR5p/lYCzJ0bl0cCfrW1MCgyLRYQ4AOPm/SocV1SUPfKaTqASalMZo7Ry6FeAiRNDEx
	+VwL30UNzzFBrWxGDwNXzd4Xv9hUKyl61L9VjYkCMRFGGhVlefKvpHV4tMSWOFTQM8YuCmXzC9vnv
	Xps3CzM5OA6A2gNTrqZB4SLLnc+52M+ZTKAueRjJt3MZQ5HblIrhx3wgoys47OFBf7r6HReZJm7Zx
	80aRR4oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61X-00BhcY-1P;
	Wed, 03 Jan 2024 18:31:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL613-00Bh7q-1m
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-0001Z9-2i; Wed, 03 Jan 2024 19:30:56 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-000Avu-Lw; Wed, 03 Jan 2024 19:30:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k5-001j4X-0v;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:56 +0100
Message-Id: <20240103181312.409668-97-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103057_595200_0E584568 
X-CRM114-Status: GOOD (  13.59  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 096/112] commands: add cpuinfo -s option for stacktrace
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While a call to dump_stack() is easily hacked into the code, it can be
useful during development to just print the stacktrace from the shell,
e.g. to verify that kallsyms sharing for EFI works as intended.

Add an option to cpuinfo to provide this functionality.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/cpuinfo.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index aea50e80d194..2d3fe2ac8d0c 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -4,6 +4,7 @@
 /* cpuinfo.c - Show information about cp15 registers */
 
 #include <common.h>
+#include <getopt.h>
 #include <command.h>
 #include <complete.h>
 #include <asm/system.h>
@@ -49,9 +50,23 @@ static int do_cpuinfo(int argc, char *argv[])
 {
 	unsigned long mainid, cache, cr;
 	char *architecture, *implementer;
-	int i;
+	int opt, i;
 	int cpu_arch;
 
+	while ((opt = getopt(argc, argv, "s")) > 0) {
+		switch (opt) {
+		case 's':
+			if (!IS_ENABLED(CONFIG_ARCH_HAS_STACK_DUMP))
+				return -ENOSYS;
+
+			printf("SP: 0x%08lx\n", get_sp());
+			dump_stack();
+			return 0;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
 #ifdef CONFIG_CPU_64v8
 	__asm__ __volatile__(
 		"mrs	%0, midr_el1\n"
@@ -255,10 +270,16 @@ static int do_cpuinfo(int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(cpuinfo)
+BAREBOX_CMD_HELP_TEXT("Shows misc info about CPU")
+BAREBOX_CMD_HELP_OPT ("-s", "print call stack info (if supported)")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(cpuinfo)
 	.cmd            = do_cpuinfo,
 	BAREBOX_CMD_DESC("show info about CPU")
+	BAREBOX_CMD_OPTS("[-s]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_COMPLETE(empty_complete)
+	BAREBOX_CMD_HELP(cmd_cpuinfo_help)
 BAREBOX_CMD_END
-
-- 
2.39.2



