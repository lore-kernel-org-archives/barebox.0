Delivery-date: Mon, 24 Aug 2026 13:57:48 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyTJD-006gm5-2Y
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 13:57:48 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 12689201917
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 13:57:48 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=M0AE5Yfx;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F2+VuGqBZf2+eJMkx5DY+124wIMghoKE0k3VNLU45CI=; b=M0AE5YfxYMpyxVtXwao58yCA5O
	bcibl6cLWxDCb/T8wP0jkOdtCV1mtaIuU7lbhWRKfCuz8FB3Q/T7rU8SujAB4Kmrj1oGmyhZO9T7O
	EWiXM7kB+SSYHpuPpMvmo8vJlWJpG9qQpAF5OE9j+lt5zmYeqDCa0YJYxMykCPM3JXL068Hd3Ufiu
	EGl+AX3Fx9c3yQJHw1GKPsIqn1xNtP6VDevfwrWBrOgLwjrO/McF8d+VAnE1mcWXZ3hX0kH/MJUSI
	NVjdbQMXTkCCrYXgf1Il3knwW7/3z2dHJOy3KHtLUZOwFaH1/eudls04BwGblN0M8U6KYkhsV9Utk
	xaTnavIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyTHy-0000000GYao-3xMl;
	Mon, 24 Aug 2026 11:56:30 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyTHu-0000000GYZK-3Gqz
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 11:56:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 62EFB2006E0;
	Mon, 24 Aug 2026 13:56:24 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyTHs-00367x-0y;
	Mon, 24 Aug 2026 13:56:24 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyTHs-0000000DTPB-0a1f;
	Mon, 24 Aug 2026 13:56:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 2/4] commands: fix stale option strings in usage lines
Date: Mon, 24 Aug 2026 13:55:32 +0200
Message-ID: <20260824115619.3148656-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260824115619.3148656-1-a.fatoum@pengutronix.de>
References: <20260824115619.3148656-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_045628_058845_E07FA42C 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The BAREBOX_CMD_OPTS strings of several commands have fallen
    out of sync with the options their parsers actually accept. Sync the usage
    lines with the getopt strings so the generated documentation and the built-in
    help don't confuse users. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: kc4nk8fmsnu8uxtist3m6hhxww5hnata
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 12689201917

The BAREBOX_CMD_OPTS strings of several commands have fallen out of sync
with the options their parsers actually accept.

Sync the usage lines with the getopt strings so the generated
documentation and the built-in help don't confuse users.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/boot_test_cmd.c | 2 +-
 commands/boot.c                    | 2 +-
 commands/dmesg.c                   | 2 +-
 commands/memset.c                  | 2 +-
 commands/nandtest.c                | 2 +-
 commands/pwm.c                     | 2 +-
 commands/splash.c                  | 2 +-
 commands/ubiformat.c               | 2 +-
 efi/payload/init.c                 | 2 +-
 9 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-at91/boot_test_cmd.c b/arch/arm/mach-at91/boot_test_cmd.c
index 9a5c0e3e4e06..a5643c54915f 100644
--- a/arch/arm/mach-at91/boot_test_cmd.c
+++ b/arch/arm/mach-at91/boot_test_cmd.c
@@ -92,7 +92,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(at91_boot_test)
 	.cmd		= do_at91_boot_test,
 	BAREBOX_CMD_DESC("load and execute from SRAM")
-	BAREBOX_CMD_OPTS("at91_boot_test [-js] FILE")
+	BAREBOX_CMD_OPTS("[-js] FILE")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_at91_boot_test_help)
 BAREBOX_CMD_END
diff --git a/commands/boot.c b/commands/boot.c
index 17730cd35281..88a7aec32ea4 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -246,7 +246,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(boot)
 	.cmd	= do_boot,
 	BAREBOX_CMD_DESC("boot from script, device, ...")
-	BAREBOX_CMD_OPTS("[-vdlmMwt] [BOOTSRC...]")
+	BAREBOX_CMD_OPTS("[-vdlmMwto] [BOOTSRC...]")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_boot_help)
 BAREBOX_CMD_END
diff --git a/commands/dmesg.c b/commands/dmesg.c
index a2493acfacbc..b405cf4f1d13 100644
--- a/commands/dmesg.c
+++ b/commands/dmesg.c
@@ -189,7 +189,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(dmesg)
 	.cmd	= do_dmesg,
 	BAREBOX_CMD_DESC("Print or control log messages")
-	BAREBOX_CMD_OPTS("[-cdelprt]")
+	BAREBOX_CMD_OPTS("[-cdelnprt]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_dmesg_help)
 BAREBOX_CMD_END
diff --git a/commands/memset.c b/commands/memset.c
index f26d0e9fe18c..ac6b7344d55d 100644
--- a/commands/memset.c
+++ b/commands/memset.c
@@ -86,7 +86,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(memset)
 	.cmd		= do_memset,
 	BAREBOX_CMD_DESC("memory fill")
-	BAREBOX_CMD_OPTS("[-bwlq [-d FILE] ADDR DATA COUNT")
+	BAREBOX_CMD_OPTS("[-bwlq] [-d FILE] ADDR DATA COUNT")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_memset_help)
 BAREBOX_CMD_END
diff --git a/commands/nandtest.c b/commands/nandtest.c
index 61deb7bad5c4..359401f98e86 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -407,7 +407,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(nandtest)
 	.cmd		= do_nandtest,
 	BAREBOX_CMD_DESC("NAND flash memory test")
-	BAREBOX_CMD_OPTS("[-tmsiol] NANDDEVICE")
+	BAREBOX_CMD_OPTS("[-trmsiol] NANDDEVICE")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_nandtest_help)
 BAREBOX_CMD_END
diff --git a/commands/pwm.c b/commands/pwm.c
index fec6abe82576..6e0ba2c2e36f 100644
--- a/commands/pwm.c
+++ b/commands/pwm.c
@@ -206,7 +206,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(pwm)
 	.cmd		= do_pwm_cmd,
 	BAREBOX_CMD_DESC("pwm")
-	BAREBOX_CMD_OPTS("[-ldDPfwisv]")
+	BAREBOX_CMD_OPTS("[-ldDPfwFisv]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_pwm_help)
 BAREBOX_CMD_END
diff --git a/commands/splash.c b/commands/splash.c
index dffe29f92328..4eba681384b0 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -97,7 +97,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(splash)
 	.cmd		= do_splash,
 	BAREBOX_CMD_DESC("display a BMP or PNG splash image")
-	BAREBOX_CMD_OPTS("[-fxyno] FILE")
+	BAREBOX_CMD_OPTS("[-fxyb] FILE")
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_splash_help)
 BAREBOX_CMD_END
diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index cb52cd9f6aac..a9b79b711f5d 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -192,7 +192,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(ubiformat)
 	.cmd		= do_ubiformat,
 	BAREBOX_CMD_DESC("format an ubi volume")
-	BAREBOX_CMD_OPTS("[-sOnfexQqv] MTDEVICE")
+	BAREBOX_CMD_OPTS("[-sOnfexQyqv] MTDEVICE")
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_ubiformat_help)
 BAREBOX_CMD_END
diff --git a/efi/payload/init.c b/efi/payload/init.c
index 6d2bd046e4c2..862ca6a3e7d6 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -356,7 +356,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(efiexit)
 	.cmd = do_efiexit,
 	BAREBOX_CMD_DESC("Leave barebox and return to the calling EFI process")
-	BAREBOX_CMD_OPTS("[-flrw]")
+	BAREBOX_CMD_OPTS("[-f]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_efiexit_help)
 BAREBOX_CMD_END
-- 
2.47.3



