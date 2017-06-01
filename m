Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dGMYB-0000mc-0D
 for barebox@lists.infradead.org; Thu, 01 Jun 2017 09:37:52 +0000
Message-ID: <1496309849.3204.0.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu, 01 Jun 2017 11:37:29 +0200
In-Reply-To: <20170601063111.k36wjyxac6uwslgv@pengutronix.de>
References: <20170530140947.3988-1-p.zabel@pengutronix.de>
 <20170530140947.3988-4-p.zabel@pengutronix.de>
 <20170601063111.k36wjyxac6uwslgv@pengutronix.de>
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
Subject: Re: [PATCH 4/5] fs: add cdev_create_from_file for loop mount option
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 2017-06-01 at 08:31 +0200, Sascha Hauer wrote:
> Hi Philipp,
> 
> On Tue, May 30, 2017 at 04:09:46PM +0200, Philipp Zabel wrote:
> > Allow to create a loopback cdev from a file.
> > 
> > Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> > ---
> >  fs/devfs-core.c  | 81 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  fs/fs.c          | 21 ++++++++++++---
> >  include/driver.h |  1 +
> >  3 files changed, 99 insertions(+), 4 deletions(-)
> > 
> > diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> > +static ssize_t loop_write(struct cdev *cdev, const void *buf, size_t count,
> > +		loff_t offset, ulong flags)
> > +{
> > +	struct loop_priv *priv = cdev->priv;
> > +	loff_t ofs;
> > +
> > +	ofs = lseek(priv->fd, offset, SEEK_SET);
> > +	if (ofs < 0)
> > +		return ofs;
> > +
> > +	return write(priv->fd, buf, count);
> > +}
> > +
> > +static const struct file_operations loop_ops = {
> > +	.read = loop_read,
> > +	.write = loop_write,
> > +	.memmap = generic_memmap_rw,
> > +	.lseek = dev_lseek_default,
> > +};
> > +
> > +struct cdev *cdev_create_from_file(const char *path, ulong flags)
> 
> Looks good, but I'm missing the counterpart of this function and its
> usage in umount().

Thanks, I'll add a .close callback to loop_ops to call close(priv->fd)
on umount.

regards
Philipp



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
