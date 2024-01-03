Delivery-date: Wed, 03 Jan 2024 19:36:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66A-002O8u-0z
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL660-0007PT-Vv
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k3SaohC2/ElW7FH+dJ9J/XODiYC/ynol2Zd5DFz+WD4=; b=Q1rTEtcVY8MKTodgRX70fAeHnf
	309QbZw/4TqmJJjpqh4QfvSdqEG8LCPiuDAZcCmVva5CG6RnYHOYoOQVp1JOcofjHyIwpmhOypZyR
	dfANMuUWzstiA8njta489Lwr839B0T/gKZeptJyBIuKNkyA5WC7Z8hqYEvmBrfUlConLPNHwKlayf
	MiMSf7LIFLD7fTvFxSDzFTxAAUcGaQ7g6v7QBkzVyrkL/j7c8knXpWRrIl8hf9sOKko6mOKJusEOV
	JbCMQ+y4JvbXBc2wK1yyGsaXKUKwLuq8ExyfcSrFwa1IZSwplD2u3xkq2KqZrgkv/Pl3YfP/xqrdv
	Jp9B3brQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL64K-00Bkwi-2x;
	Wed, 03 Jan 2024 18:34:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61K-00BhOD-2Y
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=k3SaohC2/ElW7FH+dJ9J/XODiYC/ynol2Zd5DFz+WD4=; b=M1tTxWIFfIKmc1lN0dETe0628g
	VC2KHCDGACNt3634n7y2Wux7O7Uq7lK1OFIspnbzTWQiyOJYr9E7D6wo9TZ9/ngZ+KUbxTPhnIqjY
	+GnoBOByTSRo40MphTsCs8qj9emPga9K9wixGGO15fdnfNvWmbieB69fq+DkArjtt84qhBwvU6e6s
	AkAS8dFY4R/Zf4ZfujlLRp9RAuz9Rd/jpqxH7pOqmTLSGg81d+R9vC+jCs0a0iua2VWDK8fU581FP
	ZrWxviBMJ7TxyKR/cqVgq6KTBpMMIpkdzd8JIY365l9FepBPLusSdiUvmSEXeroZ8Zle5dOv3Ep6d
	/4ACETFw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61C-005eC9-2I
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-0001aU-Gg; Wed, 03 Jan 2024 19:30:56 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-000AwM-3s; Wed, 03 Jan 2024 19:30:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k5-001j4X-0l;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:55 +0100
Message-Id: <20240103181312.409668-96-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183108_025873_F8301A51 
X-CRM114-Status: UNSURE (   8.14  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 095/112] efi: payload: don't require efi_loaded_image->parent_handle for bootsource detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This fixes bootsource detection running barebox as EFI payload under
EDK2 2020.11.

Fixes: 443eb41376d9 ("efi: add bootsource detection")
Cc: Enrico Jorns <ejo@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/efi/efi-device.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 3a16deab5f6b..857f1b8c097e 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -404,9 +404,6 @@ static void efi_set_bootsource(void)
 
 	efi_handle_t efi_parent;
 
-	if (!efi_loaded_image->parent_handle)
-		goto out;
-
 	efi_parent = efi_find_parent(efi_loaded_image->device_handle);
 
 	if (!efi_parent)
-- 
2.39.2



