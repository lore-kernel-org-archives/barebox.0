Delivery-date: Thu, 22 May 2025 15:42:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uI6Bq-001Xps-0x
	for lore@lore.pengutronix.de;
	Thu, 22 May 2025 15:42:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uI6Bp-0005y3-MO
	for lore@pengutronix.de; Thu, 22 May 2025 15:42:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fDcxsUTHjrfibbLO0zl/ImW5gNGZQ4juxHAG26k5VF8=; b=ClExrUIg/Lgz6csG2rOrh7BT1h
	KwlilPHfqsC6XriC2WENcW1GHTV2thVwSXPzi7uo9D5joTUiwy+CCzIBqlCwXQSrqgLsu8Kns4wVD
	AICjgoBCmkEE/xY9WM3L3cA/Vaq5SAMpKRIA1cVTM/Gf5eWHqocZNGkmRdbUUsRntUMP4EIn1Vzfl
	pQv6NycKq2IMVKC8CdoCB0PGCKoL2sJ35ttn1DYl3cZ3SKhfS5lQzPO87r7mNsuhoG09EXd1l5ELX
	M2ORqBQGqMItA6cTjMBGyIcygzTW1dnlkQY3yWXsxV5S+41j7+0fH6JnkoREuyRqf+8PMCtY2Q+SG
	w9FQ+Z4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI6BH-0000000197X-2uZo;
	Thu, 22 May 2025 13:41:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI6A8-000000018zo-3OYy
	for barebox@lists.infradead.org;
	Thu, 22 May 2025 13:40:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uI69r-00059x-LZ; Thu, 22 May 2025 15:40:27 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uI69r-000kDe-1T;
	Thu, 22 May 2025 15:40:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uI69r-000ybx-1D;
	Thu, 22 May 2025 15:40:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 May 2025 15:40:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-parted-size-v1-3-369d146aa100@pengutronix.de>
References: <20250522-parted-size-v1-0-369d146aa100@pengutronix.de>
In-Reply-To: <20250522-parted-size-v1-0-369d146aa100@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747921227; l=2665;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=7U3fu7kcyau5zwCOmUAIl3hG00V+pYB3GisOxLz2EUM=;
 b=mFLVEnzto3qwaM3gNtPlbvB5QcXeGSQloP/FO1Gx4np8khfk02bZe6cWWufYowwIaWY59m/Cp
 0nTQyiZ0yxdCu6dn6gYuJNg0K0ZzNRhiBVPVGeP3sYTWUGk2lElb35Q
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_064044_851091_3984E023 
X-CRM114-Status: GOOD (  12.37  )
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
Subject: [PATCH 3/3] parted: implement mkpart_size command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This creates a command which creates a partition with specified size.
The command finds a suitable place for the partition itself.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/parted.c | 55 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/commands/parted.c b/commands/parted.c
index 221c6fc98601f1532ea85e000d1e2147f7a5af63..6872a8414c79e8e116c9ecce864888cec542ad18 100644
--- a/commands/parted.c
+++ b/commands/parted.c
@@ -192,6 +192,57 @@ static int do_mkpart(struct block_device *blk, int argc, char *argv[])
 	return ret < 0 ? ret : 5;
 }
 
+static int do_mkpart_size(struct block_device *blk, int argc, char *argv[])
+{
+	struct partition_desc *pdesc;
+	uint64_t size, start;
+	const char *name, *fs_type;
+	int ret;
+	uint64_t mult;
+
+	if (argc < 4) {
+		printf("Error: Missing required arguments\n");
+		return -EINVAL;
+	}
+
+	name = argv[1];
+	fs_type = argv[2];
+
+	ret = parted_strtoull(argv[3], &size, &mult);
+	if (ret)
+		return ret;
+
+	if (!mult)
+		mult = gunit;
+
+	size *= mult;
+
+	/* If not on sector boundaries move start up and end down */
+	size = ALIGN(size, PARTITION_ALIGN_SIZE);
+
+	/* convert to LBA */
+	size >>= SECTOR_SHIFT;
+
+	pdesc = pdesc_get(blk);
+	if (!pdesc)
+		return -EINVAL;
+
+	ret = partition_find_free_space(pdesc, size, &start);
+	if (ret) {
+		printf("No free space for %llu sectors found\n", size);
+		return ret;
+	}
+
+	printf("%s: creating partition with %llu blocks at %llu\n", __func__, size, start);
+
+	ret = partition_create(pdesc, name, fs_type, start, start + size - 1);
+
+	if (!ret)
+		table_needs_write = true;
+
+	return ret < 0 ? ret : 4;
+}
+
 static int do_rmpart(struct block_device *blk, int argc, char *argv[])
 {
 	struct partition_desc *pdesc;
@@ -267,6 +318,9 @@ struct parted_command parted_commands[] = {
 		.name = "mkpart",
 		.command = do_mkpart,
 	}, {
+		.name = "mkpart_size",
+		.command = do_mkpart_size,
+	},  {
 		.name = "print",
 		.command = do_print,
 	}, {
@@ -360,6 +414,7 @@ BAREBOX_CMD_HELP_OPT ("print", "print partitions")
 BAREBOX_CMD_HELP_OPT ("mklabel <type>", "create a new partition table")
 BAREBOX_CMD_HELP_OPT ("rm <num>", "remove a partition")
 BAREBOX_CMD_HELP_OPT ("mkpart <name> <fstype> <start> <end>", "create a new partition")
+BAREBOX_CMD_HELP_OPT ("mkpart_size <name> <fstype> <size>", "create a new partition")
 BAREBOX_CMD_HELP_OPT ("unit <unit>", "change display/input units")
 BAREBOX_CMD_HELP_OPT ("refresh", "refresh a partition table")
 BAREBOX_CMD_HELP_TEXT("")

-- 
2.39.5



