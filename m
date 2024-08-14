Delivery-date: Wed, 14 Aug 2024 12:31:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seBHQ-009VS9-1s
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 12:31:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seBHQ-0005D7-03
	for lore@pengutronix.de; Wed, 14 Aug 2024 12:31:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JqvU2SsDB09b4FdDr89nFs3G2XVjzjAObMMXLjo502k=; b=Mu1DlgzX3fbAA9D78bSrcfjvrq
	3gOkNX1nbGQ+ttC3BviaHDB3PStwBcQe6QTTtVQuiY/oYPOSCskCyox7JRiva3JUXfO9G+rgspAFa
	mostUGEuE8SGj0sYB12iBVrurnDT5VRDLulAN9QvGHSD173xtGmD8L+0L+6ap3d5ZZKCE1/rAb/+0
	F0M/VTl/NmDSDwJR9AmfjzdTV8+SC80AIzgI9ukH6WbpnccwJKsrDDmXjfxU2fSitBFP65UQcIYM4
	KdkQZO4GbMyK48Uj7kWtPY8kGzD/ntYUOCvrCrEI3I80EArjUCS4z17LoPXgR61GrVvRj8rtuOCCj
	8Axa+q+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seBH8-00000006bao-3kev;
	Wed, 14 Aug 2024 10:30:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAF4-00000006Mrs-1eGV
	for barebox@bombadil.infradead.org;
	Wed, 14 Aug 2024 09:24:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=JqvU2SsDB09b4FdDr89nFs3G2XVjzjAObMMXLjo502k=; b=CjSHlVoork27qtX9kYAjo20Awf
	SFKN/R5To4lFYV7QufsLPbBiP/khzNJE3RAUcNw8IiSMYbR4sb0ixgAtqghpMt/UBdWASBNr36WQ0
	BluvQgQ+XSe4ib+GiY1sZmYfjiIOItF7UeCKkAzP3oMPz1oi2LwVKR8fhvpxB2dtYrUqQfAWGIaYz
	kdH1+xFCavqzDeJeRU7461KRRnVFCuPGS/kfIvb+FJeZtQpYMX3k4JTg02/FbyLS7VGw8B16laumk
	PILNh0LcFZ891W9CzKlTSH8JiFFBj69a4SU+C6oEiJdeWiWnKYfpA5EIWUDalO3g0bSfO2uR39DLf
	P1kVVi3w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAF1-000000080Lh-0GwC
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 09:24:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAF0-0006sd-6f; Wed, 14 Aug 2024 11:24:26 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAEz-000KMt-KZ; Wed, 14 Aug 2024 11:24:25 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAEz-000AUW-1k;
	Wed, 14 Aug 2024 11:24:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Tomas Marek <tomas.marek@elrest.cz>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Aug 2024 11:24:23 +0200
Message-Id: <20240814092424.39878-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240814092424.39878-1-a.fatoum@pengutronix.de>
References: <20240814092424.39878-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_102427_334651_1F8D21E0 
X-CRM114-Status: GOOD (  10.26  )
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
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] i2c: efi: avoid 64-bit division
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I2C message length is 16 bit, so doing a 64-bit division is overkill.
Let's remove the cast and just rely on the usual integer promotion
to 32-bit.

Cc: Tomas Marek <tomas.marek@elrest.cz>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/busses/i2c-efi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-efi.c b/drivers/i2c/busses/i2c-efi.c
index 5f6cc0eed28e..a666a28fab51 100644
--- a/drivers/i2c/busses/i2c-efi.c
+++ b/drivers/i2c/busses/i2c-efi.c
@@ -114,7 +114,7 @@ static unsigned int efi_i2c_msg_op_cnt(const struct efi_i2c_priv *i2c_priv,
 
 	max_len = efi_i2c_max_len(i2c_priv, msg);
 
-	return ((u64)msg->len + max_len - 1) / max_len;
+	return (msg->len + max_len - 1) / max_len;
 }
 
 static unsigned int efi_i2c_req_op_cnt(
-- 
2.39.2



