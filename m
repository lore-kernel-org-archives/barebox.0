Delivery-date: Wed, 31 May 2023 17:01:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NK3-004O7F-6l
	for lore@lore.pengutronix.de; Wed, 31 May 2023 17:01:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NJy-0000wS-5j
	for lore@pengutronix.de; Wed, 31 May 2023 17:01:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Csh2jJAsOrRJjWN2t02SizGOMVm/Xls7ss0aOctwdI8=; b=I1Tuch3DZ3ug8ajo4462A4gSjJ
	E89JV5hX3flCvxVGWVNEJM6aTJB9/Nl+JOLaoJ0y4QrnCRBDn+XRIjjoR61AF+uggJwM06N9ackZF
	7vDHOwVzJshdZ3Ngv2IpXQSihixXnIL5v/v91D8p/Ly9k3hApLZzl2udxqYJgnyugtL/GLSQlFvMk
	0mtWn5jYNo/HOxWnV2CiWIxrQJLfGa4mCbB/DHHQVw+zORUtvvREXUO+F18LZWLPu/H3ipsWyBC6B
	3hJsj4Pgy0o1wz6hGE1D+1WK3uLN8AOkttRNg4VTVpBFAxyyYkk4uCTvuCo4GCUFOyHj0kgVE7m81
	CWtTuMIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIe-000Bw5-2f;
	Wed, 31 May 2023 14:59:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NId-000BvU-1D
	for barebox@bombadil.infradead.org;
	Wed, 31 May 2023 14:59:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Csh2jJAsOrRJjWN2t02SizGOMVm/Xls7ss0aOctwdI8=; b=HQ0n4YTo380tyL7mCCBun/mFYa
	G6dKfCFrUJeNdj1J5tZUk6YRxWCxfRsiouGEovsY2Q84hfnR4fixivOeU+9N1iwAJTyz3PD2UCk8N
	Ha/87IUC+yjLh2iYy1xqIaCRsGscVfLi5ANuKYyG4OdChdjgsnU+sF7TKpW86sOEdu0j1pqeplIml
	LOfCk/LH617qJMMGm5i8u6GTqv9RvIiEUDWekHchUGDfDM/nmOhss1n1G9UyURbcWIyiTdtD9afUs
	cddUphd2eGMOH8Olc5Rnbl1JK3P6e9r0s2gzfYo5sdReFm7G2WOlZJrB99p2HK7E7E2XAmhQYaPH9
	IYaEk+UA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIZ-00FUiN-0W
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 14:59:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIV-0008HE-Jc; Wed, 31 May 2023 16:59:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIU-0048IH-UM; Wed, 31 May 2023 16:59:34 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIQ-005sDK-9X; Wed, 31 May 2023 16:59:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 May 2023 16:59:23 +0200
Message-Id: <20230531145927.1399282-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_155939_340277_95AB5FEB 
X-CRM114-Status: GOOD (  17.26  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 14/18] of: export new of_cdev_find helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

__of_find_path goes throught the hassle of determining the cdev, only to
discard it again and return either zero or an error code.

Follow up commits will need to get the cdev corresponding to a path in
the DT. So let's make that easier by exporting a suitable helper function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/of_path.c | 59 ++++++++++++++++++++++++++++++--------------
 include/of.h         |  1 +
 2 files changed, 41 insertions(+), 19 deletions(-)

diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 059690e9b8e8..4d9f7b6005af 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -27,21 +27,17 @@ struct device *of_find_device_by_node_path(const char *path)
 }
 
 /**
- * __of_find_path
+ * __of_cdev_find
  *
  * @node: The node to find the cdev for, can be the device or a
  *        partition in the device
  * @part: Optionally, a description of a partition of @node.  See of_find_path
- * @outpath: if this function returns 0 outpath will contain the path belonging
- *           to the input path description. Must be freed with free().
- * @flags: use OF_FIND_PATH_FLAGS_BB to return the .bb device if available
  *
  */
-static int __of_find_path(struct device_node *node, const char *part, char **outpath, unsigned flags)
+static struct cdev *__of_cdev_find(struct device_node *node, const char *part)
 {
 	struct device *dev;
 	struct cdev *cdev;
-	bool add_bb = false;
 
 	of_partition_ensure_probed(node);
 
@@ -56,24 +52,17 @@ static int __of_find_path(struct device_node *node, const char *part, char **out
 
 			/* when partuuid is specified short-circuit the search for the cdev */
 			ret = of_property_read_string(node, "partuuid", &uuid);
-			if (!ret) {
-				cdev = cdev_by_partuuid(uuid);
-				if (!cdev)
-					return -ENODEV;
-
-				*outpath = basprintf("/dev/%s", cdev->name);
-
-				return 0;
-			}
+			if (!ret)
+				return cdev_by_partuuid(uuid) ?: ERR_PTR(-ENODEV);
 		}
 
 		dev = of_find_device_by_node_path(devnode->full_name);
 		if (!dev)
-			return -ENODEV;
+			return ERR_PTR(-ENODEV);
 	}
 
 	if (dev->bus && !dev->driver)
-		return -EPROBE_DEFER;
+		return ERR_PTR(-EPROBE_DEFER);
 
 	device_detect(dev);
 
@@ -82,8 +71,40 @@ static int __of_find_path(struct device_node *node, const char *part, char **out
 	else
 		cdev = cdev_by_device_node(node);
 
-	if (!cdev)
-		return -ENOENT;
+	return cdev ?: ERR_PTR(-ENOENT);
+}
+
+/**
+ * of_cdev_find
+ *
+ * @node: The node to find the cdev for, can be the device or a
+ *        partition in the device
+ *
+ */
+struct cdev *of_cdev_find(struct device_node *node)
+{
+	return __of_cdev_find(node, NULL);
+}
+
+/**
+ * __of_find_path
+ *
+ * @node: The node to find the cdev for, can be the device or a
+ *        partition in the device
+ * @part: Optionally, a description of a partition of @node.  See of_find_path
+ * @outpath: if this function returns 0 outpath will contain the path belonging
+ *           to the input path description. Must be freed with free().
+ * @flags: use OF_FIND_PATH_FLAGS_BB to return the .bb device if available
+ *
+ */
+static int __of_find_path(struct device_node *node, const char *part, char **outpath, unsigned flags)
+{
+	bool add_bb = false;
+	struct cdev *cdev;
+
+	cdev = __of_cdev_find(node, part);
+	if (IS_ERR(cdev))
+		return PTR_ERR(cdev);
 
 	if ((flags & OF_FIND_PATH_FLAGS_BB) && cdev->mtd &&
 	    mtd_can_have_bb(cdev->mtd))
diff --git a/include/of.h b/include/of.h
index c716f9283316..2b75ce63e185 100644
--- a/include/of.h
+++ b/include/of.h
@@ -331,6 +331,7 @@ int of_add_memory_bank(struct device_node *node, bool dump, int r,
 struct device *of_find_device_by_node_path(const char *path);
 #define OF_FIND_PATH_FLAGS_BB 1		/* return .bb device if available */
 int of_find_path(struct device_node *node, const char *propname, char **outpath, unsigned flags);
+struct cdev *of_cdev_find(struct device_node *node);
 int of_find_path_by_node(struct device_node *node, char **outpath, unsigned flags);
 struct device_node *of_find_node_by_devpath(struct device_node *root, const char *path);
 int of_register_fixup(int (*fixup)(struct device_node *, void *), void *context);
-- 
2.39.2



