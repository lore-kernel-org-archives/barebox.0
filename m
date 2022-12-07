Delivery-date: Wed, 07 Dec 2022 19:48:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2zTG-00Due3-Jr
	for lore@lore.pengutronix.de; Wed, 07 Dec 2022 19:48:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2zTF-0000xN-VB
	for lore@pengutronix.de; Wed, 07 Dec 2022 19:48:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xGsE/g21h2uIg5e5inWZj4gxWSIB8eXf0JBOZEzibAk=; b=iUw/8bCPURAVEIkPyGhuzr5ieS
	nXMM81/rGcaq9pxbGa/czZs40pmGn5E5CaiQ00BXEJ3jK8oimoydGJhjyx9SwGJufvlpcdcCm6pqJ
	LyuBGD45CxMNQ+lsrLCvAVOMSbtquUakwZOp81nF6Edu7FJhWXB87lT47ZK4USsa/78kUhr/xS2pn
	f3e7DIOVaphqQ8e6TyA66n0nJyCnva1qyo/cojaC7DZqJQi4/QT9vDRtmW3zRkfJTrYLUc9p3Z9R4
	ueV4j5xAC7aIWwzpoiHe6VZ3JyUgxbshiNYtROMfm0W9qgWykV/9n46Vs61YCNi6eI4C+hgrFndSA
	2UY4w3DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2zRX-009Rzg-5A; Wed, 07 Dec 2022 18:46:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2zRN-009RMh-1u
	for barebox@lists.infradead.org; Wed, 07 Dec 2022 18:46:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p2zRF-0000tC-2Y; Wed, 07 Dec 2022 19:46:37 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p2zRD-002yfL-MC; Wed, 07 Dec 2022 19:46:36 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p2zRD-000aUO-Ox; Wed, 07 Dec 2022 19:46:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Dec 2022 19:46:34 +0100
Message-Id: <20221207184634.140081-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221207_104645_145026_41CB2279 
X-CRM114-Status: GOOD (  12.15  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] nvmem: core: don't fail on positive callback value return
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

A sizable number of barebox NVMEM drivers returns a positive value of
number of bytes read on success, while others return 0 unless an error
occurred.

When we used to check for errors with IS_ERR_VALUE, both cases worked,
because it wouldn't evaluate to true for positive numbers. Now with
IS_ERR_VALUE removed, we need to explicitly check for negative values
to determinte errors. Otherwise nvmem_cell_read becomes a death trap
that returns values like (void *)2, which IS_ERR() won't catch and
best case kfree() will crash on.

Fixes: eb05a8e1d2b4 ("nvmem: remove IS_ERR_VALUE abuses")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/core.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 8e07bdb5013e..fded8b6f4b02 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -526,7 +526,7 @@ static int __nvmem_cell_read(struct nvmem_device *nvmem,
 	int rc;
 
 	rc = nvmem->bus->read(nvmem->priv, cell->offset, buf, cell->bytes);
-	if (rc)
+	if (rc < 0)
 		return rc;
 
 	/* shift bits in-place */
@@ -561,7 +561,7 @@ void *nvmem_cell_read(struct nvmem_cell *cell, size_t *len)
 		return ERR_PTR(-ENOMEM);
 
 	rc = __nvmem_cell_read(nvmem, cell, buf, len);
-	if (rc) {
+	if (rc < 0) {
 		kfree(buf);
 		return ERR_PTR(rc);
 	}
@@ -591,7 +591,7 @@ static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell *cell,
 
 		/* setup the first byte with lsb bits from nvmem */
 		rc = nvmem->bus->read(nvmem->priv, cell->offset, &v, 1);
-		if (rc)
+		if (rc < 0)
 			return ERR_PTR(rc);
 
 		*b++ |= GENMASK(bit_offset - 1, 0) & v;
@@ -612,7 +612,7 @@ static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell *cell,
 		/* setup the last byte with msb bits from nvmem */
 		rc = nvmem->bus->read(nvmem->priv, cell->offset + cell->bytes - 1,
 				      &v, 1);
-		if (rc)
+		if (rc < 0)
 			return ERR_PTR(rc);
 
 		*p |= GENMASK(7, (nbits + bit_offset) % BITS_PER_BYTE) & v;
@@ -652,7 +652,7 @@ int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len)
 	if (cell->bit_offset || cell->nbits)
 		kfree(buf);
 
-	if (rc)
+	if (rc < 0)
 		return rc;
 
 	return len;
@@ -680,11 +680,11 @@ ssize_t nvmem_device_cell_read(struct nvmem_device *nvmem,
 		return -EINVAL;
 
 	rc = nvmem_cell_info_to_nvmem_cell(nvmem, info, &cell);
-	if (rc)
+	if (rc < 0)
 		return rc;
 
 	rc = __nvmem_cell_read(nvmem, &cell, buf, &len);
-	if (rc)
+	if (rc < 0)
 		return rc;
 
 	return len;
@@ -710,7 +710,7 @@ int nvmem_device_cell_write(struct nvmem_device *nvmem,
 		return -EINVAL;
 
 	rc = nvmem_cell_info_to_nvmem_cell(nvmem, info, &cell);
-	if (rc)
+	if (rc < 0)
 		return rc;
 
 	return nvmem_cell_write(&cell, buf, cell.bytes);
@@ -744,7 +744,7 @@ int nvmem_device_read(struct nvmem_device *nvmem,
 		return 0;
 
 	rc = nvmem->bus->read(nvmem->priv, offset, buf, bytes);
-	if (rc)
+	if (rc < 0)
 		return rc;
 
 	return bytes;
@@ -777,7 +777,7 @@ int nvmem_device_write(struct nvmem_device *nvmem,
 		return 0;
 
 	rc = nvmem->bus->write(nvmem->priv, offset, buf, bytes);
-	if (rc)
+	if (rc < 0)
 		return rc;
 
 
-- 
2.30.2



