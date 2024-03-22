Delivery-date: Fri, 22 Mar 2024 17:46:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni2S-00077I-2k
	for lore@lore.pengutronix.de;
	Fri, 22 Mar 2024 17:46:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni2S-0001BY-5w
	for lore@pengutronix.de; Fri, 22 Mar 2024 17:46:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3D0vgZlRbHmVr8ZSGUpQqXiCWd1uuWCuuDZKmRzX16Y=; b=wUX1TKKhEWCE0VFXDurN96rqfW
	hvknARqBcubx1CJDsfHHteoPyj4uub9RfCbsrr9jH8/gvXUv/kbE9f7IPeM6ujHsXqFfBtNSixNMN
	DeqEmAdEx1WmAs0+5ldzGASPD122LySGVwsKzT150sEepoT0QmTsksk8YB5Z1Yg8pf2yzUXf0gXZm
	HNSpWSvVTcNntGwGOnu68c0Iq/rpIetokNzOJJdkY0I/eIyzs74/0byroe2ZD5+0gNCd1fp63eFjR
	PN0TkdRwKte77fLORtv5LmmZvD+qFrfIWXMu/YZY6IYaBhWBjo2kK19UoLuD7MVc68u21/tMhjpyv
	Ml3adVBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni20-00000008068-1agu;
	Fri, 22 Mar 2024 16:46:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni1t-0000000802N-423S
	for barebox@lists.infradead.org;
	Fri, 22 Mar 2024 16:46:08 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rni1r-0000uV-5a
	for barebox@lists.infradead.org; Fri, 22 Mar 2024 17:46:03 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 22 Mar 2024 17:45:57 +0100
Message-Id: <20240322164559.1768983-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240322164559.1768983-1-m.felsch@pengutronix.de>
References: <20240322164559.1768983-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_094606_024476_DF3D46EF 
X-CRM114-Status: GOOD (  10.64  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] nvmem: constify the write path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Constify the nvmem_*_write() functions as the write functions shouldn't
alter the buffer content.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/core.c           | 10 +++++-----
 include/linux/nvmem-consumer.h |  8 ++++----
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index b4a29e4b67f3..7d795d5873dc 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -794,8 +794,8 @@ void *nvmem_cell_read(struct nvmem_cell *cell, size_t *len)
 }
 EXPORT_SYMBOL_GPL(nvmem_cell_read);
 
-static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell_entry *cell,
-						    u8 *_buf, int len)
+static inline const void *nvmem_cell_prepare_write_buffer(struct nvmem_cell_entry *cell,
+							  const u8 *_buf, int len)
 {
 	struct nvmem_device *nvmem = cell->nvmem;
 	int i, rc, nbits, bit_offset = cell->bit_offset;
@@ -846,7 +846,7 @@ static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell_entry *cel
 	return buf;
 }
 
-static int __nvmem_cell_entry_write(struct nvmem_cell_entry *cell, void *buf, size_t len)
+static int __nvmem_cell_entry_write(struct nvmem_cell_entry *cell, const void *buf, size_t len)
 {
 	struct nvmem_device *nvmem = cell->nvmem;
 	int rc;
@@ -890,7 +890,7 @@ static int __nvmem_cell_entry_write(struct nvmem_cell_entry *cell, void *buf, si
  *
  * Return: length of bytes written or negative on failure.
  */
-int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len)
+int nvmem_cell_write(struct nvmem_cell *cell, const void *buf, size_t len)
 {
 	return __nvmem_cell_entry_write(cell->entry, buf, len);
 }
@@ -938,7 +938,7 @@ EXPORT_SYMBOL_GPL(nvmem_device_cell_read);
  * Return: length of bytes written or negative error code on failure.
  * */
 int nvmem_device_cell_write(struct nvmem_device *nvmem,
-			    struct nvmem_cell_info *info, void *buf)
+			    struct nvmem_cell_info *info, const void *buf)
 {
 	struct nvmem_cell_entry cell;
 	int rc;
diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
index 54643b792aed..478f469c3560 100644
--- a/include/linux/nvmem-consumer.h
+++ b/include/linux/nvmem-consumer.h
@@ -30,7 +30,7 @@ void *nvmem_cell_get_and_read(struct device_node *np, const char *cell_name,
 int nvmem_cell_read_variable_le_u32(struct device *dev, const char *cell_id,
 				    u32 *val);
 
-int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len);
+int nvmem_cell_write(struct nvmem_cell *cell, const void *buf, size_t len);
 
 /* direct nvmem device read/write interface */
 struct nvmem_device *nvmem_device_get(struct device *dev, const char *name);
@@ -42,7 +42,7 @@ int nvmem_device_write(struct nvmem_device *nvmem, unsigned int offset,
 ssize_t nvmem_device_cell_read(struct nvmem_device *nvmem,
 			       struct nvmem_cell_info *info, void *buf);
 int nvmem_device_cell_write(struct nvmem_device *nvmem,
-			    struct nvmem_cell_info *info, void *buf);
+			    struct nvmem_cell_info *info, const void *buf);
 
 void nvmem_devices_print(void);
 
@@ -78,7 +78,7 @@ static inline int nvmem_cell_read_variable_le_u32(struct device *dev,
 }
 
 static inline int nvmem_cell_write(struct nvmem_cell *cell,
-				    void *buf, size_t len)
+				   const void *buf, size_t len)
 {
 	return -EOPNOTSUPP;
 }
@@ -102,7 +102,7 @@ static inline ssize_t nvmem_device_cell_read(struct nvmem_device *nvmem,
 
 static inline int nvmem_device_cell_write(struct nvmem_device *nvmem,
 					  struct nvmem_cell_info *info,
-					  void *buf)
+					  const void *buf)
 {
 	return -EOPNOTSUPP;
 }
-- 
2.39.2



