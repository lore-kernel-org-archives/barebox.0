Delivery-date: Thu, 05 Jun 2025 23:14:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHv0-0049O0-1H
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 23:14:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHut-0005xi-UW
	for lore@pengutronix.de; Thu, 05 Jun 2025 23:14:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YiQJPDbBJzy6k01rw5xFiV3kaAstunhXNtwzaRm9nkU=; b=O3gX31+P8zCj56CJUAVrr9NwAQ
	x4cYV7vy6thuis8IZrh2XRYSiKdb8dwXQ+EOadRkq2FPpGTV1c6789YV+dPO4Baqhf/t238+kHCzi
	FzAFGCoKJmT0LIiQGASFDpgaoUGvhWFHdpTPqDQNER9xrmLyzWH8jGbEHeaRykTZYfLUQtWL4bec3
	Qv9U54nZMSfbK0yFEdlqH3g0B1HoMqvNp8/QI2HvEx9z1FAOqzyIil1eOByHHFWdSkywA8nXL45t8
	b1OmUdJQmRTJ8I6DWW9hR+tqgKH1JYxqQPPLR19le+eFozNJ3olb4qiEEbuqvWRJYMzI9eIosJIbD
	RIWSCzyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHuC-0000000Gerr-3FOq;
	Thu, 05 Jun 2025 21:13:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHoA-0000000GeEF-13Tt
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 21:07:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNHo8-00079B-WF; Thu, 05 Jun 2025 23:07:29 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu,  5 Jun 2025 23:07:16 +0200
Message-Id: <20250605210726.1916656-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605210726.1916656-1-a.fatoum@barebox.org>
References: <20250605210726.1916656-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_140730_336725_BFA908EA 
X-CRM114-Status: GOOD (  13.23  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/16] of: implement of_alias_from_compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is going to be used in the incoming MIPI DSI support.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/of/base.c | 31 +++++++++++++++++++++++++++++++
 include/of.h      |  1 +
 2 files changed, 32 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 1439e55a0aac..eb1f0b44f22d 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -3569,6 +3569,37 @@ int of_graph_port_is_available(struct device_node *node)
 }
 EXPORT_SYMBOL(of_graph_port_is_available);
 
+/**
+ * of_alias_from_compatible - Lookup appropriate alias for a device node
+ *			      depending on compatible
+ * @node:	pointer to a device tree node
+ * @alias:	Pointer to buffer that alias value will be copied into
+ * @len:	Length of alias value
+ *
+ * Based on the value of the compatible property, this routine will attempt
+ * to choose an appropriate alias value for a particular device tree node.
+ * It does this by stripping the manufacturer prefix (as delimited by a ',')
+ * from the first entry in the compatible list property.
+ *
+ * Note: The matching on just the "product" side of the compatible is a relic
+ * from I2C and SPI. Please do not add any new user.
+ *
+ * Return: This routine returns 0 on success, <0 on failure.
+ */
+int of_alias_from_compatible(const struct device_node *node, char *alias, int len)
+{
+	const char *compatible, *p;
+	int cplen;
+
+	compatible = of_get_property(node, "compatible", &cplen);
+	if (!compatible || strlen(compatible) > cplen)
+		return -ENODEV;
+	p = strchr(compatible, ',');
+	strscpy(alias, p ? p + 1 : compatible, len);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_alias_from_compatible);
+
 /**
  * of_get_machine_compatible - get first compatible string from the root node.
  *
diff --git a/include/of.h b/include/of.h
index 2258cd501b72..fa2401fc8ded 100644
--- a/include/of.h
+++ b/include/of.h
@@ -196,6 +196,7 @@ extern struct device_node *of_copy_node(struct device_node *parent,
 extern struct device_node *of_dup(const struct device_node *root);
 extern void of_delete_node(struct device_node *node);
 
+extern int of_alias_from_compatible(const struct device_node *node, char *alias, int len);
 extern const char *of_get_machine_compatible(void);
 extern int of_machine_is_compatible(const char *compat);
 extern int of_device_is_compatible(const struct device_node *device,
-- 
2.39.5



