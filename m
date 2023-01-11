Delivery-date: Wed, 11 Jan 2023 09:01:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW2z-008dis-0C
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:01:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW2x-0008IV-1n
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:01:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tA+ohUgXcIHXpPeLI1iP7ApimFSAp84HIdVwYI9fhno=; b=F0+eezPTQTHi3ljZGt1g7YZoPN
	qbXQF7MLJaCH8X0LrWCfkSLusfJiBFHyi7eLzJQ9GEbYNAhaXIk0j7j29KI1NKqSRizB4mkSdjmJL
	9+3ufEhpKN6lKjkM1OGsQE3aa7o/XEbg1lg7snw36s+di79JWsbKbjB9UoAWMMbbwOtcMva3y308X
	NGUe/U7Lwvjlzltti+zXppCQTNj4ryOGrG2mzm/yMjZqRdY9y7Eo4NSdqe8CXScwLUYyuK2WH6rw+
	30gxlj2Hf16iiqZlWulHCo99miYaQ2dkefVav9nzwtcZUcJHN6QTYkl4tTw6dVbK8lfHycYsPgi4x
	CFTMt8VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW1c-00ADX2-6I; Wed, 11 Jan 2023 07:59:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW1T-00ADTG-IY
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 07:59:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1S-0007Y0-AP; Wed, 11 Jan 2023 08:59:46 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1R-005Fc7-Kk; Wed, 11 Jan 2023 08:59:45 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1Q-003uWO-Ff; Wed, 11 Jan 2023 08:59:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 08:59:36 +0100
Message-Id: <20230111075940.922817-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111075940.922817-1-a.fatoum@pengutronix.de>
References: <20230111075940.922817-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_235947_692420_EF7A3200 
X-CRM114-Status: GOOD (  11.68  )
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
Subject: [PATCH 3/7] crypto: caam - add job ring accessors from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Job ring entries differ in size depending on caam_ptr_sz. Fortunately,
an entry is at most two elements big, so we can just provide accessors.

Import them from Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/crypto/caam/regs.h | 60 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/drivers/crypto/caam/regs.h b/drivers/crypto/caam/regs.h
index 5c4b783e80fe..76ccb3006a2c 100644
--- a/drivers/crypto/caam/regs.h
+++ b/drivers/crypto/caam/regs.h
@@ -221,6 +221,66 @@ struct jr_outentry {
 	u32 jrstatus;	/* Status for completed descriptor */
 } __packed;
 
+static inline void jr_outentry_get(void *outring, int hw_idx, dma_addr_t *desc,
+				   u32 *jrstatus)
+{
+
+	if (caam_ptr_sz == sizeof(u32)) {
+		struct {
+			u32 desc;
+			u32 jrstatus;
+		} __packed *outentry = outring;
+
+		*desc = outentry[hw_idx].desc;
+		*jrstatus = outentry[hw_idx].jrstatus;
+	} else {
+		struct {
+			dma_addr_t desc;/* Pointer to completed descriptor */
+			u32 jrstatus;	/* Status for completed descriptor */
+		} __packed *outentry = outring;
+
+		*desc = outentry[hw_idx].desc;
+		*jrstatus = outentry[hw_idx].jrstatus;
+	}
+}
+
+#define SIZEOF_JR_OUTENTRY	(caam_ptr_sz + sizeof(u32))
+
+static inline dma_addr_t jr_outentry_desc(void *outring, int hw_idx)
+{
+	dma_addr_t desc;
+	u32 unused;
+
+	jr_outentry_get(outring, hw_idx, &desc, &unused);
+
+	return desc;
+}
+
+static inline u32 jr_outentry_jrstatus(void *outring, int hw_idx)
+{
+	dma_addr_t unused;
+	u32 jrstatus;
+
+	jr_outentry_get(outring, hw_idx, &unused, &jrstatus);
+
+	return jrstatus;
+}
+
+static inline void jr_inpentry_set(void *inpring, int hw_idx, dma_addr_t val)
+{
+	if (caam_ptr_sz == sizeof(u32)) {
+		u32 *inpentry = inpring;
+
+		inpentry[hw_idx] = val;
+	} else {
+		dma_addr_t *inpentry = inpring;
+
+		inpentry[hw_idx] = val;
+	}
+}
+
+#define SIZEOF_JR_INPENTRY	caam_ptr_sz
+
 /*
  * CHA version ID / instantiation bitfields
  * Defined for use within cha_id in perfmon
-- 
2.30.2



