Delivery-date: Mon, 23 Jun 2025 08:40:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTaqn-00AB15-1e
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 08:40:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTaqm-0001PZ-C7
	for lore@pengutronix.de; Mon, 23 Jun 2025 08:40:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tv+5VQ+cbPnOoAHuVJWVYqR/+rS2O1fAO2OjfcdqYBI=; b=OHMp3mj++/9TI6aQjroh/cc4yk
	+FcY3R943pFKFS0LVDj7JGVIb+2D9eggjIPqox+1teWFkh+wST1vaNmmObkOqv8pHsLmmSctwKb2d
	+wwKALm2q/GtdtrXrSzWXBS4etUz7vUOAmlolPIg7xbz7G2LeRA7OY6bAAnBaI3Y+3zZSif/Cmxr8
	BGkgC9ZfqFtW3sSffV33FxCRMN7r/yaTaDfccockLLd+w30yYOYkdIhUTCtdfH0AQrO5QxOFpjDW7
	pe4rYP08F7FmU8acA/9USKohe8aCof7R5b3jLmP9bEbQ+V/M2OESIfoQ1IxXemNmXDEhrIm0OOFfr
	Dtc4cFYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTaqA-00000001kXf-2tKc;
	Mon, 23 Jun 2025 06:39:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTaXl-00000001iLJ-3agK
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 06:20:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uTaXi-0001b6-1W; Mon, 23 Jun 2025 08:20:34 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 23 Jun 2025 08:20:29 +0200
Message-Id: <20250623062032.3527006-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_232037_919781_8F83A57E 
X-CRM114-Status: GOOD (  11.32  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/4] commands: stat: fix leaking file descriptors on early exit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently leak the dirfd if we encounter an error during option
parsing. Fix this by only recording the path at first and opening the
dirfd once all options have been parsed.

Fixes: 5b175c52b53b ("commands: stat: add option for statat")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/stat.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/commands/stat.c b/commands/stat.c
index 8a96bf77b0f1..581cefad871d 100644
--- a/commands/stat.c
+++ b/commands/stat.c
@@ -14,6 +14,7 @@ static int do_stat(int argc, char *argv[])
 {
 	int (*statfn)(int dirfd, const char *, struct stat *) = lstatat;
 	int ret, opt, dirfd = AT_FDCWD, extra_flags = 0, exitcode = 0;
+	const char *dir = NULL;
 	char **filename;
 	struct stat st;
 
@@ -26,9 +27,7 @@ static int do_stat(int argc, char *argv[])
 			extra_flags |= O_CHROOT;
 			fallthrough;
 		case 'c':
-			dirfd = open(optarg, O_PATH | O_DIRECTORY | extra_flags);
-			if (dirfd < 0)
-				return dirfd;
+			dir = optarg;
 			break;
 		default:
 			return COMMAND_ERROR_USAGE;
@@ -38,6 +37,12 @@ static int do_stat(int argc, char *argv[])
 	if (optind == argc)
 		return COMMAND_ERROR_USAGE;
 
+	if (dir) {
+		dirfd = open(dir, O_PATH | O_DIRECTORY | extra_flags);
+		if (dirfd < 0)
+			return dirfd;
+	}
+
 	for (filename = &argv[optind]; *filename; filename++) {
 		ret = statfn(dirfd, *filename, &st);
 
-- 
2.39.5



