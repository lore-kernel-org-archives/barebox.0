Delivery-date: Thu, 02 Jun 2022 22:01:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwr0L-000vgN-9g
	for lore@lore.pengutronix.de; Thu, 02 Jun 2022 22:01:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwr0K-0002b4-5j
	for lore@pengutronix.de; Thu, 02 Jun 2022 22:01:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wHVZY+lboXlDxA/i4Q02W08a5HrK63rdIq0iBr3mFaY=; b=LNmzDNWPQ9AoqY
	y7AIvCUqTUhldW25skh07YXK+x1Z/AU7c2P78SHRhyrcAQD2UZe/a3iQ8gciC9aT4COTZi8wcHWLT
	nJQhbXqy8rfRVM/W2kfzaNOGZEMutPigPIzeIdIQySQjO80SDAA7lpQb8D7otA5dnNMS5OYNeTaCD
	eDmhZy+nFhJlveAR3U17Ym7H27JyyFAl4TgNAZJTmI0dqJD1rnk39FB3fHZ4gjWZ271tftDeV9DjH
	FKjt5fR06Fx0iNHsij5yx4e0Rr4ieOmft6rTuVJ6jhR0DfI/9EtbDdwgVmZfgc6H+QweKfmRzsCcm
	6wWn4SsjSyOKkon8ZzTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwqye-004BTX-RA; Thu, 02 Jun 2022 19:59:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwqyZ-004BRh-UP
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 19:59:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nwqyU-00021y-Mb; Thu, 02 Jun 2022 21:59:18 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nwqyV-0065OM-B8; Thu, 02 Jun 2022 21:59:17 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nwqyT-0002N5-4r; Thu, 02 Jun 2022 21:59:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Jun 2022 21:59:15 +0200
Message-Id: <20220602195916.9061-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_125924_043740_C49B8F1D 
X-CRM114-Status: GOOD (  12.17  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] commands: ls: explicitly check for directories with S_ISDIR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

S_ISDIR(mode) is implemented as (mode & S_IFMT) == S_IFDIR, which
accounts for file modes setting multiple bits. So far, this was not the
case, but upcoming S_IFBLK equals (S_IFCHR | S_IFDIR), which would fail
the existing checks, so prepare for that by fixing them.

No functional change. There are no other instances of this elsewhere in
the code base.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 commands/ls.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/commands/ls.c b/commands/ls.c
index bedf2e1c4288..1192aed971cf 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -63,10 +63,10 @@ int ls(const char *path, ulong flags)
 	if (stat(path, &s))
 		return -errno;
 
-	if (flags & LS_SHOWARG && s.st_mode & S_IFDIR)
+	if (flags & LS_SHOWARG && S_ISDIR(s.st_mode))
 		printf("%s:\n", path);
 
-	if (!(s.st_mode & S_IFDIR)) {
+	if (!S_ISDIR(s.st_mode)) {
 		ls_one(path, path);
 		return 0;
 	}
@@ -112,7 +112,7 @@ int ls(const char *path, ulong flags)
 			continue;
 		}
 
-		if (s.st_mode & S_IFDIR)
+		if (S_ISDIR(s.st_mode))
 			ls(tmp, flags);
 	}
 
@@ -171,7 +171,7 @@ static int do_ls(int argc, char *argv[])
 			continue;
 		}
 
-		if (!(s.st_mode & S_IFDIR)) {
+		if (!S_ISDIR(s.st_mode)) {
 			if (flags & LS_COLUMN)
 				string_list_add_sorted(&sl, argv[o]);
 			else
@@ -197,7 +197,7 @@ static int do_ls(int argc, char *argv[])
 			continue;
 		}
 
-		if (s.st_mode & S_IFDIR) {
+		if (S_ISDIR(s.st_mode)) {
 			ret = ls(argv[o], flags);
 			if (ret) {
 				perror("ls");
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

