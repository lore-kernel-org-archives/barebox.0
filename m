Delivery-date: Thu, 20 Apr 2023 21:54:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppaMh-00AadB-OU
	for lore@lore.pengutronix.de; Thu, 20 Apr 2023 21:54:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppaMh-0001eL-OD
	for lore@pengutronix.de; Thu, 20 Apr 2023 21:54:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gfV5s2UL9sOuCNyHdn9xtTF2DZtGLd8MaMV7dOzbP3Y=; b=hFmlJo2gZxaVUjpIQ2bG/+FVM6
	qYAeIemMSQ+BMzJFKw8hfynwf/mGBhlQjGFhCcgRf/CDXDN1EYajjgE7OnPOkyQ1mstJx4DjqIYyl
	1V2cT3RT+sJuA0rgovWjAhtLHt+RXY110Fyrbz7mvL/yEG7GTm5y9RRClyCc1EBfEAlsJn0EcBe/f
	GlyVNG/x2txTPfUg1nIObZnllc+J+IyqERM32O7CsAdo4qrJfFWiiF8vm/O8Um2bq0ny+J7vJuTdt
	LNp9M5kBShi2ZwSM+nXo8MVgOleWllxz6CxWq4s5umkrMolylu4OwxqWVEsQZ8bJfw6nTjsNqBDHY
	C52tmHYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppaLJ-008u6U-1s;
	Thu, 20 Apr 2023 19:53:21 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppaLG-008u5m-39
	for barebox@lists.infradead.org;
	Thu, 20 Apr 2023 19:53:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=gfV5s2UL9sOuCNyHdn9xtTF2DZtGLd8MaMV7dOzbP3Y=; b=tfAvZbN3pNGRtowSK4C9QF1CsB
	YfY6gjSaA/5DtgOU5CbhZ1kcIKAPnZVKnn/UbReh05z3EDakCtDh+9ZeXL2NHi8P5ose/ugIWaJwW
	K38k0FQ4cq+jqaqhmZnSW6wJUIbxcKYjcb58C3ZOxlf5T64sl6xiQINNGgXpcimO5/PKdFL/iGQuV
	k5ajSe0pPZcbV2mgL2C9CoVUe8pQ30zOkPsD+14TZFLbK2aIN+r64ZGwvCrIsHxBIHOmCVEyOWrr+
	5F60AKJJkDT8h103LvX9NNsiZSHFUr9XgA/bmczC6s0ERJGIvLAqV1KMavQHiA1BxurJL7FGsm+eP
	Q3cJz8LQ==;
Received: from p200300ccff1689001a3da2fffebfd33a.dip0.t-ipconnect.de ([2003:cc:ff16:8900:1a3d:a2ff:febf:d33a] helo=aktux)
	by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <andreas@kemnade.info>)
	id 1ppaLB-00038f-5F; Thu, 20 Apr 2023 21:53:13 +0200
Received: from andi by aktux with local (Exim 4.96)
	(envelope-from <andreas@kemnade.info>)
	id 1ppaLA-004pyu-1Y;
	Thu, 20 Apr 2023 21:53:12 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: barebox@lists.infradead.org
Cc: Andreas Kemnade <andreas@kemnade.info>
Date: Thu, 20 Apr 2023 21:52:55 +0200
Message-Id: <20230420195255.1153119-1-andreas@kemnade.info>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230420_125319_194263_5B3BAA98 
X-CRM114-Status: UNSURE (   8.35  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX: bbu: fix compilation without CONFIG_BAREBOX_UPDATE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fix
include/mach/imx/bbu.h:208:1: error: expected identifier or ‘(’ before ‘{’ token

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 include/mach/imx/bbu.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/mach/imx/bbu.h b/include/mach/imx/bbu.h
index 451ae15740..50657d9895 100644
--- a/include/mach/imx/bbu.h
+++ b/include/mach/imx/bbu.h
@@ -204,7 +204,7 @@ imx7_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
 
 static inline int
 imx8m_bbu_internal_flexspi_nor_register_handler(const char *name, const char *devicefile,
-						unsigned long flags);
+						unsigned long flags)
 {
 	return -ENOSYS;
 }
-- 
2.39.2



