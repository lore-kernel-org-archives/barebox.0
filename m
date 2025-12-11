Delivery-date: Thu, 11 Dec 2025 21:31:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnKC-00AQB0-2q
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:31:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnKA-0006mf-VJ
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:31:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Oeoge+GI8i0HnF1z6QK+/5k66r99BoYOf5zZiQL9lyU=; b=3j5QRKr2S/beSq9bipE7qjkKSD
	PySAa3U4poeLo1hJyyiDZjhXhk8KMWucEyDiQ5wDOP1TcHre/xbd/OdyLOJnbRBNw8R9HmOpfyv3C
	2rcMwlQORKgxIGJmdlxrRczi7k0EvJsW9RfzLaNlkQKTaEk+eGG/cQmA4ijFOkNvRiZhdUJTeERpE
	KTgNJNhrGYKFrnEN5iiaz38n+bH8KX/WxnKETtUSf/PB2sWUOeQhJVO6WAPDHlnOVM1SnL5vjDAkJ
	FQIfaYJtCyQFECZdQos8BY3sR8dmzd/MBFSoFciYjynmt0j135LTVtX8yZ4Eb56bFHOHd1U0ZaMlv
	5f3vEyGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJd-0000000HEAZ-42rR;
	Thu, 11 Dec 2025 20:31:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJZ-0000000HE6r-384V
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Oeoge+GI8i0HnF1z6QK+/5k66r99BoYOf5zZiQL9lyU=; b=pbuQ46rE6wSDwRZpI1k7pY8crR
	SGolOdsePxiO2T1LPXrcEM6RZURj4vi81rcjL0fQg6ltosmZ2fpMs3MZkwayXb+MuX+C8RpB+jm9b
	8UIDs4+kPI6QLk76bilThMUZYxAgczCpyHOHy6Wv92fHOywijyFTADrv6TCqcEZjYZTFONKxKVnS8
	aKLWVhQLB5rLHc7KSDMj8VAYUWWSVQiwWGYJgvur234gWZjRqcFl9AtuORJIBrNpzOFaSAiUlW0z4
	Tq8uRsJiPOv4bzVBJlhUkh1L/NgjyNnFXXDNUUh400qvITQRE52+sG6aQVwZMfUjX9DtCca3do86f
	YbiVHhog==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmS0-0000000FZ9a-23gr
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:35:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJS-0006KE-2H; Thu, 11 Dec 2025 21:30:58 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-005BRI-2d;
	Thu, 11 Dec 2025 21:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-00000008e20-2wgW;
	Thu, 11 Dec 2025 21:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:30:00 +0100
Message-ID: <20251211203056.2014710-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_193544_631110_8FDAE973 
X-CRM114-Status: UNSURE (   8.66  )
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
Subject: [PATCH 09/16] efi: types: add efi_intn_t/efi_uintn_t definition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make porting code from U-Boot easier, let's define these types
instead of having to change all incoming code to use size_t/ssize_t.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi/types.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/efi/types.h b/include/efi/types.h
index 0d6d6c8b05b9..f157f7ffe106 100644
--- a/include/efi/types.h
+++ b/include/efi/types.h
@@ -13,6 +13,8 @@
 #include <linux/uuid.h>
 
 typedef unsigned long efi_status_t;
+typedef size_t efi_uintn_t;
+typedef ssize_t efi_intn_t;
 typedef wchar_t efi_char16_t;		/* UNICODE character */
 typedef u64 efi_physical_addr_t;	/* always, even on 32-bit systems */
 
-- 
2.47.3



