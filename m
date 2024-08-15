Delivery-date: Thu, 15 Aug 2024 08:57:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seUQS-009nA5-0B
	for lore@lore.pengutronix.de;
	Thu, 15 Aug 2024 08:57:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seUQR-00033M-AT
	for lore@pengutronix.de; Thu, 15 Aug 2024 08:57:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w9sco9l1niajn5tpz/ll74bXuAJOZ4hygAnpbT8UoPM=; b=hbf3zrl6b1eJFp4ZWGE30XyBIl
	Yk1/K39NlQQCyD583zCSNKnKF65EnHVs6HUQu/FXHX3SQLXtrEc02o3NXom+iBkrmwmczr8J+4jok
	jq0yKZiuCpMGbkDOizyw1AjBeFqnEW/M7qexXtTsFPFhboiSa+Zj56IaBDBPTP877ddoGGGHsNuWf
	ypD3f+htYYCACTf9MrawKNEmU6gKLsj+WQSzcOy647xpW8uu1Vs9VZ+BHzVHgqBJmb33KssmxwUXs
	G/A20Dxs6/8PIh3Q8fQAqcy6lD/zpbHAAcK7UU19upa8HWdzBiymmWidbq8fjw7MTYutjEMHRmdJM
	g3HqbMxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seUPn-00000009D1Y-0VJV;
	Thu, 15 Aug 2024 06:56:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seUPk-00000009D0h-243s
	for barebox@lists.infradead.org;
	Thu, 15 Aug 2024 06:56:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seUPh-0002vV-Nq; Thu, 15 Aug 2024 08:56:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seUPh-000XMG-66; Thu, 15 Aug 2024 08:56:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seUPh-004qwZ-0I;
	Thu, 15 Aug 2024 08:56:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Tomas Marek <tomas.marek@elrest.cz>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Aug 2024 08:56:46 +0200
Message-Id: <20240815065646.1156788-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240815065646.1156788-1-a.fatoum@pengutronix.de>
References: <20240815065646.1156788-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_235652_556622_BBCC5A30 
X-CRM114-Status: GOOD (  12.05  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] i2c: efi: use DIV_ROUND_UP_ULL instead of native division
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

64-bit division on 32-bit platforms is normally handled by libgcc,
which, like the kernel, we don't link against in barebox.

Instead we have a number of division helpers that should be used for
64-bit division, which either expand to a normal division if possible or
to an out-of-line division. Make use of this to fix compilation for
32-bit.

Cc: Tomas Marek <tomas.marek@elrest.cz>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
This replaces "i2c: efi: avoid 64-bit division"
---
 drivers/i2c/busses/i2c-efi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-efi.c b/drivers/i2c/busses/i2c-efi.c
index 5f6cc0eed28e..4c58279e0398 100644
--- a/drivers/i2c/busses/i2c-efi.c
+++ b/drivers/i2c/busses/i2c-efi.c
@@ -114,7 +114,7 @@ static unsigned int efi_i2c_msg_op_cnt(const struct efi_i2c_priv *i2c_priv,
 
 	max_len = efi_i2c_max_len(i2c_priv, msg);
 
-	return ((u64)msg->len + max_len - 1) / max_len;
+	return DIV_ROUND_UP_ULL(msg->len, max_len);
 }
 
 static unsigned int efi_i2c_req_op_cnt(
-- 
2.39.2



