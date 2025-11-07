Delivery-date: Fri, 07 Nov 2025 15:18:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNHs-00GK4O-2m
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 15:18:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNHs-0003kh-7G
	for lore@pengutronix.de; Fri, 07 Nov 2025 15:18:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zj89CrqEHwxPTpwpsza+hvsc5ZRAfJ16RkMZB68snXY=; b=r47mQM0xTofh65LtLFqFr3jHrB
	i5b7RpBXIv6YReUGS0Y9Dnm0XRekKj8dm4wfHVyQ7ojkBlhamneRd+CnDXn+e39nNutZjci4ZWvES
	C5EzYxvS/rhkOM74RgLwLKtB9ngQq3fR+ndxY7NFemo90Z/R/wewL8NsbJLgkKwmkw3TYvBqsS2qQ
	hV2rp56TgNpNgt8xBMfR5JFqGrU9Dg4umTX19Dcqabw2cHrnjXmPPt9bKXNP7ijhFW3b6prTly90b
	5tinQU3eXq76AGZ2OgaSl4HkIDxbCDBbSHy79FvD/cXVvZSNXORMh5aJungeeBCS9U8lnO2jCpAqj
	1nNhnNAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNHR-0000000HSQK-3HLi;
	Fri, 07 Nov 2025 14:17:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNHM-0000000HSN6-1LNW
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 14:17:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHNHK-0003OJ-Oo; Fri, 07 Nov 2025 15:17:26 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHNHK-007Xj1-1l;
	Fri, 07 Nov 2025 15:17:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHNHK-0000000ArvS-1rX7;
	Fri, 07 Nov 2025 15:17:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Nov 2025 15:17:22 +0100
Message-ID: <20251107141725.2590394-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251107141725.2590394-1-a.fatoum@pengutronix.de>
References: <20251107141725.2590394-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_061728_358621_38D5368D 
X-CRM114-Status: GOOD (  10.09  )
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
Subject: [PATCH master 5/5] efi: payload: align kernel boot status messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make debugging easier, let's explicitly call out if StartImage or
handover is used and on stdout as we do for other architectures.

While at it, we also skip printing the options if they are <NULL>.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/handover.c | 5 +++--
 efi/payload/image.c    | 6 ++++--
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/efi/payload/handover.c b/efi/payload/handover.c
index 12fd6d95c2e8..f549568b6d03 100644
--- a/efi/payload/handover.c
+++ b/efi/payload/handover.c
@@ -103,13 +103,14 @@ static int do_bootm_efi(struct image_data *data)
 	boot_header->code32_start = efi_virt_to_phys(loaded_image->image_base +
 			(image_header->setup_sects+1) * 512);
 
+	printf("Booting kernel via handover");
 	if (bootm_verbose(data)) {
-		printf("\nStarting kernel at 0x%p", loaded_image->image_base);
+		printf("at 0x%p", loaded_image->image_base);
 		if (data->initrd_file)
 			printf(", initrd at 0x%08x",
 			       boot_header->ramdisk_image);
-		printf("...\n");
 	}
+	printf("...\n");
 
 	if (data->dryrun) {
 		BS->unload_image(handle);
diff --git a/efi/payload/image.c b/efi/payload/image.c
index ea6033edc363..22ff5d27ced6 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -119,14 +119,16 @@ int efi_execute_image(efi_handle_t handle,
 		(loaded_image->image_code_type == EFI_RUNTIME_SERVICES_CODE);
 
 	if (is_linux_image(filetype, loaded_image->image_base)) {
-		pr_debug("Linux kernel detected. Adding bootargs.");
 		options = linux_bootargs_get();
-		pr_info("add linux options '%s'\n", options);
+		printf("Booting kernel via StartImage");
 		if (options) {
+			printf("with options '%s'", options);
 			loaded_image->load_options = xstrdup_char_to_wchar(options);
 			loaded_image->load_options_size =
 				(strlen(options) + 1) * sizeof(wchar_t);
 		}
+		printf("...\n");
+
 		shutdown_barebox();
 	}
 
-- 
2.47.3



