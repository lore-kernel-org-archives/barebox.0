Delivery-date: Fri, 16 Feb 2024 12:15:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rawBd-008Uhb-24
	for lore@lore.pengutronix.de;
	Fri, 16 Feb 2024 12:15:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rawBd-0002AS-0t
	for lore@pengutronix.de; Fri, 16 Feb 2024 12:15:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GCfMRbtR5Ky1x5TrAy7bwktbvKEUXixBt6voC+Lr1G8=; b=IvLSOkZsDg4zJUsQyXEnOkeV8Q
	1xeGA3SKQkNGkOrOQLGj/2QzD7wz/GHvtRXptdyEHM0djRK5Oa/Zh/1J/8cqOomHYGYnGOgMfhL72
	w8MU6mWXwtDys8ioH4lsWEsUgHWqmEQoJiOz054U4BbV2eH3cYkhZi6Hi/N+1RDvJHx1ggSM0cX9f
	glh8BeGrp+q5bMwXIuhSsNPL0Rc5l73OHZdLyJ+1Bl3ml5pb4vTZKwV+pjsJ7l+UU9rNHQpOCu2v5
	95HPRdK9Bwa5bRgiMq50gQNuK359uE6P02v5I5Vo6F6loYsak1KGDkredUO6N79oH4pQN0aVUP67X
	/g/0tXzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawBB-000000026mb-23T3;
	Fri, 16 Feb 2024 11:14:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawB7-000000026lG-2en8
	for barebox@lists.infradead.org;
	Fri, 16 Feb 2024 11:14:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rawB5-00021B-45; Fri, 16 Feb 2024 12:14:47 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rawB4-0013yy-Nr; Fri, 16 Feb 2024 12:14:46 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rawB4-00BU4h-27;
	Fri, 16 Feb 2024 12:14:46 +0100
Date: Fri, 16 Feb 2024 12:14:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Zc9DphxDcMOj6QXW@pengutronix.de>
References: <20240215074757.960200-1-s.hauer@pengutronix.de>
 <20240215074757.960200-4-s.hauer@pengutronix.de>
 <20240215110752.qjhfdytbb3hap5qk@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240215110752.qjhfdytbb3hap5qk@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_031449_692669_73E5F600 
X-CRM114-Status: GOOD (  27.10  )
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
Subject: Re: [PATCH 3/7] partition: allow to reparse a partition table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Feb 15, 2024 at 12:07:52PM +0100, Marco Felsch wrote:
> On 24-02-15, Sascha Hauer wrote:
> > The partition table of a block device may change when it is written to.
> > Allow to reparse the partition table when this happens.
> > This is easy when none of the partitions is opened, in that case just
> > remove the old partitions and call parse_partition_table() again.
> > When a partition is opened (including mounted) we can't remove it. In
> > that case continue with the old partition table and print a warning.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Just two nits, to make cdev access more opaque.
> 
> > ---
> >  common/partitions.c | 20 ++++++++++++++++++++
> >  include/disks.h     |  1 +
> >  2 files changed, 21 insertions(+)
> > 
> > diff --git a/common/partitions.c b/common/partitions.c
> > index 78b68276c3..cfcd0e080b 100644
> > --- a/common/partitions.c
> > +++ b/common/partitions.c
> > @@ -154,6 +154,26 @@ int parse_partition_table(struct block_device *blk)
> >  	return rc;
> >  }
> >  
> > +int reparse_partition_table(struct block_device *blk)
> > +{
> > +	struct cdev *cdev = &blk->cdev;
> > +	struct cdev *c, *tmp;
> > +
> > +	list_for_each_entry(c, &cdev->partitions, partition_entry) {
> > +		if (c->open) {
> 
> 		if (cdev_is_open(c))

I was assuming this function already exists, but it doesn't. I'll leave
that for a later exercise.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


