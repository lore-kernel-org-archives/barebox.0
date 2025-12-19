Delivery-date: Fri, 19 Dec 2025 11:50:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWY3i-00DAxT-0E
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:50:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWY3h-0000az-Gr
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:50:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U+3zks4pdv8/FDfm/g1P9kx3fp5+WM9gn/y9aLITA90=; b=lZb2UXT6PrCwImSHTBHg3VP1uq
	rncNYBgCmvFedWdoKiV0pXDGny2qRLp2I674LBRqQ2g0y9qxkBeopRP9utKbygbXx/GD8FQwBKpPu
	Z0BdAU0ywI5BBobgJ26QbnBebhkLL/C1wqcV05m7/Bo0iTkLoIJdF2TnZLK7z599rFLdwW5+OYcZa
	wXPNGuJu+gmUdLijPmkvXmBFBvDvR7Cf6ixbwCofDcZBvSD8emxozWuAvRQPwbPlRPz+0B+o519tn
	od/Bgg9lGd6Zcni3vL1qvKfKlOSOuAtvP/SAK3bfeQMtVJz7DU0UeN8zg+Np4Jv1qjHRsA/lhi7+V
	Yi2LbNNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWY2t-0000000A9e6-2CIv;
	Fri, 19 Dec 2025 10:49:15 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWY2r-0000000A9dT-10T4
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:49:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=U+3zks4pdv8/FDfm/g1P9kx3fp5+WM9gn/y9aLITA90=; b=AtIMiUHBD2sZ2eVBZlCzQ2Uh2C
	Dxj0UNEEjbTwPGeHaqQoodSh2zVQMnioJz+40LcHTFpGFd0+CbdEhD9feFQrQIjRXxjf3LhKWuFmq
	2bBU23zAKg1Fd5rPEsPK9n5yLTzzkr94GVYbK6Ez51nhyWiHQySeWyhXg2zs5KylTzL/y2Uqcujun
	SQn3I2a5MX/vH+WQjOAKLpC3I7UpfRflkckgj4egAEBvq2cXykcFXuKMxzvY683rb/h5C3pX5OKy0
	B1q63zd5A152QzYHJ4yTMOoQJSAVwOMP8YWTdauAxwGWtY9XwpKhcPaCtqEmYmYMFLujX/mF00fJ5
	6GT89vSA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWY2m-00000007SGb-2ZvB
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:49:12 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vWY2l-0000Cr-OC; Fri, 19 Dec 2025 11:49:07 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 19 Dec 2025 11:48:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-v2025-11-0-topic-imx6-field-return-v3-1-690fdeb78978@pengutronix.de>
References: <20251219-v2025-11-0-topic-imx6-field-return-v3-0-690fdeb78978@pengutronix.de>
In-Reply-To: <20251219-v2025-11-0-topic-imx6-field-return-v3-0-690fdeb78978@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_104908_785474_E8DAEB8D 
X-CRM114-Status: UNSURE (   7.05  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 1/5] arm: mach-imx6: use kconfig for field return
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is a Kconfig option for the field return, that is also documented,
so using it here instead of providing a headerfile to patch.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 include/mach/imx/habv4-imx6-gencsf-template.h | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/include/mach/imx/habv4-imx6-gencsf-template.h b/include/mach/imx/habv4-imx6-gencsf-template.h
index 45da2981cb..c24bf84b85 100644
--- a/include/mach/imx/habv4-imx6-gencsf-template.h
+++ b/include/mach/imx/habv4-imx6-gencsf-template.h
@@ -39,17 +39,12 @@ hab Engine = SETUP_HABV4_ENGINE
 hab Features = SETUP_HABV4_FEATURES
 #endif
 
-/*
-// allow fusing FIELD_RETURN
-// # ocotp0.permanent_write_enable=1
-// # mw -l -d /dev/imx-ocotp 0xb8 0x1
+#if defined(CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN)
 hab [Unlock]
 hab Engine = OCOTP
 hab Features = FIELD RETURN
-// device-specific UID:
-// $ dd if=/sys/bus/nvmem/devices/imx-ocotp0/nvmem bs=4 skip=1 count=2 status=none | hexdump -ve '1/1 "0x%.2x, "' | sed 's/, $//'
-hab UID = 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08
-*/
+hab UID = HABV4_CSF_UNLOCK_UID
+#endif
 
 hab [Install Key]
 /* verification key index in key store (0, 2...4) */

-- 
2.47.3



