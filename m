Delivery-date: Mon, 12 Jan 2026 09:52:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfDeo-000Sjt-0z
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 09:52:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfDen-0001Pg-Ar
	for lore@pengutronix.de; Mon, 12 Jan 2026 09:52:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MAKVYwNdPj4+kqnj2oQ9UNv/BuBXXxsNm8IYtMRlytU=; b=olLu4nApGEHvynpNJ9FZNy7Cts
	shvIPLYIktB7CJ1MXu36++1ATMC0SR9mdjWvwzbnQLyNk2F6NNBWAWOMYWdX6fm1vEA5Tv7I/m/Gs
	UPWqtaix7L743dXLtKRS1Oi4Ydjq0a1MG6aEibiye8WHc2/IcOsctQdSHjt+bgI/46pqOHlSaMna6
	m2QB8KTmJGLH95IN57us3wmQN2jX92TbSSWma9sTrTMH1CGCu5fHjuFNHlHv0h+GYHkgAZMtKkH9W
	wcWYrjl4EtClnWY0xYLq4VaruM/S8bmRGbhLvf42urnKrSiwP0z8M2n96US8BiVU0rXCNdfNah3Er
	xZT4O3Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDeJ-000000051Na-18Ml;
	Mon, 12 Jan 2026 08:51:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDeG-000000051Mo-2VCZ
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 08:51:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vfDeE-0001L2-S2; Mon, 12 Jan 2026 09:51:38 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 12 Jan 2026 09:51:37 +0100
Message-ID: <20260112085137.2950183-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_005140_630008_D4AF59D8 
X-CRM114-Status: GOOD (  10.17  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] commands: test: implement test -s for non-zero size check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While we have a lot of [ flags already and even some for bash [[,
-s to check if the size is non-zero has so far been missing.

Add it.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/test.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/commands/test.c b/commands/test.c
index 13005b97deb3..c2f2993df406 100644
--- a/commands/test.c
+++ b/commands/test.c
@@ -33,6 +33,7 @@ typedef enum {
 	OPT_BLOCK,
 	OPT_CHAR,
 	OPT_SYMBOLIC_LINK,
+	OPT_NONZERO_SIZE,
 	OPT_MAX,
 } test_opts;
 
@@ -56,6 +57,7 @@ static char *test_options[] = {
 	[OPT_BLOCK]			= "-b",
 	[OPT_CHAR]			= "-c",
 	[OPT_SYMBOLIC_LINK]		= "-L",
+	[OPT_NONZERO_SIZE]		= "-s",
 };
 
 static int parse_opt(const char *opt)
@@ -201,6 +203,7 @@ static int do_test(int argc, char *argv[])
 		case OPT_BLOCK:
 		case OPT_CHAR:
 		case OPT_SYMBOLIC_LINK:
+		case OPT_NONZERO_SIZE:
 			adv = 2;
 			if (left < 2)
 				break;
@@ -235,6 +238,10 @@ static int do_test(int argc, char *argv[])
 					expr = 1;
 					break;
 				}
+				if (opt == OPT_NONZERO_SIZE && statbuf.st_size) {
+					expr = 1;
+					break;
+				}
 			}
 			break;
 
@@ -295,7 +302,7 @@ static const char * const test_aliases[] = { "[", "[[", NULL};
 BAREBOX_CMD_HELP_START(test)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_TEXT("\t!, =, !=, -eq, -ne, -ge, -gt, -le, -lt, -o, -a, -z, -n, -d, -e,")
-BAREBOX_CMD_HELP_TEXT("\t-f, -L; see 'man test' on your PC for more information.")
+BAREBOX_CMD_HELP_TEXT("\t-s, -f, -L; see 'man test' on your PC for more information.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(test)
-- 
2.47.3



