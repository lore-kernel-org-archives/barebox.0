Delivery-date: Tue, 30 Jul 2024 13:22:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYkvs-004Rlw-31
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 13:22:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYkvs-0004tv-9o
	for lore@pengutronix.de; Tue, 30 Jul 2024 13:22:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8PiRG7MTQgaXOrj8t7NkLzYN+yI7g2iPLpiRItcbwoM=; b=H7OcDV6a/YjNGZcovINGXtkFMN
	TER90gkGIeFSCNR/YQNbbqhSXmkCMP5cqI/PsaCBhncUfK0GGR/SWwEaRZ8/OrHortskTHbuZNHFx
	s5V8w2wQkPfd1iOF5xWcuGw6u4EA3dGEliqNA8/ylL18Gw2NStSqrAYHG7Zk67S4amudW1dowaknT
	0NxTMhSiZjChP1xsDO4MQlRcQE21QjBDWlIPqRlOGi2d8bWuGGzQghRQTtL1fL3D1CAIiJwEoJSih
	nljzmlwy1lKwMw73xzUaYAfPcfqNOnSVs/lS6bT4TbaSs7Jco+CJCK6RrLmraKyb6I7oLCt+x4Y1S
	ZrRixDAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYkvM-0000000EsJb-3Myg;
	Tue, 30 Jul 2024 11:21:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYkvK-0000000EsJ5-0Ifl
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 11:21:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sYkvI-0004qB-CI; Tue, 30 Jul 2024 13:21:44 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sYkvH-003GrN-VU; Tue, 30 Jul 2024 13:21:43 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sYkvH-0097Vq-2r;
	Tue, 30 Jul 2024 13:21:43 +0200
Date: Tue, 30 Jul 2024 13:21:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZqjMx1xWl1toOM59@pengutronix.de>
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
 <20240730071929.2016537-4-a.fatoum@pengutronix.de>
 <Zqiqn66-dv3m_MOB@pengutronix.de>
 <fed9e44d-dc12-483c-ac02-7e63e2190b72@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fed9e44d-dc12-483c-ac02-7e63e2190b72@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_042146_132523_FC3D7638 
X-CRM114-Status: GOOD (  26.39  )
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
Subject: Re: [PATCH 03/10] block: allow block devices to implement the cdev
 erase operation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jul 30, 2024 at 01:10:05PM +0200, Ahmad Fatoum wrote:
> On 30.07.24 10:55, Sascha Hauer wrote:
> > On Tue, Jul 30, 2024 at 09:19:22AM +0200, Ahmad Fatoum wrote:
> >> We mainly implement cdev erase for raw flashes. Many block devices, like
> >> NVMe, SSD or SD/MMC are also flash-based and expose a mechanism or
> >> multiple to trigger an erase on hardware or flash translation layer
> >> level without an accompanied write.
> >>
> >> To make it possible to use this functionality elsewhere in barebox,
> >> let's have the common block device layer pass through the erase
> >> operation, so it may be implemented in a device-specific manner.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  common/block.c  | 43 +++++++++++++++++++++++++++++++++++++++++++
> >>  include/block.h |  1 +
> >>  2 files changed, 44 insertions(+)
> >>
> >> diff --git a/common/block.c b/common/block.c
> >> index f55da775a797..b43fcbe6927b 100644
> >> --- a/common/block.c
> >> +++ b/common/block.c
> >> @@ -380,10 +380,45 @@ static int block_op_discard_range(struct cdev *cdev, loff_t count, loff_t offset
> >>  	return 0;
> >>  }
> >>  
> >> +static bool region_overlap(loff_t starta, loff_t lena,
> >> +                           loff_t startb, loff_t lenb)
> >> +{
> >> +        if (starta + lena <= startb)
> >> +                return 0;
> >> +        if (startb + lenb <= starta)
> >> +                return 0;
> >> +        return 1;
> >> +}
> > 
> > We already have this function in fs/devfs-core.c. Time to export it?
> 
> This used to be exported, but the export was removed in commit
> 04e2aa516ed5 ("common.h: move and rename lregion_overlap()").
> 
> I can add it back if you prefer.

I think now that we have two users it makes sense to add it back.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


