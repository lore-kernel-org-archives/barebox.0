Delivery-date: Mon, 18 Aug 2025 20:17:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4Q2-001yG9-23
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 20:17:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4Q0-0000kL-63
	for lore@pengutronix.de; Mon, 18 Aug 2025 20:17:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nSVDdQXdMMoJSP0OfrKxSgahbMAOGw+4aVZrGgDRTXU=; b=Ki8o8wEZuLQHYH4/CQ8WpDfpsh
	4ZJudix/ZiC6NkJVExQNOVB1XU1NSuvE7f8nWAs3y2b8DNf1LiOUIDLF5h2xAaGp/lG1Tiz0W5GKs
	EbL6HEgG5s3QUSHe64ZhRaR8hHxTRrMtA2n4Qjcxo5TRBNukeJ2vl+S94MZLwGQqo7t4PP+ZYV1Kr
	3wX/i11KdJbwbstZSqZLH2/PtXy+hHlnby/+U32puGhYNXYGUwjjIEmeFI7jRpvV2InBdvddl6aRk
	WTsVX2PEpjJJNyfroROoEAe+MJwG3ZyFkz7cJNhb/UhYYV/9MeU0Ch5Hw3JgBfQZYWqxyLryrjKdG
	TtWbOKXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4PW-00000008Ijx-0A8W;
	Mon, 18 Aug 2025 18:16:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3cZ-000000087uC-2kaq
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 17:26:14 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uo3cY-0008EV-CY; Mon, 18 Aug 2025 19:26:10 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Aug 2025 19:26:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250818-v2024-05-0-topic-fit-overlay-v5-5-b92e466a1d32@pengutronix.de>
References: <20250818-v2024-05-0-topic-fit-overlay-v5-0-b92e466a1d32@pengutronix.de>
In-Reply-To: <20250818-v2024-05-0-topic-fit-overlay-v5-0-b92e466a1d32@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_102611_866303_2B0E1ED1 
X-CRM114-Status: GOOD (  10.63  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v5 05/11] of: overlay: refactor of_overlay_global_fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Prepare of_overlay_global_fixup() for upcoming FIT image based overlays
support.

Check if the of_overlay_path is empty and return early. Make use of
isempty() helper while on it.

Simplify the code flow by setting up the dir variable accordingly before
calling of_overlay_apply_dir() to drop special '/' path
of_overlay_apply_dir() call.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/overlay.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index bc3fdff0cd277b3460981769c2b220adfced6e80..f02a12d44f0d53db3fb7bb065461c0ef193d0ab3 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -468,13 +468,13 @@ static int of_overlay_global_fixup(struct device_node *root, void *data)
 	char *dir;
 	int ret;
 
-	if (*of_overlay_path == '/')
-		return of_overlay_apply_dir(root, of_overlay_path, true);
-
-	if (*of_overlay_path == '\0')
+	if (isempty(of_overlay_path))
 		return 0;
 
-	dir = concat_path_file(of_overlay_basedir, of_overlay_path);
+	if (*of_overlay_path == '/')
+		dir = xstrdup(of_overlay_path);
+	else
+		dir = concat_path_file(of_overlay_basedir, of_overlay_path);
 
 	ret = of_overlay_apply_dir(root, dir, true);
 

-- 
2.39.5



