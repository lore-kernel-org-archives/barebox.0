Delivery-date: Tue, 30 Mar 2021 08:51:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR8EI-0002wH-DG
	for lore@lore.pengutronix.de; Tue, 30 Mar 2021 08:51:58 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR8EH-0001SB-MO
	for lore@pengutronix.de; Tue, 30 Mar 2021 08:51:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PHkCQqXGMtWUd7SUWR01JqOnAm02D+Kwo7wBt0QcLKE=; b=P5VNpRJs+aZpL1n7Xk+bgl7WJ
	6uVa2GaoznZNt7rZwp5EpQKlkmiKxFwOSKAlBmHaZfwRfgTWxdIgNGJk4WrMx9ZXXV2w+W3gHIJuW
	BfMfD7ZpCXTKjkMt5c9xlrgbz6XcAhvRqYenAuRsJJh+z7iWwgKbuyaTUZfS05W4RA4re2sPfDO++
	SMPSWOLxTQavPznky2Fx139Z549svo2606ycnENBBEMA2Pm7ZRcTf0WDtDAFixChnPz/a18sPCcGp
	MmD6SlXsT2fVXuBP2fLUXt6O/7BcXAlF+r9w1EFVU2oxO7Xp5rsWhCHom6uMQPrC0GySkl7AzT4bk
	kT4cArPbw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lR8DE-002rjw-Ex; Tue, 30 Mar 2021 06:50:52 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lR8D6-002ria-71
 for barebox@lists.infradead.org; Tue, 30 Mar 2021 06:50:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1617087040; x=1619679040;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aiSAYHwvIEKvrwiJfxjJlufG03bJNiPDpbtMryHwTYU=;
 b=Qd+YrkdynfnTTvUTrbUoYUNpSooarUgSZrMbRwmlHrU9q99kYQgLggtqE0YSjUj9
 6o4n2NQn7aY/heA5oE6KPEUgtTbt6lyLuvSmyj+u4w292jObQv/FQYvk3+lH/UtT
 XwskEyJds5b2vAYiezoYP3qskezq+LVMPTbD2lyuf9I=;
X-AuditID: c39127d2-868b870000001c91-e6-6062ca408182
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 5F.23.07313.04AC2606;
 Tue, 30 Mar 2021 08:50:40 +0200 (CEST)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2021033008504075-261342 ;
 Tue, 30 Mar 2021 08:50:40 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: barebox@lists.infradead.org
Date: Tue, 30 Mar 2021 08:50:38 +0200
Message-Id: <20210330065040.5030-2-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210330065040.5030-1-s.riedmueller@phytec.de>
References: <20210330065040.5030-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 30.03.2021 08:50:40,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 30.03.2021 08:50:40
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpkluLIzCtJLcpLzFFi42JZI8DApetwKinB4M1nc4sTi/uZHRg9Ni+p
 D2CM4rJJSc3JLEst0rdL4MpYfewBa8EVjopd+xeyNjBOY+9i5OSQEDCRWLxsL1sXIxeHkMA2
 RomHi1awgiSEBK4xSsxazQdiswkYSSyY1sgEYosIyEvM3d8GViMsECCxouk/WJxFQFVi9oyn
 zCA2r4C1xIfOmYwQC+QlZl76DraMU8BGYveGbWwQ860l/hzazwhRLyhxcuYTFpAjJASuMEqs
 f3INqllI4vTis2BDmQW0JZYtfM08gZF/FpKeWUhSCxiZVjEK5WYmZ6cWZWbrFWRUlqQm66Wk
 bmIEBtPhieqXdjD2zfE4xMjEwXiIUYKDWUmEV/hAYoIQb0piZVVqUX58UWlOavEhRmkOFiVx
 3g28JWFCAumJJanZqakFqUUwWSYOTqkGxo2fbqzT3XZ7+/tj289XVnmePjD3+TTmSTrTNO4w
 phe/nsK35IP6EaM7X5beVfu3zmZlvLoB9+1FDP8TK2y/bmWfE79pel3Orh/PDiqHm95RE3v/
 Is9yzU2tIOZv2XM/MXrNeZ1+XKpmkoa9m92Vbn1XhrDfZasSL97KkOyY72XIdnCJAWvltgdK
 LMUZiYZazEXFiQC6mUAPFAIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_075044_367432_893081C2 
X-CRM114-Status: GOOD (  10.02  )
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
X-Spam-Status: No, score=-103.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] nandtest: Fix status print for NAND which size exceeds 4
 GB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Nandsize can be larger than 4 GB. So during status print the number of
blocks calculation needs to use 64 bit division.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 commands/nandtest.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/commands/nandtest.c b/commands/nandtest.c
index bfe4c4c0ed03..1bb59c7fdba5 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -178,12 +178,14 @@ static int erase_and_write(loff_t ofs, unsigned char *data,
 }
 
 /* Print stats of nandtest. */
-static void print_stats(int nr_passes, int length)
+static void print_stats(int nr_passes, loff_t length)
 {
 	unsigned int i;
+	uint64_t blocks = (uint64_t)length;
+
+	do_div(blocks, meminfo.erasesize);
 	printf("-------- Summary --------\n");
-	printf("Tested blocks		: %d\n", (length/meminfo.erasesize)
-			* nr_passes);
+	printf("Tested blocks		: %lld\n", blocks * nr_passes);
 
 	for (i = 0; i < MAX_ECC_BITS; i++)
 		printf("ECC %d bit error(s)	: %u\n", i + 1, ecc_stats[i]);
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

