Delivery-date: Fri, 16 Feb 2024 12:16:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rawD4-008Um2-2a
	for lore@lore.pengutronix.de;
	Fri, 16 Feb 2024 12:16:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rawD4-0002O3-6D
	for lore@pengutronix.de; Fri, 16 Feb 2024 12:16:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2BGp5JATvHanHjSvM9v6wXPJZZjyuW8xF6tw3nNGRWM=; b=2P/ro/OIjsTWZSS4gOWc6uhEMp
	H4YODGLk/TLoBVqu41m2iVKiJkJulRBR9L4wl7grm3QtK4M4HMiaQh9WFcfJRjfzv7lyKAZaxeYgr
	moi051Ft/TQ+loAnAXTHhSmQIJJmeeKL+zCs/EVmG9qt0aeQb+NQ8dDt9nc1VG3gNUc3w+umNtOj5
	sHlj8Q21aTOBP6BBYnMb6OaIGvFF4mwkradfAsHbnm0otTJKmcBFfDpdNQI7GFGi8J5q06dVv/bAG
	+adIc5ND/F1XHiRvkhix9BjaUNdVoTswmw4v852dtd1HaxUYGGp3Xi428RgeOP7JsU/4zj3FT61Yz
	jyYmkY1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawCZ-000000027A9-2pd4;
	Fri, 16 Feb 2024 11:16:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawCX-0000000279F-1TuW
	for barebox@lists.infradead.org;
	Fri, 16 Feb 2024 11:16:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rawCW-0002JA-5F; Fri, 16 Feb 2024 12:16:16 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rawCV-0013zX-Ou; Fri, 16 Feb 2024 12:16:15 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rawCV-00BU65-2E;
	Fri, 16 Feb 2024 12:16:15 +0100
Date: Fri, 16 Feb 2024 12:16:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Zc9D_9XNHXqYkBqP@pengutronix.de>
References: <20240215074757.960200-1-s.hauer@pengutronix.de>
 <20240215074757.960200-5-s.hauer@pengutronix.de>
 <20240215125228.qwikd4yn4q256thw@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240215125228.qwikd4yn4q256thw@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_031617_411326_B45DC3A3 
X-CRM114-Status: GOOD (  27.75  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/7] block: reparse partition table when necessary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Feb 15, 2024 at 01:52:28PM +0100, Marco Felsch wrote:
> On 24-02-15, Sascha Hauer wrote:
> > Call reparse_partition_table() when the partition table may have
> > changed. We detect this by recording if the block device has been
> > written to in the area where the partition table is.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  common/block.c  | 30 ++++++++++++++++++++++++++++--
> >  include/block.h |  2 ++
> >  2 files changed, 30 insertions(+), 2 deletions(-)
> > 
> > diff --git a/common/block.c b/common/block.c
> > index 3a4a9fb731..007c8bed12 100644
> > --- a/common/block.c
> > +++ b/common/block.c
> > @@ -284,6 +284,17 @@ static ssize_t block_op_write(struct cdev *cdev, const void *buf, size_t count,
> >  	blkcnt_t blocks;
> >  	int ret;
> >  
> > +	/*
> > +	 * When the offset that is written to is within the first two
> > +	 * LBAs then the partition table has changed, reparse the partition
> > +	 * table at close time in this case. A GPT covers more space than
> > +	 * only the first two LBAs, but a CRC of the remaining pieces is
> > +	 * written to LBA1, so LBA1 must change as well when the partioning
> > +	 * is changed.
> > +	 */
> > +	if (offset < 2 * SECTOR_SIZE)
> > +		blk->need_reparse = true;
> > +
> >  	if (offset & mask) {
> >  		size_t now = BLOCKSIZE(blk) - (offset & mask);
> >  		void *iobuf = block_get(blk, block);
> > @@ -335,13 +346,28 @@ static ssize_t block_op_write(struct cdev *cdev, const void *buf, size_t count,
> >  static int block_op_flush(struct cdev *cdev)
> >  {
> >  	struct block_device *blk = cdev->priv;
> > +	int ret;
> >  
> >  	blk->discard_start = blk->discard_size = 0;
> >  
> > -	return writebuffer_flush(blk);
> > +	ret = writebuffer_flush(blk);
> > +
> > +	return ret;
> 
> This change is not required or do I miss something?

Fixed, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


