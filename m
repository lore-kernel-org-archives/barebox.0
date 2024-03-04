Delivery-date: Mon, 04 Mar 2024 21:21:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhEo0-008ioR-0z
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 21:21:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhEnz-0003sx-O5
	for lore@pengutronix.de; Mon, 04 Mar 2024 21:21:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3fNKR7+eIFUuvwZr1Sz3Lb9y0oZeFxsWlo3sk9XiEtg=; b=HEUx5+Bv14oHRWpaU//U9Den1I
	uWXX5vmmPMY1IAOEKi+r2hFEX/+nfKD+GZ0cKG5dS6PxOWp9UFmZXjxj+JiGC5TT1wfQwewG+ZfmL
	nNBt8QUeQbhDKixLzHq44a2nh02sbXx3UFEa5XWPogwxBN8Z1/h9ZByFgSehJBYoUXSDtLLEOxprF
	6aAW1eVMK/KeKZRXxgv3vT5MTu/nbf1XaI5FKLgA2IGaE27qjN9b3SaisLGgu8huWVd6hk0TQZ9Mm
	/ZSV4b1QeDv/NmW7ZUqNAAh7Lf8fceKiyxcVQ3xAoysg6rZvBJO2Dg5mavm2AcE18nSa5R7psTUF8
	+5rymnkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhEnq-0000000AZZb-030y;
	Mon, 04 Mar 2024 20:20:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDab-0000000AIb2-1mWN
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3fNKR7+eIFUuvwZr1Sz3Lb9y0oZeFxsWlo3sk9XiEtg=; b=FLW1wj90LWeCTdgLYix1bYT25a
	/LeuOGalVLvYJXvdg/tSB1zf+2uXyMj7o1Cl+BOY9DtRNssEGqYlrxydsn6fQRfGaMae+SPhimukO
	sY3Qr7Pk+UdJZSx5aRJQba1d02x4HT38qlWA7H8YfrQm85t/FXq3AwfUppDUqqBEHo+4DOj84g7CR
	zRjMvH57ImLVIb3EySOCiBLkHpcoObyfCOsRDK7jT2fbgcvcEuCyaoIAmn0ABJOd3xUaaTbEFZk/A
	X4TQ/qUePKrJiRnIsPzihAu6mIsP4zOpLd7TUkrKQ/ThBSa2crP3WCn6A4MXy8AnCDjs2Erml1wTS
	ngyVLXcA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaT-000000051vp-2ZHX
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-0006Cj-Nk; Mon, 04 Mar 2024 20:02:45 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-004PKy-6x; Mon, 04 Mar 2024 20:02:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYM-00Ed9V-2p;
	Mon, 04 Mar 2024 20:00:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:10 +0100
Message-Id: <20240304190038.3486881-86-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190257_802104_32D17597 
X-CRM114-Status: GOOD (  10.70  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 085/113] efi: payload: early-mem: use EFI_PAGE_SIZE instead of PAGE_SIZE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Maybe one day we'll support 16K or 64K pages, but EFI_PAGE_SIZE as used
by EFI_ALLOCATE_PAGES is always in units of 4K pages, so let's use the
correct defines.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/early-mem.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/efi/payload/early-mem.c b/efi/payload/early-mem.c
index f9bf562c98ad..b4e8790a39c4 100644
--- a/efi/payload/early-mem.c
+++ b/efi/payload/early-mem.c
@@ -4,7 +4,6 @@
 #include <linux/sizes.h>
 #include <efi.h>
 #include <efi/efi-payload.h>
-#include <linux/pagemap.h>
 
 efi_physical_addr_t efi_earlymem_alloc(const struct efi_system_table *sys_table,
 				       size_t *memsize)
@@ -17,7 +16,7 @@ efi_physical_addr_t efi_earlymem_alloc(const struct efi_system_table *sys_table,
 	for (*memsize = SZ_256M; *memsize >= SZ_8M; *memsize /= 2) {
 		efiret  = bs->allocate_pages(EFI_ALLOCATE_MAX_ADDRESS,
 					     EFI_LOADER_DATA,
-					     *memsize/PAGE_SIZE, &mem);
+					     *memsize / EFI_PAGE_SIZE, &mem);
 		if (!EFI_ERROR(efiret) || efiret != EFI_OUT_OF_RESOURCES)
 			break;
 	}
-- 
2.39.2



