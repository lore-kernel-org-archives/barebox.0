Delivery-date: Thu, 11 Dec 2025 21:31:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnK8-00AQ9m-2e
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:31:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnK7-0006kk-8T
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:31:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZQmnypcU7T6mCkHoYlJ7u+CKAey24ZoDy8juYdDpm/Q=; b=dj5anhGPqt54OET0XdDxFolB61
	UfgqpL7Yo8kybIezLRu0++m2d891pDmGzsqO1TtrJTbTpDcyXHVVMfeaKoJlWZgTbmwwuKEySEb84
	XyOArtw7T/5bX7otdDmUtjQPrAKkIcV9XS7ASd41jvIyU60/JuZq3xt7NrJAsTqN93jwm7hpgVvLK
	kTmOKXwAKlpL5XCAiFj5ENfCtrqbqDfrUwE+JrZOWOukxXfiI4vcU+t9OC8Nzxi8Ip67KGfC8r/rR
	tHtwbvbbUpEGiELtTMZXBfkCnTw7avxxkBXeYajGs5xoH80f8JRLJmqPRxJTwihhIFnJERUwlc01l
	YH9OfwKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJc-0000000HE8X-29Bv;
	Thu, 11 Dec 2025 20:31:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJY-0000000HE5m-1FOw
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:31:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ZQmnypcU7T6mCkHoYlJ7u+CKAey24ZoDy8juYdDpm/Q=; b=IOIMuCxM5bJQOhCX9iVhGjpOWj
	qAbTL4Eej73t2er0w7HeWwUgLsLvXq8TSkl/k5etT/6qxu4veViu8kg4D4xiiqnTRvIrrrNh7xqnO
	Gu/28jfuQSZedmIMM7KmFQcMUu94s69XfwNbGGreKZcK79a/nnjEY48FD0Cj1lpEwEkEu33S35S7r
	A7f9lz0+1t17hMzzuPyIijQPo3+HTZXs5iUHwNO968Q+28L5cfsv3+KV9TVHp+0hQ6nNmRUNv5Fmv
	Qf9VOnHNK5YsQyoTM9x+nfCm6GJEtBrVF8XjAj221zCKQCgemjs8d8CwgE1vSPw4X7zEhfDzKUDDZ
	QQxpTvtw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmS0-0000000FZ9X-13S2
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:35:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-0006Je-Rf; Thu, 11 Dec 2025 21:30:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-005BRA-26;
	Thu, 11 Dec 2025 21:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-00000008e20-2Fvm;
	Thu, 11 Dec 2025 21:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:29:58 +0100
Message-ID: <20251211203056.2014710-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_193544_396468_09953ADE 
X-CRM114-Status: UNSURE (   7.57  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 07/16] efi: provide populate $efi.payload_default_path depending on arch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make it easily available to scripts, let's export the path as device
parameter.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/efi/efi-device.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 1ddf01658ee9..e700e2b2e89b 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -432,6 +432,8 @@ static int efi_init_devices(void)
 	dev_add_param_bool_fixed(&efi_bus.dev, "secure_mode",
 				 secure_boot & setup_mode);
 	dev_add_param_bool_fixed(&efi_bus.dev, "payload", true);
+	dev_add_param_fixed(&efi_bus.dev, "payload_default_path",
+			    CONFIG_EFI_PAYLOAD_DEFAULT_PATH);
 
 	devinfo_add(&efi_bus.dev, efi_businfo);
 
@@ -444,6 +446,7 @@ static int efi_init_devices(void)
 core_efi_initcall(efi_init_devices);
 
 BAREBOX_MAGICVAR(efi.payload, "1 indicates that barebox was loaded as EFI payload");
+BAREBOX_MAGICVAR(efi.payload_default_path, "The arch-specific removable media path");
 
 void efi_pause_devices(void)
 {
-- 
2.47.3



