Delivery-date: Mon, 07 Nov 2022 11:09:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1orz4H-000L4N-4J
	for lore@lore.pengutronix.de; Mon, 07 Nov 2022 11:09:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1orz4F-0003YU-Va
	for lore@pengutronix.de; Mon, 07 Nov 2022 11:09:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HvSwtl8JwjAv4e6vp6sEZQiAihpf6Owf6nAySgaOtT0=; b=HP83PYSPSUZlTRLaX/sSnH8uRQ
	BeZA1xqOLyc1S3R4gsTv/SxAodTzlFVR2iaQqJPeo+Ax7wN7lJh4z4fwtayAVyuqOYVUEjCBvsZ/1
	ekBKXPVs61/7pCxs/TFA1GCInrs+3R7FaxNE1vWQxCNqoj+gWSJ2JJHQ0E4zI4TBsK+y2XPIztiPx
	OnbV01Z1EKlMCjsZNZGlLtQ+n0Kfat6mOYcZ6fv7Z9cIxGU7XrYFA0PDtOygvj9aBVBqDCKoa6OUC
	LyiNHDCHBIbtTC52lRmis6NlPRqaSq2HmlbO4MGRcYOvGU8W8sztPQkKpEEm7pYAufZverLHJFmdw
	K57SfPbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orz2Y-00DfQp-Du; Mon, 07 Nov 2022 10:07:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orz2T-00DfP9-Te
	for barebox@lists.infradead.org; Mon, 07 Nov 2022 10:07:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1orz2P-0003Ol-Ss; Mon, 07 Nov 2022 11:07:29 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1orz2O-002pkV-7P; Mon, 07 Nov 2022 11:07:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1orz2O-00AX4E-Kg; Mon, 07 Nov 2022 11:07:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Nov 2022 11:07:26 +0100
Message-Id: <20221107100727.2510346-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_020733_981740_906118E8 
X-CRM114-Status: GOOD (  14.01  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] nvmem: remove IS_ERR_VALUE abuses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

>From Kernel commit 287980e49ffc ("remove lots of IS_ERR_VALUE abuses"):

| Most users of IS_ERR_VALUE() in the kernel are wrong, as they
| pass an 'int' into a function that takes an 'unsigned long'
| argument. This happens to work because the type is sign-extended
| on 64-bit architectures before it gets converted into an
| unsigned type.

Based on the Kernel commit remove usage of IS_ERR_VALUE() from the
nvmem core.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/core.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index c89ad08f81..8e07bdb501 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -526,7 +526,7 @@ static int __nvmem_cell_read(struct nvmem_device *nvmem,
 	int rc;
 
 	rc = nvmem->bus->read(nvmem->priv, cell->offset, buf, cell->bytes);
-	if (IS_ERR_VALUE(rc))
+	if (rc)
 		return rc;
 
 	/* shift bits in-place */
@@ -561,7 +561,7 @@ void *nvmem_cell_read(struct nvmem_cell *cell, size_t *len)
 		return ERR_PTR(-ENOMEM);
 
 	rc = __nvmem_cell_read(nvmem, cell, buf, len);
-	if (IS_ERR_VALUE(rc)) {
+	if (rc) {
 		kfree(buf);
 		return ERR_PTR(rc);
 	}
@@ -591,7 +591,7 @@ static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell *cell,
 
 		/* setup the first byte with lsb bits from nvmem */
 		rc = nvmem->bus->read(nvmem->priv, cell->offset, &v, 1);
-		if (IS_ERR_VALUE(rc))
+		if (rc)
 			return ERR_PTR(rc);
 
 		*b++ |= GENMASK(bit_offset - 1, 0) & v;
@@ -612,7 +612,7 @@ static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell *cell,
 		/* setup the last byte with msb bits from nvmem */
 		rc = nvmem->bus->read(nvmem->priv, cell->offset + cell->bytes - 1,
 				      &v, 1);
-		if (IS_ERR_VALUE(rc))
+		if (rc)
 			return ERR_PTR(rc);
 
 		*p |= GENMASK(7, (nbits + bit_offset) % BITS_PER_BYTE) & v;
@@ -652,7 +652,7 @@ int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len)
 	if (cell->bit_offset || cell->nbits)
 		kfree(buf);
 
-	if (IS_ERR_VALUE(rc))
+	if (rc)
 		return rc;
 
 	return len;
@@ -680,11 +680,11 @@ ssize_t nvmem_device_cell_read(struct nvmem_device *nvmem,
 		return -EINVAL;
 
 	rc = nvmem_cell_info_to_nvmem_cell(nvmem, info, &cell);
-	if (IS_ERR_VALUE(rc))
+	if (rc)
 		return rc;
 
 	rc = __nvmem_cell_read(nvmem, &cell, buf, &len);
-	if (IS_ERR_VALUE(rc))
+	if (rc)
 		return rc;
 
 	return len;
@@ -710,7 +710,7 @@ int nvmem_device_cell_write(struct nvmem_device *nvmem,
 		return -EINVAL;
 
 	rc = nvmem_cell_info_to_nvmem_cell(nvmem, info, &cell);
-	if (IS_ERR_VALUE(rc))
+	if (rc)
 		return rc;
 
 	return nvmem_cell_write(&cell, buf, cell.bytes);
@@ -744,8 +744,7 @@ int nvmem_device_read(struct nvmem_device *nvmem,
 		return 0;
 
 	rc = nvmem->bus->read(nvmem->priv, offset, buf, bytes);
-
-	if (IS_ERR_VALUE(rc))
+	if (rc)
 		return rc;
 
 	return bytes;
@@ -778,8 +777,7 @@ int nvmem_device_write(struct nvmem_device *nvmem,
 		return 0;
 
 	rc = nvmem->bus->write(nvmem->priv, offset, buf, bytes);
-
-	if (IS_ERR_VALUE(rc))
+	if (rc)
 		return rc;
 
 
-- 
2.30.2



