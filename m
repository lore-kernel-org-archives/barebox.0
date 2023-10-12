Delivery-date: Thu, 12 Oct 2023 15:38:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqvtG-005oQH-Rj
	for lore@lore.pengutronix.de; Thu, 12 Oct 2023 15:38:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqvtD-0005qv-Cb
	for lore@pengutronix.de; Thu, 12 Oct 2023 15:38:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zAqsdUlBFzUgGnCBG7eW4tc1b215bph2i5H1GfZekYw=; b=Nz9gq7yiKNMPZcDrtFOMtYpytd
	jzpgp98yukEHyQZSxKE4EZe0mRcXf1R75G2YRUH7YJsYt4uWD1bDa75PCMfjJRjU5tFs/M3QQ/agI
	NK/iHlfgwTInbQt3d6iqSGjWSI/5kWouTzQd7rFht9Op7vPvbHXjlObWa2aIVKDld6AIuMBkzar3W
	9mV+5R2qLLiEgTXzJvazhY1UYzsVlOTW0sZVCz4k+79KlBZ5VeSHPAxEoD6BfHNTRGTUWhXqQ9jzX
	HzaIkM+s/wzxG1jsb9R1+1WFphbS2T1wdN17ZG1/yIxT/hlMqaKCgbtDt+VyttI/U7Z5p1+Nx+tTS
	9r3gf4pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqvro-0015wG-04;
	Thu, 12 Oct 2023 13:36:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqvri-0015vX-0L
	for barebox@lists.infradead.org;
	Thu, 12 Oct 2023 13:36:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qqvrc-0005e3-RF; Thu, 12 Oct 2023 15:36:32 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qqvrc-001ADe-Ey; Thu, 12 Oct 2023 15:36:32 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qqvrc-00E73u-Co; Thu, 12 Oct 2023 15:36:32 +0200
Date: Thu, 12 Oct 2023 15:36:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20231012133632.GB3359458@pengutronix.de>
References: <20231012111044.406987-1-s.hauer@pengutronix.de>
 <20231012111044.406987-2-s.hauer@pengutronix.de>
 <87lec8ys9f.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87lec8ys9f.fsf@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231012_063638_148012_C8BE6F15 
X-CRM114-Status: GOOD (  22.57  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] bootstrap: Fix partition creation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Oct 12, 2023 at 01:47:40PM +0200, Steffen Trumtrar wrote:
> 
> On 2023-10-12 at 13:10 +02, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > bootstrap_read_devfs() registers a partition with DEVFS_PARTITION_FIXED.
> > The purpose of this flag is that the partition can't be removed later.
> > Removing the partition is exactly what bootstrap_read_devfs() does when
> > finished, so remove the DEVFS_PARTITION_FIXED flag which doesn't make
> > sense here.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  lib/bootstrap/devfs.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/lib/bootstrap/devfs.c b/lib/bootstrap/devfs.c
> > index 603e6744f2..3d5b1278fb 100644
> > --- a/lib/bootstrap/devfs.c
> > +++ b/lib/bootstrap/devfs.c
> > @@ -88,8 +88,7 @@ void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
> >  	struct cdev *cdev, *partition;
> >  	char *partname = "x";
> > 
> > -	partition = devfs_add_partition(devname, offset, max_size,
> > -					DEVFS_PARTITION_FIXED, partname);
> > +	partition = devfs_add_partition(devname, offset, max_size, partname);
> 
> This accidentally dropped the flags parameter alltogether, which is still needed by the devfs_add_partition declaration, isn't it?

Yes, I meant to replace DEVFS_PARTITION_FIXED with 0 of course.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


