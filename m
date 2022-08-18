Delivery-date: Thu, 18 Aug 2022 07:22:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXz3-002dTR-1c
	for lore@lore.pengutronix.de; Thu, 18 Aug 2022 07:22:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXz0-0000wJ-6h
	for lore@pengutronix.de; Thu, 18 Aug 2022 07:22:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tdEiE7VBgh7pqnvqlkl8BGDLesVMvddLD5QVLPFtEd8=; b=cRtvPyqeGW/iieEBg+8bdHkPhR
	kM9s/KJfWwiKWVx5riYYZozj2PTUfRNRdjQJ0CRxKQckJjnQDiRtTHr+gTDNXzZbruaDjFE3sgymG
	RIyZrzmZGvN7OaggZH0WHTnjGEfpW+B4GywdyvAOq897ybt7TZnUG/FDyFXb283Mn6CicWnJ2+crD
	AxH9jPSg77GjhNpNupTQPm9+HpO1K34Vtn3ZXE5WlIk2B1zU4jKUAGbmDPwNcA9gUkB3HawoNKytt
	UolZzzJY1fzfBqwwTaXCbvPVKmz8OFbpodug0fscNNZ/GxSXcywbbc0djaMrlyt9YwTi7EtblKTmD
	myCQvsfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXxh-00Fotn-Ng; Thu, 18 Aug 2022 05:20:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXwv-00FnND-5a
	for barebox@lists.infradead.org; Thu, 18 Aug 2022 05:20:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwl-0008Hq-Ed; Thu, 18 Aug 2022 07:19:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwk-000S3h-Lm; Thu, 18 Aug 2022 07:19:58 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwi-008lHh-Mh; Thu, 18 Aug 2022 07:19:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	ukl@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Aug 2022 07:19:51 +0200
Message-Id: <20220818051955.2088238-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
References: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_222009_256075_ADFB3EDF 
X-CRM114-Status: GOOD (  12.57  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 06/10] nvmem: import Linux nvmem_cell_read_variable_le_u32
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already have nvmem_cell_get_and_read(), so add its Linux sibling
nvmem_cell_read_variable_le_u32 as well, which additionally takes care
of conversion to little-endian.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/core.c           | 33 +++++++++++++++++++++++++++++++++
 include/linux/nvmem-consumer.h |  9 +++++++++
 2 files changed, 42 insertions(+)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index fed387c43a26..c5fe5f6b767a 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -803,3 +803,36 @@ void *nvmem_cell_get_and_read(struct device_node *np, const char *cell_name,
 	return value;
 }
 EXPORT_SYMBOL_GPL(nvmem_cell_get_and_read);
+
+/**
+ * nvmem_cell_read_variable_le_u32() - Read up to 32-bits of data as a little endian number.
+ *
+ * @dev: Device that requests the nvmem cell.
+ * @cell_id: Name of nvmem cell to read.
+ * @val: pointer to output value.
+ *
+ * Return: 0 on success or negative errno.
+ */
+int nvmem_cell_read_variable_le_u32(struct device_d *dev, const char *cell_id,
+				    u32 *val)
+{
+	size_t len;
+	const u8 *buf;
+	int i;
+
+	len = sizeof(*val);
+
+	buf = nvmem_cell_get_and_read(dev->device_node, cell_id, len);
+	if (IS_ERR(buf))
+		return PTR_ERR(buf);
+
+	/* Copy w/ implicit endian conversion */
+	*val = 0;
+	for (i = 0; i < len; i++)
+		*val |= buf[i] << (8 * i);
+
+	kfree(buf);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(nvmem_cell_read_variable_le_u32);
diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
index b979f23372a6..b461f840957e 100644
--- a/include/linux/nvmem-consumer.h
+++ b/include/linux/nvmem-consumer.h
@@ -34,6 +34,8 @@ void nvmem_cell_put(struct nvmem_cell *cell);
 void *nvmem_cell_read(struct nvmem_cell *cell, size_t *len);
 void *nvmem_cell_get_and_read(struct device_node *np, const char *cell_name,
 			      size_t bytes);
+int nvmem_cell_read_variable_le_u32(struct device_d *dev, const char *cell_id,
+				    u32 *val);
 
 int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len);
 
@@ -75,6 +77,13 @@ static inline void *nvmem_cell_get_and_read(struct device_node *np,
 	return ERR_PTR(-EOPNOTSUPP);
 }
 
+static inline int nvmem_cell_read_variable_le_u32(struct device_d *dev,
+						  const char *cell_id,
+						  u32 *val)
+{
+	return ERR_PTR(-EOPNOTSUPP);
+}
+
 static inline int nvmem_cell_write(struct nvmem_cell *cell,
 				    void *buf, size_t len)
 {
-- 
2.30.2



