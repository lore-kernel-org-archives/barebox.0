Delivery-date: Wed, 03 Jan 2024 20:46:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Cc-002V0T-03
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 20:46:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Ca-00045F-Jk
	for lore@pengutronix.de; Wed, 03 Jan 2024 20:46:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3fNKR7+eIFUuvwZr1Sz3Lb9y0oZeFxsWlo3sk9XiEtg=; b=DkykBGx+lfO1hMtTFt4IcImqcM
	eVVR/Xd5NQPAHQtmQrM0dVNl/KOXGB5QUAqXA+dTogIobJWrDN0OroFY48UlSiJqU/jmJvGLUf8Tq
	+fncLy2LNTG/TaH1tqsQZrl9oA3g26EfKptJeJcqFjhHBE/R/l9j275vRz1YuRFNkGlW0j4HF1M1T
	egZVJwML9vq+xbCQpSdOoRraDwvGuhZ9r0NlopKp+Hd4JI+LhLyg94zwEIIpWjN43Hfv9oZUOH8s4
	6OSBe5XROljdM/U8xvRIn+CMFrHr2RFTLGgrPS363sEqzg5wURrNVePjCsrQ69TYaHiXUVD+s8SWZ
	UneEaYPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL7BW-00Bw7J-1v;
	Wed, 03 Jan 2024 19:45:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL614-00Bh90-2m
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:30:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3fNKR7+eIFUuvwZr1Sz3Lb9y0oZeFxsWlo3sk9XiEtg=; b=h3PVqb3XuoHomojUFB5G3aUBCr
	wtW6ztss4vL0y6FapQbyGZBOmpdBb6ZjLGxxYUNSp+e7Tyhd6FQzZTopP722QxVR/LTF1xVPIw6v0
	HckIjoKIFYyiHfilX3fWKMBQxhpD9nMuWI8njfGFNjC0pF4b0TnPKpI27VOrxFy6xzF6dc6UWznIE
	FakuY/gX10BDu9JGC1Tp9B+Rou+ApQuAiFswO3ayJYjzw+N1rlxedxupR68bCU3U8Cye+NYB9gG7m
	W03aVsVlSl5vLo1u4MwWCyDCAnll0fYma2wXueftinR1AjYlt+kbyuG3y+Wd2MDKVSAwj9utb1dGt
	/QKoyH4g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL610-005eBx-2O
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:30:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-0001R0-Fs; Wed, 03 Jan 2024 19:30:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-000AtB-39; Wed, 03 Jan 2024 19:30:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-2W;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:45 +0100
Message-Id: <20240103181312.409668-86-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183055_057157_085629A9 
X-CRM114-Status: GOOD (  10.11  )
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
Subject: [PATCH 085/112] efi: payload: early-mem: use EFI_PAGE_SIZE instead of PAGE_SIZE
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



