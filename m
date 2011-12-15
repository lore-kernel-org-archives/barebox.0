Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RbD7u-0006oI-Hr
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 15:21:43 +0000
Date: Thu, 15 Dec 2011 16:21:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111215152133.GT27267@pengutronix.de>
References: <1323946179-9883-1-git-send-email-s.hauer@pengutronix.de>
 <1323946179-9883-8-git-send-email-s.hauer@pengutronix.de>
 <87y5uevt77.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87y5uevt77.fsf@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 7/7] nand-bb: implement lseek in readonly mode
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Thu, Dec 15, 2011 at 02:51:40PM +0100, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > +static off_t nand_bb_lseek(struct cdev *cdev, off_t __offset)
> > +{
> > +	struct nand_bb *bb = cdev->priv;
> > +	unsigned long raw_pos = 0;
> > +	uint32_t offset = __offset;
> > +	int ret;
> > +
> > +	/* lseek only in readonly mode */
> > +	if (bb->flags & O_ACCMODE)
> > +		return -ENOSYS;
> > +
> > +	while (raw_pos < bb->raw_size) {
> > +		off_t now = min(offset, bb->info.erasesize);
> > +
> > +		ret = cdev_ioctl(bb->cdev_parent, MEMGETBADBLOCK, (void *)raw_pos);
> > +		if (ret < 0)
> > +			return ret;
> > +		if (!ret)
> > +			offset -= now;
> > +		raw_pos += now;
> > +		if (!offset) {
> > +			bb->offset = raw_pos;
> > +			return __offset;
> > +		}
> > +	}
> Are you sure of this algorithm ?
> I tried to check it with:
>  - erasesize=16 (silly I know, but it's simpler for my mind)
>  - bb->raw_size = +oo
>  - offset = 34
> 
> Let's assume we have eraseblock B0, B1, B2 and B3 of 16 bytes.
> B0, B1 and B3 are good, B2 is a bad block.
> 
> +--------+--------+--------+--------+
> |   B0   |   B1   |xxxB2xxx|   B3   |
> +--------+--------+--------+--------+
> 
> If I unroll the while loop:
>  - loop1:
>      now=16
>      ret=0 (B0 good)
>      offset = 18
>      raw_pos = 16
>  - loop2:
>      now=16
>      ret=0 (B1 good)
>      offset = 2
>      raw_pos = 32
>  - loop3:
>      now=2
>      ret=1 (B2 bad)
>      offset = 2
>      raw_pos = 34

Yup, that's wrong. We have to add 16 to raw_pos here, not 2.

>  - loop4:
>      now=2
>      ret=0 (B3 good)
>      offset = 0
>      raw_pos = 36
>      bb->offset = 36
>      return 34

Funny enough that my code actually works. In loop4 we have ret=1
because we are still on B2 (raw_pos is 34, -> still in block 2).
Now the code loops over Block2 in small steps until it comes to
block3 and returns with the correct raw offset, so I didn't see
this in my tests.

> 
> So we end up with bb->offset = 36, which seems incorrect to me. I would have
> understood a value of 50, but 36 ... I don't

This one should work like expected:

	while (raw_pos < bb->raw_size) {
		off_t now = min(offset, bb->info.erasesize);

		ret = cdev_ioctl(bb->cdev_parent, MEMGETBADBLOCK, (void *)raw_pos);
		if (ret < 0)
			return ret;
		if (!ret) {
			offset -= now;
			raw_pos += now;
		} else {
			raw_pos += bb->info.erasesize
		}
		if (!offset) {
			bb->offset = raw_pos;
			return __offset;
		}
	}

loop1:
	now = 16
	ret = 0
	offset = 18
	raw_pos = 16
loop2:
	now = 16
	ret = 0
	offset = 2
	raw_pos = 32
loop3:
	now = 2
	ret = 1
	offset = 2
	raw_pos = 48
loop4:
	now = 2
	ret = 0
	offset = 0
	raw_pos = 50

Thanks for catching this.

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
