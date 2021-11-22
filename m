Delivery-date: Mon, 22 Nov 2021 09:54:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp563-0003hR-SH
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:54:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp562-0002CS-Rx
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:54:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3io4BE3qTXUEaihgi4huZ7zKivr9uM5JVU6FHTar/c=; b=1uT6MBTlvDeJoU
	KnYwdjWi4LrOAlnYd2RTelUd60wKQFkek/gccqM7uyDnWi0km5di1BoJZd58L6CZtpqMaBNWFJPxm
	ZSstBAzxeaZbpxGZNaaowYjZII7iLAmBOBKBuZ0prHJEcipXbRDga0Zh5Q1eG7LovgBnf4QPJResr
	9wdFEXvDzyI7bnPZx9zZheXV0iXgKVmMEzxZZz1M53+CW7hWo+Ks+q/ktvfDrE3+4saHF2vgOFplx
	1xIgLOOjADlD48OMXmgGoEqZC77rVQjXTRe8NxNXOg4lgzSxBV24jCjQxbd8HdU4sBLSJK8hh/8L7
	hVKq181FHJmv/EuhU83w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp54g-00FOTD-Nw; Mon, 22 Nov 2021 08:53:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zK-00FL5P-TI
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007wY-9Z; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00AtfT-Ov; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:23 +0100
Message-Id: <20211122084732.2597109-22-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004747_112884_CF07F91C 
X-CRM114-Status: GOOD (  15.16  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 21/30] commands: echo: add wide file output via wecho alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For interacting with EFI, it can be useful to write UCS-2 files from the
shell. Add an optional wecho alias to facilitate this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/echo.c | 55 +++++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 51 insertions(+), 4 deletions(-)

diff --git a/commands/echo.c b/commands/echo.c
index 99575b4c0c35..572b852ea32a 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -10,6 +10,40 @@
 #include <errno.h>
 #include <libbb.h>
 
+static void echo_dputc(int fd, char c, bool wide)
+{
+	wchar_t wc;
+	int n;
+
+	if (!wide || fd == 1 || fd == 2) {
+		dputc(fd, c);
+		return;
+	}
+
+	n = mbtowc(&wc, &c, 1);
+	if (n < 0)
+		return;
+
+	write(fd, &wc, sizeof(wchar_t));
+}
+
+static void echo_dputs(int fd, const char *s, bool wide)
+{
+	wchar_t *ws;
+
+	if (!wide || fd == 1 || fd == 2) {
+		dputs(fd, s);
+		return;
+	}
+
+	ws = strdup_char_to_wchar(s);
+	if (!ws)
+		return;
+
+	write(fd, ws, wcslen(ws) * sizeof(wchar_t));
+	free(ws);
+}
+
 static int do_echo(int argc, char *argv[])
 {
 	int i, optind = 1;
@@ -18,6 +52,10 @@ static int do_echo(int argc, char *argv[])
 	int oflags = O_WRONLY | O_CREAT;
 	char str[CONFIG_CBSIZE];
 	int process_escape = 0;
+	bool wide = false;
+
+	if (IS_ENABLED(CONFIG_PRINTF_WCHAR) && *argv[0] == 'w')
+		wide = true;
 
 	/* We can't use getopt() here because we want to
 	 * echo all things we don't understand.
@@ -66,18 +104,22 @@ exit_parse:
 	}
 
 	for (i = optind; i < argc; i++) {
+		const char *out;
+
 		if (i > optind)
-			dputc(fd, ' ');
+			echo_dputc(fd, ' ', wide);
 		if (process_escape) {
 			process_escape_sequence(argv[i], str, CONFIG_CBSIZE);
-			dputs(fd, str);
+			out = str;
 		} else {
-			dputs(fd, argv[i]);
+			out = argv[i];
 		}
+
+		echo_dputs(fd, out, wide);
 	}
 
 	if (newline)
-		dputc(fd, '\n');
+		echo_dputc(fd, '\n', wide);
 
 	if (file)
 		close(fd);
@@ -99,8 +141,13 @@ BAREBOX_CMD_HELP_OPT ("-a FILE", "append to FILE instead of using stdout")
 BAREBOX_CMD_HELP_OPT ("-o FILE", "overwrite FILE instead of using stdout")
 BAREBOX_CMD_HELP_END
 
+static __maybe_unused const char * const echo_aliases[] = { "wecho", NULL};
+
 BAREBOX_CMD_START(echo)
 	.cmd		= do_echo,
+#ifdef CONFIG_PRINTF_WCHAR
+	.aliases	= echo_aliases,
+#endif
 	BAREBOX_CMD_DESC("echo args to console")
 	BAREBOX_CMD_OPTS("[-neao] STRING")
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

