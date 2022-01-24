Delivery-date: Mon, 24 Jan 2022 16:20:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nC18e-00C19g-Mc
	for lore@lore.pengutronix.de; Mon, 24 Jan 2022 16:20:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nC18d-0000uu-60
	for lore@pengutronix.de; Mon, 24 Jan 2022 16:20:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cEFIhzlgsi1xhByidUNjes/ivy0sLugamMPUBighx3s=; b=u9wOe66+4duh7g
	hipXfX8zAoIDj28BKeQGjxrWpvaiLz+zESqyHZAgxzpwHXDi5z93OWWO0s1ogWEy9/MTbKFdUK+Q+
	M0pOscCLshj8+tXKIScnLWiIpxJxZJbM2izXwoK7mfkx7vY6fO8Wy0y67ZHDwwEFgjvcXRGQNGvvf
	89r4/GGJyDeT1FoSPBFQZbdWu0V7g8e9k/GFHm5cmtk2vEp0uwRs1UbhlvrNGFHl0ht6LfLyGW0T+
	cYyuX1aoj/2ZnjcdPFOnK5vq4zQm2LNjTBo2OYxoCmOBjT/4tqMKB1SCofkk4l+o2HtgTVrMUsAgZ
	+5y/+eDjv6EohlnQUZEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nC17L-003o9E-5w; Mon, 24 Jan 2022 15:18:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nC178-003o5i-24
 for barebox@lists.infradead.org; Mon, 24 Jan 2022 15:18:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nC16y-0000Zj-SN; Mon, 24 Jan 2022 16:18:28 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nC16y-00Du76-9B; Mon, 24 Jan 2022 16:18:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 24 Jan 2022 16:18:24 +0100
Message-Id: <20220124151827.3313412-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220124151827.3313412-1-a.fatoum@pengutronix.de>
References: <20220124151827.3313412-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_071838_129793_34D6728B 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/6] commands: add missing command groups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CMD_GRP_MISC is assumed in absence of an explicit group. Let's be
explicit instead to silence the warnings during documentation build.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/mmc.c         | 1 +
 fs/fs.c                | 2 ++
 lib/kasan/test_kasan.c | 1 +
 3 files changed, 4 insertions(+)

diff --git a/commands/mmc.c b/commands/mmc.c
index cbbb9d615145..1e62b71850e0 100644
--- a/commands/mmc.c
+++ b/commands/mmc.c
@@ -194,5 +194,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(mmc)
 	.cmd = do_mmc,
 	BAREBOX_CMD_OPTS("enh_area [-c] /dev/mmcX")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_mmc_help)
 BAREBOX_CMD_END
diff --git a/fs/fs.c b/fs/fs.c
index 60fdb29078d6..02ced6d6dfbd 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -3255,6 +3255,7 @@ static int do_lookup_dentry(int argc, char *argv[])
 
 BAREBOX_CMD_START(lookup_dentry)
         .cmd            = do_lookup_dentry,
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 BAREBOX_CMD_END
 
 static struct dentry *debug_follow_mount(struct dentry *dentry)
@@ -3309,5 +3310,6 @@ static int do_debug_fs_dump(int argc, char *argv[])
 
 BAREBOX_CMD_START(debug_fs_dump)
         .cmd            = do_debug_fs_dump,
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 BAREBOX_CMD_END
 #endif
diff --git a/lib/kasan/test_kasan.c b/lib/kasan/test_kasan.c
index e472bb34993b..d0ea91547711 100644
--- a/lib/kasan/test_kasan.c
+++ b/lib/kasan/test_kasan.c
@@ -474,5 +474,6 @@ static int do_kasan_test(int argc, char *argv[])
 BAREBOX_CMD_START(kasan_tests)
         .cmd            = do_kasan_test,
         BAREBOX_CMD_DESC("Run KAsan tests")
+        BAREBOX_CMD_GROUP(CMD_GRP_MISC)
         BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

