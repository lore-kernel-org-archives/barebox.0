Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHRoz-0007uR-KR
 for barebox@lists.infradead.org; Mon, 27 Jun 2016 08:23:11 +0000
Message-ID: <1467015758.3805.4.camel@lws-tremmet.phytec.de>
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 27 Jun 2016 10:22:38 +0200
In-Reply-To: <20160624112043.GA20656@pengutronix.de>
References: <1466586117-14464-1-git-send-email-t.remmet@phytec.de>
 <20160624112043.GA20656@pengutronix.de>
Mime-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: ubi: Fix endless loop when moving PEB
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

Am Freitag, den 24.06.2016, 13:20 +0200 schrieb Sascha Hauer:
> Hi Teresa,
> 
> On Wed, Jun 22, 2016 at 11:01:57AM +0200, Teresa Remmet wrote:
> > When moving a PEB the leb_write_trylock() function is called.
> > As the function never returns 0 UBI will end up in an endless
> > loop.
> > 
> > Noticed the issue when fastmap has been enabled and data is beeing copied
> > several times to a UBI volume. When UBI tries to move the anchor PEB,
> > the issue comes up.
> > 
> > The leb_write_trylock() is now equal to the leb_write_lock().
> > But kept it for easier maintaince in future when syncing with
> > kernel.
> > 
> > Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> > ---
> >  drivers/mtd/ubi/eba.c | 11 +----------
> >  1 file changed, 1 insertion(+), 10 deletions(-)
> > 
> > diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
> > index a7af247..31dbcd2 100644
> > --- a/drivers/mtd/ubi/eba.c
> > +++ b/drivers/mtd/ubi/eba.c
> > @@ -257,16 +257,7 @@ static int leb_write_trylock(struct ubi_device *ubi, int vol_id, int lnum)
> >  	le = ltree_add_entry(ubi, vol_id, lnum);
> >  	if (IS_ERR(le))
> >  		return PTR_ERR(le);
> > -
> > -	/* Contention, cancel */
> > -	le->users -= 1;
> > -	ubi_assert(le->users >= 0);
> > -	if (le->users == 0) {
> > -		rb_erase(&le->rb, &ubi->ltree);
> > -		kfree(le);
> > -	}
> > -
> > -	return 1;
> > +	return 0;
> >  }
> 
> This seems to be the missing link to make the following patch work. I
> have tried this several times but so far never found this bug. Could you
> give it a try? With this patch it should be now possible to ubiformat a
> device with an image and to generate a fastmap when the device is
> detached first.

I tested it, and it is working. Ubi now successfully writes an anchor
PEB.

Teresa

> 
> Sascha
> 
> ------------------------8<---------------------------------
> 
> From 94cea61ade69f712383e282d6aa573d3a12f11d0 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Fri, 24 Jun 2016 11:38:24 +0200
> Subject: [PATCH] mtd: ubi: actually do work in wear leveling code
> 
> The actual work in the wear leveling code is done in a separate thread.
> Since we do not have threading so far we did not do any of the queued
> work. Change this by calling the worker function synchronously.
> 
> With this barebox now can write a fastmap on a freshly ubiformated
> device.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mtd/ubi/wl.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
> index 4535f2d..f24c219 100644
> --- a/drivers/mtd/ubi/wl.c
> +++ b/drivers/mtd/ubi/wl.c
> @@ -183,7 +183,6 @@ static void wl_entry_destroy(struct ubi_device *ubi, struct ubi_wl_entry *e)
>  	kfree(e);
>  }
>  
> -#ifndef CONFIG_MTD_UBI_FASTMAP
>  /**
>   * do_work - do one pending work.
>   * @ubi: UBI device description object
> @@ -221,7 +220,6 @@ static int do_work(struct ubi_device *ubi)
>  
>  	return err;
>  }
> -#endif
>  
>  /**
>   * in_wl_tree - check if wear-leveling entry is present in a WL RB-tree.
> @@ -523,8 +521,9 @@ static void __schedule_ubi_work(struct ubi_device *ubi, struct ubi_work *wrk)
>  	list_add_tail(&wrk->list, &ubi->works);
>  	ubi_assert(ubi->works_count >= 0);
>  	ubi->works_count += 1;
> -	if (ubi->thread_enabled && !ubi_dbg_is_bgt_disabled(ubi))
> -		wake_up_process(ubi->bgt_thread);
> +
> +	/* No threading in barebox, so do work synchronously */
> +	do_work(ubi);
>  }
>  
>  /**
> -- 
> 2.8.1
> 
> 
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
