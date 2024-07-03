Delivery-date: Wed, 03 Jul 2024 10:54:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOvlE-0017fw-2X
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 10:54:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOvlE-0007zB-5h
	for lore@pengutronix.de; Wed, 03 Jul 2024 10:54:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G9wH1hA1kaGwkwAZXC7493DCEuUa7wMiH5utvpJfH0Q=; b=OAFKcu4LskoLCvv0oyh4XZOyph
	ORf2h8NTXkag+7SqmCvzFDbl42yxcNTS/6o2dBl+3OU3rkclTnPt/kUMi33kzp9821qHQXV1ncytC
	HAL1qiYaHiYxDUMkUFHYrqt/4Z5yw0XhgNaSdMVBI0SGNYXg7ZoVNJ0RL6YxdVumoBT200bKqMjnu
	vs6iuhBkGbLlo7E5edcXr5sqmHk4Mkog7X0cd6ZKaavkej6Kn5dQNf6yciiKg37DYld/84XCX6UiJ
	SruEPP77eH7rsb17NCOla5dsQXZc7DjkbGzuB8NUucRRVB7LzQ2Lb/flkAGFrDRsW5ATPJpjGDG50
	EPxFmtvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOvke-00000009UJK-37Rq;
	Wed, 03 Jul 2024 08:54:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOvkb-00000009UIu-1fqj
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 08:54:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOvkS-0007rV-9R; Wed, 03 Jul 2024 10:53:56 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOvkR-006oJH-Sh; Wed, 03 Jul 2024 10:53:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOvkR-002nIU-2b;
	Wed, 03 Jul 2024 10:53:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240702084455.697720-1-s.hauer@pengutronix.de>
References: <20240702084455.697720-1-s.hauer@pengutronix.de>
Message-Id: <171999683580.666015.1486863592198613491.b4-ty@pengutronix.de>
Date: Wed, 03 Jul 2024 10:53:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_015405_778728_3827F1BA 
X-CRM114-Status: GOOD (  11.49  )
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
Subject: Re: [PATCH] mtd: rawnand: Ensure ECC configuration is propagated
 to upper layers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 02 Jul 2024 10:44:55 +0200, Sascha Hauer wrote:
> This is an adoption of Linux Commit:
> 
> |commit 3a1b777eb9fb75d09c45ae5dd1d007eddcbebf1f
> |Author: Miquel Raynal <miquel.raynal@bootlin.com>
> |Date:   Tue May 7 10:58:42 2024 +0200
> |
> |    mtd: rawnand: Ensure ECC configuration is propagated to upper layers
> |
> |    Until recently the "upper layer" was MTD. But following incremental
> |    reworks to bring spi-nand support and more recently generic ECC support,
> |    there is now an intermediate "generic NAND" layer that also needs to get
> |    access to some values. When using "converted" ECC engines, like the
> |    software ones, these values are already propagated correctly. But
> |    otherwise when using good old raw NAND controller drivers, we need to
> |    manually set these values ourselves at the end of the "scan" operation,
> |    once these values have been negotiated.
> |
> |    Without this propagation, later (generic) checks like the one warning
> |    users that the ECC strength is not high enough might simply no longer
> |    work.
> |
> |    Fixes: 8c126720fe10 ("mtd: rawnand: Use the ECC framework nand_ecc_is_strong_enough() helper")
> |    Cc: stable@vger.kernel.org
> |    Reported-by: Sascha Hauer <s.hauer@pengutronix.de>
> |    Closes: https://lore.kernel.org/all/Zhe2JtvvN1M4Ompw@pengutronix.de/
> |    Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> |    Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
> |    Link: https://lore.kernel.org/linux-mtd/20240507085842.108844-1-miquel.raynal@bootlin.com
> 
> [...]

Applied, thanks!

[1/1] mtd: rawnand: Ensure ECC configuration is propagated to upper layers
      https://git.pengutronix.de/cgit/barebox/commit/?id=0f5c97472bfb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



