Delivery-date: Mon, 05 Sep 2022 19:44:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVG9L-007l83-Sn
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 19:44:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVG9L-0003WQ-3z
	for lore@pengutronix.de; Mon, 05 Sep 2022 19:44:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WPbh7PKpNkkWLeTdmRpbIS5tFzQCFIfv4DGL6G8ybBA=; b=Uqtf5B5OeSsoiCdy04Zxl2MgIn
	TAaeq8Pl2DOXUPRdJg3UvBUoiZkcmSAMK4R1Fhgwr4ijv1ZjY3rwbq8scWFH98+M3g+m+g4xE2WIi
	/0M9r0T1MB1Cnm54r44C98CbHpv7VAaiQGKFaEdVdP3GHlY+QCu0QwGVai3DKCXG2BC10O8dl0jcr
	wsJfCG4iWaZ2GP9/Ivl/DZfwrgCT/dSnF9hb+BAIDO5ITVUtQ+xdz+qZuqngZpeyfRla2MW/mFGFp
	h7QL9Fol35aI367En59cnapR11sEUwRd7oIcKtqALPJAedkXBBmVMWznYg9S07ta4Fu8q7bXFniti
	ZkTm7L9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVG7m-007kiB-JI; Mon, 05 Sep 2022 17:43:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9SJ-000QQ7-Ok
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 10:36:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9SH-0005iY-Hj; Mon, 05 Sep 2022 12:35:49 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9SE-0042jT-Tf; Mon, 05 Sep 2022 12:35:48 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9SF-007LCG-PT; Mon, 05 Sep 2022 12:35:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 12:35:44 +0200
Message-Id: <20220905103546.1476277-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905103546.1476277-1-a.fatoum@pengutronix.de>
References: <20220905103546.1476277-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_033556_038765_8CFE49D2 
X-CRM114-Status: GOOD (  13.11  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/5] driver: implement find_device() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For use in commands like done in the follow-up commits, it can be useful
to have a best effort find_device, that not only finds by device name,
but also by device tree path or alias. Add such a helper.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/driver.c | 16 ++++++++++++++++
 include/driver.h      |  5 +++++
 2 files changed, 21 insertions(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 072870bea444..cbe1c974f4fe 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -46,6 +46,22 @@ LIST_HEAD(active_device_list);
 EXPORT_SYMBOL(active_device_list);
 static LIST_HEAD(deferred);
 
+struct device_d *find_device(const char *str)
+{
+	struct device_d *dev;
+	struct device_node *np;
+
+	dev = get_device_by_name(str);
+	if (dev)
+		return dev;
+
+	np = of_find_node_by_path_or_alias(NULL, str);
+	if (np)
+		return of_find_device_by_node(np);
+
+	return NULL;
+}
+
 struct device_d *get_device_by_name(const char *name)
 {
 	struct device_d *dev;
diff --git a/include/driver.h b/include/driver.h
index 67ffbba6be80..543287a27638 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -169,6 +169,11 @@ struct device_d *get_device_by_type(ulong type, struct device_d *last);
 struct device_d *get_device_by_id(const char *id);
 struct device_d *get_device_by_name(const char *name);
 
+/* Find a device by name and if not found look up by device tree path
+ * or alias
+ */
+struct device_d *find_device(const char *str);
+
 /* Find a free device id from the given template. This is archieved by
  * appending a number to the template. Dynamically created devices should
  * use this function rather than filling the id field themselves.
-- 
2.30.2



