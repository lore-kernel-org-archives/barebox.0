Delivery-date: Tue, 01 Apr 2025 13:09:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZUK-006y0J-0I
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 13:09:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZUJ-0004Qd-Ff
	for lore@pengutronix.de; Tue, 01 Apr 2025 13:09:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2gyATXdkedFHaT8ph8SGaLhEFsrNBjGQ4xaVsVWKOqg=; b=n5w0H+WOs/bSoGhv4H4p0OM8xu
	FeNtY9QjPwKIgrBPkuFfI2b2DTZgZmPeKBWfXknvw09u8GXRV1oKAQXA6GTg07EpeFOOPjCTqIdqs
	guhOswJiw2RHRl6g2SmCM4C6JelLyqOq8zf666Jcth/0SiGfi0p9aDnuQG00DPGvfjEs7onhU+Myl
	doCgaq5FpztS7j/SKDKeb2G3xiYsaHKm3LAEBiB56oOsDgUIyYiF40zWrVIP5hFpXuDcV0cRZyOcQ
	gwm3mR0AXOZKS2JxieexTc9JlsPfuMJUq+hNiSeNq5FpKYDsxTYHQVihDobbucFz3In/1Xohbkt9s
	lpU1fW4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZTv-00000002jwD-2fhQ;
	Tue, 01 Apr 2025 11:08:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZQA-00000002igK-1AL9
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 11:04:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZQ9-0002Xz-2g; Tue, 01 Apr 2025 13:04:41 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZQ8-002kdQ-2k;
	Tue, 01 Apr 2025 13:04:40 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-00GcAa-2Q;
	Tue, 01 Apr 2025 12:48:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Apr 2025 12:48:03 +0200
Message-Id: <20250401104806.3959859-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
References: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_040442_344690_2FCC146B 
X-CRM114-Status: GOOD (  10.79  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 13/16] bootsource: implement bootsource_of_cdev_find
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use on device tree systems that especially boot from SD/eMMC,
introduce a new helper function that returns the cdev of the boot medium.

Calling this function for unknown boot media will return NULL and
callers will have to handle that gracefully.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootsource.c  | 17 +++++++++++++++++
 include/bootsource.h |  1 +
 2 files changed, 18 insertions(+)

diff --git a/common/bootsource.c b/common/bootsource.c
index d054427c6e78..e78237ff36b8 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -5,6 +5,7 @@
  */
 
 #include <common.h>
+#include <of.h>
 #include <bootsource.h>
 #include <environment.h>
 #include <magicvar.h>
@@ -123,6 +124,22 @@ struct device_node *bootsource_of_node_get(struct device_node *root)
 	return np;
 }
 
+struct cdev *bootsource_of_cdev_find(void)
+{
+	struct device_node *np;
+	struct cdev *cdev;
+
+	np = bootsource_of_node_get(NULL);
+	if (!np)
+		return NULL;
+
+	cdev = of_cdev_find(np);
+	if (IS_ERR(cdev))
+		return NULL;
+
+	return cdev;
+}
+
 void bootsource_set_alias_name(const char *name)
 {
 	bootsource_alias_name = name;
diff --git a/include/bootsource.h b/include/bootsource.h
index 9fb77a0bb0a9..c9c58daf096c 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -34,6 +34,7 @@ const char *bootsource_to_string(enum bootsource src);
 const char *bootsource_get_alias_stem(enum bootsource bs);
 int bootsource_of_alias_xlate(enum bootsource bs, int instance);
 struct device_node *bootsource_of_node_get(struct device_node *root);
+struct cdev *bootsource_of_cdev_find(void);
 
 /**
  * bootsource_set - set bootsource with optional DT mapping table
-- 
2.39.5



