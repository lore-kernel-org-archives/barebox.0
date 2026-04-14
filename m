Delivery-date: Tue, 14 Apr 2026 16:00:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCeJP-00C5hf-1w
	for lore@lore.pengutronix.de;
	Tue, 14 Apr 2026 16:00:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCeJP-0002sq-1g
	for lore@pengutronix.de; Tue, 14 Apr 2026 16:00:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=l/f7KBG0rllMeArF30bbwBTkqTutz4b0YCYvP+huM/A=; b=ZYFJyoOSpgx0Aen60makEaCzd3
	SX5PHuMTtyPabqUGv5ApHUPa9N5RHd7xeqJgFIfnoO5918HjaNMjiEKMmZtqqu+Rm3uwwIX8A5FRw
	gWlvq5IyfzVjQzdaTvQMuPDU9zFPAmGCc/cNybnoS1y0q8kiaMefVLETN4bbaVNOd4+b2F6/zsx17
	IQd9gGVa4z6bkmni+T1u9AfnnIFDB+T8rhTpJrCpOPPA9gzecVYr2QuXoGiBYzkocmcVe7KE1k9za
	AyYak4lAh/NszXVFKrqplTzZv23Wqef6RGVN+2EiwTBeoqVwzjdwrMvDlkjfS7foaQRpzZCpaTIdp
	z4/aQDKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCeIo-0000000HPj0-3618;
	Tue, 14 Apr 2026 13:59:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCeIl-0000000HPiV-46cz
	for barebox@lists.infradead.org;
	Tue, 14 Apr 2026 13:59:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCeIj-0002dt-Hm; Tue, 14 Apr 2026 15:59:37 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCeIj-005Lrl-0i;
	Tue, 14 Apr 2026 15:59:37 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCeIj-00000002zws-0Vpy;
	Tue, 14 Apr 2026 15:59:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 14 Apr 2026 15:59:35 +0200
Message-ID: <20260414135936.714776-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_065940_015280_CE423C20 
X-CRM114-Status: GOOD (  11.94  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] bootm: require EFI boot when running as payload
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

An EFI-stubbed ARM64 Linux kernel can be optionally started as EFI
application via its PE entry point or it can be directly executed with
the normal boot protocol.

To support both in barebox, we have a global.bootm.efi parameter that
allows choosing either:

  - required:  only boot EFI executables via EFI
  - available: attempt EFI boot for EFI executables if barebox support
               is available
  - disabled:  never attempt EFI boot

With barebox support here meaning CONFIG_EFI_LOADER being enabled.

This fails to account for configurations that have only
CONFIG_EFI_PAYLOAD and that are actually running as EFI payload.
For those, we should always require EFI boot for EFI executables as
stating a kernel from within an EFI environment without exiting boot
services is not a good idea.

Thus change the check to IS_ENABLED(CONFIG_EFI_LOADER) || efi_is_payload().

IS_ENABLED(CONFIG_EFI_PAYLOAD) would be incorrect as we can enable EFI
payload support, but start barebox directly, not via its own EFI stub.

Fixes: 6119a5b54ed1 ("bootm: add global.bootm.efi toggle")
Reported-by: Chali Anis <chalianis1@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index d43079bb81da..82b0f0bd0563 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -845,7 +845,7 @@ bool bootm_efi_check_image(struct image_handler *handler,
 	 * and fallback to normal boot otherwise.
 	 */
 	if (data->efi_boot == BOOTM_EFI_AVAILABLE) {
-		if (IS_ENABLED(CONFIG_EFI_LOADER))
+		if (IS_ENABLED(CONFIG_EFI_LOADER) || efi_is_payload())
 			data->efi_boot = BOOTM_EFI_REQUIRED;
 		else
 			data->efi_boot = BOOTM_EFI_DISABLED;
-- 
2.47.3



