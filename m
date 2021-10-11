Delivery-date: Mon, 11 Oct 2021 21:09:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ma0fd-0000o5-JU
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 21:09:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ma0fc-0005FD-MQ
	for lore@pengutronix.de; Mon, 11 Oct 2021 21:09:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TTV0LTz7DlBcpFDIR/YxcBlOzOfPb1i2oRfQ2L1Ktek=; b=rMyCu/zjND1qrD
	giulzHhoc9XnU36dnr4+StMDTn3+jIVNqR6rX5xVmoSBSvgsKCpwFFZQctV/N6nu6Gsbb2knpYDUD
	0RcC7Fh43w4DyDQ61MSoCQKgzUr4Nr1GNX/xiiBWKQD19QHwZAQyP0LMZNa0b8UPTaUY3XiRgDE1J
	f4GUC9A24Ir7DlHIzRF39naA6a5WS6I8qC0MPIGUruretOrLaDnEWmPz4WjTWxP/lW3t5qIZDvK8b
	RiH+6T31USzCTfzdWtfus9x0N+NgwUl00M7Nh1GN3w7GYzjh4jCIoz4MAIOrRv8a9PT4fSMWJqndi
	H92/2LM5WmBu49MJrskg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ma0eE-00AS2G-IG; Mon, 11 Oct 2021 19:07:42 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ma0e8-00AS1N-Sq
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 19:07:38 +0000
Received: by mail-pj1-x1032.google.com with SMTP id
 oa12-20020a17090b1bcc00b0019f715462a8so693348pjb.3
 for <barebox@lists.infradead.org>; Mon, 11 Oct 2021 12:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cSYeCZJEeZ5BFcOfi1FZim4pnVwawHSTJIJyQrvnV+E=;
 b=a45TTOofuLd3cg+NH+rn+LEw5X5c98EWIX9HgMe7/qRW/wvx4Lwq5YJh68bkUt3yeE
 MvBqUC+DKEA2sdDRBfjijsO0jglpsLtG0LiYG2e2P9tb1AaEku3FCvDISs0pBrg+YDBQ
 Xgtyk8ogrjkq1FwHo5X80QSZolFmryg8nZtIVWTipOca1IKbfEU9AIPvElOm5c91bVvh
 h5JJaD1GU9lJ0VTG5W4PI7oPTJlRLpZYpwh3TrYxOQC7ZDHK64RewtSXrHpBkLmRFYun
 Bt/Gop8CtvQP7PyvhdNlYaCUCEv5KI499+rZpV+XbljDtcK55sWYFhuNuXUTIlqruw8d
 kzZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cSYeCZJEeZ5BFcOfi1FZim4pnVwawHSTJIJyQrvnV+E=;
 b=AmyfbwuvF+6VjRxo3QjzBNxtOlp4n2JEdTZ22RUl//S7CY3TrsfsOFltA6rl44hKnt
 g2ibHNb35eeirxMcFwDVW7G9+FDGKvndDN6ZUV24Cj1kiLUrN2RjNZ8yXBHyo/sFTtHD
 xmgkJJsYnxumAkw/Ck3FnpQaeFoiY/tSA0ESFq2tnnrB8es3QB+OqCdWCJWHMOZ1Q1O1
 64MZGobi2MZY2XYpbmM53GzwJgAB3av2Y4PHNEDJhpXvd8xjd8LbClzcAReR1QptKQFG
 6eCXm7cTOPBLS9hzndyYjidu1cESHis/Te2VsQz0pWwml+KnGDrk3hDChBDFIkZypVzQ
 TH+g==
X-Gm-Message-State: AOAM532VxEHR/gSNRWMCAWlnyWPxKQsUByMKKpiF9mbcjcQ+TfOAysxi
 5Y26h/MQ3sUvxnMvuDQk9Nl1s7H33u7aXW9g
X-Google-Smtp-Source: ABdhPJzYuxiYb+8JRM2iaMINvpdSSz3jyqpsBDhcSo4ie5PGruZMUtMZHPam/n3gkLZIj801lbM0BQ==
X-Received: by 2002:a17:903:41c1:b0:13e:fe56:e42a with SMTP id
 u1-20020a17090341c100b0013efe56e42amr25642323ple.52.1633979255171; 
 Mon, 11 Oct 2021 12:07:35 -0700 (PDT)
Received: from zen.local (97-113-90-42.tukw.qwest.net. [97.113.90.42])
 by smtp.gmail.com with ESMTPSA id x11sm9087392pfh.201.2021.10.11.12.07.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Oct 2021 12:07:34 -0700 (PDT)
From: Trent Piepho <trent.piepho@igorinstitute.com>
To: Barebox List <barebox@lists.infradead.org>
Cc: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 11 Oct 2021 12:07:25 -0700
Message-Id: <20211011190725.856597-1-trent.piepho@igorinstitute.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_120737_160844_7A9EC223 
X-CRM114-Status: GOOD (  10.95  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] nandtest: Add more fields when bad byte found
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This can help to determine what is causing the problem.  E.g., is the
bad byte always in the same eraseblock?  Is it always 513 bytes into a
page with a hardware ECC chunk size of 512 bytes?

Example before and after (error at absolute address 123456 with 128kB
eraseblock and 2kB page sizes):

Byte 0xe240 is 12 should be 34
Block 0x1 byte 0xe240 (page 0x1c offset 0x240) is 0x12 should be 0x34

Signed-off-by: Trent Piepho <trent.piepho@igorinstitute.com>
---
 commands/nandtest.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/commands/nandtest.c b/commands/nandtest.c
index 1bb59c7fd..4a7db9cc7 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -169,8 +169,10 @@ static int erase_and_write(loff_t ofs, unsigned char *data,
 		printf("\ncompare failed. seed %d\n", seed);
 		for (i = 0; i < meminfo.erasesize; i++) {
 			if (data[i] != rbuf[i])
-				printf("Byte 0x%x is %02x should be %02x\n",
-				       i, rbuf[i], data[i]);
+				printf("Block 0x%llx byte 0x%0x (page 0x%x offset 0x%x) is %02x should be %02x\n",
+				       div64_ul(ofs, meminfo.erasesize), i,
+				       i / meminfo.writesize, i % meminfo.writesize,
+				       rbuf[i], data[i]);
 		}
 		return ret;
 	}
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

