Delivery-date: Thu, 29 Feb 2024 10:47:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfd0m-00FH8L-15
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 10:47:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfd0l-0004xC-Pp
	for lore@pengutronix.de; Thu, 29 Feb 2024 10:47:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nLubu2oBBgqgbm19xDlgC4tNSJj7P/vg3mQ9vK23E7c=; b=CD9r1nLyE4MvQeTh8PO4Lnjtrq
	FNPxq8qE9/6e1e8FRI74NqNC0UbnLaO10eGvpCoHwVL4Mb/AxWwUwjBXqYyTxHvy9TsUTBqzBvnrn
	TU3L9W+ughIuN71nWsrPgfPe7nqZsc/ANypoKGUDLoEmpn8bGf3KkcSzbUUeB16a/ASp3mbe9gYwY
	g5jekQq3j32DyK9b0C+OsMqXvMJod+c71CLOSx4phDxaNbN19ZM5W9gHntY/UMnJzTBb3fcOh7E/X
	VqfLyx/xW0gOyDqXwmxgtryrX/EeivPjrX5tToREUHNGXKPn3lk3Qr6PqGA4qGQ2JCFbmqUkcW4HK
	Vit2wl6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfd0L-0000000CzyL-19Fg;
	Thu, 29 Feb 2024 09:47:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfd0I-0000000CzxT-3hk0
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 09:47:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfd0H-0004lZ-Lb; Thu, 29 Feb 2024 10:47:01 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfd0H-003YrP-8u; Thu, 29 Feb 2024 10:47:01 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfd0G-00C9sV-2B;
	Thu, 29 Feb 2024 10:47:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 29 Feb 2024 10:46:56 +0100
Message-Id: <20240229094655.2897860-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_014702_946412_E5A857C9 
X-CRM114-Status: GOOD (  10.37  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] optee: check optee_verify_header argument for error pointers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

optee_verify_header is called at two places with
imx_scratch_get_optee_hdr() as argument, which returns an error pointer.

Check against that to avoid crashing in error cases.

Suggested-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/optee.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/optee.c b/common/optee.c
index a8a43554e757..7fe93e441974 100644
--- a/common/optee.c
+++ b/common/optee.c
@@ -10,7 +10,7 @@ static u64 optee_membase = U64_MAX;
 
 int optee_verify_header(const struct optee_header *hdr)
 {
-	if (!hdr)
+	if (IS_ERR_OR_NULL(hdr))
 		return -EINVAL;
 
 	if (hdr->magic != OPTEE_MAGIC) {
-- 
2.39.2



