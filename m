Delivery-date: Fri, 31 Mar 2023 11:06:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1piAif-003x6Z-PE
	for lore@lore.pengutronix.de; Fri, 31 Mar 2023 11:06:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1piAie-0002BD-Tt
	for lore@pengutronix.de; Fri, 31 Mar 2023 11:06:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=z7SediJFtiYLs6/x8XL3GLN+e3Yx23INb1a+EKCmPKA=; b=EXLzwu+39v96O9NtENU5rBqJAj
	h2+Ezl/gxsCChdQIXphdo11lMKliBf5k8lVaQ/HpY5U93nzLZorNWPKRohf9ydTL+9B7HSlD3Ysq4
	8E+ACh1/R3QF4Dv+qBwOphrwpx42QbXELdA0XHlLASuO89NjLBN844ZgqWJ7GiOee397zhgkOrjxz
	c8s+hacuWxz2ZGjZMO/Izcxyz9nmeOmhUIB+JW66zlKFKnjiCW3hh6rCDHR4FyL0QfrZz3nMI7ZsL
	530wpX/hvjlvpn/HxlZJaOGM/tndQiyabC0/B6IIplkmJnFH7EjFoPVszkxqm6Z44rin0Jztt9/X5
	Wfh8Ou4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piAgy-006aiE-01;
	Fri, 31 Mar 2023 09:05:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piAgt-006af3-2L
	for barebox@lists.infradead.org;
	Fri, 31 Mar 2023 09:05:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1piAgr-0001gZ-H4; Fri, 31 Mar 2023 11:04:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1piAgq-007xNB-Qf; Fri, 31 Mar 2023 11:04:56 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1piAgq-005yzi-6d; Fri, 31 Mar 2023 11:04:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 31 Mar 2023 11:04:53 +0200
Message-Id: <20230331090453.1424337-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_020459_793392_7D180A49 
X-CRM114-Status: GOOD (  11.13  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] of: implement of_property_present helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have various code using of_find_property(np, propname, NULL) to
detect whether propname exists and some more that uses
of_property_read_bool on non-boolean properties.

There's work underway in Linux to switch a lot of these instances to
of_property_present[1]. Let's prepare for porting Linux code that
uses the property by adding it.

[1]: https://lore.kernel.org/linux-devicetree/?q=of_property_present

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/of.h | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/include/of.h b/include/of.h
index 3fb6ecec8dfe..22358f5579ec 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1038,8 +1038,10 @@ static inline int of_property_read_string_index(const struct device_node *np,
  * @np:		device node from which the property value is to be read.
  * @propname:	name of the property to be searched.
  *
- * Search for a property in a device node.
- * Returns true if the property exist false otherwise.
+ * Search for a boolean property in a device node. Usage on non-boolean
+ * property types is deprecated.
+
+ * Return: true if the property exist false otherwise.
  */
 static inline bool of_property_read_bool(const struct device_node *np,
 					 const char *propname)
@@ -1049,6 +1051,20 @@ static inline bool of_property_read_bool(const struct device_node *np,
 	return prop ? true : false;
 }
 
+/**
+ * of_property_present - Test if a property is present in a node
+ * @np:		device node to search for the property.
+ * @propname:	name of the property to be searched.
+ *
+ * Test for a property present in a device node.
+ *
+ * Return: true if the property exists false otherwise.
+ */
+static inline bool of_property_present(const struct device_node *np, const char *propname)
+{
+	return of_property_read_bool(np, propname);
+}
+
 static inline int of_property_read_u8(const struct device_node *np,
 				       const char *propname,
 				       u8 *out_value)
-- 
2.39.2



