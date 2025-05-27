Delivery-date: Tue, 27 May 2025 23:31:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1ts-000yM0-26
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 23:31:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tr-0005mC-80
	for lore@pengutronix.de; Tue, 27 May 2025 23:31:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hcDQO86fK+2hgByuENuoPburHVbkFbrZz4U+tYa+1Jk=; b=QNjyaT8COaKXkKVZTqE6TqErwx
	bYaKRMaMb5pqNkBxhtTOx1RuxYCuKLtEXkEXklQtNAmpc3hbOwHAmxUUNHq/jcrR2tN90aV8EweTT
	kyiGAoQ7vU06wDY4AC9kOKuBwwgfsb9EyTD5SaBXKMDU++ZSVwYQbjjckrrUKSWesBeSjjBno3RQ4
	aqo6auJ360LLAmVjPAsZp7SAl9sSpZViQdwSlCxKAV9dEgUpZ1xbvhDVLVjR6ve9OewkMqDgI5nzE
	NU0Txdqq/qcNKKJt2IlvsRlwwr6Gvm0pHRH0fX4YGGTQa6Kdt8OZSUFdQJ4wNjFzorTk9H/hLVo5u
	Rs8JoqcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1tF-0000000BbiO-2lVb;
	Tue, 27 May 2025 21:31:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1lK-0000000Bauu-029v
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 21:23:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uK1lI-00015n-Q7
	for barebox@lists.infradead.org; Tue, 27 May 2025 23:23:04 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Tue, 27 May 2025 23:22:48 +0200
Message-Id: <20250527212300.575031-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527212300.575031-1-a.fatoum@barebox.org>
References: <20250527212300.575031-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_142306_049407_63CDFD3F 
X-CRM114-Status: UNSURE (   8.54  )
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
X-Spam-Status: No, score=-7.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/15] efi: types: define efi_char16_t as wchar_t
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

We are using wchar_t internally for 16-bit wide strings, so let's align
efi_char16_t with that.

No functional change expected.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/efi/types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/efi/types.h b/include/efi/types.h
index 3309820416be..ddd8dd7bcb62 100644
--- a/include/efi/types.h
+++ b/include/efi/types.h
@@ -7,7 +7,7 @@
 #include <linux/uuid.h>
 
 typedef unsigned long efi_status_t;
-typedef u16 efi_char16_t;		/* UNICODE character */
+typedef wchar_t efi_char16_t;		/* UNICODE character */
 typedef u64 efi_physical_addr_t;
 
 struct efi_object;
-- 
2.39.5



