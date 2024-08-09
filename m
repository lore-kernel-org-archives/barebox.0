Delivery-date: Fri, 09 Aug 2024 16:19:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQSb-007rQC-2D
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:19:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQSa-000738-Rz
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:19:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tk89su3EPnOQcudVY6kDlkBEkHzl9BTtH2r5OLT6ob0=; b=joE+cbS4GhW61cfYm8Ty3M3rGv
	e7V6QmgYMhDyoQUo6aftddXaKagzJeYLjHjCiKeMYzVRYYKq3RzBYGHCySC2Ml2kSvgufzn4f2xJM
	i6drIMXA8HoyWtAjJgDMA66+KcxypD3QySqzqdKB0oaX+JU+kP6oHZYiwr6OvlbcRwDfCMtRFePjw
	6HHr2luoefwpMKj5ms623/VBva40ElHCAG5o1ErB2hEBxiUcUrR2AgfsUvxcYBQCt9DbrcZ2BiGZ+
	qVb1GxdtzY53f46KdHIcqBhP1SVOhA1dwJGnSGw4dbmgSWIgzz899ZPQZ13qbF9od+LvWW1i5NaBn
	HC/qh6bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQS5-0000000BUyo-1ZGE;
	Fri, 09 Aug 2024 14:18:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQRM-0000000BUcv-1HI9
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:18:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQRI-0006mO-EB; Fri, 09 Aug 2024 16:17:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQRI-005gZ8-0q; Fri, 09 Aug 2024 16:17:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQRH-001JLI-2z;
	Fri, 09 Aug 2024 16:17:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:17:53 +0200
Message-Id: <20240809141755.312665-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240809141755.312665-1-a.fatoum@pengutronix.de>
References: <20240809141755.312665-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_071800_368859_BD159EE6 
X-CRM114-Status: UNSURE (   8.59  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] efi: payload: force PBL_FULLY_PIC for ARM64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The PBL_FULLY_PIC option was primarily added for ARM64 EFI payload:
Tianocore/EDK-II may take great offence on barebox rewriting its own code
to relocate and PBL_FULLY_PIC eliminates these unnecessary relocations.

We should thus enable it unconditionally when EFI_PAYLOAD, so the
resulting barebox binary is more universally usable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/efi/Kconfig b/efi/Kconfig
index dc43addd60ec..84f670fd23d3 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -8,6 +8,7 @@ config HAVE_EFI_PAYLOAD
 config EFI_PAYLOAD
 	bool "Build as EFI payload" if COMPILE_TEST
 	depends on HAVE_EFI_PAYLOAD
+	select PBL_FULLY_PIC if ARM64
 	select EFI
 	select EFI_GUID
 	select EFI_DEVICEPATH
-- 
2.39.2



