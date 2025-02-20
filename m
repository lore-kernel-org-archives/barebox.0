Delivery-date: Thu, 20 Feb 2025 21:31:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlDCL-004qIL-1D
	for lore@lore.pengutronix.de;
	Thu, 20 Feb 2025 21:31:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlDCK-0004HZ-1S
	for lore@pengutronix.de; Thu, 20 Feb 2025 21:31:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/qYzSEEHSdeIYwFjlwWWF0u8F8ty9+Z1y+6JGr2N1WA=; b=byFLO3CkvN5c4cn9DJAXjddrJE
	zLSPsFi5xQnOP8dq6bfbeoqH8eB191tDx6BwMdZ405kRKtZSho2xPc8Y42R1gQ6DeEEILI3RIkXHm
	u6ypl8iseZtDkl9QkUC15k/U2pBFPfi+JeMJEPFoTZNaf9NMk6DpbcxlGkg3njCrqIedSBpJMGpd1
	qv4SN32IVDqY346z9m/t5LOCm2e/NceBrPSzqeAT3hpvsuLmxdQ0srWP9pJC+Fn31FcZRz9SmYot8
	+2GcX7mElZygll7Jc90Nf1uyh63cac+Fc4gaPucSO5dg2HXm/8zVdiRJNWizgYIA7SFAG1NRjd1tM
	PQIN29gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlDBx-00000002nJH-08ve;
	Thu, 20 Feb 2025 20:30:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlDBr-00000002nFu-46zW
	for barebox@lists.infradead.org;
	Thu, 20 Feb 2025 20:30:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlDBq-0003xJ-He; Thu, 20 Feb 2025 21:30:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlDBq-001zS3-15;
	Thu, 20 Feb 2025 21:30:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlDBq-00E3gH-0n;
	Thu, 20 Feb 2025 21:30:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Feb 2025 21:30:28 +0100
Message-Id: <20250220203032.3350247-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250220203032.3350247-1-a.fatoum@pengutronix.de>
References: <20250220203032.3350247-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_123036_052528_90D5ED0C 
X-CRM114-Status: GOOD (  10.80  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/6] tlsf: fail allocations exceeding MALLOC_MAX_SIZE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

TLSF already enforces a maximum allocation size of SZ_1G on 32-bit systems
and a size of SZ_4G on 64-bit systems. There's no need to differentiate
between the two, let's settle on SZ_1G for both by unconditionally using
the newly introduced MALLOC_SHIFT_MAX macro.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/tlsf.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index 4cd90e150de2..146f1b7ebe81 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -46,15 +46,7 @@ enum tlsf_private
 	** blocks below that size into the 0th first-level list.
 	*/
 
-#if defined (TLSF_64BIT)
-	/*
-	** TODO: We can increase this to support larger sizes, at the expense
-	** of more overhead in the TLSF structure.
-	*/
-	FL_INDEX_MAX = 32,
-#else
-	FL_INDEX_MAX = 30,
-#endif
+	FL_INDEX_MAX = MALLOC_SHIFT_MAX,
 	SL_INDEX_COUNT = (1 << SL_INDEX_COUNT_LOG2),
 	FL_INDEX_SHIFT = (SL_INDEX_COUNT_LOG2 + ALIGN_SIZE_LOG2),
 	FL_INDEX_COUNT = (FL_INDEX_MAX - FL_INDEX_SHIFT + 1),
@@ -824,15 +816,9 @@ pool_t tlsf_add_pool(tlsf_t tlsf, void* mem, size_t bytes)
 
 	if (pool_bytes < block_size_min || pool_bytes > block_size_max)
 	{
-#if defined (TLSF_64BIT)
-		printf("tlsf_add_pool: Memory size must be between 0x%x and 0x%x00 bytes.\n",
-			(unsigned int)(pool_overhead + block_size_min),
-			(unsigned int)((pool_overhead + block_size_max) / 256));
-#else
 		printf("tlsf_add_pool: Memory size must be between %u and %u bytes.\n",
 			(unsigned int)(pool_overhead + block_size_min),
 			(unsigned int)(pool_overhead + block_size_max));
-#endif
 		return 0;
 	}
 
-- 
2.39.5



