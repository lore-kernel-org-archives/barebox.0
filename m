Delivery-date: Fri, 04 Feb 2022 15:04:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFzCQ-005Zkd-I8
	for lore@lore.pengutronix.de; Fri, 04 Feb 2022 15:04:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFzCP-0007EU-9c
	for lore@pengutronix.de; Fri, 04 Feb 2022 15:04:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bkriY6he/UxOLvFrPDayPIdvbkKN58xx21NDJBkJKSg=; b=ic/kSVBamy+cR8
	OHBbuXZlG0+oOGXSvKiRgMlcoPlJwGT3/XRQFKwbQjyaW9SM3buatzBrcUpLc47Afwofx4cofCclV
	cMh64FvEKY7LKOk+u5GlObuqxnslpuYml9Ny/2dc8TR7KutaMFIElJcpLEcEwevmNn9xJbxdJJmNu
	VOxRgh8m09Ew9tFX7+UuEUE9pkGXR6wagiBdguw90JhjaxMo7J703TEUHhuQTl78mrd8E9srw+pTc
	P8A1WkIfimNe2eOlz56oTR9qvDYNaDWSyuCzxtCbcqI6kqnubI5+am4ZepteTcay8OYgbcVRyPilY
	IOoladqnYewzGY9kf4Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFzAh-004Umb-MQ; Fri, 04 Feb 2022 14:02:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFzAc-004UlW-MT
 for barebox@lists.infradead.org; Fri, 04 Feb 2022 14:02:40 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nFzAY-000704-FO; Fri, 04 Feb 2022 15:02:34 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nFzAY-00AL4V-0h; Fri, 04 Feb 2022 15:02:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  4 Feb 2022 15:02:33 +0100
Message-Id: <20220204140233.2464234-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220204_060238_748399_5FD0BC29 
X-CRM114-Status: GOOD (  11.83  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] of_path: Fix typo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

parition -> partition

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

parition#	arch/arm/boards/globalscale-mirabox/binary.0
---
 drivers/of/of_path.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 40154bf5e9..05c28bf052 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -31,7 +31,7 @@ struct device_d *of_find_device_by_node_path(const char *path)
  *
  * @node: The node to find the cdev for, can be the device or a
  *        partition in the device
- * @part: Optionally, a description of a parition of @node.  See of_find_path
+ * @part: Optionally, a description of a partition of @node.  See of_find_path
  * @outpath: if this function returns 0 outpath will contain the path belonging
  *           to the input path description. Must be freed with free().
  * @flags: use OF_FIND_PATH_FLAGS_BB to return the .bb device if available
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

