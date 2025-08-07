Delivery-date: Thu, 07 Aug 2025 10:20:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujvrE-007vWF-0L
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 10:20:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujvrD-00073g-EL
	for lore@pengutronix.de; Thu, 07 Aug 2025 10:20:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UI3vrvO5RWf3AJ2rBbmO4OxMliRMvkT9p7VoU4R9ajE=; b=xc87FWcvEE4swoPvI2wX9BwRgH
	bJEqBADjqpjneLrPeqvFbnsfk/1l7Z/+nO7VyDVfCDQMSFlgEQqu9vLzyFNyLEhIbcvXFD72oAhSi
	gPX2Y03bGos4WsKqZtJPNsUcjkVzgIdZmdAAgyw3x1oEMqKXO9j3EbJ79z+ChUjw4JmxzN+q9ThAa
	M9A45Y5bRN2LSVHib+O2PnDKkYHlYbzvsm/+W5HTaheKlGk6nDEAgqGtPSge3tR6gO/2LNfIUnP0t
	3+qDBmgH6BoUeWetuXNkJltEESSzVSiuHWrYdtSFEiWgAmD/DK+zw8dKO1Q4AT5Vrg9qyz831IM7C
	b13WdNMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvqp-0000000HZu8-2RZ6;
	Thu, 07 Aug 2025 08:19:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvqj-0000000HZrP-1DwH
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 08:19:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujvqh-0006oN-OM
	for barebox@lists.infradead.org; Thu, 07 Aug 2025 10:19:43 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujvqh-00CLTN-1o
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 10:19:43 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujvqh-0015nQ-1W
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 10:19:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  7 Aug 2025 10:19:42 +0200
Message-Id: <20250807081942.250226-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250807081942.250226-1-a.fatoum@pengutronix.de>
References: <20250807081942.250226-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_011945_344663_6D0597B3 
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/5] commands: move login/passwd into security section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

These fit thematically better to the security commands instead of the
console commands they are currently grouped with.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - unchanged
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



