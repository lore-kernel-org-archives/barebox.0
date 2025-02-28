Delivery-date: Fri, 28 Feb 2025 10:50:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnx0e-0080Yk-20
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 10:50:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnx0d-0004se-FX
	for lore@pengutronix.de; Fri, 28 Feb 2025 10:50:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qyTuNjaKqSXPCXypyRD8Sg4M9cqXwaI0AaQycj8ZZJU=; b=OHlf1frb15oaVXJ7OQawDyDg3w
	/CKnZQC9NDROIQ8rvI9FYEJobJpkb2TyUYnsY2aqPGaVSuWM0AGe0FLxAajWFZ0IIQit6lxje6UcO
	BEp/Kb10YJozllvVi8QjoT3UZqnuKjEmHDN+CqgVjcR+I+gSXKkHq9d7dGIkb1NxalN7bS++951eL
	O0w/v6RJzBcBumxywvATutV3EBKLOUOVOaB2FfrdCuDvQ57UzUJghxvWIdCpo6WREzcUTVc8FFGDN
	Em3xNnH6hF6JKEHsjutfsOlu2fwclHdDdFQPio6ktHnbM6lQyrqxnae0NbVRzt1uU36XyUQh/mdii
	NZpfi8Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnx0E-0000000ARaF-2Znn;
	Fri, 28 Feb 2025 09:49:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnwz0-0000000ARJ5-1UX4
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 09:48:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnwyz-0004cX-72; Fri, 28 Feb 2025 10:48:37 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnwyz-003GuM-06;
	Fri, 28 Feb 2025 10:48:37 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnwyy-005sYR-2y;
	Fri, 28 Feb 2025 10:48:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 28 Feb 2025 10:48:36 +0100
Message-Id: <20250228094836.1401338-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_014838_388928_B34FFCCA 
X-CRM114-Status: GOOD (  10.48  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] parted: add partition type msdos to help text
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Partition type can be either "gpt" or "msdos", but only the former was
listed in the help text. Add the latter.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/parted.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/parted.c b/commands/parted.c
index 6af18cdc57..68b056a075 100644
--- a/commands/parted.c
+++ b/commands/parted.c
@@ -359,7 +359,7 @@ BAREBOX_CMD_HELP_OPT ("refresh", "refresh a partition table")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("<unit> can be one of \"s\" (sectors), \"B\" (bytes), \"kB\", \"MB\", \"GB\", \"TB\",")
 BAREBOX_CMD_HELP_TEXT("\"KiB\", \"MiB\", \"GiB\" or \"TiB\"")
-BAREBOX_CMD_HELP_TEXT("<type> must be \"gpt\"")
+BAREBOX_CMD_HELP_TEXT("<type> must be \"gpt\" or \"msdos\"")
 BAREBOX_CMD_HELP_TEXT("<fstype> can be one of  \"ext2\", \"ext3\", \"ext4\", \"fat16\", \"fat32\" or \"bbenv\"")
 BAREBOX_CMD_HELP_TEXT("<name> for MBR partition tables can be one of \"primary\", \"extended\" or")
 BAREBOX_CMD_HELP_TEXT("\"logical\". For GPT this is a name string.")
-- 
2.39.5



