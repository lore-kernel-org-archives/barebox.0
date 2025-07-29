Delivery-date: Tue, 29 Jul 2025 16:02:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugkuI-004wfW-0m
	for lore@lore.pengutronix.de;
	Tue, 29 Jul 2025 16:02:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugkuH-00046I-NR
	for lore@pengutronix.de; Tue, 29 Jul 2025 16:02:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aG7osGxR6ny2QHcx3y4Pysjx01zDKIl2qUduc2S3rd8=; b=dgCjTP+Nq5lofaYErRGyx6FBdL
	Nk/Idr/bNlrUs8pdkVUuMzK3FoLXVz/5x2HpHMYzn7BRTDboFCUCjuS10XLkgvLgxgz4aJK1nCZfl
	Uw2qzMkktQb6BqcqXOtsvpDYsQDZeHosEMNhN03/SmL4hr37sQ67LRmBDcBvv4iJZwywYjvXa4UUE
	jIRiV6wFXgixUF6p45gsh1gAij1EzxgR6Z/8h2LAa3Jvwphu74J+o6LkHpM53104Naj/JjnHYn6y8
	j2iG+lAph8R1vn2gwqK2m1tWWyfD4VsG43bipSTdUQn9cimhpRw37qmduQcmJyVQCBXCK2FViLLH3
	9dBuHeNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugktR-0000000GrtW-12Ob;
	Tue, 29 Jul 2025 14:01:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugkrX-0000000Grkb-0pCh
	for barebox@lists.infradead.org;
	Tue, 29 Jul 2025 13:59:28 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1ugkrU-0003Ba-6R; Tue, 29 Jul 2025 15:59:24 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 29 Jul 2025 15:59:24 +0200
Message-Id: <20250729135924.122052-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_065927_234312_FCF755FF 
X-CRM114-Status: GOOD (  11.26  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: mmc_extcsd: fix calculation of RPMB size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

EXT_CSD_RPMB_SIZE_MULT contains the number of 128 KB blocks in the RPMB.
While the calculated RMPB is labeled as KB, it actually contains the
size in bytes.

Fix the calculation to report the RPMB size in KB.

An alternative would have been to change the label to bytes, but since
the RPMB size is at least in an order of magnitude of KB, changing the
label is not intuitive.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 commands/mmc_extcsd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
index 7fa6235a4da9..e7b0fd82ee29 100644
--- a/commands/mmc_extcsd.c
+++ b/commands/mmc_extcsd.c
@@ -1544,7 +1544,7 @@ static int print_field(u8 *reg, int index)
 
 	case EXT_CSD_RPMB_SIZE_MULT:
 		val = get_field_val(EXT_CSD_RPMB_SIZE_MULT, 0, 0xFF);
-		val = val * 131072;
+		val = val * 128;
 		printf("\t[7-0] RPMB Partition Size: %u KB\n", val);
 		return 1;
 
-- 
2.39.5



