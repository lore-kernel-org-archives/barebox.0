Delivery-date: Tue, 26 Nov 2024 16:34:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxaI-000fmN-31
	for lore@lore.pengutronix.de;
	Tue, 26 Nov 2024 16:34:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxaI-0001ey-0Y
	for lore@pengutronix.de; Tue, 26 Nov 2024 16:34:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wmskon934g0whl3b61rH+nF+tf66g7EzvXHSSLStd1k=; b=wxS35KP7EBNuSRL0QYh79EqReY
	rm9Z8vse6l5sDv1opyfCCB4dPOpmAy+X1/kARIhbW/cDALGe9fcVRBXFp0yVgjTeDzCT32+kTWsy2
	b2cUq3GI7px/rOmABlvfcAgA/HpDy/5V0W6+f7PZIaxLdyH3sVT/ubHSCEOR9PriVoWcSmGr71O01
	LmcoX3u8Hzjelf3CZ0iGLZbvknRha/q7V8Y2KnueWL+QhNrO7HSMfjfNurs2bgrtRI+NA/jopgo1W
	UMaCHeDg/s4PixCgJiYwO58zbTAXgdeCozhdG3COksL6q3+30H01N703Y2z/P5/dS2AFdC9/am7oA
	OtCRuV3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxZo-0000000B10k-0pz0;
	Tue, 26 Nov 2024 15:34:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxYx-0000000B0pB-0zud
	for barebox@lists.infradead.org;
	Tue, 26 Nov 2024 15:33:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxYv-0000vr-Qw; Tue, 26 Nov 2024 16:33:13 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxYu-000Gu3-2l;
	Tue, 26 Nov 2024 16:33:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxYu-00Fme2-2z;
	Tue, 26 Nov 2024 16:33:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Nov 2024 16:33:08 +0100
Message-Id: <20241126153312.3758355-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241126153312.3758355-1-a.fatoum@pengutronix.de>
References: <20241126153312.3758355-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_073315_274654_6B0F9EB9 
X-CRM114-Status: GOOD (  12.31  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] of: partition: don't parse nvmem-cells in legacy OF binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There are not many upstream instances of nvmem-cells, but all
of them place nvmem-cells inside a partitions container and the
nvmem-cells binding was added way later than the fixed-partitions
binding.

Therefore, let's simplify the code by supporting nvmem-cells only
inside a fixed-partitions container.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/partition.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index df66751fe94d..70297da9d231 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -117,8 +117,6 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
  *      Unfortunately, there is no completely reliable way
  *      to differentiate partitions from devices prior to
  *      probing, because partitions may also have compatibles.
- *      We only handle nvmem-cells, so anything besides that
- *      is assumed to be a device that should be probed directly.
  *
  * Returns zero on success or a negative error code otherwise
  */
@@ -146,8 +144,7 @@ int of_partition_ensure_probed(struct device_node *np)
 	 }
 
 	/* Check if legacy partitions binding */
-	if (!of_property_present(np, "compatible") ||
-	    of_device_is_compatible(np, "nvmem-cells"))
+	if (!of_property_present(np, "compatible"))
 		return of_device_ensure_probed(parent);
 
 	/* Doesn't look like a partition, so let's probe directly */
-- 
2.39.5



