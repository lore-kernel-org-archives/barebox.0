Delivery-date: Mon, 27 Nov 2023 07:38:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VFw-00AdwL-2m
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:38:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VFw-0007TF-S8
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:38:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8blBEDRZjoOkaLjmqXcIUHJ0sCERD1C/rrHto191180=; b=Z/7oXTWk/jrRxP/t0M5EGI6idF
	3d2duHY88uZM3Eu9kXeDzlpagmY/UOsZVSzPsilKnMesxdImORtXSF1IJBv5DE9Jo4Rngnti0cpUW
	kNaAf2l1zbv6XtX4zJQDg4fvSWohGIGVM8FDhBz4Vd62GFnkcN2DBUgSLw9MKAlPTpAbaITcu74au
	lzHZ8yIlwBPFGshV0z9TZuGafwCC3AH8io/E7ASetEjMcIxUfCI4+rr5XQuekWK7gQWYlrocXzDzZ
	rBZGv6Z29k9yVqEWquOO0oQDGbBl/zQPNIQOvQ3PnyFZr6mds3mlJe64UTGJwnSBNyqzGzuSVIn6l
	no+q1X/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VEV-001Z4y-1e;
	Mon, 27 Nov 2023 06:36:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VED-001YzO-22
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:36:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-00070Z-Fy; Mon, 27 Nov 2023 07:36:12 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-00BsgT-2i; Mon, 27 Nov 2023 07:36:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-009Fpr-00;
	Mon, 27 Nov 2023 07:36:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:35:52 +0100
Message-Id: <20231127063559.2205776-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127063559.2205776-1-a.fatoum@pengutronix.de>
References: <20231127063559.2205776-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_223622_066482_2EB5AA57 
X-CRM114-Status: GOOD (  13.61  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/8] driver: don't clear unrelated struct device_node::device on unregister
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Device nodes have a pointer to the device that was instantiated for it.
In some cases, we have both a platform device and a virtual device as
child instantiated from it with both pointing at the same device node.

So far, when unregistering the virtual device, we would clear the device
member, even if it happens to point at another device. Fix this by only
clearing it if the device it points at is the one that's actually is
being removed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/driver.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 02d8fb0b6f2a..93607fc3b09d 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -273,6 +273,7 @@ int unregister_device(struct device *old_dev)
 	struct device_alias *alias, *at;
 	struct cdev *cdev, *ct;
 	struct device *child, *dt;
+	struct device_node *np;
 
 	dev_dbg(old_dev, "unregister\n");
 
@@ -305,8 +306,10 @@ int unregister_device(struct device *old_dev)
 	/* remove device from parents child list */
 	if (old_dev->parent)
 		list_del(&old_dev->sibling);
-	if (dev_of_node(old_dev))
-		old_dev->of_node->dev = NULL;
+
+	np = dev_of_node(old_dev);
+	if (np && np->dev == old_dev)
+		np->dev = NULL;
 
 	return 0;
 }
-- 
2.39.2



