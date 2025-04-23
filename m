Delivery-date: Wed, 23 Apr 2025 19:41:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7e68-004c1M-0z
	for lore@lore.pengutronix.de;
	Wed, 23 Apr 2025 19:41:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7e64-0003OJ-Cd
	for lore@pengutronix.de; Wed, 23 Apr 2025 19:41:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5leiaP9cpCztcA950zi8lVM1TxRRC4kuC0dYCACX06I=; b=PlJDH4jPGctaSQHMf3A1UZ2CoL
	IUgt4aQLqXDpCo2rx3UrVz/ebAI0u9DVZdtCs0mU3JP79437OkFwoqGwEKBzrizhIzhliOFbILQ69
	zb2m2FwqiiTtrBUa9VeA+87FaMAQtmq5HRXNnXNULACcUEvucWkX5GCksi8BEENdH+jFgHR9v6poc
	8G0C7TD71QLoyisxdo27ApYiOdnaeUgxTN1Hi8+ER8tGFQF0QH/pcal+IPMMwaD6mdq0SBIXAfXcG
	qDLHSyO7dM+G8afPYv38j1l5SANVYtVi5X1/8poYUm2o5ss8ckk51kW6TqYjK7/PkYzxAo/oXgI8D
	G0QIVtRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7e5Q-0000000BIQO-1FlL;
	Wed, 23 Apr 2025 17:40:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7amy-0000000AmGo-0RHS
	for barebox@lists.infradead.org;
	Wed, 23 Apr 2025 14:09:27 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1u7amu-0003Wg-Vs
	for barebox@lists.infradead.org; Wed, 23 Apr 2025 16:09:20 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 23 Apr 2025 16:09:11 +0200
Message-Id: <20250423140913.1530237-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250423140913.1530237-1-m.felsch@pengutronix.de>
References: <20250423140913.1530237-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_070924_152772_70AB2662 
X-CRM114-Status: GOOD (  10.65  )
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
Subject: [PATCH v2 2/4] parted: add support for gpt-location
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support to place the GPT partition entries to random places instead
of LBA2.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- new

 commands/parted.c | 29 +++++++++++++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/commands/parted.c b/commands/parted.c
index 90cee1ede10e..895c06524d4c 100644
--- a/commands/parted.c
+++ b/commands/parted.c
@@ -224,6 +224,30 @@ static int do_mklabel(struct block_device *blk, int argc, char *argv[])
 		return -EINVAL;
 	}
 
+	if (argc == 3) {
+		uint64_t mult;
+		int ret;
+
+		if (!strcmp(argv[1], "msdos")) {
+			printf("gpt-location not supported for msdos partitions\n");
+			return -EINVAL;
+		}
+
+		ret = parted_strtoull(argv[2], &gpt_location, &mult);
+		if (ret)
+			return ret;
+
+		if (!mult)
+			mult = gunit;
+
+		gpt_location *= mult;
+
+		/* Ensure alignment */
+		gpt_location = ALIGN(gpt_location, SECTOR_SIZE);
+		/* convert to LBA */
+		gpt_location >>= SECTOR_SHIFT;
+	}
+
 	pdesc = partition_table_new(blk, argv[1], gpt_location);
 	if (IS_ERR(pdesc)) {
 		printf("Error: Cannot create partition table: %pe\n", pdesc);
@@ -236,7 +260,7 @@ static int do_mklabel(struct block_device *blk, int argc, char *argv[])
 		partition_table_free(gpdesc);
 	gpdesc = pdesc;
 
-	return 2;
+	return argc > 2 ? 3 : 2;
 }
 
 static int do_refresh(struct block_device *blk, int argc, char *argv[])
@@ -352,7 +376,7 @@ BAREBOX_CMD_HELP_TEXT("GNU Parted")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("commands:")
 BAREBOX_CMD_HELP_OPT ("print", "print partitions")
-BAREBOX_CMD_HELP_OPT ("mklabel <type>", "create a new partition table")
+BAREBOX_CMD_HELP_OPT ("mklabel <type> <gpt-location>", "create a new partition table")
 BAREBOX_CMD_HELP_OPT ("rm <num>", "remove a partition")
 BAREBOX_CMD_HELP_OPT ("mkpart <name> <fstype> <start> <end>", "create a new partition")
 BAREBOX_CMD_HELP_OPT ("unit <unit>", "change display/input units")
@@ -361,6 +385,7 @@ BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("<unit> can be one of \"s\" (sectors), \"B\" (bytes), \"kB\", \"MB\", \"GB\", \"TB\",")
 BAREBOX_CMD_HELP_TEXT("\"KiB\", \"MiB\", \"GiB\" or \"TiB\"")
 BAREBOX_CMD_HELP_TEXT("<type> must be \"gpt\" or \"msdos\"")
+BAREBOX_CMD_HELP_TEXT("<gpt-location> Location of the GPT table, ignored for MBR. Specified in <unit> size.")
 BAREBOX_CMD_HELP_TEXT("<fstype> can be one of  \"ext2\", \"ext3\", \"ext4\", \"fat16\", \"fat32\" or \"bbenv\"")
 BAREBOX_CMD_HELP_TEXT("<name> for MBR partition tables can be one of \"primary\", \"extended\" or")
 BAREBOX_CMD_HELP_TEXT("\"logical\". For GPT this is a name string.")
-- 
2.39.5



