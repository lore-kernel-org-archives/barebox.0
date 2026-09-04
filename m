Delivery-date: Fri, 04 Sep 2026 10:01:48 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2Ors-00AeWN-04
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 10:01:48 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=aG4rPYHK;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9F07F205925
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 10:01:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zixbayos4JQTPzUOzUMc+LFQK6Jy1zC2TyGzfr0YJF0=; b=aG4rPYHK9ry9M5Biu72EDfPQBP
	r5kwVHgTEgVT76cKFy+Tzrhs1etKfJBZgzreyJOexne0qMBxmT7qIXTUf37ZYCY+9MKpN5baQiir1
	AbOm7jnXX2x7kgpvvlRn6p55T3/75rCsu88p9KWn9g+04C/VT88aa57UCCBramXsUSPxC/lTtniM3
	mYTPwJm8z8oppPGWX0aRSfR8dJC/GmdyA2YEEK4fr+6Pv2tqmokWdHZY9MuFi31IKynW5tcstCkL5
	Rifyw6FNgfjn/fsCK4oO8BXSCMy3vk3KYmjYGLmRki21jqKcPNw+hh7TKZmp+Y+iP5F20oQJi9oLV
	DS+5sNYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Oqc-00000001JsP-22MG;
	Fri, 04 Sep 2026 08:00:30 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2OqZ-00000001Jqv-3CV1
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 08:00:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id F39D9205929;
	Fri, 04 Sep 2026 10:00:25 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x2OqX-004sj1-2w;
	Fri, 04 Sep 2026 10:00:25 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x2OqX-00000000cNK-3OsL;
	Fri, 04 Sep 2026 10:00:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 2/5] scripts: imx9image: fix warnings reported by clang
Date: Fri,  4 Sep 2026 09:59:14 +0200
Message-ID: <20260904080025.147376-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260904080025.147376-1-a.fatoum@pengutronix.de>
References: <20260904080025.147376-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_010027_958630_9F5378C5 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Host tools inherit
    -Werror with CONFIG_WERROR=y and clang fails on: scripts/imx9image.c:889:6:
    error: variable 'cont_img_count' set but not used [-Werror,-Wunused-but-set-variable]
    scripts/imx9image.c:1263:33: error: equality comparison with extraneous parentheses
    [- [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: jrc1wb5z6o47aqidkj66emcxidq94rbk
X-Rspamd-Queue-Id: 9F07F205925
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]

From: Ahmad Fatoum <a.fatoum@barebox.org>

Host tools inherit -Werror with CONFIG_WERROR=y and clang fails on:

  scripts/imx9image.c:889:6: error: variable 'cont_img_count' set but not used [-Werror,-Wunused-but-set-variable]
  scripts/imx9image.c:1263:33: error: equality comparison with extraneous parentheses [-Werror,-Wparentheses-equality]

Drop the unused counter and the extra parentheses.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 scripts/imx9image.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/scripts/imx9image.c b/scripts/imx9image.c
index 61b7cc943f00..bd015a6ab7fc 100644
--- a/scripts/imx9image.c
+++ b/scripts/imx9image.c
@@ -886,7 +886,6 @@ static int build_container_qx_qm_b0(soc_type_t soc, uint32_t sector_size, uint32
 	const char *platform;
 
 	int container = -1;
-	int cont_img_count = 0; /* indexes to arrange the container */
 
 	if (image_stack == NULL) {
 		fprintf(stderr, "Empty image stack ");
@@ -948,7 +947,6 @@ static int build_container_qx_qm_b0(soc_type_t soc, uint32_t sector_size, uint32
 			img_sp->src = file_off;
 
 			file_off += ALIGN(sbuf.st_size, sector_size);
-			cont_img_count++;
 			break;
 
 		case DUMMY_V2X:
@@ -966,7 +964,6 @@ static int build_container_qx_qm_b0(soc_type_t soc, uint32_t sector_size, uint32
 						images_hash);
 			img_sp->src = file_off;
 
-			cont_img_count++;
 			break;
 
 		case SECO:
@@ -986,7 +983,6 @@ static int build_container_qx_qm_b0(soc_type_t soc, uint32_t sector_size, uint32
 			img_sp->src = file_off;
 
 			file_off += sbuf.st_size;
-			cont_img_count++;
 			break;
 
 		case NEW_CONTAINER:
@@ -995,7 +991,6 @@ static int build_container_qx_qm_b0(soc_type_t soc, uint32_t sector_size, uint32
 					CONTAINER_ALIGNMENT,
 					CONTAINER_FLAGS_DEFAULT,
 					fuse_version);
-			cont_img_count = 0; /* reset img count when moving to new container */
 			scfw_flags = 0;
 			break;
 
@@ -1260,12 +1255,12 @@ static void print_image_array_fields(struct flash_header_v3 *container_hdrs, soc
 			if ((soc == ULP) || (soc == IMX9)) {
 				if (img_flags.core_id == CORE_ULP_UPOWER)
 					strcpy(img_name, "uPower FW");
-				else if ((img_flags.core_id == CORE_ULP_CA35))
+				else if (img_flags.core_id == CORE_ULP_CA35)
 					if (app_cntr)
 						strcpy(img_name, "A core Image");
 					else
 						strcpy(img_name, "Bootloader");
-				else if ((img_flags.core_id == CORE_ULP_CM33))
+				else if (img_flags.core_id == CORE_ULP_CM33)
 					strcpy(img_name, "M33");
 
 			} else {
-- 
2.47.3



