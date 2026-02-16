Delivery-date: Mon, 16 Feb 2026 10:18:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukV-002H3H-2G
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:18:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukT-0008Vg-8X
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:18:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l50Q3N6ND1kWqO5FkZggZWIesDMZFhO50q8fPDPnunk=; b=ddY8dsoSY/tVWGuBtJ+WaaloTa
	pnDtNrhKR43xcaaomSOpNOAhqKq/2N3D+XFj7HGDHGoFrvvR9oi1NQdJKZwaJxSXFK2oMnFTka/hc
	lSgzWS9OMFqaX0dJk1MFu54+L1LCSMSOWMCw/XFpY6W1Fofcy6jYThA31T7+I+SNO8NGZtz9DjKg/
	LAmV3xB1scuc80sgBrl6zO8ZbuOz2RuVGM2CJxMEkRMSOSjMrNY8S/Qn/PJq92j6FzwNABCrjtme0
	bBWkshcdeZyUDqJwrGXjBF90Bqxxz5Sqzbqh+kawRkO/qqA3mTIy0s/Blhj1NFtmqRbPOgrVfrEi5
	EgYZ/r1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrujM-00000006FLb-2Y0G;
	Mon, 16 Feb 2026 09:17:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruiq-00000006EeL-1Vcu
	for barebox@bombadil.infradead.org;
	Mon, 16 Feb 2026 09:16:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=l50Q3N6ND1kWqO5FkZggZWIesDMZFhO50q8fPDPnunk=; b=Q9bxWejp/Nk9ZhejT3P/0rqa4p
	vMipqWF2BgfsWrqq2WrPYRLhiViMBcccyKRz72RKQet1S+hMPkJ7bCKu99Lglcz1ecVQLdN2rx44T
	1rD8acFFlhc68oE+sTr54SXeTGAb0hFRzpjfcNzA9iU6jpoU7AIdX5KUn2CZS2btRqJvVLfLrsmX3
	fIiiJui8sIB668nXCHml5s+tLKdzPwMKd984Qe0W2rhm+jWgUSN+wNxYUqGF1XW+WQPD72TD5JJ+3
	EUwVeE2k/LJM4/YsniMaL25kh6CaIgtx9sSi6YT7BkI7xn9fC0FpJkKjarmDkX3ynPmGW2rnpP/k+
	Ki2OUEvw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruil-0000000EIEs-1eto
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruig-0006Zf-R3; Mon, 16 Feb 2026 10:16:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruif-0012YF-0o;
	Mon, 16 Feb 2026 10:16:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0000000Eudd-1nhM;
	Mon, 16 Feb 2026 09:48:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:15 +0100
Message-ID: <20260216084758.3548990-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_091648_845614_97CFE278 
X-CRM114-Status: UNSURE (   9.38  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH master 15/39] efi: loader: fix format specifier and missing EFI_EXIT in boot services
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fix efi_create_event_ext using %lu for efi_uintn_t (which is size_t),
should be %zx.

Fix efi_disconnect_controller returning 'r' directly without
EFI_EXIT after EFI_ENTRY, corrupting the nesting depth counter.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/boot.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/efi/loader/boot.c b/efi/loader/boot.c
index 93a3412f5794..adeb2ff337b3 100644
--- a/efi/loader/boot.c
+++ b/efi/loader/boot.c
@@ -729,7 +729,7 @@ static efi_status_t EFIAPI efi_create_event_ext(
 					void *context),
 			void *notify_context, struct efi_event **event)
 {
-	EFI_ENTRY("%d, 0x%lu, %p, %p", type, notify_tpl, notify_function,
+	EFI_ENTRY("%d, 0x%zx, %p, %p", type, notify_tpl, notify_function,
 		  notify_context);
 	return EFI_EXIT2(efi_create_event(type, notify_tpl, notify_function,
 					 notify_context, NULL, event), *event);
@@ -3741,7 +3741,7 @@ efi_status_t EFIAPI efi_disconnect_controller(
 				      &number_of_children,
 				      &child_handle_buffer);
 	if (r != EFI_SUCCESS)
-		return r;
+		return EFI_EXIT(r);
 	sole_child = (number_of_children == 1);
 
 	if (child_handle) {
-- 
2.47.3



