Delivery-date: Mon, 19 Sep 2022 09:36:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBKR-009NCQ-UL
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 09:36:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBKQ-0005TB-Mo
	for lore@pengutronix.de; Mon, 19 Sep 2022 09:36:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mIQW/RKE86hRr723nu04raM09mUfCkx7tHhjurf+/jw=; b=qEhSPjdd5ICnovXiWq3mCIY9vP
	6fp2M6d2ryYRVwCl5D5shFxckFmG+4zrSr90I44V6Kw68PeO/GJAGfNarfBADPJHktB47A61qjsrS
	XR2C4vjhJputeFlPrg0CuTWNTlMtpAeajkeYGMXEf0igI4keBZDUc+qFNKqk/xVo/t57lydrxmJJt
	kmqKRLk0xjyj8NokMjVFh3R5kc/bmvnzTWtKelL9Hriluox+5wcIGhf1OBLV3POgCt7i5+otAwS70
	/hQT3JNVy0UcZjgoJ65KnXpTYS2DobitnRRwCb5TzS+av5cjhcvBihJlSLk2nH4WGwEFAa7IpLvXg
	bzTOYI3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBIH-009ID1-SK; Mon, 19 Sep 2022 07:34:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBHs-009HvU-NH
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 07:34:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBHl-0005AX-WE; Mon, 19 Sep 2022 09:33:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBHl-0006nc-7A; Mon, 19 Sep 2022 09:33:45 +0200
Date: Mon, 19 Sep 2022 09:33:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220919073345.GA6477@pengutronix.de>
References: <20220916125232.3775559-1-s.hauer@pengutronix.de>
 <20220916125232.3775559-3-s.hauer@pengutronix.de>
 <lypmfv8l3c.fsf@ensc-pc.intern.sigma-chemnitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <lypmfv8l3c.fsf@ensc-pc.intern.sigma-chemnitz.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_003352_808146_EB1D28B5 
X-CRM114-Status: GOOD (  34.15  )
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
Subject: Re: [PATCH 2/3] tftp: implement UDP reorder cache using lists
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Enrico,

On Fri, Sep 16, 2022 at 04:12:07PM +0200, Enrico Scholz wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > The UDP reorder cache can be much easier implemented using lists.
> > As a bonus the cache grows and shrinks on demand and no fixed size
> > has to be configured at compile time.
> 
> There are three variants of the cache
> 
> - small, fixed sized array with linear search (very first
>   implementation)  -->  O(n)
> - list --> O(n) on insert, O(1) on lookup
> - bitmap --> O(1)
> 
> 
> Performance wise, I think the list implementation is the slowest one
> (although the fixed sized array is O(n) on every operation, this should
> be still faster for small n than the list operations and the related
> memory management).
> 
> From code size, the list implementation is in the middle.
> 
> I am not sure whether dynamic shrinking/growing of the cache is so
> important or whether a small, fixed sized cache suffices.  In my
> experience, only the first couple of packets really matter regarding
> reordering.

I don't think that the performance of the cache limits the tftp
performance, given the low number of entries in the cache. You may prove
me wrong here, I don't have any setup here where I could test packet
reordering. What happens here instead is that packets get dropped
because of the RX queue of the network interface get overwhelmed by
packets, see my patch reducing the windowsize setting for i.MX. Packets
get cached then, but the missing packets come in later when retransmits
are triggered. Performance is very bad then anyway.

What counts for me here is the simplicity of the implementation and
the ability to check it for correctness. Here the list implementation
has clear advantages.

The dynamic shrinking/growing of the cache hasn't been a goal for me,
it's just easier to implement then having to maintain a fixed size
pool.

> 
> Of course, the 'kfifo' could be replaced completely by a custom buffer
> implementation where packets are inserted at the correct position.  O(1)
> for every operation + zero additional memory.

Yes, that could be a next step, although the kfifo makes it easy to
decouple the fixed sized blocks coming in from the read() call with
varying sizes.

> 
> 
> > -static inline bool is_block_before(uint16_t a, uint16_t b)
> > -{
> > -	return (int16_t)(b - a) > 0;
> > -}
> > -
> > ....
> >  static int tftp_window_cache_insert(struct tftp_cache *cache, uint16_t id,
> >  				    void const *data, size_t len)
> >  {
> > ...
> > +	list_for_each_entry(block, &cache->blocks, list) {
> 
> fwiw, iterating in the reverse direction will find the position probably
> faster
> 
> 
> > +		if (block->id == id)
> > +			return 0;
> > +		if (block->id < id)
> 
> This will break when wrapping at 65535; the removed 'is_block_before()'
> function was written for this case.

Oh, yes, I missed this. I'll fix it here and elsewhere. Thanks for
noting.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


