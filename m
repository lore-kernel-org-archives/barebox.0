Delivery-date: Mon, 22 Jul 2024 19:06:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVwUm-001sHB-21
	for lore@lore.pengutronix.de;
	Mon, 22 Jul 2024 19:06:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVwUl-0002jv-Ux
	for lore@pengutronix.de; Mon, 22 Jul 2024 19:06:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KCrO36D7v64glmZagHqsZAw/aghhnvFUIIBp9etqH3U=; b=ku5Vnbn60NKpUK02VMtHRZ/bpA
	hfBqn14JCVECs64VlIsuGcZIkKzwij6jaC+L4JO2uZHZXfoV3r10ByaI/c2fdv9aTDohBysoYY0OX
	xt6gkdWFrbaJ8pqEcsPpv+nNSzLBDatGe6fsjuqZQCVuT9ut4R2gkD1SHaY2h0CnAcCGSMog1B1D5
	LevLF5u18L4HZZlmz6qBbnmFlija4bgkf6E3TVwoTzQ7qRlghCyqjXu9PTfRJEsgZ9VKwZDhAE7/y
	QB9kJk3S2CU1knEGYsLe4uug42FRHgQFAAN9Jz4J03Gtd7QWK8fy2jMmbKeo78hud8sQpM5Yt8NTV
	PVsKuaxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVwUM-0000000A98t-033r;
	Mon, 22 Jul 2024 17:06:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVwUI-0000000A97o-3ipp
	for barebox@lists.infradead.org;
	Mon, 22 Jul 2024 17:06:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwUH-0002Z8-IJ; Mon, 22 Jul 2024 19:06:13 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwUH-001Qkj-5T; Mon, 22 Jul 2024 19:06:13 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwUH-00GE0R-0G;
	Mon, 22 Jul 2024 19:06:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Jul 2024 19:06:12 +0200
Message-Id: <20240722170612.3867075-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_100614_950261_F413494C 
X-CRM114-Status: GOOD (  12.02  )
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
Subject: [PATCH] commands: mount: simplify positional argument handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Once getopt has concluded, all of argv[0] up to argv[optind - 1] will
have been consumed. Therefore let's advance argv by optind and reduce
argc by the same to simplify the code handling the positional arguments.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/mount.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/commands/mount.c b/commands/mount.c
index fddd770dc9eb..81a40e951076 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -35,7 +35,10 @@ static int do_mount(int argc, char *argv[])
 		}
 	}
 
-	if (argc == optind) {
+	argv += optind;
+	argc -= optind;
+
+	if (argc == 0) {
 		struct fs_device *fsdev;
 
 		for_each_fs_device(fsdev) {
@@ -56,9 +59,9 @@ static int do_mount(int argc, char *argv[])
 		return 0;
 	}
 
-	devstr = argv[optind];
+	devstr = argv[0];
 
-	if (argc == optind + 1) {
+	if (argc == 1) {
 		struct cdev *cdev;
 		const char *path;
 
@@ -79,17 +82,17 @@ static int do_mount(int argc, char *argv[])
 		return 0;
 	}
 
-	if (argc < optind + 2)
+	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
-	if (argc == optind + 3) {
+	if (argc == 3) {
 		/*
 		 * Old behaviour: mount <dev> <type> <mountpoint>
 		 */
-		type = argv[optind + 1];
-		mountpoint = argv[optind + 2];
+		type = argv[1];
+		mountpoint = argv[2];
 	} else {
-		mountpoint = argv[optind + 1];
+		mountpoint = argv[1];
 	}
 
 	return mount(devstr, type, mountpoint, fsoptions);
-- 
2.39.2



