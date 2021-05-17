Delivery-date: Mon, 17 May 2021 20:56:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPI-0005SA-0T
	for lore@lore.pengutronix.de; Mon, 17 May 2021 20:56:00 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPH-0003z2-84
	for lore@pengutronix.de; Mon, 17 May 2021 20:55:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G2ZMo0mV06JM1gPQBorAIPZh5Y9ojJXhC1R8CaoxbPQ=; b=TsA4TgEMyBBTVbyx2jsvu47GK
	aPAaB+w9Mo7ZlYi7sZ0geg6DeYZBIEg09jeGXc0JgZMSNVYFSNPkFt8PQxpoCa/fbl0w+80hw7EkB
	p8XZiqGmcp3mCZ7fauFuzpqEZcgTE4jSA7LRr4IKFvwJ4GTiOW3V9RJqQX2kvXb8wjftOwHUXZAGJ
	pBzyIZz2+zTgXm9X6+rzWlmbEMdJukCVu0kFMNK0bj8WH3UFfXcUbisvS/th0+aj+eG+CTC75lEB+
	YyMNXXW0xogQ/l5NV6vF+KiMi3jAEgPFb1mdgaWxBQgUEMwav9jRTxk6lBFqODqdlsPA2PngkpZ3W
	b9ykf1GMg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liiOF-00FtXu-1Z; Mon, 17 May 2021 18:54:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNt-00FtUh-G4
 for barebox@desiato.infradead.org; Mon, 17 May 2021 18:54:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=QTlL2rLDRiQ7XpT0PvsqwYM4v0of59X5l5gWxGeiH6A=; b=o3MtyvwE/3315iVSg7x7hPi6L4
 YLisNAph4ANMzRwl0AlEUfdOiHdq5oEggTQFQ0H+tz+KRtQM8tyHFd8PYDp8e1f5SPd+LMN0cJsws
 l5qITEUajHHuTquA1niI+5VJkwK3T01KDKlE+hJZ4/QDJlu/DK0fZagL7SZ6NgK3oHrW1sbtjhxwa
 5sD3uMJ8/VMUb1p7K5VXhay3cCdv7OKN3swj3fEm9NaCdzxtcuYVKsRMhRZkHJwRmYF72b84HPnhc
 MQJ25Oi8etZWLUydW3bVRZ71vzhKxABptw/5fXPKPvEp29JNDOCvRbt2DG/nohugtcUh1nZd7hltb
 06zCHQsw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNq-00E4SX-3z
 for barebox@lists.infradead.org; Mon, 17 May 2021 18:54:32 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNn-0003PL-H1; Mon, 17 May 2021 20:54:27 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNm-0002yf-GL; Mon, 17 May 2021 20:54:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 May 2021 20:54:24 +0200
Message-Id: <20210517185424.32145-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210517185424.32145-1-s.hauer@pengutronix.de>
References: <20210517185424.32145-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_115430_292391_AE110132 
X-CRM114-Status: GOOD (  11.78  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 15/15] powerpc: law: use signed type to allow error checking
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

unsigned idx is checked for >= 0 which is always true and < 0 which is
never true. Use a signed type instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/powerpc/mach-mpc85xx/fsl_law.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/mach-mpc85xx/fsl_law.c b/arch/powerpc/mach-mpc85xx/fsl_law.c
index 2254c92544..e3c765f30f 100644
--- a/arch/powerpc/mach-mpc85xx/fsl_law.c
+++ b/arch/powerpc/mach-mpc85xx/fsl_law.c
@@ -81,7 +81,7 @@ static void fsl_set_next_law(phys_addr_t addr, enum law_size sz,
 static void fsl_set_last_law(phys_addr_t addr, enum law_size sz,
 			enum law_trgt_if id)
 {
-	u32 idx;
+	int idx;
 
 	for (idx = (FSL_HW_NUM_LAWS - 1); idx >= 0; idx--) {
 		if (fsl_is_free_law(idx)) {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

