Delivery-date: Mon, 16 Feb 2026 09:48:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruHf-002GJN-2V
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:48:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruHg-0002pr-13
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:48:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ygw/FJ/t4dm2QQazYiiWs4apL9aD2MgeF+gZTqWm8UE=; b=G57BneVhyzGqte4hueVFk5y6XT
	zXbslBjXBxvBNai2rBFB2uhe36crbqDuvCL2D5W1Zl39jQaGvlwaUmUNx9smGAE1sUUN10BHXghOu
	M92k2Gy/a5m0mr12dGZi4s29Qg7nyOTWOm7mwWELnNeIRSY+LfcVzzD8tKgAUjwdmtAlblyjBaDJu
	iAgHu6QK20eENcxv1DPutTBFIdBOLxkubFdzaMXhQitdN1BryfaJUVLbPhWXZORLeSbtzWDjBqeRT
	oOOVpX4/UEyEGyN8i6JtkjUNsreVkldflDjnfGJmB//55S9EGmktTpUtRfiBR3H68iIDH06cllEys
	TUL9UJGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruHH-00000006Bo5-3gdw;
	Mon, 16 Feb 2026 08:48:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruHA-00000006Bf7-09ZC
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:48:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0002JC-Eb; Mon, 16 Feb 2026 09:48:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruGy-0012DO-2g;
	Mon, 16 Feb 2026 09:48:06 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0000000Eudd-0IFp;
	Mon, 16 Feb 2026 09:48:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:07 +0100
Message-ID: <20260216084758.3548990-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_004816_097493_66CFCFCB 
X-CRM114-Status: UNSURE (   9.17  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH master 07/39] efi: runtime: fix missing EFI_EXIT in efirt_query_variable_info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Two early return paths after EFI_ENTRY() return raw EFI status codes
without going through EFI_EXIT(), corrupting the nesting depth
counter. Wrap both returns with EFI_EXIT().

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/runtime/services.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/efi/runtime/services.c b/efi/runtime/services.c
index 11a1c5cb6cb6..5044e16c7c5c 100644
--- a/efi/runtime/services.c
+++ b/efi/runtime/services.c
@@ -241,11 +241,11 @@ efirt_query_variable_info(u32 attributes,
 	EFI_ENTRY(L"");
 
 	if (!(attributes & EFI_VARIABLE_RUNTIME_ACCESS))
-		return EFI_INVALID_PARAMETER;
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
 	if ((attributes & (EFI_VARIABLE_AUTHENTICATED_WRITE_ACCESS |
 			   EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS |
 			   EFI_VARIABLE_ENHANCED_AUTHENTICATED_ACCESS)))
-		return EFI_UNSUPPORTED;
+		return EFI_EXIT(EFI_UNSUPPORTED);
 
 	ret = efi_query_variable_info_int(attributes,
 					  maximum_variable_storage_size,
-- 
2.47.3



