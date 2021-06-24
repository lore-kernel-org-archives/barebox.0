Delivery-date: Thu, 24 Jun 2021 10:56:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL9v-0007LP-Fd
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 10:56:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL9s-0002c7-Kn
	for lore@pengutronix.de; Thu, 24 Jun 2021 10:56:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pUFjks0cGMpVF+5I8jqwgdE9a8jDu8XaojN41Qz8UG0=; b=rWnUlim14JXk6z
	bC3I1kTJHTh5iTjwqtkRSaX4wGjsqxAu4CEZtt4yzZfrNe4VKgFGC0Po8i3LSU6hzI7JZjz5G/Rcc
	qB5cF4gKKpAspGCtYFGTKQIBSRl5KbSGul3wp7BjvsYAr13PIRgjiOI4gEn/ROYOyWW+p3ZEeQA3J
	s41seRIBWpZtKkZwf3g6HkEo3+TZn094ZCkjKVtHmy8UA1sddyu8X8jkGjhtT+W7ZUrEYyMkqL3BK
	5CCdi4S4IB1SOrwk2lwSLLlzhJzlmzcg1/STczE1lDT1cWV/ZwEkbESb32IeyK0HU5UDCgE4NyVFZ
	GdE/89UtW6ihTyR4ld4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwL8K-00DYad-Ee; Thu, 24 Jun 2021 08:54:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwL6I-00DXPg-Q4
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 08:52:44 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL61-0000sN-FE; Thu, 24 Jun 2021 10:52:25 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL60-0000bZ-AS; Thu, 24 Jun 2021 10:52:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 24 Jun 2021 10:52:14 +0200
Message-Id: <20210624085223.14616-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210624085223.14616-1-s.hauer@pengutronix.de>
References: <20210624085223.14616-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_015242_912381_26A23EC1 
X-CRM114-Status: GOOD (  15.10  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/18] firmware: recognize by reproducible name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

firmwaremgr_find_by_node() matches the device node pointers to find the
firmware manager associated to a node. This function is called by the
of_overlay code when it finds a firmware-name property to find a firmware
manager for this node. This works when the overlay is applied to the
live tree, but not when it's applied to the tree we are going to load
the kernel with. To overcome this limitation match by the nodes
reproducible name instead of pointers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/firmware.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/common/firmware.c b/common/firmware.c
index bb76a16050..b33acff77f 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -68,10 +68,22 @@ struct firmware_mgr *firmwaremgr_find(const char *id)
 struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np)
 {
 	struct firmware_mgr *mgr;
+	char *na, *nb;
 
-	list_for_each_entry(mgr, &firmwaremgr_list, list)
-		if (mgr->handler->device_node == np)
+	na = of_get_reproducible_name(np);
+
+	list_for_each_entry(mgr, &firmwaremgr_list, list) {
+		nb = of_get_reproducible_name(mgr->handler->device_node);
+		if (!strcmp(na, nb)) {
+			free(na);
+			free(nb);
 			return mgr;
+		}
+
+		free(nb);
+	}
+
+	free(na);
 
 	return NULL;
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

