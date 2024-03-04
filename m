Delivery-date: Mon, 04 Mar 2024 20:08:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDfx-008dXB-0Y
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:08:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDfv-0003T0-Vg
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:08:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=whCCPk5eMtB2ZPa9nv8ENpgUZGk8AyvwbzqjOZFaJbo=; b=auYx9jciV5Rb+Pz3CzlXH0Sopw
	z5Bm83AbKjSMoMBS33BJbec9QkArbGyncyYguN3OM28IyxlUb28FHq7ZSUoDceZSUxo1gIf3XPzfK
	nn3A2rhrYmbFp7romvjaJ1Sqt4FHPeo59qSvq5/tXVGjgjfIdCN/7ZKNmbfZmpdRZsTy6PSPfaaR1
	UlJy6gSzMfzKmtlMlUG/z5ajC+tbIaL8cf6FGGejHjq35gnm1pt488raYjklbUAdOZRAB5zdeypnl
	urG/1Z3qIjqBZtMD8UZjiA9KAz05RhXL5M2MGlzcVVv5+/28kgsIiE78ppKFcWkJQjTElhhQ1lLdY
	loiclU9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDfJ-0000000ALmD-4Bfl;
	Mon, 04 Mar 2024 19:07:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaX-0000000AIXO-01cx
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=whCCPk5eMtB2ZPa9nv8ENpgUZGk8AyvwbzqjOZFaJbo=; b=HI6xOkQhwldrmNchrRWWaC5g05
	3CMA+/2BAmQA9GaFURJZumfAH9xvnJKZ5OC9i0OPQLJcmkrA9KKL+SSmEGycHI3+443OdQd54f2Z0
	SBSbTKbGWfAyWWg/xXLX9fstQCbAwoKgvQy4LZuocI4bl4uxsb3/0jLg01zyULn2jlLb51ezc7XAP
	qRyNWfkOiJoXrygZvbS4dUsd562kBbgKPZ7bdIJzgB+8GuMN4xmbE7FEvpKekL7ISkZWgaQyyAktT
	72fEATdOp9lllALUjmWA3npboLOnV3mEW1SX+oc8rLf7K0vTSQLD3VgJlmdVjxBwtKTGPIdc5ZG2q
	dDSmWLLA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaQ-000000051vk-1b5f
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-0006Bw-M4; Mon, 04 Mar 2024 20:02:45 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-004PKq-2S; Mon, 04 Mar 2024 20:02:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYN-00Ed9V-1K;
	Mon, 04 Mar 2024 20:00:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:22 +0100
Message-Id: <20240304190038.3486881-98-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190254_551332_E653AD4F 
X-CRM114-Status: GOOD (  13.74  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 097/113] commands: add cpuinfo -s option for stacktrace
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



