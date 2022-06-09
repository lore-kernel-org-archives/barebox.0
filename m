Delivery-date: Thu, 09 Jun 2022 07:45:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzAz5-008RWB-Hs
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 07:45:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzAz4-0006So-7N
	for lore@pengutronix.de; Thu, 09 Jun 2022 07:45:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TStfQcsRu7gACWLKRb/rHYLFWqtWAMUUlic2MWdCXLs=; b=Mk2oaMxOV3l19t
	9PslF3ls9KerFsmvxDX+PCTS0+gfa/cAJ+Web0JLCpP6D96/lVR6ko9i+kRX5d7IhmVOJfONGYjgd
	YJosyjAN+4Ufnt6Op4cp1W/+6iFlj4jlTialyXL4VgskhBkNeiVLvahZr8w1nMOTgx3ElOGdQ05vF
	3NzqytaDB+5+3nV2Rj56f4GFO5kt8GuqhDLPHxPwBceDTWt3Eidjr3/aufSPArLCvj0ilm1DDXlyt
	/T9kk1JkkWWXOQH9OKoccU43B4uNYhsnGS95j53SHNJE4I8iIHeGC48pq6XzUvHI7uEIeNwNl1HRs
	uD5PgHF09Kd2SrF0OEWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzAxY-00GrXC-3T; Thu, 09 Jun 2022 05:43:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzAxR-00GrVS-DE
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:43:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzAxN-0006AB-Ee; Thu, 09 Jun 2022 07:43:45 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzAxO-007K74-2t; Thu, 09 Jun 2022 07:43:44 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzAxL-002nNh-Vp; Thu, 09 Jun 2022 07:43:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  9 Jun 2022 07:43:41 +0200
Message-Id: <20220609054342.661505-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609054342.661505-1-a.fatoum@pengutronix.de>
References: <20220609054342.661505-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_224349_607381_1D1FFB6A 
X-CRM114-Status: UNSURE (   9.50  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/4] of: add of_get_reserve_map stub for !CONFIG_OFTREE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

This allows us to unconditionally include of.h in files which did not
require CONFIG_OFTREE, required for the MMU code in later patches.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Compared with Rouven's v2, give extern declaration an extern
in front like functions around it. Move static inline stub
to top of #else for symmetry.
---
 include/of.h | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/include/of.h b/include/of.h
index 0d125d8256d6..d55016f1e372 100644
--- a/include/of.h
+++ b/include/of.h
@@ -62,7 +62,6 @@ struct of_reserve_map {
 
 int of_add_reserve_entry(resource_size_t start, resource_size_t end,
 		 int flags);
-struct of_reserve_map *of_get_reserve_map(void);
 void of_clean_reserve_map(void);
 void fdt_add_reserve_map(void *fdt);
 
@@ -120,6 +119,7 @@ struct device_node *of_unflatten_dtb_const(const void *infdt, int size);
 struct cdev;
 
 #ifdef CONFIG_OFTREE
+extern struct of_reserve_map *of_get_reserve_map(void);
 extern int of_bus_n_addr_cells(struct device_node *np);
 extern int of_n_addr_cells(struct device_node *np);
 extern int of_bus_n_size_cells(struct device_node *np);
@@ -322,6 +322,11 @@ int of_autoenable_device_by_path(char *path);
 int of_autoenable_i2c_by_component(char *path);
 int of_prepend_machine_compatible(struct device_node *root, const char *compat);
 #else
+static inline struct of_reserve_map *of_get_reserve_map(void)
+{
+	return NULL;
+}
+
 static inline bool of_node_name_eq(const struct device_node *np, const char *name)
 {
 	return false;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

