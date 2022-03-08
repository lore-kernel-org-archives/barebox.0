Delivery-date: Tue, 08 Mar 2022 12:52:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYOQ-004bt5-NX
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 12:52:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYOP-00074H-21
	for lore@pengutronix.de; Tue, 08 Mar 2022 12:52:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZ/CrNWJmzqPMa5NB1yhqWXJXBBQYOa1TdRN7v0KHp8=; b=xOKN9WtZDCCUkU
	nJ6rZYF9w+uBTx/0ybVXlaLjN9te7nrmHdJlN+GydnOmGqCpcpzlvnI+ZVcxb6nDyKXdeWt2vStG1
	GtlTJVapJjLaQu4+GhnXe6nxmZ5nxfhhhrczpTnwqcbcHOMJtOtrrtfQ/+9Ni/eO3evzZ9tTlK0uc
	3HD9JeHfI1EYkJuqdFDcZxXgotbwLrbrgr7w+9CnRDH/ltgCeFVLieQmVC7iH5EhwdhuL1zrO2nWq
	zopzb8lPhz3VfqgfDjG5L+Jo5YBrRvQrF4pqsJs9gpuc/nvZPU7391h+6S+kPf0wMHewPX1NjIJox
	fiS9FXYRo38zI4O5G4JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRYN4-004DU2-Ve; Tue, 08 Mar 2022 11:51:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRYMs-004DQ2-3Q
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 11:51:08 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYMq-0006is-Rs; Tue, 08 Mar 2022 12:51:04 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYMq-00Fdca-5d; Tue, 08 Mar 2022 12:51:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Mar 2022 12:51:03 +0100
Message-Id: <20220308115103.3664883-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220308115103.3664883-1-s.hauer@pengutronix.de>
References: <20220308115103.3664883-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_035106_174667_25F35B1B 
X-CRM114-Status: GOOD (  13.13  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/5] of: platform: Ensure timers are probed early
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Timers are a very crucial resource and are needed early. Without them
no delay function can work properly. With deep probe enabled they may
be initialized very late in the initialization order. Make sure they
are probed early. We do not know which device node provides the timer,
so probe all nodes named "timer".

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/platform.c | 26 ++++++++++++++++++++++++++
 include/of.h          |  1 +
 2 files changed, 27 insertions(+)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 4e96350ae2..e4e0b5dc40 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -529,6 +529,24 @@ int of_devices_ensure_probed_by_property(const char *property_name)
 }
 EXPORT_SYMBOL_GPL(of_devices_ensure_probed_by_property);
 
+int of_devices_ensure_probed_by_name(const char *name)
+{
+	struct device_node *node;
+	int err, ret = 0;
+
+	if (!deep_probe_is_supported())
+		return 0;
+
+	for_each_node_by_name(node, name) {
+		ret = of_device_ensure_probed(node);
+		if (err)
+			ret = err;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_devices_ensure_probed_by_name);
+
 static int of_stdoutpath_init(void)
 {
 	struct device_node *np;
@@ -545,3 +563,11 @@ static int of_stdoutpath_init(void)
 	return of_device_ensure_probed(np);
 }
 postconsole_initcall(of_stdoutpath_init);
+
+static int of_timer_init(void)
+{
+	of_devices_ensure_probed_by_name("timer");
+
+	return 0;
+}
+postcore_initcall(of_timer_init);
diff --git a/include/of.h b/include/of.h
index 9089409f9f..cf9950e9b3 100644
--- a/include/of.h
+++ b/include/of.h
@@ -287,6 +287,7 @@ extern struct device_d *of_device_enable_and_register_by_alias(
 extern int of_device_ensure_probed(struct device_node *np);
 extern int of_device_ensure_probed_by_alias(const char *alias);
 extern int of_devices_ensure_probed_by_property(const char *property_name);
+extern int of_devices_ensure_probed_by_name(const char *name);
 extern int of_devices_ensure_probed_by_dev_id(const struct of_device_id *ids);
 extern int of_partition_ensure_probed(struct device_node *np);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

