Delivery-date: Tue, 30 Nov 2021 11:42:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms0af-0003ST-Cr
	for lore@lore.pengutronix.de; Tue, 30 Nov 2021 11:42:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms0ae-0002wB-G7
	for lore@pengutronix.de; Tue, 30 Nov 2021 11:42:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvgNt408vln3Tb3FDJQTF+jblzemCmpKaRj1qLY2524=; b=rd3P/I19wfiY5q
	cUKDqFM5E9Q0kbJITAYeUHch4/UHopZD/uWwhftqj6+pLETOPg+oTejalk7PJh/ri5Hzj2K1jTiYt
	SqKs1KPLPKcbOUyzN19jcht1creuo8rCJEzILicSxAgxrAV/z9RZI4LjF2XITFfhJ8v4PomDJzAOs
	UQbtnPWAibyT/+3iIzmyVO2/C/AkfZtEFbGAMOgu2CYt2fXfPQpb+qd6gqHKqcFNLXKgrdv1eOVZC
	0xmZWnSoAl5bq9cc90DVDMXpWkABFY93ub9PQO1wtH7OIsIduV+jKV5S2LwepvMa0Jk5WWAaUIt3i
	I131WINi/r0qNKgSFaNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms0ZT-004gQL-JU; Tue, 30 Nov 2021 10:41:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms0ZM-004gO8-5Z
 for barebox@lists.infradead.org; Tue, 30 Nov 2021 10:41:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ms0ZK-0002ab-T7; Tue, 30 Nov 2021 11:41:02 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ms0ZK-0000qP-Jg; Tue, 30 Nov 2021 11:41:02 +0100
Date: Tue, 30 Nov 2021 11:41:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Holger Assmann <h.assmann@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20211130104102.GU28260@pengutronix.de>
References: <20211129124545.14171-1-h.assmann@pengutronix.de>
 <20211129124545.14171-3-h.assmann@pengutronix.de>
 <384035a6-6fab-0e56-b17a-28ad2cb11650@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <384035a6-6fab-0e56-b17a-28ad2cb11650@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:40:22 up 285 days, 14:04, 154 users,  load average: 0.24, 0.16,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_024104_258795_8DB8ED96 
X-CRM114-Status: GOOD (  27.80  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] fs: jffs2: remove unnecessary slab cache structure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Nov 30, 2021 at 11:29:11AM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 29.11.21 13:45, Holger Assmann wrote:
> > jffs2_create_slab_caches() and its subsequent kmem_cache calls are not
> > needed in Barebox since they can directly be replaced by malloc calls.
> > 
> > This patch performs that replacement as well as the related clean up.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
> > ---
> >  fs/jffs2/fs.c       |  10 ----
> >  fs/jffs2/malloc.c   | 131 +++++++-------------------------------------
> >  fs/jffs2/nodelist.h |   2 -
> >  3 files changed, 19 insertions(+), 124 deletions(-)
> > 
> > diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
> > index 7538252336..b72721cfc4 100644
> > --- a/fs/jffs2/fs.c
> > +++ b/fs/jffs2/fs.c
> > @@ -416,26 +416,17 @@ static int jffs2_probe(struct device_d *dev)
> >  			pr_err("error: Failed to initialise compressors\n");
> >  			goto err_out;
> >  		}
> > -
> > -		ret = jffs2_create_slab_caches();
> > -		if (ret) {
> > -			pr_err("error: Failed to initialise slab caches\n");
> > -			goto err_compressors;
> > -		}
> >  	}
> >  
> >          if (jffs2_fill_super(fsdev, 0)) {
> >  		dev_err(dev, "no valid jffs2 found\n");
> >  		ret = -EINVAL;
> > -		goto err_slab;
> 
> This should be goto err_compressors. ret = -EINVAL is't
> used in the success path, so the probe will succeed despite the error
> and likely triggering a crash on mount. In that case,
> jffs2_compressors_exit is also never called.
> 
> @Sascha, can you fixup?

Did that.

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

