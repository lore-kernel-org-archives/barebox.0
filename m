Delivery-date: Mon, 10 Jun 2024 09:51:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGZot-003Zst-2y
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 09:51:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGZot-0003c2-8Q
	for lore@pengutronix.de; Mon, 10 Jun 2024 09:51:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W91XoaIkkIwNylRZ0zmSrEUCuojwe0DbDAZCCGPp5e0=; b=YfF6m+mHuPfyBatLqRCJz8DF2C
	ZrV0BZGMqbxPeB0uyEAKgldL+omwqPZ58iRKPkKOlsuEEJKh3AoU4KCr1ln3RuHrNJUpOfTAu48sF
	4hW8EML1ySX7A9FvxA04tsh0IRjYhGafKNIkzCERdJO9qs5og7BH2Z3vs2snMYTfQ4PJ//74A4Idx
	1QgGll0qRncsCS4/UchRcPrNf3vN2gKpn6AnsdvJygrmkrXx+GETokly7XzomgFBacP6jSsKIUKLN
	P53MPFukFjzimFLhlOkAMY9455Otxl+PKMsFvbZ145h/7ie4k0/wY0mHYoSJO30N69gejjLjUtR0F
	kAkbbcjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGZoF-0000000482p-3WK7;
	Mon, 10 Jun 2024 07:51:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGZo6-0000000480E-32Wt
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 07:51:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGZo3-0003Jx-2R; Mon, 10 Jun 2024 09:51:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGZo2-001Feu-M6; Mon, 10 Jun 2024 09:51:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGZo2-003PNM-1s;
	Mon, 10 Jun 2024 09:51:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 10 Jun 2024 09:51:05 +0200
Message-Id: <20240610075105.812496-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240610075105.812496-1-s.hauer@pengutronix.de>
References: <20240610075105.812496-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_005110_818365_B7726EC1 
X-CRM114-Status: GOOD (  17.02  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/5] net: host command: move to commands/
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Commands are usually implemented in the commands/ directory. Move the
host command there as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Makefile |  2 +-
 commands/host.c   | 40 ++++++++++++++++++++++++++++++++++++++++
 net/dns.c         | 37 -------------------------------------
 3 files changed, 41 insertions(+), 38 deletions(-)
 create mode 100644 commands/host.c

diff --git a/commands/Makefile b/commands/Makefile
index 30e1f8403e..19a2dd3112 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -150,5 +150,5 @@ obj-$(CONFIG_CMD_TUTORIAL)	+= tutorial.o
 obj-$(CONFIG_CMD_STACKSMASH)	+= stacksmash.o
 obj-$(CONFIG_CMD_PARTED)	+= parted.o
 obj-$(CONFIG_CMD_EFI_HANDLE_DUMP)	+= efi_handle_dump.o
-
+obj-$(CONFIG_CMD_HOST)		+= host.o
 UBSAN_SANITIZE_ubsan.o := y
diff --git a/commands/host.c b/commands/host.c
new file mode 100644
index 0000000000..b931445056
--- /dev/null
+++ b/commands/host.c
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <command.h>
+#include <net.h>
+
+static int do_host(int argc, char *argv[])
+{
+	IPaddr_t ip;
+	int ret;
+	char *hostname, *varname = NULL;
+
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
+	hostname = argv[1];
+
+	if (argc > 2)
+		varname = argv[2];
+
+	ret = resolv(argv[1], &ip);
+	if (ret) {
+		printf("unknown host %s\n", hostname);
+		return 1;
+	}
+
+	if (varname)
+		setenv_ip(varname, ip);
+	else
+		printf("%s is at %pI4\n", hostname, &ip);
+
+	return 0;
+}
+
+BAREBOX_CMD_START(host)
+	.cmd		= do_host,
+	BAREBOX_CMD_DESC("resolve a hostname")
+	BAREBOX_CMD_OPTS("<HOSTNAME> [VARIABLE]")
+	BAREBOX_CMD_GROUP(CMD_GRP_NET)
+BAREBOX_CMD_END
diff --git a/net/dns.c b/net/dns.c
index fdddb3f915..8fbd13cdc3 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -262,40 +262,3 @@ int resolv(const char *host, IPaddr_t *ip)
 
 	return 0;
 }
-
-#ifdef CONFIG_CMD_HOST
-static int do_host(int argc, char *argv[])
-{
-	IPaddr_t ip;
-	int ret;
-	char *hostname, *varname = NULL;
-
-	if (argc < 2)
-		return COMMAND_ERROR_USAGE;
-
-	hostname = argv[1];
-
-	if (argc > 2)
-		varname = argv[2];
-
-	ret = resolv(argv[1], &ip);
-	if (ret) {
-		printf("unknown host %s\n", hostname);
-		return 1;
-	}
-
-	if (varname)
-		setenv_ip(varname, ip);
-	else
-		printf("%s is at %pI4\n", hostname, &ip);
-
-	return 0;
-}
-
-BAREBOX_CMD_START(host)
-	.cmd		= do_host,
-	BAREBOX_CMD_DESC("resolve a hostname")
-	BAREBOX_CMD_OPTS("<HOSTNAME> [VARIABLE]")
-	BAREBOX_CMD_GROUP(CMD_GRP_NET)
-BAREBOX_CMD_END
-#endif
-- 
2.39.2



