Delivery-date: Thu, 11 Dec 2025 21:37:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnPb-00AQIA-1Y
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:37:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnPa-0008Az-3v
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:37:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A7xwU3sjC1W8lyOqNVlUU7/tjGThSTyxn8Opr2pLh7Y=; b=Of0e9EfXwQc+xPcuWyftewIehi
	ar1GSqDHK+Sj+B2la/ABYZ1iBdOrd0X5P6s+iqiiVDbmdyoX8drH7s+g0azkrL79o8CIDlG5viix+
	GRhLUUPgxV0+8ntIQNvnCD22mWt6jbcCESKdi4xhWtU9faUD4HdKiXy8g+plZtlTNJKcbS/BBOqK2
	U25Vw5+zJVataBYU/tPvX6bc3wCGjIYKlNJHKyB595tpa2AOR5rmTygXAIn7hKtY5zyEDnwk8pWmO
	UIySsw0ntAUJS0tI9Ms2msjdGztpZPKgZCc4NUetl2Bfqj0sAFGWX5jYWfoCcbjuoUK7tAcG2cWFS
	1svAJYYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnPD-0000000HFRQ-0S6J;
	Thu, 11 Dec 2025 20:36:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnPB-0000000HFP1-3ZFK
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:36:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=A7xwU3sjC1W8lyOqNVlUU7/tjGThSTyxn8Opr2pLh7Y=; b=hjHUx5vwNN0Ha5vhQxbeZkNCTC
	vDmFWo/jWcww3VS+mp0Sf3ZxYmuXeuACpA9NQlVsGVzhlF43DtTL7V5xHlWEoTEkAuvpSX3fbly2e
	28UfCC+fHSOeqKRfjX6lT76jm0Oy5UFw4iawJcsmTtsFmk983yxKPmekze6ZW9ZOvIc8GDYO0F8tF
	Oqo1R6/jyAIh8cnsPatDvVnXynKAe/VJvTTiKbfIKHtJGXI8UFJkme3dKwSBh++XnhJfaE+ANK1CJ
	R2cLq2iQZmjwtV+dkY56jZ3/CzdCIpWYePtRaSWzMHRcBZTO+kqwe1jN16tix38nBJUM2JEDIIU0f
	0LsgEjJg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmXb-0000000FZXV-12Q7
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:41:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnP5-0007qY-SY; Thu, 11 Dec 2025 21:36:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnP5-005BWl-2E;
	Thu, 11 Dec 2025 21:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-00000008e20-409K;
	Thu, 11 Dec 2025 21:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:30:05 +0100
Message-ID: <20251211203056.2014710-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_194131_383045_C98DCD15 
X-CRM114-Status: UNSURE (   8.57  )
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
Subject: [PATCH 14/16] efi: gop: flesh out efi_graphics_output_protocol::blt definition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't use this callback, but the GOP implementation in barebox as EFI
loader will, so set the stage for that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi/protocol/gop.h | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/include/efi/protocol/gop.h b/include/efi/protocol/gop.h
index bad9f64f0623..04d139ffcb3f 100644
--- a/include/efi/protocol/gop.h
+++ b/include/efi/protocol/gop.h
@@ -42,12 +42,11 @@ struct efi_graphics_output_protocol {
 	efi_status_t (EFIAPI *set_mode) (struct efi_graphics_output_protocol *This,
 			uint32_t mode_number);
 	efi_status_t (EFIAPI *blt)(struct efi_graphics_output_protocol *This,
-			void *buffer,
-			unsigned long operation,
-			unsigned long sourcex, unsigned long sourcey,
-			unsigned long destinationx, unsigned long destinationy,
-			unsigned long width, unsigned long height, unsigned
-			long delta);
+			struct efi_pixel_bitmask *buffer,
+			u32 operation,
+			size_t sourcex, size_t sourcey,
+			size_t destinationx, size_t destinationy,
+			size_t width, size_t height, size_t delta);
 	struct efi_graphics_output_protocol_mode *mode;
 };
 
-- 
2.47.3



