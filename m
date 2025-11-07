Delivery-date: Fri, 07 Nov 2025 22:38:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHUAC-00GQhH-1w
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 22:38:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHUAC-00066W-1L
	for lore@pengutronix.de; Fri, 07 Nov 2025 22:38:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QPxRF44pf3pYSlOuCJ1EmeTVLd60TVMbf3zWU9Km/Tg=; b=0fD5v/OEnf1KIGOLewz1y1T6xW
	iSS5Ls+aFJrYc7O0Wq4ua8n8qfqrYTuLPjh9COI0wFMjT0BsexGKPErMC/8XHi0gxEdQPy2NWbv3T
	bdUUMWzUjnCkanyfeqFb+GNgVgphADcnYACadxv917NEegmolpMOk+hqYjITkIYU165CStC7dihgI
	sQo7yCFRcbQYtkqpqFhEdUPlkzHTYV0QXz52kl4mSBXWSDwN11cQnccjibdO4SwYfLjaxzHNj5m9Q
	Izl6ptYZALrz2UGJL138WLqi5BKWaqHSr4jlzQOOlM1MZNe7sKNg4zfy2wjOtsGPegWIaR0olMmiT
	KPEcynEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHU9g-00000001Bez-0iKH;
	Fri, 07 Nov 2025 21:38:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHU9b-00000001BdE-2ZvO
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 21:37:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHU9Z-0005us-0e; Fri, 07 Nov 2025 22:37:53 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHU9Y-007anU-2g;
	Fri, 07 Nov 2025 22:37:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHU9Y-0000000EssG-37bj;
	Fri, 07 Nov 2025 22:37:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Nov 2025 22:37:48 +0100
Message-ID: <20251107213752.3547508-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251107213752.3547508-1-a.fatoum@pengutronix.de>
References: <20251107213752.3547508-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_133755_653664_C848B295 
X-CRM114-Status: GOOD (  10.61  )
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
Subject: [PATCH 2/3] efi: payload: bootm: allow compiling without FIT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's no particular reason this should always require FIT support, so
make it an optional dependency.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/Kconfig |  1 -
 efi/payload/bootm.c | 19 ++++++++++++++++++-
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
index 3b4a16e1e80c..31eab4f3ef88 100644
--- a/efi/payload/Kconfig
+++ b/efi/payload/Kconfig
@@ -32,7 +32,6 @@ config EFI_HANDOVER_PROTOCOL
 
 config EFI_PAYLOAD_BOOTM
 	bool "EFI bootm protocol"
-	select BOOTM_FITIMAGE
 	default !X86
 
 endif
diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index e205664b3262..da53e3939d26 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -38,6 +38,9 @@ static bool ramdisk_is_fit(struct image_data *data)
 {
 	struct stat st;
 
+	if (!IS_ENABLED(CONFIG_BOOTM_FITIMAGE))
+		return false;
+
 	if (bootm_signed_images_are_forced())
 		return true;
 
@@ -54,6 +57,9 @@ static bool fdt_is_fit(struct image_data *data)
 {
 	struct stat st;
 
+	if (!IS_ENABLED(CONFIG_BOOTM_FITIMAGE))
+		return false;
+
 	if (bootm_signed_images_are_forced())
 		return true;
 
@@ -66,6 +72,17 @@ static bool fdt_is_fit(struct image_data *data)
 			data->fit_config, "fdt") > 0 : false;
 }
 
+static bool os_is_fit(struct image_data *data)
+{
+	if (!IS_ENABLED(CONFIG_BOOTM_FITIMAGE))
+		return false;
+
+	if (bootm_signed_images_are_forced())
+		return true;
+
+	return data->os_fit;
+}
+
 static int efi_load_os(struct image_data *data,
 		       struct efi_loaded_image **loaded_image,
 		       efi_handle_t *handle)
@@ -73,7 +90,7 @@ static int efi_load_os(struct image_data *data,
 	efi_status_t efiret;
 	efi_handle_t h;
 
-	if (!data->os_fit)
+	if (!os_is_fit(data))
 		return efi_load_image(data->os_file, loaded_image, handle);
 
 	if (!data->fit_kernel)
-- 
2.47.3



