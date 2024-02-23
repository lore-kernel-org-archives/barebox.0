Delivery-date: Fri, 23 Feb 2024 08:36:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rdQ6k-002dhg-1n
	for lore@lore.pengutronix.de;
	Fri, 23 Feb 2024 08:36:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rdQ6j-0001K4-Pu
	for lore@pengutronix.de; Fri, 23 Feb 2024 08:36:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jRR5TfOH5438SQNHdBwkvHFym5BaBJX35lnf20d9FtY=; b=kNkdUg5YVqN/tsUKI59ojJLI8x
	pj5pVUxWXb1uy58SBGps8KMnqtKf5CUyh6OPB+iCY4w3bgGd+GKK43t1zEfRoUDbwR+hFl+TRb8bx
	18thmCEc8FQCt7Z0eN1XoYr9pL3fi/UH6TSZLu3FbCharUFSMWVzas2hb6LdK0nHslU8NJRmKagSv
	hQGDVnQV9q/byquG3IO5SYBLAayN396snBrjy07qHSv/4bhhxIfVfWkMY7+4L7x6ELRsU6gaei260
	L8iexl2rvKvsTVQxtLrYXDrzKkdB4ifK1PqUN8rLn0+zNDij+kaNXfaJPkNtHo0nqrFUECeHpJVkd
	B2dJ5y3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdQ5f-00000008Jb2-2oOW;
	Fri, 23 Feb 2024 07:35:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdQ2Y-00000008J0g-3jUD
	for barebox@lists.infradead.org;
	Fri, 23 Feb 2024 07:34:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdQ2V-0000oK-9D; Fri, 23 Feb 2024 08:32:11 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdQ2U-002NfD-SB; Fri, 23 Feb 2024 08:32:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdQ2U-001F8f-2b;
	Fri, 23 Feb 2024 08:32:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240221150323.2715164-1-s.hauer@pengutronix.de>
References: <20240221150323.2715164-1-s.hauer@pengutronix.de>
Message-Id: <170867353080.296344.4532164968543070268.b4-ty@pengutronix.de>
Date: Fri, 23 Feb 2024 08:32:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_233216_123006_00688C71 
X-CRM114-Status: UNSURE (   9.09  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/8] Update TQMa6UL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 21 Feb 2024 16:03:15 +0100, Sascha Hauer wrote:
> The TQMa6UL uses a downstream device tree, but there also appeared
> device trees for it upstream. Use the upstream device trees and add
> support for reading the board EEPROM to pick the right device tree
> for a particular board type.
> 
> Sascha Hauer (8):
>   board: tq: add missing select
>   board: tq: fix format specifier
>   board: tq: add support for 16bit eeprom
>   ARM: i.MX6: add i2c4 base address
>   ARM: tqma6ul: add pr_fmt string
>   ARM: tqma6ul: enable enet_ref_125m clk
>   net: phy: fix miibus parent device of_node not matching phy node
>   ARM: tqma6ul: use upstream device trees
> 
> [...]

Applied, thanks!

[1/8] board: tq: add missing select
      https://git.pengutronix.de/cgit/barebox/commit/?id=64447652f9ad (link may not be stable)
[2/8] board: tq: fix format specifier
      https://git.pengutronix.de/cgit/barebox/commit/?id=bef0946e6a33 (link may not be stable)
[3/8] board: tq: add support for 16bit eeprom
      https://git.pengutronix.de/cgit/barebox/commit/?id=57ee1c9d6b60 (link may not be stable)
[4/8] ARM: i.MX6: add i2c4 base address
      https://git.pengutronix.de/cgit/barebox/commit/?id=24fb4842ca4b (link may not be stable)
[5/8] ARM: tqma6ul: add pr_fmt string
      https://git.pengutronix.de/cgit/barebox/commit/?id=b78ccb436a3a (link may not be stable)
[6/8] ARM: tqma6ul: enable enet_ref_125m clk
      https://git.pengutronix.de/cgit/barebox/commit/?id=30aea51621e7 (link may not be stable)
[7/8] net: phy: fix miibus parent device of_node not matching phy node
      https://git.pengutronix.de/cgit/barebox/commit/?id=6534338de3c5 (link may not be stable)
[8/8] ARM: tqma6ul: use upstream device trees
      https://git.pengutronix.de/cgit/barebox/commit/?id=cb3f6f5769af (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



