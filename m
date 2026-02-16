Delivery-date: Mon, 16 Feb 2026 10:18:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukP-002H20-2e
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:18:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukI-0008MH-JI
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:18:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DaJjwfraReYKo7NZOEoJj/NlYDVdCrXZlcBlk5DRGT4=; b=OcNBgMwUkK8i6dV7O8L2Z/iHy+
	yWSyAqzWLB/SG1SWlgiqAcaIUpm0diParabLhtS/J8xZSPe4YAi2AUhN1yEEo5GyJWe4DQrGMYVDY
	BQgc6LEJjtYR9OsVIcwS0X1hKyAe9RQODF1N+mHd9OCeuh8UwiyMzUPUK4WtZfGM3odk4BokQ+tBk
	1Zyc0QDtbtixNQIVin/c4J6iiU+5mhZbcUnCMOhI0vcvmxZoLIRNVopkvBFP6Fs7DDd6VEozeVtVL
	wx1MUrU/gVu23KD36QNkmaqtseSE1pFsXcD4sW7s5kSvNMHFg5AmsNAFQAspqTDwymG636d3BG9A4
	cfj2Z4Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruj7-00000006F0H-3jEs;
	Mon, 16 Feb 2026 09:17:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruio-00000006Eai-1b2U
	for barebox@bombadil.infradead.org;
	Mon, 16 Feb 2026 09:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=DaJjwfraReYKo7NZOEoJj/NlYDVdCrXZlcBlk5DRGT4=; b=XQo/6yJVLtTHyGdUN5agD+TEBW
	wOBVlWpwaJ0vZEwHrpcwAJyRWxgbd80Dv++rRUmgwvcGLMKLtb/jd7Dp+PNn6Tv980xGDfpKEtiDs
	VPkb00iLQ39kI9aLcrdyKyV8TvQkngyqLFvE2FsFNB4vmKmJKmc408r82Dozx1NLiKfCgxbKD9WGP
	SB0c5xsx+3jG7kZaxwy7+uUOi6PZ90w6dzeJq0X9STBh4XBxx2jJmdIN+6/95jDxIVZj1qb+Osdop
	7f4qMezOgnnQsJ3/oqz71gdcK2UJ0deG6hxNLhCwzgIbt8xvzOV4X4nrSSMG4CfagFsSt4U8zF97Y
	ydv/c7JQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruii-0000000EIEj-2YYZ
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruig-0006XI-4R; Mon, 16 Feb 2026 10:16:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruie-0012Xg-1M;
	Mon, 16 Feb 2026 10:16:41 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH1-0000000Eudd-0Bwd;
	Mon, 16 Feb 2026 09:48:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:29 +0100
Message-ID: <20260216084758.3548990-30-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_091645_604259_E12BF414 
X-CRM114-Status: UNSURE (   9.01  )
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
Subject: [PATCH master 29/39] efi: loader: fix memory leak in efi_var_collect on buffer overflow
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When the variable buffer is too small, efi_var_collect() returns
EFI_BUFFER_TOO_SMALL directly without freeing the buf allocated by
calloc() at the top of the function.

Free buf before returning.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/efi_var_common.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/efi/loader/efi_var_common.c b/efi/loader/efi_var_common.c
index bd5af007ed9c..4c6cb77e7c2c 100644
--- a/efi/loader/efi_var_common.c
+++ b/efi/loader/efi_var_common.c
@@ -430,8 +430,10 @@ efi_status_t __maybe_unused efi_var_collect(struct efi_var_file **bufp, loff_t *
 		efi_status_t ret;
 
 		if ((uintptr_t)buf + len <=
-		    (uintptr_t)var->name + old_var_name_length)
+		    (uintptr_t)var->name + old_var_name_length) {
+			free(buf);
 			return EFI_BUFFER_TOO_SMALL;
+		}
 
 		var_name_length = (uintptr_t)buf + len - (uintptr_t)var->name;
 		memcpy(var->name, old_var->name, old_var_name_length);
-- 
2.47.3



