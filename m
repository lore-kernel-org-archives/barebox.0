Delivery-date: Sun, 29 Mar 2026 09:31:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w6kcM-006Mow-2l
	for lore@lore.pengutronix.de;
	Sun, 29 Mar 2026 09:31:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w6kcM-0004m2-Az
	for lore@pengutronix.de; Sun, 29 Mar 2026 09:31:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fHgATQ4lu7op+enPm4Pb+bVvP2ZzTqXJgp6cywIgsa4=; b=RLnN9y5SHvgkKV
	x6Rc/a1zckC+5gHFIhvshwdJbHmS9ITVCx7JdlfL+3jyomdtKIR6GgvOfWQJDZKAqOpYTa8NYOXG5
	dkBabuu4u/qIt4xnO6pENhDeifBBIuvogswnjOX7McaV3mndVeIadvMU+1JHP8BMGv7OzBEBvJ+Tw
	1NePAOuxngW7NLz9webwXV8L8GLT7PBofNjKSbCfCvF5/zWnGYWAHcYbm+O3ftNb2nmKlVk5F4H87
	r469zlXnG/G4OcRGWfjpUkxRn8svXAla2RUuyAx9FeIaXr6DvykJTFErtTf2RYiAg+g+St4PTMaZ0
	tTD6+13ytLcVn65xHb8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6kbb-00000009hiu-3K3B;
	Sun, 29 Mar 2026 07:30:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6kbY-00000009hhO-0RvN
	for barebox@lists.infradead.org;
	Sun, 29 Mar 2026 07:30:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1w6kbT-0004hE-TY; Sun, 29 Mar 2026 09:30:36 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Sun, 29 Mar 2026 09:30:33 +0200
Message-ID: <20260329073034.857282-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260329_003040_167373_6D72E2B4 
X-CRM114-Status: UNSURE (   9.64  )
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
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: bfetch: use 64-bit integer types for sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

size_human_readable() accepts a 64-bit argument (unsigned long long),
but we pass smaller types into it, leading to truncation when computing
the total sizes for display.

Switch to 64-bit variables to fix this.

Reported-by: Jan Luebbe <jlu@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/bfetch.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/bfetch.c b/commands/bfetch.c
index d9c615f65aca..9dfb07aa2ab7 100644
--- a/commands/bfetch.c
+++ b/commands/bfetch.c
@@ -244,7 +244,7 @@ static struct bobject *print_cpu_mem_info(unsigned *line)
 {
 	struct bobject *bret = NULL;
 	struct memory_bank *mem;
-	unsigned long memsize = 0;
+	u64 memsize = 0;
 	int nbanks = 0;
 	int ret;
 
@@ -565,9 +565,9 @@ static void print_storage(unsigned *line)
 	unsigned nmtds = 0, nnvmem =0;
 	struct block_device *blk;
 	unsigned nblkdevs[BLK_TYPE_COUNT] = {};
-	unsigned blkdev_sizes[BLK_TYPE_COUNT] = {};
+	u64 blkdev_sizes[BLK_TYPE_COUNT] = {};
 	struct mtd_info *mtd;
-	size_t mtd_size = 0, nvmem_size = 0;
+	u64 mtd_size = 0, nvmem_size = 0;
 	struct string_list sl;
 	struct device *dev;
 
-- 
2.47.3



