Delivery-date: Mon, 19 Feb 2024 09:32:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4a-00E47g-2X
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 09:32:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz4X-0003TL-Qk
	for lore@pengutronix.de; Mon, 19 Feb 2024 09:32:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vKqh41d41DMkCs8hvtdJ0nNSH3V86LyLdStkPJTEJD0=; b=dkWr+F2op1meJroWwDsc7TMeNO
	HDsWDPnj7mKd/4sq7Zxrrh2764ml8OeQFeka2R8TCnZ6H0zALp2ORXyTTXJEVCgBNIZ3vY06H5maQ
	5Ws6ytPw83xpXQznHPY/WOhbExddQb6mklbUgPC4Bc/02z3up8J9VFDvktAnc8PBPxaSBBua2pbVS
	OAbjZsM1L5xLbhU23zoTuR9/ekNFl12VLr0NhjU779ueStJ1zccIy2MDtmldY/yYDPAmOqrjrVCqV
	IUaZk/7Zq9lFoFei7MYfVrVvYEllIgrL3+/PhkX94c2T2FNin6JHhDCfRtATV7dWirl16IEUTuP01
	feYt9Dvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz42-00000009ade-04Mv;
	Mon, 19 Feb 2024 08:31:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz3v-00000009aZJ-2vuL
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 08:31:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-00030C-FC; Mon, 19 Feb 2024 09:31:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-001bkv-1Y; Mon, 19 Feb 2024 09:31:42 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3t-00CNCk-33;
	Mon, 19 Feb 2024 09:31:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Feb 2024 09:31:32 +0100
Message-Id: <20240219083140.2713047-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219083140.2713047-1-s.hauer@pengutronix.de>
References: <20240219083140.2713047-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_003143_814422_82190937 
X-CRM114-Status: GOOD (  13.60  )
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
Subject: [PATCH 04/12] partition: efi: keep raw data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Keep raw data for later partition write support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/efi.c | 25 +++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 5612f6261b..84d55e6491 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -22,6 +22,16 @@
 #include <efi/partition.h>
 #include "parser.h"
 
+struct efi_partition_desc {
+	struct partition_desc pd; /* must be first */
+	gpt_header gpt;
+};
+
+struct efi_partition {
+	struct partition part; /* must be first */
+	gpt_entry pte;
+};
+
 static const int force_gpt = IS_ENABLED(CONFIG_PARTITION_DISK_EFI_GPT_NO_FORCE);
 
 /**
@@ -437,8 +447,9 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 	gpt_entry *ptes = NULL;
 	int i = 0;
 	int nb_part;
+	struct efi_partition *epart;
 	struct partition *pentry;
-	struct partition_desc *pd = NULL;
+	struct efi_partition_desc *epd = NULL;
 
 	if (!find_valid_gpt(buf, blk, &gpt, &ptes) || !gpt || !ptes)
 		goto out;
@@ -456,8 +467,9 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 		nb_part = MAX_PARTITION;
 	}
 
-	pd = xzalloc(sizeof(*pd));
-	INIT_LIST_HEAD(&pd->partitions);
+	epd = xzalloc(sizeof(*epd));
+	INIT_LIST_HEAD(&epd->pd.partitions);
+	epd->gpt = *gpt;
 
 	for (i = 0; i < nb_part; i++) {
 		if (!is_pte_valid(&ptes[i], last_lba(blk))) {
@@ -465,7 +477,8 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 			continue;
 		}
 
-		pentry = xzalloc(sizeof(*pentry));
+		epart = xzalloc(sizeof(*epart));
+		pentry = &epart->part;
 		pentry->first_sec = le64_to_cpu(ptes[i].starting_lba);
 		pentry->size = le64_to_cpu(ptes[i].ending_lba) - pentry->first_sec;
 		pentry->size++;
@@ -473,13 +486,13 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 		snprintf(pentry->partuuid, sizeof(pentry->partuuid), "%pUl", &ptes[i].unique_partition_guid);
 		pentry->typeuuid = ptes[i].partition_type_guid;
 		pentry->num = i;
-		list_add_tail(&pentry->list, &pd->partitions);
+		list_add_tail(&pentry->list, &epd->pd.partitions);
 	}
 out:
 	kfree(gpt);
 	kfree(ptes);
 
-	return pd;
+	return &epd->pd;
 }
 
 static void efi_partition_free(struct partition_desc *pd)
-- 
2.39.2



