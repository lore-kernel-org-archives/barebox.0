Delivery-date: Fri, 16 Jun 2023 12:22:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA6ah-008vKm-Ti
	for lore@lore.pengutronix.de; Fri, 16 Jun 2023 12:22:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA6af-0002P3-3J
	for lore@pengutronix.de; Fri, 16 Jun 2023 12:22:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=g4xG1z7Fnowgnw8EsxX8TUhviEuQZTtj6xNqi/MKzjU=; b=P2SijJ7jI3L5JO7EXU/peUsixP
	3B3EXJOe9F6kXD9Mo/vTAmL3wxWCUqPIrrYhT7ck0WNVE9Ipwb1jAalKz5p8NAFO4EnYIoHpRcvGG
	x9zabqJTpTFy0Sh/MyQvF6Sf0Djz/TYffIe1rpd7FPsYHrPXKSyEP4TZ2WdgH2NJcs+XdearQuNOU
	SrRyJGVkBLesvwR/1IuE1QJMSHVx/MSuCCcV2GGF+qG0mPkdIFQNW41t6f9xwj6iTF4T75yJ24zNJ
	umzPUPhECyrhiyodXqTDjmk3cYBIrxvtnIWlfMp1Fk1ZgzvXMNO94s54bg85J+47o2bnxxqSJRNg1
	Jb+w8v0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA6ZR-0000MX-1a;
	Fri, 16 Jun 2023 10:20:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA6ZO-0000LT-1E
	for barebox@lists.infradead.org;
	Fri, 16 Jun 2023 10:20:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qA6ZK-0002D5-4W; Fri, 16 Jun 2023 12:20:38 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qA6ZJ-007nJv-Fo; Fri, 16 Jun 2023 12:20:37 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qA6ZI-006YN3-S2; Fri, 16 Jun 2023 12:20:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 16 Jun 2023 12:20:31 +0200
Message-Id: <20230616102031.1556138-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_032042_437666_AA6CC3EB 
X-CRM114-Status: UNSURE (   9.88  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] of: define of_read_file/barebox_register_of when !CONFIG_OFTREE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox may be built as x86 EFI payload with CONFIG_OFTREE=n. This
recently started to fail, because of newly added symbols that had
no stubs defined.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/of.h | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/include/of.h b/include/of.h
index 0037bad6c4d7..92a15f5c4a13 100644
--- a/include/of.h
+++ b/include/of.h
@@ -6,6 +6,7 @@
 #include <errno.h>
 #include <linux/types.h>
 #include <linux/list.h>
+#include <linux/err.h>
 #include <asm/byteorder.h>
 
 /* Default string compare functions */
@@ -116,7 +117,6 @@ int of_diff(struct device_node *a, struct device_node *b, int indent);
 int of_probe(void);
 int of_parse_dtb(struct fdt_header *fdt);
 struct device_node *of_unflatten_dtb(const void *fdt, int size);
-struct device_node *of_read_file(const char *filename);
 struct device_node *of_unflatten_dtb_const(const void *infdt, int size);
 
 int of_fixup_reserved_memory(struct device_node *node, void *data);
@@ -124,6 +124,7 @@ int of_fixup_reserved_memory(struct device_node *node, void *data);
 struct cdev;
 
 #ifdef CONFIG_OFTREE
+extern struct device_node *of_read_file(const char *filename);
 extern struct of_reserve_map *of_get_reserve_map(void);
 extern int of_bus_n_addr_cells(struct device_node *np);
 extern int of_n_addr_cells(struct device_node *np);
@@ -361,6 +362,11 @@ static inline const char *of_node_full_name(const struct device_node *np)
 }
 
 #else
+static inline struct device_node *of_read_file(const char *filename)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
 static inline struct of_reserve_map *of_get_reserve_map(void)
 {
 	return NULL;
@@ -429,6 +435,11 @@ static inline int of_set_root_node(struct device_node *node)
 	return -ENOSYS;
 }
 
+static inline int barebox_register_of(struct device_node *root)
+{
+	return -ENOSYS;
+}
+
 static inline struct device *of_platform_device_create(struct device_node *np,
 							 struct device *parent)
 {
-- 
2.39.2



