Delivery-date: Wed, 06 Aug 2025 16:05:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujelI-007ez5-2l
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 16:05:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujelI-0004Cz-5z
	for lore@pengutronix.de; Wed, 06 Aug 2025 16:05:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sMR0w6aotSZdQAoMvHyMQI0xH8KDKhPYS7+4H2txgIc=; b=QT+cr5L8P+ZRQ1UHordYWg9ajl
	rICvUsDWarpmqSp24bibSo0uqLhD5KB9VH1rjmMtFa3CPY3iznR3vizejYZFQeIvPl5b7M0Hb3b/0
	Lt2uDLzHkJ3LHqUPGCTD00TTi5WiTQ7OVmGOTk/zk+5A4w2/ePsRCzt30sA6ZSangO8GL9gUtOZq2
	7dZfh4GoVBP+FSZdLb1KP9FPj9a4iL0MoRfiCTM96H4vssIKyadr8w7P4hnshG5EKIQvBVourcrvn
	PWirtU/1msLIArvDLQxaOJnvOfnzVPY4cX16dkI3Ll+4Fh13WFX2EhaOj4Ol4B3a1s0HJeF1f5rNl
	QB6xoVDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujekq-0000000FNjG-2FjG;
	Wed, 06 Aug 2025 14:04:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujega-0000000FMtD-0RqK
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 14:00:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujegY-0002eR-RJ; Wed, 06 Aug 2025 16:00:06 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  6 Aug 2025 16:00:05 +0200
Message-Id: <20250806140005.2866622-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806140005.2866622-1-a.fatoum@barebox.org>
References: <20250806140005.2866622-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_070008_147104_C4584323 
X-CRM114-Status: GOOD (  12.44  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] commands: move login/passwd into security section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These fit thematically better to the security commands instead of the
console commands they are currently grouped with.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/Kconfig  | 97 ++++++++++++++++++++++++-----------------------
 commands/login.c  |  2 +-
 commands/passwd.c |  2 +-
 3 files changed, 51 insertions(+), 50 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 6c61bff1cd12..16b995cb3b7c 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1535,23 +1535,6 @@ config CMD_EDIT
 
 	  Use cursor keys, Ctrl-C to exit and Ctrl-D to exit-with-save.
 
-config CMD_LOGIN
-	tristate
-	select PASSWORD
-	depends on !CONSOLE_NONE
-	prompt "login"
-	help
-	  Ask for a password
-
-	  Usage: login [-t TIMEOUT] COMMAND
-
-	  Asks for a password from the console before script execution continues.
-	  The password can be set with the 'passwd' command. Instead of specifying
-	  a TIMEOUT the magic variable 'global.login.timeout' could be set.
-
-	  Options:
-		  -t TIMEOUT	Execute COMMAND if no login withing TIMEOUT seconds
-
 config CMD_MENU
 	tristate
 	depends on MENU
@@ -1645,37 +1628,6 @@ config CMD_MENUTREE
 	  Options:
 		  -m DIR	directory where the menu starts (Default: /env/menu)
 
-config CMD_PASSWD
-	tristate
-	depends on CMD_LOGIN
-	prompt "passwd"
-	help
-	  Set password
-
-	  Interactively asks for a password. The digest of this password will be
-	  stored in /env/etc/passwd. This is then used by the 'login' command.
-
-	  Passwords can be generated on the host machine using barebox sandbox.
-
-	  Entering an empty string will disable the password function.
-
-if CMD_LOGIN || CMD_PASSWD
-
-choice
-	prompt "passwd mode"
-
-config PASSWD_MODE_HIDE
-	bool "Hide"
-
-config PASSWD_MODE_STAR
-	bool "Star"
-
-config PASSWD_MODE_CLEAR
-	bool "Clear"
-
-endchoice
-
-endif
 config CMD_SPLASH
 	bool
 	select IMAGE_RENDERER
@@ -2354,6 +2306,55 @@ config CMD_KEYSTORE
 	help
 	  keystore provides access to the barebox keystore.
 
+config CMD_LOGIN
+	tristate
+	select PASSWORD
+	depends on !CONSOLE_NONE
+	prompt "login"
+	help
+	  Ask for a password
+
+	  Usage: login [-t TIMEOUT] COMMAND
+
+	  Asks for a password from the console before script execution continues.
+	  The password can be set with the 'passwd' command. Instead of specifying
+	  a TIMEOUT the magic variable 'global.login.timeout' could be set.
+
+	  Options:
+		  -t TIMEOUT	Execute COMMAND if no login withing TIMEOUT seconds
+
+config CMD_PASSWD
+	tristate
+	depends on CMD_LOGIN
+	prompt "passwd"
+	help
+	  Set password
+
+	  Interactively asks for a password. The digest of this password will be
+	  stored in /env/etc/passwd. This is then used by the 'login' command.
+
+	  Passwords can be generated on the host machine using barebox sandbox.
+
+	  Entering an empty string will disable the password function.
+
+if CMD_LOGIN || CMD_PASSWD
+
+choice
+	prompt "passwd mode"
+
+config PASSWD_MODE_HIDE
+	bool "Hide"
+
+config PASSWD_MODE_STAR
+	bool "Star"
+
+config PASSWD_MODE_CLEAR
+	bool "Clear"
+
+endchoice
+
+endif
+
 # end Security commands
 endmenu
 
diff --git a/commands/login.c b/commands/login.c
index 7085f3885cf9..a78b729d5483 100644
--- a/commands/login.c
+++ b/commands/login.c
@@ -21,7 +21,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(login)
 	.cmd		= do_login,
 	BAREBOX_CMD_DESC("ask for a password")
-	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
+	BAREBOX_CMD_GROUP(CMD_GRP_SECURITY)
 	BAREBOX_CMD_HELP(cmd_login_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
diff --git a/commands/passwd.c b/commands/passwd.c
index dfcc63623a7f..5d3435f8cc4e 100644
--- a/commands/passwd.c
+++ b/commands/passwd.c
@@ -79,7 +79,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(passwd)
 	.cmd		= do_passwd,
 	BAREBOX_CMD_DESC("set password")
-	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
+	BAREBOX_CMD_GROUP(CMD_GRP_SECURITY)
 	BAREBOX_CMD_HELP(cmd_passwd_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
-- 
2.39.5



