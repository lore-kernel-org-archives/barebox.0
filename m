Delivery-date: Mon, 16 Feb 2026 10:18:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukE-002H0I-2R
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:18:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruk5-00089f-I7
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:18:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J3AyRLvmnEXXYhL7flwkQHmQbVMXqIA3ASn9TxPJOT0=; b=m2HMTso8oWJBihjm/RmiIKjS0I
	RKugBQfUoFNRM2X525Z/03Lm0abk/SBXwrm9NRwA9akL79Z2dsKS5xhgRyaRmROlVlpIUNca06Vny
	l2iPoezedMHQMVGSQK2sdvoOnK4crMXFWI/Iwlb6YMagkK/AezXIg9pyyoI/pEcCaCZdzkGD7b5Hz
	iIauO9lmth3iO12pjxJCHJ272EA1LvC7nxjkzytU3CaTFc5kDvFNPgNbap6VARvTKjzuVEOGZIczl
	AWyv7BpL91N7Hsb+6xFDSD0JDcOzQjEEtlnumFi1qBOPYB4zKtLFVWHvEq9rMgFXzjK6GRKK7MxbI
	OuFjdpjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruj2-00000006Emf-0ogz;
	Mon, 16 Feb 2026 09:17:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruio-00000006Eag-1UMs
	for barebox@bombadil.infradead.org;
	Mon, 16 Feb 2026 09:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=J3AyRLvmnEXXYhL7flwkQHmQbVMXqIA3ASn9TxPJOT0=; b=Bmc6oWQrCxz6cmgpKXYzOe0fqn
	3ZpyJW/VZ4YrU17lvVO4Xiha5KGhCrPDNi3KdsCqaYmZATAzzrvbqWfJ93WMGQgLn3qQx5XKbYzqE
	Rv0ZYnLgOuW7AZT07/g6Pesi9sPp4l/1JHyC5S3ef0STUgmsPBWY0BQhrU6t4TMLF9J7IQGro+vMJ
	VYoIIkEDs3y5T1L13jCfMX8c5VnYzZgNrcsPeLViNS1USZskpsvXnzyOkbTwvLU/YbqBcpJJoAQ2L
	CjmuUT6JepKWnbGln05c47fjYuDKY83GrN+ptAn48Mv1MM/I2wSJH7jJoxofeVY1XwgpvH5jnUaMu
	Gdn8GiGw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruij-0000000EIEn-28Dn
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruig-0006Yc-Jl; Mon, 16 Feb 2026 10:16:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruie-0012Y3-38;
	Mon, 16 Feb 2026 10:16:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0000000Eudd-2uX0;
	Mon, 16 Feb 2026 09:48:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:21 +0100
Message-ID: <20260216084758.3548990-22-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_091646_021765_3D0C3F56 
X-CRM114-Status: UNSURE (   9.10  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 21/39] efi: payload: fix wrong page count in efi_unload_fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

efi_load_fdt() allocates with DIV_ROUND_UP(SZ_2M, EFI_PAGE_SIZE) = 512
pages, but efi_unload_fdt() passes the raw byte count SZ_2M (2097152)
as the page count to free_pages(). This frees 2 million pages (~8 GB)
instead of 512 pages (2 MB), corrupting the firmware memory map.

Use DIV_ROUND_UP(SZ_2M, EFI_PAGE_SIZE) consistently in both allocation
and deallocation.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/bootm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index f4e6e6324bcd..623d9f621ac0 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -228,7 +228,7 @@ static void efi_unload_fdt(void *fdt)
 		return;
 
 	BS->install_configuration_table(&efi_fdt_guid, NULL);
-	BS->free_pages(efi_virt_to_phys(fdt), SZ_2M);
+	BS->free_pages(efi_virt_to_phys(fdt), DIV_ROUND_UP(SZ_2M, EFI_PAGE_SIZE));
 }
 
 static int do_bootm_efi_stub(struct image_data *data)
-- 
2.47.3



