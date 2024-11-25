Delivery-date: Mon, 25 Nov 2024 16:31:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb3s-000FzK-2S
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:31:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb3s-0003VU-NY
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:31:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=btQrfduJtJpjBDqjb9SaKMSaUltZA+7y554XefEyB8Y=; b=wOGumna+3lHj0CmQMAGOnqTXwA
	OlZwbcHMGObazBlHHW62zUF7gQmALHjD9ymESneGbrxlA1agm0HIVKMcFTtw4rI7+wAFrTzdqlSes
	kj/vRBe7RgXDANqS89fA09FML2fdpKl/5s4GkwcH+XTglUifRwzfYr8+I9Oxp2+JTER7e+V1RU0BQ
	vpCHhsuli+1VCRkyJezi9QzIMtG4viv3gdlgWEL9hnfbA1+ZFMzUTrKfi/uAqJ21PMqKYrvfm0upI
	Lhrde8kThIFM4M7YoMgISJiNwozKEJUbo6C+wUh9TqpLY/a4zILAaZDjXwkF2VeHB2UdtDOuXG4mR
	a2dvqaLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb3U-00000008Ubb-0wdw;
	Mon, 25 Nov 2024 15:31:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb0J-00000008Tzj-0Eo1
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:28:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb0H-0002yX-Ly; Mon, 25 Nov 2024 16:27:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb0G-0006Py-2I;
	Mon, 25 Nov 2024 16:27:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb0G-0029dw-2V;
	Mon, 25 Nov 2024 16:27:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:27:56 +0100
Message-Id: <20241125152756.513705-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125152756.513705-1-a.fatoum@pengutronix.de>
References: <20241125152756.513705-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_072759_098830_47A44B27 
X-CRM114-Status: UNSURE (   8.49  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] partitions: efi: remove unnecessary NULLing of local variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The variables are local and go out of scope anyway, so no point in
NULLing just before scope ends.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions/efi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 968b959397b5..af7eacfe3b68 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -122,7 +122,6 @@ static gpt_entry *alloc_read_gpt_entries(struct block_device *blk,
 	ret = block_read(blk, pte, from, size);
 	if (ret) {
 		free(pte);
-		pte=NULL;
 		return NULL;
 	}
 	return pte;
@@ -157,7 +156,6 @@ static gpt_header *alloc_read_gpt_header(struct block_device *blk,
 	ret = block_read(blk, gpt, lba, 1);
 	if (ret) {
 		free(gpt);
-		gpt=NULL;
 		return NULL;
 	}
 
-- 
2.39.5



