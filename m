Delivery-date: Fri, 13 Mar 2026 14:34:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12f9-000DSY-2l
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:47 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eo-0000eu-8E
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YID+PoGLcdk6MAMLbsNVa7LeR7Fu1z7vDe3kljb9Mvk=; b=fGqCJZWc7tVjAS1mUyxSmd+qL7
	PiqmSnszt63OzkfQ4NsWRbB/wGPZBIYmwSIFbIcOi8KE2i84WZJo+WvnBUYKvzCL0zjKSWxg3parW
	Kltsh7HLXN8abrOAuFTzQ65Vn9U5WEPS5Xky3mOrCPMOcZxmDJUvT2XQmPMZX6UIncBoukZQJDfF7
	dhH2Ys/Z3tb0XAWX2MqLUPyWjHTr0Y3D5MPVobYeVYJ7GN69RAbwCrzKkElb4RxTVv7YQmz9BzFnj
	9kc71yUZxEblPWA9VTOD6isa0UCCuAJMVkIoO8txKIxWn1KNmf/c5MbWDNR7PF9kBCVV95nx2v027
	n1kUXXhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dS-00000000G2a-0AIp;
	Fri, 13 Mar 2026 13:33:02 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d9-00000000FYO-2bdh
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YID+PoGLcdk6MAMLbsNVa7LeR7Fu1z7vDe3kljb9Mvk=; b=LJEDrpqTeYQYaOmATy3dk2UH91
	h6nWqDHRniKFuQ8Ei+6pu8zpE3DCCY6Cp9TaWCv6jho2J/sCDnAHDZYQpyZ3+9Ch5eaf+3HM+BmVb
	qArpY9sdJ/ziR9xq+djdIwOG6ZOqNkWzwuaSgHXW4PsLfJzQHD6Y4Wk7YKolOnCMNjgOo0l8CmFWs
	B8+yo3hMbBUXTC2CEOg3kocDDljx1yp8TSKCLHnu8NkZPpHveQbNjg3wptIlBhwuhCpEMqLm+Axdt
	bJUXEheXT4Ec9I7ZPQ1X8wiPwZZw78x0519kkK/Jr2zwhmsyXvUmhabxz9l+DjPgd6opHOlrzAWgS
	HyH0e83g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d2-0000000D9wB-2Arv
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0006sF-Oy; Fri, 13 Mar 2026 14:32:33 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0005Tz-1s;
	Fri, 13 Mar 2026 14:32:33 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00000009ULB-371A;
	Fri, 13 Mar 2026 14:26:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Mar 2026 14:24:55 +0100
Message-ID: <20260313132631.2257573-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133236_598171_673398AA 
X-CRM114-Status: GOOD (  10.24  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 11/58] driver: implement get_free_deviceid_from()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

get_free_deviceid() starts looking for a free device ID starting from
zero. Add get_free_deviceid_from() which takes a start ID to look from
which is useful when some lower device IDs shall be reserved, for
example by device tree aliases.

(cherry picked from commit 0850fd8e22fa5d270000dc5267416884e9fb9770)

Link: https://lore.barebox.org/20251208-nvmem-eeprom-v1-1-41ba588e2f3a@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 10 ++++------
 include/driver.h      |  7 ++++++-
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 61118385f1df..f15b252ea318 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -95,14 +95,12 @@ static struct device *get_device_by_name_id(const char *name, int id)
 	return NULL;
 }
 
-int get_free_deviceid(const char *name_template)
+int get_free_deviceid_from(const char *name_template, int id_from)
 {
-	int i = 0;
-
 	while (1) {
-		if (!get_device_by_name_id(name_template, i))
-			return i;
-		i++;
+		if (!get_device_by_name_id(name_template, id_from))
+			return id_from;
+		id_from++;
 	};
 }
 
diff --git a/include/driver.h b/include/driver.h
index 143ca18e4e39..6c7751bbb419 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -124,7 +124,12 @@ struct device *find_device(const char *str);
  * appending a number to the template. Dynamically created devices should
  * use this function rather than filling the id field themselves.
  */
-int get_free_deviceid(const char *name_template);
+int get_free_deviceid_from(const char *name_template, int id_from);
+
+static inline int get_free_deviceid(const char *name_template)
+{
+	return get_free_deviceid_from(name_template, 0);
+}
 
 int dev_add_alias(struct device *dev, const char *fmt, ...) __printf(2, 3);
 
-- 
2.47.3



