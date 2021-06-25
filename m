Delivery-date: Fri, 25 Jun 2021 09:43:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgVC-0007mT-O3
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 09:43:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgVB-0004wK-7K
	for lore@pengutronix.de; Fri, 25 Jun 2021 09:43:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pSTJI4nF7iHeVtzayCGEGcKcGRF9DV+PBMxJXTFQBMc=; b=hDyUxLnFCyoqOZ
	i6wl+KbLcD9+qIYUP3xVZkdLhjL37LmIvcQlC2MqYNFAbVMzUnEPzEmciB1MyWCfjNbqM77bNrCU/
	nxDDU8O4yx3ZWA3uZ1LF6lUWz1J94ooRN5/NW+KUx8xP7vLbjiZtB5YqnI871RUSwF3aobbF2PTg0
	5bUJo2OShjWTRa5UZym5+nXMvqtiq/RnfeRFFrJLyQ9yrzIdL4hj0+K5a/Gp954+t3us27VLD/Stz
	cOO5Bfnoo+mPJFnLa8+FslPKIy7ejrGEdt/UveT8RIQURAMHdKeZ7EjfH5dnX8PfCy6bypo2V7GWx
	4+O0RHcS7c5cVDq6uElw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwgTm-0004VF-B6; Fri, 25 Jun 2021 07:42:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgDg-00HZ1c-4O
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 07:25:45 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDe-0002Qc-Cu; Fri, 25 Jun 2021 09:25:42 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDd-0000dE-CU; Fri, 25 Jun 2021 09:25:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 25 Jun 2021 09:25:28 +0200
Message-Id: <20210625072540.32717-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210625072540.32717-1-s.hauer@pengutronix.de>
References: <20210625072540.32717-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_002544_309569_CE517701 
X-CRM114-Status: GOOD (  13.08  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/19] of: implement of_get_stdoutpath()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For deep probe support it will be useful to have a function to
get the node corresponding to the stdoutpath. of_device_is_stdout_path()
already has that functionality in it, so make a separate funcion from
it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 15 ++++++++++-----
 include/of.h      |  6 ++++++
 2 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 83c9d5fb6b..b40bffe922 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2453,16 +2453,13 @@ void of_delete_node(struct device_node *node)
 		of_set_root_node(NULL);
 }
 
-int of_device_is_stdout_path(struct device_d *dev)
+struct device_node *of_get_stdoutpath(void)
 {
 	struct device_node *dn;
 	const char *name;
 	const char *p;
 	char *q;
 
-	if (!dev->device_node)
-		return 0;
-
 	name = of_get_property(of_chosen, "stdout-path", NULL);
 	if (!name)
 		name = of_get_property(of_chosen, "linux,stdout-path", NULL);
@@ -2481,7 +2478,15 @@ int of_device_is_stdout_path(struct device_d *dev)
 
 	free(q);
 
-	return dn == dev->device_node;
+	return dn;
+}
+
+int of_device_is_stdout_path(struct device_d *dev)
+{
+	if (!dev->device_node)
+		return 0;
+
+	return dev->device_node == of_get_stdoutpath();
 }
 
 /**
diff --git a/include/of.h b/include/of.h
index 84d6e9b682..3bce92e848 100644
--- a/include/of.h
+++ b/include/of.h
@@ -281,6 +281,7 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node);
 int of_parse_partitions(struct cdev *cdev, struct device_node *node);
 int of_fixup_partitions(struct device_node *np, struct cdev *cdev);
 int of_partitions_register_fixup(struct cdev *cdev);
+struct device_node *of_get_stdoutpath(void);
 int of_device_is_stdout_path(struct device_d *dev);
 const char *of_get_model(void);
 void *of_flatten_dtb(struct device_node *node);
@@ -318,6 +319,11 @@ static inline int of_partitions_register_fixup(struct cdev *cdev)
 	return -ENOSYS;
 }
 
+static inline struct device_node *of_get_stdoutpath(void)
+{
+	return NULL;
+}
+
 static inline int of_device_is_stdout_path(struct device_d *dev)
 {
 	return 0;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

