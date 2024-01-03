Delivery-date: Wed, 03 Jan 2024 19:32:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62M-002NSS-39
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:32:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62J-00031S-VR
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:32:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bK4JtEWXP4+DQEXQS/FuRK3k8/Z76XjGB0U9ON52JvU=; b=bUiy9HEPKSGKzoj/Ni43kNkZ1U
	4XvBi8HBsZl6HJFnvI1MtcBFF2uLNq4C5RJPC2QquTB4x8omp4GJb4VRc4JKdpwG2BXWUDSQsXU8g
	CD7NrGqnzpBjoXNe6gu4cODFDBu+b0BizBV80/4ZTeWd3zJXbXNC5Ji2N8Fy2r8zjw2lnYPCUaszG
	Ffzv2P3eMhUP5bHRH07as3zNzMY+ptG2aDo3jEocWJ3ucnxdXG4f3ByVny4KxPEVFY1QQMxrOudC1
	R0cWx9JXgxZxWNCKw0FSk0HI0TVeKdduikJ1sKpLxZs71Dq6iDGO4nW/2/l2+podPQ88ZVr6m6CDa
	vlSBEcug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL617-00BhBY-2W;
	Wed, 03 Jan 2024 18:31:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL60z-00Bh1K-3B
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:30:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-0001PH-Ru; Wed, 03 Jan 2024 19:30:52 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-000Asc-FV; Wed, 03 Jan 2024 19:30:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-2O;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:44 +0100
Message-Id: <20240103181312.409668-85-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103054_027265_A62EB428 
X-CRM114-Status: GOOD (  11.60  )
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
Subject: [PATCH 084/112] efi: payload: early-mem: simplify error message reporting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Adding a size to the error message means that we can just use a single
error message for either error case with no loss of information.

While at it, we turn the error string into a code: This file can be
built for PBL later on and we won't have efi_strerror there.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/early-mem.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/efi/payload/early-mem.c b/efi/payload/early-mem.c
index 24bc1d34cc51..f9bf562c98ad 100644
--- a/efi/payload/early-mem.c
+++ b/efi/payload/early-mem.c
@@ -18,15 +18,12 @@ efi_physical_addr_t efi_earlymem_alloc(const struct efi_system_table *sys_table,
 		efiret  = bs->allocate_pages(EFI_ALLOCATE_MAX_ADDRESS,
 					     EFI_LOADER_DATA,
 					     *memsize/PAGE_SIZE, &mem);
-		if (!EFI_ERROR(efiret))
+		if (!EFI_ERROR(efiret) || efiret != EFI_OUT_OF_RESOURCES)
 			break;
-		if (efiret != EFI_OUT_OF_RESOURCES)
-			panic("failed to allocate malloc pool: %s\n",
-			      efi_strerror(efiret));
 	}
 	if (EFI_ERROR(efiret))
-		panic("failed to allocate malloc pool: %s\n",
-		      efi_strerror(efiret));
+		panic("failed to allocate %zu byte memory pool: 0x%lx\n",
+		      *memsize, efiret);
 
 	return mem;
 }
-- 
2.39.2



