Delivery-date: Tue, 27 Jan 2026 16:37:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkl7v-005wII-2v
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 16:37:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkl7u-000094-UX
	for lore@pengutronix.de; Tue, 27 Jan 2026 16:37:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=w3wMUSXMrxgJuP5Jk5yIslHR3fc3rBmm51xZAeMBifc=; b=IewEYrHVbfXFn31MTSxHVEaxmb
	2j4j7n44uJsJojp3QDhdtQ02uFvpKywoRvj3uulAgNpRXG2RXbgvCBv2dyROKhx4WS6bonyHF8uo+
	XGnmKkS1ewWlKKjnMyiG+HmPS91IsrxXokw4Ns1b9qX6iLzHQ5XQ6zNLHv2STmR58Zp4WW/LTiBcV
	obNgaDyDB7sOqe5w+I2Jq0BIsbrcWgjv3yvBQ6N/pTC62JhtBHMf+v8vpZcHCF7E6xHXMs8D7kQTD
	hp3F94D1y5lTrktOZQZgDDqn3v2ha8R5VtS6D7NHThBZsxXv6xMV1UXjnrSBv+XJ7Wx1FFjzhLanp
	+M+XmnJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkl7U-0000000EYs7-0YfY;
	Tue, 27 Jan 2026 15:36:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkl7R-0000000EYrg-3Kgm
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 15:36:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkl7P-0008UC-Vf; Tue, 27 Jan 2026 16:36:39 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkl7Q-002luZ-1U;
	Tue, 27 Jan 2026 16:36:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkl7Q-0000000EE7M-0t5h;
	Tue, 27 Jan 2026 16:36:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 Jan 2026 16:36:38 +0100
Message-ID: <20260127153639.3390850-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_073641_832746_CE69E556 
X-CRM114-Status: UNSURE (   9.71  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] efi: loader: reduce warning about non-persistent EFI variables to notice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When booting an EFI-stubbed kernel outside of an ESP, we always get:

  WARNING: efi-loader: var-file: Cannot persist EFI variables without
  system partition

A warning is arguably a bit harsh, because one still benefits from
keeping the MMU enabled and the other EFI runtime services, so bump to a
notice log level instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/efi_var_file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/loader/efi_var_file.c b/efi/loader/efi_var_file.c
index 652354693ae7..e0dec999b779 100644
--- a/efi/loader/efi_var_file.c
+++ b/efi/loader/efi_var_file.c
@@ -59,7 +59,7 @@ efi_status_t efi_var_to_file(void)
 	dirfd = efiloader_esp_mount_dir();
 	if (dirfd < 0) {
 		if (!once) {
-			pr_warn("Cannot persist EFI variables without system partition\n");
+			pr_notice("Cannot persist EFI variables without system partition\n");
 			once = true;
 		}
 		efiret = EFI_NO_MEDIA;
-- 
2.47.3



