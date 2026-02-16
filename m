Delivery-date: Mon, 16 Feb 2026 10:17:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujb-002Gtw-11
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:17:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujW-0007R0-Fp
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:17:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9yrCwovgVYw4fPSMUlbsq3VMnVW5CA3N/hlZK9w/lWs=; b=eeL1uR6ckF073K7UqCb31KTzLa
	WejlzJ23xsZR0W6QhXhS0cFiOPW9uikBJzZnq23hP70ErCE2475/TkNqsBnxXNapooaKV1s5gBw+B
	nRrOjK3DC54oAn5ttA2BgOlOZ64Ya4zE2/No6mGRyr3oYcE0T/HOUhRZtbD2d633E6outhzVowWZq
	GUd/7S6QQyn5qLKVQnXfkKuHuNyNyrYFgi2IfRs/3lMm4yGYb4baiPikxjWGum585NMBo6jj+tgGL
	YtNREr+6BMTel+ExA/yQUpqaet09CU5XjkD7KcBoI5lxdqioe34vPX1LFzn6lppG2uxP3S4HdEEf+
	tWPMAVIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruin-00000006Ea3-14FD;
	Mon, 16 Feb 2026 09:16:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruig-00000006ERi-2ZKm
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruie-0006Tw-G5; Mon, 16 Feb 2026 10:16:40 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruic-0012Wc-35;
	Mon, 16 Feb 2026 10:16:40 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0000000Eudd-13wE;
	Mon, 16 Feb 2026 09:48:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:11 +0100
Message-ID: <20260216084758.3548990-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_011642_692542_78A32FC3 
X-CRM114-Status: GOOD (  11.39  )
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
Subject: [PATCH master 11/39] efi: loader: fix multiple bugs in efi_loader_bootm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fix several issues:

- ERR_PTR(-efi_errno(ret)) uses 'ret' which is 0 at that point
  instead of 'efiret' which holds the actual error.

- Two return statements (PTR_ERR(fdt) and efi_install_fdt error)
  bypass the 'out:' cleanup label, leaking file_path, load_option,
  and the source sdram region. Replace with goto out.

- efi_set_watchdog() and __efi_start_image() return efi_status_t
  (unsigned long, 64-bit on ARM64) but were stored in 'int ret',
  truncating the value. Use 'efiret' for these calls. Also fix the
  success return path to convert efiret properly.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/bootm.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
index da664847def8..a74002e292f7 100644
--- a/efi/loader/bootm.c
+++ b/efi/loader/bootm.c
@@ -233,19 +233,21 @@ static int efi_loader_bootm(struct image_data *data)
 	efiret = efi_init_obj_list();
 	if (efiret) {
 		pr_err("Cannot initialize UEFI sub-system: %pe\n",
-			ERR_PTR(-efi_errno(ret)));
+			ERR_PTR(-efi_errno(efiret)));
 		goto out;
 	}
 
 	ret = -EINVAL;
 
 	fdt = bootm_get_devicetree(data);
-	if (IS_ERR(fdt))
-		return PTR_ERR(fdt);
+	if (IS_ERR(fdt)) {
+		ret = PTR_ERR(fdt);
+		goto out;
+	}
 	if (fdt) {
 		ret = efi_install_fdt(fdt);
 		if (ret)
-			return ret;
+			goto out;
 	}
 
 	efiret = efi_install_initrd(data, source);
@@ -280,17 +282,17 @@ static int efi_loader_bootm(struct image_data *data)
 	 * Unified Extensible Firmware Interface (UEFI), version 2.7 Errata A
 	 * 7.5. Miscellaneous Boot Services - EFI_BOOT_SERVICES.SetWatchdogTimer
 	 */
-	ret = efi_set_watchdog(300);
-	if (ret != EFI_SUCCESS) {
+	efiret = efi_set_watchdog(300);
+	if (efiret != EFI_SUCCESS) {
 		pr_err("failed to set watchdog timer\n");
 		goto out;
 	}
 
 	/* Call our payload! */
-	ret = __efi_start_image(handle, &exit_data_size, &exit_data, flags);
-	if (ret != EFI_SUCCESS) {
+	efiret = __efi_start_image(handle, &exit_data_size, &exit_data, flags);
+	if (efiret != EFI_SUCCESS) {
 		pr_err("## Application failed, r = %lu\n",
-			ret & ~EFI_ERROR_MASK);
+			efiret & ~EFI_ERROR_MASK);
 		if (exit_data) {
 			pr_err("## %ls\n", exit_data);
 			efi_free_pool(exit_data);
@@ -311,7 +313,7 @@ static int efi_loader_bootm(struct image_data *data)
 	/* Control is returned to us, disable EFI watchdog */
 	efi_set_watchdog(0);
 
-	return ret;
+	return -efi_errno(efiret);
 
 out:
 	efi_initrd_unregister();
-- 
2.47.3



