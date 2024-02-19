Delivery-date: Mon, 19 Feb 2024 09:32:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4d-00E4AJ-35
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 09:32:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4b-0003VV-8t
	for lore@pengutronix.de; Mon, 19 Feb 2024 09:32:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1NjnyT6lMThJasvu0XyDm7JSy4fkYU3sVTlboUa/pMI=; b=FEKv3y9kIgf3FhGIza0JaSkZO9
	ewNQ7LPJFwZI5HgxjVPFPZjZxBWZVtbIOr41Y/UxQNVD9/N65N/OEr1kbcrPSL4ihiNgXptYqYpx0
	kYak+m81yrIDl+f+O7Iur6xdMDmApvIKZaurO+/PluDmH1syDFntBemrMylp9Ax1yvLpwRwt3m46X
	kdXjZUeK/g0hNHvLwDdUH51M2koO8yaxBfSJCoov0xUW0dpwD3DOqA7YVs2AtpyELVce0ksKO68bK
	n8BmXQdeOJal/5JYHzPhPX36uPEeJXMgm3fOW4008Pu/Yhq1Q7CkXYdxjmHpVAFGwG7OeLh352bLd
	MlpQP8DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz41-00000009adF-0tWI;
	Mon, 19 Feb 2024 08:31:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz3v-00000009aZK-3F6o
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 08:31:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-00030K-I3; Mon, 19 Feb 2024 09:31:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-001bky-37; Mon, 19 Feb 2024 09:31:42 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3t-00CNCk-3D;
	Mon, 19 Feb 2024 09:31:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Feb 2024 09:31:33 +0100
Message-Id: <20240219083140.2713047-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219083140.2713047-1-s.hauer@pengutronix.de>
References: <20240219083140.2713047-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_003143_926799_0FDE0F3B 
X-CRM114-Status: GOOD (  10.87  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 05/12] uuid: implement random uuid/guid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/uuid.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/lib/uuid.c b/lib/uuid.c
index db75be1725..60a651e330 100644
--- a/lib/uuid.c
+++ b/lib/uuid.c
@@ -8,9 +8,39 @@
 
 #include <linux/uuid.h>
 #include <module.h>
+#include <stdlib.h>
 #include <linux/export.h>
 
 const guid_t guid_null;
 EXPORT_SYMBOL(guid_null);
 const uuid_t uuid_null;
 EXPORT_SYMBOL(uuid_null);
+
+/**
+ * generate_random_uuid - generate a random UUID
+ * @uuid: where to put the generated UUID
+ *
+ * Random UUID interface
+ *
+ * Used to create a Boot ID or a filesystem UUID/GUID, but can be
+ * useful for other kernel drivers.
+ */
+void generate_random_uuid(unsigned char uuid[16])
+{
+	get_random_bytes(uuid, 16);
+	/* Set UUID version to 4 --- truly random generation */
+	uuid[6] = (uuid[6] & 0x0F) | 0x40;
+	/* Set the UUID variant to DCE */
+	uuid[8] = (uuid[8] & 0x3F) | 0x80;
+}
+EXPORT_SYMBOL(generate_random_uuid);
+
+void generate_random_guid(unsigned char guid[16])
+{
+	get_random_bytes(guid, 16);
+	/* Set GUID version to 4 --- truly random generation */
+	guid[7] = (guid[7] & 0x0F) | 0x40;
+	/* Set the GUID variant to DCE */
+	guid[8] = (guid[8] & 0x3F) | 0x80;
+}
+EXPORT_SYMBOL(generate_random_guid);
-- 
2.39.2



