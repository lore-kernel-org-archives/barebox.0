Delivery-date: Wed, 12 Apr 2023 11:03:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmWNY-000uuI-W6
	for lore@lore.pengutronix.de; Wed, 12 Apr 2023 11:03:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmWNY-0002na-I1
	for lore@pengutronix.de; Wed, 12 Apr 2023 11:03:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Vcppfqb2BUPHddOcvlJAV59B+MsiB9UzlWtsfZXceWw=; b=S9qZ8a8GBnRHOSkLD+bdxJvDNL
	QSB5ulMpe26krf2MTKatuQZ8lfvd/u7Fqu8lPx/ILirji3OfENLzdK70P98K7YeRymjfheP5x7817
	7xVZkgWDOsj0zkk6HLU4wJ5CqLtAUFI7iT9xLjn44FfVxowzHx7didKBQNdUGMtTbSEJ4/5kUSINK
	+CE1lrLPP57kyrqFskr+LNVppfoOtnK2EQgwS+5P/st1CuC9WD9kznZ5lJvgXhnjhlRNS6CebdZqq
	eA2IWKJFgkZ3EyeSdwIIdc9z/kK1LX9+ftUL5w+UC7jGfh3WqsJDXFCoufRxBLLt3w7QoQtX3kasF
	uu1efFkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmWLw-002LFa-1n;
	Wed, 12 Apr 2023 09:01:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmWLs-002LDt-0L
	for barebox@lists.infradead.org;
	Wed, 12 Apr 2023 09:01:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pmWLk-0002W5-6r; Wed, 12 Apr 2023 11:01:08 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pmWLj-00AhMp-II; Wed, 12 Apr 2023 11:01:07 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pmWLi-00HSQj-H0; Wed, 12 Apr 2023 11:01:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Leonard=20G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 12 Apr 2023 11:01:05 +0200
Message-Id: <20230412090105.4160849-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_020116_141188_C032DA2D 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: menu: enable help text parsing for sphinx docs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use of the macros is required, so Documentation/gen_commands.py may
format it into ReST for the documentation.

Reported-by: Leonard Göhrs <l.goehrs@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/menu.c | 107 ++++++++++++++++++++++++------------------------
 1 file changed, 54 insertions(+), 53 deletions(-)

diff --git a/commands/menu.c b/commands/menu.c
index 7a01aff28066..e0fe09b5088b 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -406,64 +406,65 @@ end:
 	return 1;
 }
 
-static const __maybe_unused char cmd_menu_help[] =
-"Manage Menu:\n"
-"  -m  menu\n"
-"  -l  list\n"
-"  -s  show\n"
+BAREBOX_CMD_HELP_START(menu)
+BAREBOX_CMD_HELP_TEXT("Manage Menu:")
+BAREBOX_CMD_HELP_OPT ("-m", "menu")
+BAREBOX_CMD_HELP_OPT ("-l", "list")
+BAREBOX_CMD_HELP_OPT ("-s", "show")
+BAREBOX_CMD_HELP_TEXT("")
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
-"Advanced menu management:\n"
-"  -e  menu entry\n"
-"  -a  add\n"
-"  -r  remove\n"
-"  -S  select\n"
+BAREBOX_CMD_HELP_TEXT("Advanced menu management:")
+BAREBOX_CMD_HELP_OPT ("-e", "menu entry")
+BAREBOX_CMD_HELP_OPT ("-a", "add")
+BAREBOX_CMD_HELP_OPT ("-r", "remove")
+BAREBOX_CMD_HELP_OPT ("-S", "select")
+BAREBOX_CMD_HELP_TEXT("")
 #endif
-"\n"
-"Show menu:\n"
-"  (-A auto select delay)\n"
-"  (-d auto select description)\n"
-"  menu -s -m MENU [-A delay] [-d auto_display]\n"
-"\n"
-"List menu:\n"
-"  menu -l\n"
-"\n"
+BAREBOX_CMD_HELP_TEXT("Show menu:")
+BAREBOX_CMD_HELP_OPT ("-A", "auto select delay")
+BAREBOX_CMD_HELP_OPT ("-d", "auto select description")
+BAREBOX_CMD_HELP_TEXT("\tmenu -s -m MENU [-A delay] [-d auto_display]")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("List menu:")
+BAREBOX_CMD_HELP_TEXT("\tmenu -l\n")
+BAREBOX_CMD_HELP_TEXT("")
 #if defined(CONFIG_CMD_MENU_MANAGEMENT)
-"Add a menu:\n"
-"  menu -a -m NAME -d DESC\n"
-"\n"
-"Remove a menu:\n"
-"  menu -r -m NAME\n"
-"\n"
-"Add an entry:\n"
-"  (-R for do no exit the menu after executing the command)\n"
-"  (-b for box style 1 for selected)\n"
-"  (and optional -c for the command to run when we change the state)\n"
-"  menu -e -a -m MENU -c COMMAND [-R] [-b 0|1] -d DESC\n"
-
-"Add a submenu entry:\n"
-"  (-R is not needed)\n"
-"  (-b for box style 1 for selected)\n"
-"  (and -c is not needed)\n"
-"  menu -e -a -m MENU -u submenu -d [-b 0|1] DESC\n"
-"\n"
-"Remove an entry:\n"
-"  menu -e -r -m NAME -n ENTRY\n"
-"\n"
-"Select an entry:\n"
-"  menu -m <menu> -S -n ENTRY\n"
-"\n"
-"List menu:\n"
-"  menu -e -l [menu]\n"
-"\n"
-"Menu examples:\n"
-"  menu -a -m boot -d \"Boot Menu\"\n"
-"  menu -e -a -m boot -c boot -d \"Boot\"\n"
-"  menu -e -a -m boot -c reset -d \"Reset\"\n"
+BAREBOX_CMD_HELP_TEXT("Add a menu:")
+BAREBOX_CMD_HELP_TEXT("\tmenu -a -m NAME -d DESC")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Remove a menu:")
+BAREBOX_CMD_HELP_TEXT("\tmenu -r -m NAME")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Add an entry:")
+BAREBOX_CMD_HELP_TEXT("\t(-R for do no exit the menu after executing the command)")
+BAREBOX_CMD_HELP_TEXT("\t(-b for box style 1 for selected)")
+BAREBOX_CMD_HELP_TEXT("\t(and optional -c for the command to run when we change the state)")
+BAREBOX_CMD_HELP_TEXT("\tmenu -e -a -m MENU -c COMMAND [-R] [-b 0|1] -d DESC")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Add a submenu entry:")
+BAREBOX_CMD_HELP_TEXT("\t(-R is not needed)")
+BAREBOX_CMD_HELP_TEXT("\t(-b for box style 1 for selected)")
+BAREBOX_CMD_HELP_TEXT("\t(and -c is not needed)")
+BAREBOX_CMD_HELP_TEXT("\tmenu -e -a -m MENU -u submenu -d [-b 0|1] DESC")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Remove an entry:")
+BAREBOX_CMD_HELP_TEXT("\tmenu -e -r -m NAME -n ENTRY")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Select an entry:")
+BAREBOX_CMD_HELP_TEXT("\tmenu -m <menu> -S -n ENTRY")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("List menu:")
+BAREBOX_CMD_HELP_TEXT("\tmenu -e -l [menu]")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Menu examples:")
+BAREBOX_CMD_HELP_TEXT("\tmenu -a -m boot -d \"Boot Menu\"")
+BAREBOX_CMD_HELP_TEXT("\tmenu -e -a -m boot -c boot -d \"Boot\"")
+BAREBOX_CMD_HELP_TEXT("\tmenu -e -a -m boot -c reset -d \"Reset\"")
 #else
-"Menu example:\n"
+BAREBOX_CMD_HELP_TEXT("Menu example:")
 #endif
-"  menu -s -m boot\n"
-;
+BAREBOX_CMD_HELP_TEXT("\tmenu -s -m boot")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(menu)
 	.cmd		= do_menu,
-- 
2.39.2



