Delivery-date: Fri, 01 Apr 2022 18:48:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1naKRV-001nyF-3y
	for lore@lore.pengutronix.de; Fri, 01 Apr 2022 18:48:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1naKRS-000703-Lb
	for lore@pengutronix.de; Fri, 01 Apr 2022 18:48:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=burGllPyvJLYta+HUsL9kKm8CJ1g1gJVYRPNd2nhtwE=; b=1ZGJ+CEayYw9fG
	qC0ZgNm/tWIPgrrN0l4DmlEXcD9d34Mwv7/Q+rXTupPeIc+sU9QiYQQ+pFe30dsOy/oBOEJQr7bYb
	iGugq7lo6zafi6TTSKeKYCJ68h35M6QgwoHU402J+g8qpJSh3co35u445Vgk7MUIII0RdwSiMvL3s
	Th0QZWoNPFoFKtSysFiIySbk7maSDDmH0y1zUO/qloCgFMyqUUNZ7IhbTayEmoTZOL4LeJDphEEsS
	PgxeXX6/xsKXuG3Z+NhFpBBhxWKF02avl0oGAnSx103RXM2Eno9o4u+qpJlxylQi16YHg/I+owpSg
	N2ZLZlM5YHkJaYRjwLdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naKPr-006bM4-24; Fri, 01 Apr 2022 16:46:27 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naKPl-006bIc-4I
 for barebox@lists.infradead.org; Fri, 01 Apr 2022 16:46:24 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by mail.gandi.net (Postfix) with ESMTPSA id 5A92D240008;
 Fri,  1 Apr 2022 16:46:13 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri,  1 Apr 2022 18:45:58 +0200
Message-Id: <20220401164558.603727-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220401145902.GF4351@tellis.lin.mbt.kalray.eu>
References: <20220401145902.GF4351@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_094621_371371_CF75B89D 
X-CRM114-Status: GOOD (  13.39  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Getting more of Barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Finally, a no-frills way to join the currently relevant $supportgroup. Thx!

Please squash below for v2, so I don't need to carry patch for

  global.boot.default="$global.boot.default helpme"

around. Appreciated!

-------- 8< --------

 arch/arm/configs/ircbox_defconfig        |  1 +
 defaultenv/defaultenv-2-base/boot/helpme | 21 +++++++++++++++++++++
 net/irc.c                                | 13 +++++++++++--
 3 files changed, 33 insertions(+), 2 deletions(-)
 create mode 100755 defaultenv/defaultenv-2-base/boot/helpme

diff --git a/arch/arm/configs/ircbox_defconfig b/arch/arm/configs/ircbox_defconfig
index 854a80775d79..0232156e624e 100644
--- a/arch/arm/configs/ircbox_defconfig
+++ b/arch/arm/configs/ircbox_defconfig
@@ -13,6 +13,7 @@ CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG=y
 CONFIG_STATE=y
 CONFIG_BOOTCHOOSER=y
 CONFIG_RESET_SOURCE=y
diff --git a/defaultenv/defaultenv-2-base/boot/helpme b/defaultenv/defaultenv-2-base/boot/helpme
new file mode 100755
index 000000000000..750445f297d7
--- /dev/null
+++ b/defaultenv/defaultenv-2-base/boot/helpme
@@ -0,0 +1,21 @@
+#!/bin/sh
+
+. /env/data/config
+
+if [ -n "$CONFIG_ARM" ]; then
+  supportgroup="armlinux"
+elif [ -n "$CONFIG_RISCV" ]; then
+  supportgroup="riscv"
+elif [ -n "$CONFIG_OPENRISC" ]; then
+  supportgroup="openrisc"
+fi
+
+if [ -n "$supportgroup" ]; then
+  readline "Want to ask for support on $supportgroup? [Y/n]  " linuxsupport
+fi
+
+if [ "$linuxsupport" != "Y" ]; then
+  supportgroup=barebox
+fi
+
+irc -n $global.user -c "/j $supportgroup" irc.libera.chat
diff --git a/net/irc.c b/net/irc.c
index 5ce2dbb4c8be..b42d4afc2c30 100644
--- a/net/irc.c
+++ b/net/irc.c
@@ -469,11 +469,15 @@ static int do_irc(int argc, char *argv[])
 {
 	int ret;
 	char *host, *p;
+	const char *command = NULL;
 	uint16_t port = 6667;
 	int opt;
 
-	while ((opt = getopt(argc, argv, "n:")) > 0) {
+	while ((opt = getopt(argc, argv, "c:n:")) > 0) {
 		switch (opt) {
+		case 'c':
+			command = optarg;
+			break;
 		case 'n':
 			strlcpy(nick, optarg, sizeof(nick));
 			break;
@@ -516,6 +520,10 @@ static int do_irc(int argc, char *argv[])
 	if (nick[0] == '\0')
 		strlcpy(nick, "barebox", sizeof(nick));
 	irc_login(host, "barebox");
+
+	if (command)
+		irc_input(command);
+
 	while (con->state == TCP_ESTABLISHED) {
 		int len;
 		len = irc_readline(input_line, sizeof(input_line) - 1);
@@ -541,11 +549,12 @@ out:
 BAREBOX_CMD_HELP_START(irc)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-n NICK\t", "nick to use")
+BAREBOX_CMD_HELP_OPT ("-c COMMAND\t", "command to run after login")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(irc)
 	.cmd		= do_irc,
 	BAREBOX_CMD_DESC("IRC client")
-	BAREBOX_CMD_OPTS("[-n] DESTINATION[[/]PORT]")
+	BAREBOX_CMD_OPTS("[-nc] DESTINATION[[/]PORT]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 BAREBOX_CMD_END
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

