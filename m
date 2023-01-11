Delivery-date: Wed, 11 Jan 2023 09:30:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFWV5-008fNQ-LG
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:30:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFWV3-0004vz-Mw
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:30:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NuNPSTKBu4aijuJXREWNBMpEvDaYprgAGdiZCNHOG6o=; b=cMlK4VuuCQdFY7wtEy9FL+BnU2
	uL6gEryT3frWuKpzq8U96ckRE5LHfJSb8jN5Z8Cq9gdXEedfUjVZ+N3Np9MMGvS0qvRlXm17jKcOx
	3pz7jh2yO94oBBu3qAyA9cIYkGZpBPzY8UemNQl/GkvQZK5E1sLWj5L12fBTjZLld0kxhG6g7CrbJ
	wD/0cH2pzrxEeD2KC/cWMCsMUG16VSLGAvaVN8QQcCaR+guc8bqKx1F3ibBx6jgiU2k2nAdkblM33
	AXnmVvwW6yXEVcoGGEWKpsep1QVY4JKpWToqLJXOxPjQJvoUjdzv4TtAEkHZy4i1uX0cx0UIcwZz5
	WVxN8uEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFWTp-00AM6G-HJ; Wed, 11 Jan 2023 08:29:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFWTl-00AM5f-3G
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 08:29:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFWTj-0004fy-3O; Wed, 11 Jan 2023 09:28:59 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFWTi-0008Nn-GH; Wed, 11 Jan 2023 09:28:58 +0100
Date: Wed, 11 Jan 2023 09:28:58 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>,
	barebox@lists.infradead.org, Marcin Niestroj <m.niestroj@emb.dev>
Message-ID: <20230111082858.GI24755@pengutronix.de>
References: <20230110193251.2821638-1-m.niestroj@grinn-global.com>
 <fca0dd20-a957-e6da-4dad-bd268b8b8953@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fca0dd20-a957-e6da-4dad-bd268b8b8953@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_002901_161150_B7FC9038 
X-CRM114-Status: GOOD (  27.84  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rpi: parse memory from vc fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 10, 2023 at 08:56:13PM +0100, Ahmad Fatoum wrote:
> On 10.01.23 20:32, Marcin Niestroj wrote:
> > From: Marcin Niestroj <m.niestroj@emb.dev>
> > 
> > Currently for RaspberryPi platform there is only one memory bank
> > created, based on information fetched over mailbox. This is fine for
> > booting Barebox, but unfortunately all the other memory banks are not
> > propagated to Linux during boot, thus cannot be utilized. In fact, even
> > when using /vc.dtb as device-tree for Linux, all memory nodes in FDT are
> > deleted and new ones are created by Barebox by memory fixup mechanism,
> > using exising RAM information. As a result RaspberryPi 4 boots Linux
> > with 1GB RAM available, instead of 2GB (2 banks, each 1GB).
> > 
> > At the end of VideoCore FDT parsing, do the same as of_probe_memory() in
> > mem_initcall does, but for VideoCore provided devicetree/memory
> > information. During Linux boot this information is used for memory fixup
> > mechanism and in case of RaspberryPi 4 this results in 2 memory banks
> > being propagated:
> > 
> >   # ls /proc/device-tree/memory*
> >   /proc/device-tree/memory@0:
> >   device_type  name         reg
> > 
> >   /proc/device-tree/memory@40000000:
> >   device_type  name         reg
> > 
> > Signed-off-by: Marcin Niestroj <m.niestroj@emb.dev>
> 
> Thanks for your patch. I suggest this be applied to master.
> 
> I think it may be worthwhile in future to only query the mailbox
> interface for memory in PBL (lowlevel.c) for use as early mem and
> depend solely on DT in barebox proper.
> 
> > ---
> >  arch/arm/boards/raspberry-pi/rpi-common.c | 16 +++++++++++++++-
> >  1 file changed, 15 insertions(+), 1 deletion(-)
> 
> > +		err = of_add_memory(memory, false);
> > +		if (err)
> > +			ret = err;
> 
> No one does anything wither either err or ret, so you can drop that.

Did that and applied to master.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


