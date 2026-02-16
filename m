Delivery-date: Mon, 16 Feb 2026 09:48:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruHa-002GHL-39
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:48:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruHb-0002kQ-63
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:48:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W3N0VStMioix8izDLVbb4JQpi8LBLKClGJqpTelUC/k=; b=xXkcnKihn4MbF2dOdzDhVVP8LO
	EAuIWxgfcm2bNyqcZFppY9gWyVJbQL6xz/bpnVoKWskNKtehxrNv4Ye/0a7P6lYn3kd9k5OQjueUd
	z2k6ldZhyvLWpjrEzLqn1T66yuw5DWHqN4Wmv6V4vNiov77fsDTo1NvS+PMWbvfyXC0vfa3MKrmcH
	7Sk5BmmveSBEoCzqoBmsT9uuUamq1JZ+MtlbjepOOAwtBaxZbyMZKpf2TvVcad4QsM1CZTVHjxmSD
	+I1uLnv7AQB/K4+ZVgX76+ef4u2JC37tYRxX5wrpejfjz3wa4W/SHbt35UDgJFOqkT6ZqiijwE134
	WIpGTuRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruHA-00000006Bgo-2jvz;
	Mon, 16 Feb 2026 08:48:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruH1-00000006BZf-3iVJ
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:48:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0002J5-CP; Mon, 16 Feb 2026 09:48:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruGy-0012DL-2V;
	Mon, 16 Feb 2026 09:48:06 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0000000Eudd-06nH;
	Mon, 16 Feb 2026 09:48:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:06 +0100
Message-ID: <20260216084758.3548990-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_004810_772364_B1F6547D 
X-CRM114-Status: UNSURE (   9.78  )
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
Subject: [PATCH master 06/39] efi: loader: fix EFI_ENTRY/EFI_EXIT ordering in efi_set_time
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When CONFIG_EFI_LOADER_SET_TIME is disabled, the function calls
EFI_EXIT(EFI_UNSUPPORTED) before EFI_ENTRY, corrupting the EFI
nesting depth counter. Move EFI_ENTRY before the IS_ENABLED check.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/runtime.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/efi/loader/runtime.c b/efi/loader/runtime.c
index 4b3cb6df1350..f0fbd263fe55 100644
--- a/efi/loader/runtime.c
+++ b/efi/loader/runtime.c
@@ -240,11 +240,11 @@ static efi_status_t EFIAPI efi_set_time_boottime(struct efi_time *time)
 	struct rtc_time tm;
 	struct rtc_device *rtc;
 
+	EFI_ENTRY("%p", time);
+
 	if (!IS_ENABLED(CONFIG_EFI_LOADER_SET_TIME))
 		return EFI_EXIT(EFI_UNSUPPORTED);
 
-	EFI_ENTRY("%p", time);
-
 	if (efi_validate_time(time)) {
 		ret = EFI_INVALID_PARAMETER;
 		goto out;
-- 
2.47.3



