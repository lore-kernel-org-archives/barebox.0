Delivery-date: Thu, 27 May 2021 08:50:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lm9qp-0002ve-K0
	for lore@lore.pengutronix.de; Thu, 27 May 2021 08:50:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lm9qo-0002ak-IY
	for lore@pengutronix.de; Thu, 27 May 2021 08:50:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nBe6muWhbNQvuB81RTZQWN3sUmKzO0a0liT+zKw4lSU=; b=q92ZAKxxx3VPmIM7IxTTjye/8m
	Xyvo4AhQMTwD8FJ4lXJdPQblGou7gYmKyeCQi5K6T31Ym9BYZB4NEfWvIhJCs+UVMvjcB/CBXlTJe
	NyN9t/LS3g9FkJF/JGChd+QQHbR+61Zes2J9M2/HmcZEWbGXyXORZrLRHSIHtDNd3kMcoh9MhwtRI
	YRd+tAutb1t1cYc/mzZixyhraX6sTvFR87F7cwloh1xiVntrIdR8beUlA4F5APQmWR1sKJOd7A6mB
	x/sOxUvwmtftw39TiRiW5NyjV0ylK2A8UTX2o09ZrV4VVaT0Q7qkPI1cak7sMeRb+zHhRsWJvqi4d
	3C2NDs+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lm9p2-0038Fn-S7; Thu, 27 May 2021 06:48:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lm9ow-0038Aj-Ro
 for barebox@lists.infradead.org; Thu, 27 May 2021 06:48:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lm9os-0002Hv-JP; Thu, 27 May 2021 08:48:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lm9or-0004eW-VB; Thu, 27 May 2021 08:48:37 +0200
Date: Thu, 27 May 2021 08:48:37 +0200
To: "Barbier, Renaud" <renaud.barbier@abaco.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20210527064837.GA19819@pengutronix.de>
References: <MN2PR16MB31351A1EC23941D33584F27291249@MN2PR16MB3135.namprd16.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MN2PR16MB31351A1EC23941D33584F27291249@MN2PR16MB3135.namprd16.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:39:20 up 98 days, 10:03, 108 users,  load average: 0.01, 0.08,
 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_234842_923180_D3203E42 
X-CRM114-Status: GOOD (  20.93  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: barebox ubifs support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Renaud,

On Wed, May 26, 2021 at 12:53:55PM +0000, Barbier, Renaud wrote:
> Question on the UBIFS support
> 
> Is barebox doing the full bad block management?
> i.e before booting the system to the Linux prompt, will barebox fix bad blocks?
> 
> I am asking this question because some customers may want to boot a
> initramfs image from NAND. In this case Linux will not mount the NAND
> to do the bad block fixing.

Bad block management is done in UBI, not UBIFS. The UBI code is derived
from Linux and is expected to do the same job. This includes checking
the amount of bitflips and rewriting the data on a fresh block if the
number of bitflips exceeds a certain threshold. Suspicious blocks are
tortured with r/w cycles to see if they are bad and the blocks are
marked as bad when they are.

However, are you saying the whole NAND is readonly most of the time?
Aren't there any other partitions?

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

