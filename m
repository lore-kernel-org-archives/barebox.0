Delivery-date: Tue, 07 Jan 2025 12:32:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV7pQ-000IUk-1j
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 12:32:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV7pQ-0001ti-Gs
	for lore@pengutronix.de; Tue, 07 Jan 2025 12:32:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RRB0cnaQmADupV3QCCfo8mf+FVobwPX1oXDgivniRy4=; b=ic3p9t/IUq2klqbl4Uz11YLdTd
	zgPXn4iLCxpDHJ+4TO4yla+32Hi6QyJnJHn+dwg9aypT89w+KzO8wW0wQif1v0K2urxZznJnCeVNQ
	uQztFfIE9PBRTgW+8v+NN+yERfWZY4NIC0QiyNSiiLH7CxN+Ydjsq5oQjlo89yFmNkXKsC/rMVeK/
	EXo5FV1gdDeHqlJ/vAC+c3VIfZ7gWCnW0hr7ZBhySca4gIWSuu/Da+6kSjSKPr8w3GGERC1sXwLzw
	ugit100PcIYxBWgdj6/QBVTKkIwUXW+LAWM9k+mvMzuQqj77Zjt6xQwrYTOqvYxgrHvB8AA5ZvxtP
	PMoJHtnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7oh-00000004Z8F-3W3B;
	Tue, 07 Jan 2025 11:32:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7nN-00000004Ynf-4A8N
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 11:30:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tV7nM-0001I2-ON; Tue, 07 Jan 2025 12:30:48 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tV7nL-007Ksv-2Z;
	Tue, 07 Jan 2025 12:30:48 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tV7nM-005ANR-1e;
	Tue, 07 Jan 2025 12:30:48 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  7 Jan 2025 12:30:47 +0100
Message-Id: <20250107113047.1231520-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_033050_026738_ACE64F2C 
X-CRM114-Status: GOOD (  11.95  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1] nvmem: bsec: Fix incorrect size calculation for PTA read
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Correct the size parameter in stm32_bsec_pta_read() to use sizeof(*val)
instead of sizeof(val). The previous implementation incorrectly
calculated the size of the pointer instead of the pointed-to value,
potentially causing incorrect behavior during the read operation.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/nvmem/bsec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index 22e30c6c2e82..3fa73488f9f7 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -153,7 +153,7 @@ static int stm32_bsec_pta_read(void *context, unsigned int offset, unsigned int
 {
 	struct bsec_priv *priv = context;
 
-	return stm32_bsec_optee_ta_read(priv->ctx, offset, val, sizeof(val));
+	return stm32_bsec_optee_ta_read(priv->ctx, offset, val, sizeof(*val));
 }
 
 static int stm32_bsec_pta_write(void *context, unsigned int offset, unsigned int val)
-- 
2.39.5



