Delivery-date: Thu, 11 Dec 2025 21:53:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnew-00AQfA-38
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:53:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnew-0002oz-B9
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:53:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o1wsU5gNp6Wvg9IpQaoDEVu080PhWMnMMALPrEU11is=; b=2EyFzHuxIGKmXIuBzUNZ08t3D7
	5K/pCSMObwsXnupw1LGwztVde0jQ3u8d6iC1h/8G2lrGoMRpLCNLJxZ1YflzWaV0TUtx52y9M+9/e
	wmWBvfEdSrmIVbQ+z7HHebiTP1Q6JQMDhouDleR0WUGpAEf3cSojM3sqyiaAeOHuBzJOIc/Bf1WAP
	ACArleXO9RkLG/6TiYtV2EP9hIVPGpYBCeQRtYYhPg4nXzo8+w9/JDaD4pEwD8UEYo+eltv4Sdfvv
	hVmg5UkDv+uEELYJH5Vru3PSmDNuC4QMP0b0APdYqRWVvZgysH1pRC3YYy+TDg2vqnWsCJtiJi+e4
	AVqrXhow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTneZ-0000000HIBQ-0YLh;
	Thu, 11 Dec 2025 20:52:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTneV-0000000HI7W-16jN
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 20:52:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-0002VW-Pq; Thu, 11 Dec 2025 21:52:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-005BZC-1r;
	Thu, 11 Dec 2025 21:52:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-0000000CFbB-1z4m;
	Thu, 11 Dec 2025 21:52:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:50:07 +0100
Message-ID: <20251211205240.2836186-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211205240.2836186-1-a.fatoum@pengutronix.de>
References: <20251211205240.2836186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_125243_330540_DA61855E 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] memory: add helpers for iterating over memory regions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Now that we have the resource_iter_* functions, add helpers for
conveniently traversing requested regions and the gaps between them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/ioport.h | 18 ++++++++++++++++++
 include/memory.h       |  6 ++++++
 2 files changed, 24 insertions(+)

diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index 1b5dfdcb373d..1d8686d51e81 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -272,5 +272,23 @@ struct resource *resource_iter_last(struct resource *current, struct resource *g
 struct resource *resource_iter_prev(struct resource *current, struct resource *gap);
 struct resource *resource_iter_next(struct resource *current, struct resource *gap);
 
+/**
+ * for_each_resource_region - Iterate over child resources and gaps between them
+ * @parent: parent resource
+ * @region: pointer to child resource or gap
+ */
+#define for_each_resource_region(parent, region) \
+	for (struct resource gap, *region = resource_iter_first((parent), &gap); \
+	     region; region = resource_iter_next(region, &gap))
+
+/**
+ * for_each_resource_region_reverse - Reverse iterate over child resources and gaps between them
+ * @parent: parent resource
+ * @region: pointer to child resource or gap
+ */
+#define for_each_resource_region_reverse(parent, region) \
+	for (struct resource gap, *region = resource_iter_last((parent), &gap); \
+	     region; region = resource_iter_prev(region, &gap))
+
 #endif /* __ASSEMBLY__ */
 #endif	/* _LINUX_IOPORT_H */
diff --git a/include/memory.h b/include/memory.h
index dea76dd2b1f7..65614b97ec8b 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -30,6 +30,12 @@ int barebox_add_memory_bank(const char *name, resource_size_t start,
 	list_for_each_entry(rsv, &(mem)->res->children, sibling) \
 		if (is_reserved_resource(rsv))
 
+#define for_each_memory_bank_region(bank, region) \
+	for_each_resource_region((bank)->res, region)
+
+#define for_each_memory_bank_region_reverse(bank, region) \
+	for_each_resource_region_reverse((bank)->res, region)
+
 struct resource *__request_sdram_region(const char *name,
 					resource_size_t start, resource_size_t size);
 
-- 
2.47.3



