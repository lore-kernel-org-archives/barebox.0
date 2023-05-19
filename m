Delivery-date: Fri, 19 May 2023 09:21:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzuQ9-006Q4o-AR
	for lore@lore.pengutronix.de; Fri, 19 May 2023 09:21:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzuQ7-00007C-0h
	for lore@pengutronix.de; Fri, 19 May 2023 09:20:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KvG9x23llNrSoLv6BG9FeVPBdxGcKk7wfZq9cQ8blMM=; b=scXcwrmaOoml0u6GGpI9PZqwAq
	7HxdFbYtFppIYwVpv5m3y1S2EaAkoDu7LHQ9SMSwjXbXxCsQU4i971isnjFlUjzEarm0XNQz/8QtV
	QK8MAZBYLlLchIwZXvYwanN5Pz9z4QybUPP3MHuZO4shcnchOHqazeqOYit7HJx5ax2jblDy+tFRn
	jFlz/MpwZK6ENykUzquf9zQOIsE7Uy4EGBuSYcFvomOD42BZVK4YGGW54wVr4lOfF8ADBdswlcJG1
	hbFHcM2FHlHlQlgmfHafaUgp6FcsWJIfyPZ9Wmo/NBWLt0Q3Trb5Ux+z+knhREknTyY1tdkUtUaCw
	E+LtyCdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzuOx-00FM5S-0a;
	Fri, 19 May 2023 07:19:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzuOu-00FM48-0F
	for barebox@lists.infradead.org;
	Fri, 19 May 2023 07:19:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pzuOr-0008AD-BR; Fri, 19 May 2023 09:19:41 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pzuOq-001GEm-Mg; Fri, 19 May 2023 09:19:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pzuOp-009fUi-Tc; Fri, 19 May 2023 09:19:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 May 2023 09:19:39 +0200
Message-Id: <20230519071939.2304443-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_001944_131103_A5D9BC92 
X-CRM114-Status: GOOD (  11.21  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! of: add function to read a file as unflattened device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of: tidy up of_read_file a bit

 - change a single instance of space indentation to tabs
 - use %m instead of unwieldy strerror(errno)
 - add documentation

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 918d5e0c5348..5da188115547 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2893,6 +2893,12 @@ int of_device_disable_by_alias(const char *alias)
 	return of_device_disable(node);
 }
 
+/**
+ * of_read_file - unflatten oftree file
+ * @filename - path to file to unflatten its contents
+ *
+ * Returns the root node of the tree or an error pointer on error.
+ */
 struct device_node *of_read_file(const char *filename)
 {
 	void *fdt;
@@ -2901,8 +2907,7 @@ struct device_node *of_read_file(const char *filename)
 
 	fdt = read_file(filename, &size);
 	if (!fdt) {
-		pr_err("unable to read %s: %s\n", filename,
-			strerror(errno));
+		pr_err("unable to read %s: %m\n", filename);
 		return ERR_PTR(-errno);
 	}
 
@@ -2916,7 +2921,7 @@ struct device_node *of_read_file(const char *filename)
 out:
 	free(fdt);
 
-       return root;
+	return root;
 }
 
 /**
-- 
2.39.2



