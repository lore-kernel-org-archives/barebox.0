Delivery-date: Sun, 19 Mar 2023 16:50:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pdvIc-006etf-VG
	for lore@lore.pengutronix.de; Sun, 19 Mar 2023 16:50:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pdvId-0002vp-1k
	for lore@pengutronix.de; Sun, 19 Mar 2023 16:50:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bZ/QRuw1roebLUWaJFfpHyA3gjS1jrIVHC4E6arVSQ8=; b=DW0IG3CeQvXTO3xXrvVWzqr8cq
	Xj4natgSfsv5AsyNWfJX1J0Z59nnyD0pV3t0I2rgXVrT2LJ9PWeUlpqDjuIJdCcibNz7BFMu115tc
	NsZs5WWpnA1Cem/0vtz0KOwYXWQanQV4tTe4enLYVSGJqZa5XxHoQx+XrUaYPW0E8t5vSLVCKnu7B
	SJU1Puc8ea+cpfsOF/VvBvfJDWuXWNdDkesZzfKuQ2fUQAI+8xMXeFbCsn8yiFJ8bqQF8OrK7Pi8m
	vMbfiDWMhgGNn4+i7/c+6Abhguk/Zak8A0kXCkbIs7re5pXWRBVfBaBJdE7Ov4m5ufcs65ttRnZoh
	DAiUQFZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdvHe-006xgC-1h;
	Sun, 19 Mar 2023 15:49:22 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdvHa-006xfc-2w
	for barebox@lists.infradead.org;
	Sun, 19 Mar 2023 15:49:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 45919610A3
	for <barebox@lists.infradead.org>; Sun, 19 Mar 2023 15:49:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 538F6C433EF;
	Sun, 19 Mar 2023 15:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679240957;
	bh=lI8uC8b7L7kZqaeLRI6oo6/FqMfcIL4pY9QSV9q6RZA=;
	h=From:To:Cc:Subject:Date:From;
	b=rXwS6Y/rUJ65tTQARkMBB2Gd/2q5SMdu9uPrz16aNI0tqV92Wks/sTsilD+5118Ox
	 KD4l54jc6U2Y0ULVjvZZICeOAsNhFqAijIFLjgUdgi9dmrLqjHPbYwRCWU5Q4nLgk/
	 qwW66cxvHamoTFKV4SPyYSfs3RznUeFzurC2sPSKk80Vig9msdOOhIMfIXsrl27Jrs
	 AHhu6GuHHO89CvOd6VJXx5OBgpx4MUM/+q+QfDlVNxf7Lfy+lr4lutG0UQ2RGpmL+o
	 xda+Q2afneGKdjOESqLEI7+sMaLCmaFYwQqkTM7k5P1mNrCIgs/cNsYmeDXTiyqVGQ
	 xiF/h4hyIeJ/A==
From: Wolfram Sang <wsa@kernel.org>
To: barebox@lists.infradead.org
Cc: Wolfram Sang <wsa@kernel.org>
Date: Sun, 19 Mar 2023 16:49:06 +0100
Message-Id: <20230319154909.24047-1-wsa@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_084918_986756_94515192 
X-CRM114-Status: UNSURE (   8.13  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] mtd: nand: atmel: legacy: fix boot on USB-A9G20
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While trying to unbrick my Calao USB-A9G20, barebox couldn't read the
NAND BB tables unlike the binary-only barebox from 2013. The first two
patches fix that. The third one is a cleanup.

Happy hacking!


Wolfram Sang (3):
  mtd: nand: atmel: legacy: add 'algo' to use
  mtd: nand: atmel: legacy: use proper ecc_shift
  mtd: nand: atmel: legacy: remove superfluous code

 drivers/mtd/nand/atmel/legacy.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

-- 
2.35.1



