Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bG3UP-0006pZ-Dz
 for barebox@lists.infradead.org; Thu, 23 Jun 2016 12:12:10 +0000
Message-ID: <1466683903.4981.9.camel@lws-tremmet.phytec.de>
From: Teresa Remmet <t.remmet@phytec.de>
Date: Thu, 23 Jun 2016 14:11:43 +0200
In-Reply-To: <20160623063627.GH4750@pengutronix.de>
References: <1466586161-14532-1-git-send-email-t.remmet@phytec.de>
 <1466586161-14532-2-git-send-email-t.remmet@phytec.de>
 <20160623063627.GH4750@pengutronix.de>
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
Subject: Re: [PATCH 2/4] mtd: UBI: Add support for updating static volumes
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

Am Donnerstag, den 23.06.2016, 08:36 +0200 schrieb Sascha Hauer:
> Hi Teresa,
> 
> On Wed, Jun 22, 2016 at 11:02:39AM +0200, Teresa Remmet wrote:
> > Added support to update UBI static volumes in barebox.
> > This is mainly realized with adding the ioctl UBI_IOCVOLUP.
> > 
> > Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> > ---
> >  drivers/mtd/ubi/barebox.c | 56 +++++++++++++++++++++++++++++++++++++++++++++--
> >  drivers/mtd/ubi/upd.c     | 12 ----------
> >  2 files changed, 54 insertions(+), 14 deletions(-)
> > 
> 
> >  
> >  int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol)
> > @@ -179,6 +227,10 @@ int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol)
> >  	cdev->name = basprintf("%s.%s", ubi->cdev.name, vol->name);
> >  	cdev->priv = priv;
> >  	cdev->size = vol->used_bytes;
> > +
> > +	if (vol->vol_type == UBI_STATIC_VOLUME)
> > +		cdev->flags = DEVFS_IS_CHARACTER_DEV;
> > +
> >  	cdev->dev = &vol->dev;
> >  	ubi_msg(ubi, "registering %s as /dev/%s", vol->name, cdev->name);
> >  	ret = devfs_create(cdev);
> > diff --git a/drivers/mtd/ubi/upd.c b/drivers/mtd/ubi/upd.c
> > index 33d4dbf..e3deb3e 100644
> > --- a/drivers/mtd/ubi/upd.c
> > +++ b/drivers/mtd/ubi/upd.c
> > @@ -368,18 +368,6 @@ int ubi_more_update_data(struct ubi_device *ubi, struct ubi_volume *vol,
> >  	}
> >  
> >  	ubi_assert(vol->upd_received <= vol->upd_bytes);
> > -	if (vol->upd_received == vol->upd_bytes) {
> > -		err = ubi_wl_flush(ubi, UBI_ALL, UBI_ALL);
> > -		if (err)
> > -			return err;
> > -		/* The update is finished, clear the update marker */
> > -		err = clear_update_marker(ubi, vol, vol->upd_bytes);
> > -		if (err)
> > -			return err;
> > -		vol->updating = 0;
> > -		err = to_write;
> > -		vfree(vol->upd_buf);
> > -	}
> 
> Why is this removed? Does it still work to just write to the UBI volume
> without this?

writing directly to a dynamic volume never seem to hits this condition.
So this is not causing any problems. clearing updater marker and so on
is done later in ubi_volume_cdev_close(struct cdev *cdev). 
Keeping this causes a assertion for static volumes as the update marker
is cleared twice.

Teresa


> 
> Sascha
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
