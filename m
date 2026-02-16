Delivery-date: Mon, 16 Feb 2026 09:48:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruHc-002GIO-1p
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:48:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruHc-0002mP-SM
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:48:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YCPcCT4oCkO5LfFsu8LRi93yRQ0yh1h9fCfSePDPuRE=; b=2gAn3gWx+2xjyG6ftbzhRSwsQO
	BQxmh/7yVTZySWsshc1tQpq88M0DpiFNObC3zrPdQvBm6UJ8IcntXuiYd6pBzgmqMTDKErID0KfQZ
	2WUIztaHreZbGGlTsM53qO4e0xrGcqZ9MzYrMyzmLP8MnBYBwihPAowkDNn12ycn7CXYTu3OfVA9/
	QAIKLOsu5hVN1/bMyCrRNnOAeYFoWGPZFK1qwQtSqSwnPIlalgm3PzoRIDqONj5y5qbbxXkvQoW4Y
	93dSiGUtGAHSUa9VHGbbWHdkHcbuueIWERPURTsC5Gb5G/zAoUWThXuT63l2OgKjkXfchMGSn+w1x
	efHGt9uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruHE-00000006BlE-40fF;
	Mon, 16 Feb 2026 08:48:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruH9-00000006Bf6-3qqz
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:48:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0002Iz-B4; Mon, 16 Feb 2026 09:48:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruGy-0012DH-2M;
	Mon, 16 Feb 2026 09:48:06 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruGz-0000000Eudd-47e4;
	Mon, 16 Feb 2026 09:48:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:05 +0100
Message-ID: <20260216084758.3548990-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_004815_992714_34FB4395 
X-CRM114-Status: UNSURE (   8.68  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 05/39] efi: loader: fix disk write return value check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

cdev_write() returns the number of bytes written on success (a
positive value), not zero. Using 'ret ?' treats any successful write
as an error. Fix by checking 'ret < 0' which correctly detects only
actual errors.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/protocols/disk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/loader/protocols/disk.c b/efi/loader/protocols/disk.c
index 835dee4e2e26..b4a3a7ab0c97 100644
--- a/efi/loader/protocols/disk.c
+++ b/efi/loader/protocols/disk.c
@@ -99,7 +99,7 @@ static efi_status_t EFIAPI efi_disk_write(struct efi_block_io_protocol *this,
 
 	ret = cdev_write(disk->cdev, buffer, buffer_size, lba << disk->blockbits, 0);
 
-	return ret ? EFI_DEVICE_ERROR : EFI_SUCCESS;
+	return ret < 0 ? EFI_DEVICE_ERROR : EFI_SUCCESS;
 }
 
 static efi_status_t EFIAPI efi_disk_flush(struct efi_block_io_protocol *this)
-- 
2.47.3



