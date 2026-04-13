Delivery-date: Mon, 13 Apr 2026 11:57:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCE31-00BfvA-0B
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 11:57:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCE30-0006TM-Df
	for lore@pengutronix.de; Mon, 13 Apr 2026 11:57:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JxNjE5T7zyL6Ljrc6Tw3QO+9OTm5JsromWj30ouBbjk=; b=RB8ddAAGHoYLWszxYkqVeA5D6n
	hKJTqOcDeCUBxTJ55wBQ9ndzqjwjg13YviFJ66ojI1EwvZPs/3RRWSivKJuadmeprHuaz+YQJee2w
	7HaUFjGUk9j5MdhYmcL4fJBDmS0ae1wk2ObQmIHlmMK+fjh7OP0q8WVa86AcysVPFmac4OiZ9Q5zm
	rWRO2M3Y+hmkUzo0W1MygmxERL6cu+88V5NskhTRlPI0dHv5YXaWz/Ayxo+1ZW7UGsY1SdiBn1DBj
	+iwqGBtTbMN6MrtQ39RslfOOw9wEUim11eMy9GAq/MR7ErH/Rnu30MwSpKGtAr39oQeijSABDLtbA
	zJt1X4dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCE2Q-0000000FOop-2qtc;
	Mon, 13 Apr 2026 09:57:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCE2O-0000000FOoU-1x4M
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 09:57:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCE2M-0006LD-ED; Mon, 13 Apr 2026 11:56:58 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 11:56:44 +0200
Message-ID: <20260413095657.1454950-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_025700_508425_7B1C1D82 
X-CRM114-Status: GOOD (  12.70  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: add resize command to reset terminal scroll region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a small command that resets the DECSTBM scroll region to the
full window. This is useful for rebooting after a curses installer has
restricted the scroll region for example.
Running "resize" then will give the shell the full terminal back.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/Kconfig                        |  7 +++++++
 commands/Makefile                       |  1 +
 commands/resize.c                       | 26 +++++++++++++++++++++++++
 common/boards/configs/efi-loader.config |  1 +
 4 files changed, 35 insertions(+)
 create mode 100644 commands/resize.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 8c9f61b5ac3e..71f086968971 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1559,6 +1559,13 @@ config CMD_CLEAR
 
 	  Send ANSI ESC sequence to clear the screen.
 
+config CMD_RESIZE
+	tristate
+	prompt "resize"
+	help
+	  Reset the terminal scroll region to the full window and clear
+	  the screen.
+
 config CMD_ECHO
 	tristate
 	default y
diff --git a/commands/Makefile b/commands/Makefile
index 2563efb12f4e..7f0c68a5e58e 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -43,6 +43,7 @@ obj-$(CONFIG_CMD_UMOUNT)	+= umount.o
 obj-$(CONFIG_CMD_FINDMNT)	+= findmnt.o
 obj-$(CONFIG_CMD_CRC)		+= crc.o
 obj-$(CONFIG_CMD_CLEAR)		+= clear.o
+obj-$(CONFIG_CMD_RESIZE)	+= resize.o
 obj-$(CONFIG_CMD_TEST)		+= test.o
 obj-$(CONFIG_CMD_TRUNCATE)	+= truncate.o
 obj-$(CONFIG_CMD_SYNC)		+= sync.o
diff --git a/commands/resize.c b/commands/resize.c
new file mode 100644
index 000000000000..1213679d1069
--- /dev/null
+++ b/commands/resize.c
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <stdio.h>
+#include <command.h>
+#include <complete.h>
+
+static int do_resize(int argc, char *argv[])
+{
+	/* save cursor, reset DECSTBM scroll region, restore cursor */
+	printf("\e7" "\e[r" "\e8");
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(resize)
+BAREBOX_CMD_HELP_TEXT("Reset the terminal scroll region to the full window")
+BAREBOX_CMD_HELP_TEXT("and clear the screen.")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(resize)
+	.cmd		= do_resize,
+	BAREBOX_CMD_DESC("reset scroll region and clear screen")
+	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+	BAREBOX_CMD_HELP(cmd_resize_help)
+BAREBOX_CMD_END
diff --git a/common/boards/configs/efi-loader.config b/common/boards/configs/efi-loader.config
index 7fadc60e41a8..f8c022de5e5a 100644
--- a/common/boards/configs/efi-loader.config
+++ b/common/boards/configs/efi-loader.config
@@ -1,2 +1,3 @@
 CONFIG_EFI_LOADER=y
 CONFIG_FS_EFIVARFS=y
+CONFIG_CMD_RESIZE=y
-- 
2.47.3



