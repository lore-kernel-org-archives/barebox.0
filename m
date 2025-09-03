Delivery-date: Wed, 03 Sep 2025 16:49:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utonc-007gQH-36
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 16:49:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utonb-0006p5-Q8
	for lore@pengutronix.de; Wed, 03 Sep 2025 16:49:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iahPgQL9c+wXRLMbPHQ8+/o/fI7bGUmulXdsRVYT88w=; b=XAwV64Af06phCqPvKZKyIFzRRj
	Zlqoztkz8RG1AItYu1ufPuxaJes2bJW0hQGw4oQR6ZRGkbaw0HS90boVnO+5X9OnltN2Q1GZgm09/
	9m8hm1mkzfI4BGuCEFj7YrqorJ9XWy0JySvku/+4aREbGoYyIYxHaHs56DpBSqbT1Jbzh8HzsxwSh
	Rd0VfNRVUUBFPcxD5CID9qiAofdQREIz00555qigHqaijD9em0Y489IYIhZfiINkJhtFaE6o5gHju
	6KFsfYye+/am5BywOodY4dy3V/Y23e0tgvIeTsT+i2SoNMtKTnBECs4+R68S+274F8GDXTXvVvWX7
	mwniUZKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utomx-00000006m70-1mUe;
	Wed, 03 Sep 2025 14:48:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utmop-00000006QeE-0EA1
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 12:42:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utmon-0001Vb-U6; Wed, 03 Sep 2025 14:42:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utmon-003Ys7-2P;
	Wed, 03 Sep 2025 14:42:29 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utmon-00000001y7z-2bJz;
	Wed, 03 Sep 2025 14:42:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  3 Sep 2025 14:42:23 +0200
Message-ID: <20250903124223.469449-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_054231_088651_98E6E115 
X-CRM114-Status: GOOD (  10.76  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] powerpc: mpc5xxx: declare taskTable as array
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

gcc15 rightfully complains about access outside array bounds in usage of
taskTable:

arch/powerpc/mach-mpc5xxx/loadtask.c:37:43: error: array subscript 1 is outside array bounds of 'int[1]' [-Werror=array-bounds=]

Declare that variable as an array as that's what it actually is.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/powerpc/mach-mpc5xxx/loadtask.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/powerpc/mach-mpc5xxx/loadtask.c b/arch/powerpc/mach-mpc5xxx/loadtask.c
index e2489983ee..9302cbdcdc 100644
--- a/arch/powerpc/mach-mpc5xxx/loadtask.c
+++ b/arch/powerpc/mach-mpc5xxx/loadtask.c
@@ -13,12 +13,12 @@
 #include <types.h>
 
 /* BestComm/SmartComm microcode */
-extern int taskTable;
+extern int taskTable[];
 
 void loadtask(int basetask, int tasks)
 {
 	int *sram = (int *)MPC5XXX_SRAM;
-	int *task_org = &taskTable;
+	int *task_org = taskTable;
 	unsigned int start, offset, end;
 	int i;
 
-- 
2.47.2



