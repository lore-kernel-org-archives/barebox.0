Delivery-date: Thu, 26 Feb 2026 10:41:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvXrl-005q1q-2X
	for lore@lore.pengutronix.de;
	Thu, 26 Feb 2026 10:41:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvXrl-0001FJ-Aw
	for lore@pengutronix.de; Thu, 26 Feb 2026 10:41:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CQcZl8EL6fuoFvagMtleszWRVPhpB03qCJFXbnx3Tzw=; b=G7Ul2LbApYqIWQsUO+FqztpyMU
	PYHhdPdRWzD9BLSrMmKm+pylmTjS/IDXFNQwPYqCf+lFnWhaU+7v2cdK5e3fo/J4ukmkpWQPTjBLW
	9p9UanJHJz0idDeW/0GCNDeD3Y1UdtzmD0NEHmac3RONvBnByuObN7pL1FgHoYrONzJWG6+Kggup6
	chU/rE56HdMjR/O4Gx6Lpv5i5uWI6R9yIlq/b0D5DzA2Bk1N7jk/LHirghTYkjQR6C4GhpVnrygSg
	VXYI8ov+sSY+OMwtGMDBbtgOu4mz17QlWcWpErpi2L2r8PCwtD3WNMOQlKuOLyfg8NHmP2httnpn5
	vtzQiHSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvXrI-00000005peY-2NEc;
	Thu, 26 Feb 2026 09:40:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvXrG-00000005peD-0Uss
	for barebox@lists.infradead.org;
	Thu, 26 Feb 2026 09:40:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvXrE-00015f-6O; Thu, 26 Feb 2026 10:40:32 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvXrC-002hwb-29;
	Thu, 26 Feb 2026 10:40:32 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvXrD-000000076KL-3rGG;
	Thu, 26 Feb 2026 10:40:31 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 26 Feb 2026 10:40:30 +0100
Message-ID: <20260226094031.1692607-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_014034_976120_1649CB3A 
X-CRM114-Status: GOOD (  11.71  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! commands: cat: add support for concatenating into file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

commands: cat: move mode flags to open call with O_CREAT

To placate static analysis, 0666 was added to the open call, but at the
wrong callsite: It should be added for the open that has O_CREAT as
open flag.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/cat.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/cat.c b/commands/cat.c
index e29d39225c71..57cf532fac24 100644
--- a/commands/cat.c
+++ b/commands/cat.c
@@ -55,7 +55,7 @@ static int do_cat(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	if (outfile) {
-		outfd = open(outfile, oflags);
+		outfd = open(outfile, oflags, 0666);
 		if (outfd < 0) {
 			perror("open");
 			return 1;
@@ -65,7 +65,7 @@ static int do_cat(int argc, char *argv[])
 	buf = xmalloc(BUFSIZE);
 
 	for (int args = 0; args < argc; args++) {
-		fd = open(argv[args], O_RDONLY, 0666);
+		fd = open(argv[args], O_RDONLY);
 		if (fd < 0) {
 			err = 1;
 			printf("could not open %s: %m\n", argv[args]);
-- 
2.47.3



