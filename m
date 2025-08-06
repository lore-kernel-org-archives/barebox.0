Delivery-date: Wed, 06 Aug 2025 15:16:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uje0X-007ePp-2C
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 15:16:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uje0X-0006mL-4N
	for lore@pengutronix.de; Wed, 06 Aug 2025 15:16:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Kq+5RXZGPSMtBPEk8J0Fz2bjSAkwAbTUgCJOHVGnwtw=; b=TBhSabcuyXXgt2yNuLWVqH2jfN
	UDbeu7B2knDLRSbHU+5hd4e3T15cNhs0PSYygSr0m25gVw2PdO8QI3g3KvDR5gt+Ni1ntI/3yxjK/
	qAxlNFH6fThYaAIkiaFbxXVfVGoziyiCcp35vbyZpe0yGyqmWXx1fcCghcohkuyXx6FmgxKIihJkd
	F8QSKfpzp2eYy9UloLYHf11vDdH4dh//+cdBmU8ZEm/NQawX4HcWWt/xhHTtnpBVls9vXxEFiWPHy
	zCG0ridfSNDOrpGhmBv+mbCEPNO3GB4dvdaDbKiuRToTIxYBs8rbqFNRJW6OPCriWkjTZ47NHKgBh
	pGY0MOgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uje09-0000000FHLA-1duZ;
	Wed, 06 Aug 2025 13:16:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uje07-0000000FHKl-2YLy
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 13:16:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uje05-0006hr-QV; Wed, 06 Aug 2025 15:16:13 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  6 Aug 2025 15:16:12 +0200
Message-Id: <20250806131612.2823451-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_061615_646895_006E56BE 
X-CRM114-Status: GOOD (  10.35  )
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
Subject: [PATCH] hush: implement PROMPT_COMMAND
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This allows dynamically updating the prompt to reflect new contextual or
global information (e.g. which security mode barebox is in).

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/Kconfig |  1 +
 common/hush.c  | 12 +++++++++++-
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index b2449207eff9..1d9570ef67b5 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -515,6 +515,7 @@ config HUSH_FANCY_PROMPT
 	help
 	  Allow to set PS1 from the command line. PS1 can have several escaped commands
 	  like \h for the 'model' string or \w for the current working directory.
+	  PS1 can be set statically or computed on demand by executing PROMPT_COMMAND.
 
 config CMDLINE_EDITING
 	depends on !SHELL_NONE
diff --git a/common/hush.c b/common/hush.c
index 086cbc68b891..552e7327de92 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -426,8 +426,17 @@ static char *getprompt(void)
 	static char prompt[PATH_MAX + 32];
 
 #ifdef CONFIG_HUSH_FANCY_PROMPT
-	const char *ps1 = getenv("PS1");
+	const char *ps1, *prompt_command;
+	struct p_context ctx = {};
 
+	prompt_command = getenv("PROMPT_COMMAND");
+	if (prompt_command) {
+		initialize_context(&ctx);
+		parse_string_outer(&ctx, prompt_command, FLAG_PARSE_SEMICOLON);
+		release_context(&ctx);
+	}
+
+	ps1 = getenv("PS1");
 	if (ps1)
 		process_escape_sequence(ps1, prompt, PATH_MAX + 32);
 	else
@@ -2065,6 +2074,7 @@ BAREBOX_CMD_END
 BAREBOX_MAGICVAR(PATH, "colon separated list of paths to search for executables");
 #ifdef CONFIG_HUSH_FANCY_PROMPT
 BAREBOX_MAGICVAR(PS1, "hush prompt");
+BAREBOX_MAGICVAR(PROMPT_COMMAND, "command to execute prior to each primary prompt");
 #endif
 
 static int binfmt_sh_excute(struct binfmt_hook *b, char *file, int argc, char **argv)
-- 
2.39.5



