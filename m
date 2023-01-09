Delivery-date: Mon, 09 Jan 2023 07:16:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pElS6-006Nv5-Bg
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 07:16:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pElS4-0001Zo-EL
	for lore@pengutronix.de; Mon, 09 Jan 2023 07:16:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vMy+AWhYPTJmRVr0txU7y72ajMCEqHxvtEFn6LhIX30=; b=bghmNQD6q5hLe3
	6HEVgfSlyp9It7JiVztRUXNpc24awFwwrTsIVKa1DPnXI+fmUwLb08km7kuhK95LyKxAL1dkThPZs
	0evg1aBVxUdRP8gym5BMO6v4+ANmxrf+jW1wlJbi4B2ud+sOlZi2iT3zH68ZO+4yIeZlLLYuWoKG1
	iLQbS+iQuavMHbIrEPq4N5gOWRxXjBllfp+L8GIVA/qoDNyaexrR7fWTZcPOB15kodIc13QeCWPAz
	l8Y7k+8QoSRNwmxpxQAMk9oulAg7kUgDL87+PGtsSg6f5U1F93tM2U7slHiwi19mtfaceSNTFkb3t
	MFCXfWWFBdPkb2E2PGfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pElQJ-00HYnO-ES; Mon, 09 Jan 2023 06:14:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pElQC-00HYmM-U6
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 06:14:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <uol@pengutronix.de>)
	id 1pElQ8-0001AR-8d; Mon, 09 Jan 2023 07:14:08 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <uol@pengutronix.de>)
	id 1pElQ7-004n00-DG; Mon, 09 Jan 2023 07:14:07 +0100
Received: from uol by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <uol@pengutronix.de>)
	id 1pElQ6-007crr-P7; Mon, 09 Jan 2023 07:14:06 +0100
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  9 Jan 2023 07:14:01 +0100
Message-Id: <20230109061401.1817658-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_221412_987061_CEF5CCA4 
X-CRM114-Status: GOOD (  11.25  )
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
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] of: partition: moan if adding a partition failed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Do not silently continue if e.g. the label of a partition defined in the
devicetree collides with the name of a partition defined in a GPT on the device.

While already at it, fix a double semicolon a few lines downward.

Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 drivers/of/partition.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index abbda674d6cb..ed1114193062 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -67,11 +67,13 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	filename = basprintf("%s.%s", cdev->name, partname);
 
 	new = devfs_add_partition(cdev->name, offset, size, flags, filename);
-	if (IS_ERR(new))
+	if (IS_ERR(new)) {
+		pr_err("Adding partition %s failed: %pe\n", filename, new);
 		new = NULL;
+	}
 
 	if (new)
-		new->device_node = node;;
+		new->device_node = node;
 
 	if (IS_ENABLED(CONFIG_NVMEM) && of_device_is_compatible(node, "nvmem-cells")) {
 		struct nvmem_device *nvmem = nvmem_partition_register(new);
-- 
2.30.2



