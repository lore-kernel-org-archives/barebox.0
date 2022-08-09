Delivery-date: Tue, 09 Aug 2022 07:59:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLIGz-00Gy1g-Vz
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 07:59:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLIH0-0002yU-Mk
	for lore@pengutronix.de; Tue, 09 Aug 2022 07:59:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KYFFBaX/L2XTgUllFZ/Ms2d6jSas67uzrult8TQEb8o=; b=aKGJd+DlkMhz/YLCL4Tsmf2455
	6bMGDIuDWNm7Jegv/y1nQgKN9nR3bKW4QUQyAO9h68S1nrKobe83gdZvBQ3JJgTIx7sHSREb88Dxk
	i3f/Z6Owetgl6bNplangmhVZMKfM7ZrF5F/hnDjVp+7IcaNY35eqTTNiIlQY7mqTiZTZKw7L6RJDf
	YQEMYqovchtbnwXfqv1fO49fB8+rBdlNxz8OpmDPUBjOMYn8GGXqQaN9/9G52SDpabHEw5alAW8iU
	NGFyLCql8AVyrRNoDMBjJOC/9dl9hM+XBIN674Q6i/25jsPKoCn3CjpJQPfF5NpnHaliyLFP+JyeL
	17Gu9NUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIFT-001jpy-RG; Tue, 09 Aug 2022 05:57:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIFG-001jmn-E5
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 05:57:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIFE-0002p0-DJ; Tue, 09 Aug 2022 07:57:36 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIFA-002e7f-Dk; Tue, 09 Aug 2022 07:57:34 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIFB-006Tl5-WB; Tue, 09 Aug 2022 07:57:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  9 Aug 2022 07:57:32 +0200
Message-Id: <20220809055733.1544311-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_225738_498810_CDD3910F 
X-CRM114-Status: GOOD (  12.04  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] of: implement of_append_property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

board code fix up the device tree for OS consumption. Sometimes it's
useful for the fixup to append onto an existing property.
Add a helper that simplifies this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 36 ++++++++++++++++++++++++++++++++++++
 include/of.h      |  8 ++++++++
 2 files changed, 44 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 101b2f74c74f..0893bdf3e04f 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2321,6 +2321,42 @@ int of_set_property(struct device_node *np, const char *name, const void *val, i
 	return 0;
 }
 
+int of_append_property(struct device_node *np, const char *name, const void *val, int len)
+{
+	struct property *pp;
+	void *buf = NULL;
+	int orig_len = 0;
+
+	if (!np)
+		return -ENOENT;
+
+	pp = of_find_property(np, name, NULL);
+	if (pp) {
+		buf = pp->value;
+		orig_len = pp->length;
+	}
+
+	buf = realloc(buf, orig_len + len);
+	if (!buf)
+		return -ENOMEM;
+
+	memcpy(buf + orig_len, val, len);
+
+	if (pp) {
+		pp->value = buf;
+		pp->length += len;
+
+		if (pp->value_const) {
+			memcpy(buf, pp->value_const, orig_len);
+			pp->value_const = NULL;
+		}
+	} else {
+		pp = __of_new_property(np, name, buf, len);
+	}
+
+	return 0;
+}
+
 int of_property_sprintf(struct device_node *np,
 			const char *propname, const char *fmt, ...)
 {
diff --git a/include/of.h b/include/of.h
index c65cef5a5a7c..97b4b3dd79bd 100644
--- a/include/of.h
+++ b/include/of.h
@@ -131,6 +131,8 @@ extern struct device_node *of_get_cpu_node(int cpu, unsigned int *thread);
 
 extern int of_set_property(struct device_node *node, const char *p,
 			const void *val, int len, int create);
+extern int of_append_property(struct device_node *np, const char *p,
+			      const void *val, int len);
 extern struct property *of_new_property(struct device_node *node,
 				const char *name, const void *data, int len);
 extern struct property *of_new_property_const(struct device_node *node,
@@ -515,6 +517,12 @@ static inline int of_set_property(struct device_node *node, const char *p,
 	return -ENOSYS;
 }
 
+static inline int of_append_property(struct device_node *np, const char *p,
+				      const void *val, int len)
+{
+	return -ENOSYS;
+}
+
 static inline struct property *of_new_property(struct device_node *node,
 				const char *name, const void *data, int len)
 {
-- 
2.30.2



