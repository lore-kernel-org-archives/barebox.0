Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHlY1-0005Jl-UO
 for barebox@lists.infradead.org; Tue, 28 Jun 2016 05:26:59 +0000
Date: Tue, 28 Jun 2016 07:26:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160628052633.GF20657@pengutronix.de>
References: <1466586117-14464-1-git-send-email-t.remmet@phytec.de>
 <20160624112043.GA20656@pengutronix.de>
 <1467015758.3805.4.camel@lws-tremmet.phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467015758.3805.4.camel@lws-tremmet.phytec.de>
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
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 27, 2016 at 10:22:38AM +0200, Teresa Remmet wrote:
> Hello Sascha,
> 
> Am Freitag, den 24.06.2016, 13:20 +0200 schrieb Sascha Hauer:
> > Hi Teresa,
> > 
> > On Wed, Jun 22, 2016 at 11:01:57AM +0200, Teresa Remmet wrote:
> > > When moving a PEB the leb_write_trylock() function is called.
> > > As the function never returns 0 UBI will end up in an endless
> > > loop.
> > > 
> > > Noticed the issue when fastmap has been enabled and data is beeing copied
> > > several times to a UBI volume. When UBI tries to move the anchor PEB,
> > > the issue comes up.
> > > 
> > > The leb_write_trylock() is now equal to the leb_write_lock().
> > > But kept it for easier maintaince in future when syncing with
> > > kernel.
> > > 
> > > Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> > > ---
> > >  drivers/mtd/ubi/eba.c | 11 +----------
> > >  1 file changed, 1 insertion(+), 10 deletions(-)
> > > 
> > > diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
> > > index a7af247..31dbcd2 100644
> > > --- a/drivers/mtd/ubi/eba.c
> > > +++ b/drivers/mtd/ubi/eba.c
> > > @@ -257,16 +257,7 @@ static int leb_write_trylock(struct ubi_device *ubi, int vol_id, int lnum)
> > >  	le = ltree_add_entry(ubi, vol_id, lnum);
> > >  	if (IS_ERR(le))
> > >  		return PTR_ERR(le);
> > > -
> > > -	/* Contention, cancel */
> > > -	le->users -= 1;
> > > -	ubi_assert(le->users >= 0);
> > > -	if (le->users == 0) {
> > > -		rb_erase(&le->rb, &ubi->ltree);
> > > -		kfree(le);
> > > -	}
> > > -
> > > -	return 1;
> > > +	return 0;
> > >  }
> > 
> > This seems to be the missing link to make the following patch work. I
> > have tried this several times but so far never found this bug. Could you
> > give it a try? With this patch it should be now possible to ubiformat a
> > device with an image and to generate a fastmap when the device is
> > detached first.
> 
> I tested it, and it is working. Ubi now successfully writes an anchor
> PEB.

Thanks for testing. Applied both patches.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
