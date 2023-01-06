Delivery-date: Fri, 06 Jan 2023 16:03:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pDoFp-003aO9-EY
	for lore@lore.pengutronix.de; Fri, 06 Jan 2023 16:03:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pDoFn-0003B6-Ls
	for lore@pengutronix.de; Fri, 06 Jan 2023 16:03:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VGrNDGdNq1/Bh/u5Gc/SG6CYHFaRmaSJDorhEZGl2rM=; b=Rv9xbKX3m2iHO3EJ7TSAUokokN
	ooOtU8hTwHgB/0KFfQS+FAJkEIiWnSHqSSlX/cMj7yTkrmPPMnfTsJuP1ClDdC3G/kMhw1RDQu9AE
	hwB/Q5hsiZHrNRfUB8ctjhWk8vBhk+rBIvhf5wvQN6Ev0L7/qYjU+olHnyLFKTx6kdhFHT7UgqNKa
	JaFQnDYA7rp2BaIFEhrcwNkVCIkIoiYiwTIsbOYTTFYWFVDdS3p74T3MMnTwNn/HE8KgqvhPU7Ayc
	JeHj5wyTlWlA9NfNeVEUaiPZh+HvP/FAZD6G6LBtfdfUcyJK1L3TmUTuDqqBkQBdAfQTSVVGGaDhE
	uKymqDkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDoEE-00923L-S6; Fri, 06 Jan 2023 15:01:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDoEA-00921X-4V
	for barebox@lists.infradead.org; Fri, 06 Jan 2023 15:01:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <uol@pengutronix.de>)
	id 1pDoE6-0002ll-Fw; Fri, 06 Jan 2023 16:01:46 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <uol@pengutronix.de>)
	id 1pDoE5-004EGq-SD; Fri, 06 Jan 2023 16:01:45 +0100
Received: from uol by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <uol@pengutronix.de>)
	id 1pDoE5-002ZGi-2J; Fri, 06 Jan 2023 16:01:45 +0100
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  6 Jan 2023 16:01:43 +0100
Message-Id: <20230106150143.612182-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230106_070150_196049_9AD9C045 
X-CRM114-Status: GOOD (  11.33  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] of: partition: moan if adding a partition failed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Do not silently continue if e.g. the label of a partition defined in the
devicetree collides with the name of a partition defined in a GPT on the device.

Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 drivers/of/partition.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index abbda674d6cb..b414985555b4 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -67,8 +67,10 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	filename = basprintf("%s.%s", cdev->name, partname);
 
 	new = devfs_add_partition(cdev->name, offset, size, flags, filename);
-	if (IS_ERR(new))
+	if (IS_ERR(new)) {
+		pr_err("Adding partition %s failed: %pe\n", filename, new);
 		new = NULL;
+	}
 
 	if (new)
 		new->device_node = node;;
-- 
2.30.2



