Delivery-date: Mon, 04 Mar 2024 20:05:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDce-008dB3-2E
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:05:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDcd-0000Mm-N0
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:05:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bK4JtEWXP4+DQEXQS/FuRK3k8/Z76XjGB0U9ON52JvU=; b=B3gF1lcXKrM8gjkANgHK1zetiZ
	yU/5PC2Kw0PP9MOx5TrNmjKfaU19eoBVs9zxLDhA0hUSGL8gnKlX0jNxOSROUrR5UiItBQqe5TDqd
	sIJeUC3k5joaN75HYqgA1AaLRSdrWM3O4IbEkM4W6K3lOTs3hZh/LdP053Zq2sKN09eEPZytaId7i
	GwnnDtyTKDGERBVQgYlMK5Hd3ZUtuo9nmtJQqnFjdejc7JA+kN503H1beO6QitPfo5ULl6TM6iUKp
	ECAgr7KUrch4ehsC1V0gubG1/Si0sDvQrMp7QIuGi0REVUw7hyNtKVoVUtTC//hyY2mZc/09KczG/
	Em+4n7Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDc5-0000000AJfX-0fAv;
	Mon, 04 Mar 2024 19:04:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaG-0000000AIKk-2MHj
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-00064K-6l; Mon, 04 Mar 2024 20:02:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-004PIM-N0; Mon, 04 Mar 2024 20:02:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYM-00Ed9V-2g;
	Mon, 04 Mar 2024 20:00:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:09 +0100
Message-Id: <20240304190038.3486881-85-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_110244_996886_3807C238 
X-CRM114-Status: GOOD (  12.02  )
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
Subject: [PATCH v2 084/113] efi: payload: early-mem: simplify error message reporting
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



