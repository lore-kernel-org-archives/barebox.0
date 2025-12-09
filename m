Delivery-date: Tue, 09 Dec 2025 13:52:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCI-009Yrg-1e
	for lore@lore.pengutronix.de;
	Tue, 09 Dec 2025 13:52:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCH-0001EJ-4O
	for lore@pengutronix.de; Tue, 09 Dec 2025 13:52:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ajjfu44I5Vp4vPQ+0lL/deAo870t70atudy9LqogB9s=; b=i2/Jclhy1sL/m43jK8PwdViSJ4
	pOMm8Y5H3T7gGLGT8TJw/8qNo+PW4FGyHGTCQW32pn5WiwMScqDGnMPK+xATeU3HtcdnPooB0wD0w
	12ApgKII1XkDc7Gi8dpwVEO7XfQxZ7DkpxSvi6fgZkN4nSXfKRzYfumRc4APP6RHy3gXSWleQVC2v
	Sf7We3zEW1QIOewOG3ypKC2LXgLKVdvDkZWF3xL5V8/T0HpUsax9V07Zw5UX4Rx3EYOowB6MrKVfy
	9EwLnjPPeMmPA7e96kJXNBVq3OQTnkO5oI1K7EG0oHrAOt7DR57nHEsyVNK1fCoBWQvdL8NuOrulz
	jmfH+Z6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBj-0000000EHL7-43zp;
	Tue, 09 Dec 2025 12:51:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBd-0000000EHHN-26kG
	for barebox@lists.infradead.org;
	Tue, 09 Dec 2025 12:51:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-0000os-Dv; Tue, 09 Dec 2025 13:51:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-004mud-0L;
	Tue, 09 Dec 2025 13:51:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBa-0000000HSGm-4AQh;
	Tue, 09 Dec 2025 13:51:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 09 Dec 2025 13:51:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-devfs-v2-4-62ae16698cff@pengutronix.de>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765284682; l=2683;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=3Mueo0NcATAqfMzW3TOEocsW6S8BJxeymrMx/DUWfGY=;
 b=Khn4SEH+3eJbFyWWx6Idjar3QI0dUVlV1pg3tQyut3w3vuYrDakkelKzXQ5sq39cbYhJEq97g
 C9ecEgWhwXcArvSatgF8IAjy0eP2ov4taGgs5bhQoPLX5U8ISGp8Kwi
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_045125_572167_06777BB4 
X-CRM114-Status: GOOD (  12.67  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 04/13] commands: add mknod command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a mknod command. This is intended for testing/debugging purposes as
normally device special nodes are created automatically in devfs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |  4 ++++
 commands/Makefile |  1 +
 commands/mknod.c  | 43 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 48 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index c7c03a65477b4f083c256dc55053aab8c8ad2741..6b8e19533dc07b54c41326b84adabb1553bc415d 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1144,6 +1144,10 @@ config CMD_MKDIR
 	  Options:
 		  -p	make parent directories as needed
 
+config CMD_MKNOD
+	tristate
+	prompt "mknod"
+
 config CMD_PWD
 	tristate
 	default y
diff --git a/commands/Makefile b/commands/Makefile
index 8fffac8fd4428d275f86c5ad9898fed96c5b18ac..356957cab56bd97f80dbac67a3e17c333d4be45c 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -34,6 +34,7 @@ obj-$(CONFIG_CMD_CD)		+= cd.o
 obj-$(CONFIG_CMD_PWD)		+= pwd.o
 obj-$(CONFIG_CMD_MKDIR)		+= mkdir.o
 obj-$(CONFIG_CMD_RMDIR)		+= rmdir.o
+obj-$(CONFIG_CMD_MKNOD)		+= mknod.o
 obj-$(CONFIG_CMD_CP)		+= cp.o
 obj-$(CONFIG_CMD_RM)		+= rm.o
 obj-$(CONFIG_CMD_CAT)		+= cat.o
diff --git a/commands/mknod.c b/commands/mknod.c
new file mode 100644
index 0000000000000000000000000000000000000000..e99078995f995f54ba1d06587fc3d27e09f79e3b
--- /dev/null
+++ b/commands/mknod.c
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <command.h>
+#include <fs.h>
+
+static int do_mknod(int argc, char *argv[])
+{
+	const char *filename, *cdevname;
+	umode_t mode;
+
+	if (argc < 4)
+		return COMMAND_ERROR_USAGE;
+
+	filename = argv[1];
+	if (!strcmp(argv[2], "b"))
+		mode = S_IFBLK;
+	else if (!strcmp(argv[2], "c"))
+		mode = S_IFCHR;
+	else
+		return COMMAND_ERROR_USAGE;
+
+	cdevname = argv[3];
+
+	return mknod(filename, mode, cdevname);
+}
+
+BAREBOX_CMD_HELP_START(mknod)
+BAREBOX_CMD_HELP_TEXT("make a device special node.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("usage: mknod <name> c|b <cdevname>")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Create a device special node named <name> directing")
+BAREBOX_CMD_HELP_TEXT("to cdev <cdevname>. This can either be a block (b) or")
+BAREBOX_CMD_HELP_TEXT("character (c) device.")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(mknod)
+        .cmd            = do_mknod,
+        BAREBOX_CMD_DESC("make device nodes")
+        BAREBOX_CMD_OPTS("NAME TYPE CDEVNAME")
+        BAREBOX_CMD_GROUP(CMD_GRP_FILE)
+        BAREBOX_CMD_HELP(cmd_mknod_help)
+BAREBOX_CMD_END

-- 
2.47.3



