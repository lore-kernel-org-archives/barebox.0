Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RbBiw-0004kr-Pm
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 13:51:56 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1323946179-9883-1-git-send-email-s.hauer@pengutronix.de>
 <1323946179-9883-8-git-send-email-s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 14:51:40 +0100
In-Reply-To: <1323946179-9883-8-git-send-email-s.hauer@pengutronix.de> (Sascha
 Hauer's message of "Thu, 15 Dec 2011 11:49:39 +0100")
Message-ID: <87y5uevt77.fsf@free.fr>
MIME-Version: 1.0
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> +static off_t nand_bb_lseek(struct cdev *cdev, off_t __offset)
> +{
> +	struct nand_bb *bb = cdev->priv;
> +	unsigned long raw_pos = 0;
> +	uint32_t offset = __offset;
> +	int ret;
> +
> +	/* lseek only in readonly mode */
> +	if (bb->flags & O_ACCMODE)
> +		return -ENOSYS;
> +
> +	while (raw_pos < bb->raw_size) {
> +		off_t now = min(offset, bb->info.erasesize);
> +
> +		ret = cdev_ioctl(bb->cdev_parent, MEMGETBADBLOCK, (void *)raw_pos);
> +		if (ret < 0)
> +			return ret;
> +		if (!ret)
> +			offset -= now;
> +		raw_pos += now;
> +		if (!offset) {
> +			bb->offset = raw_pos;
> +			return __offset;
> +		}
> +	}
Are you sure of this algorithm ?
I tried to check it with:
 - erasesize=16 (silly I know, but it's simpler for my mind)
 - bb->raw_size = +oo
 - offset = 34

Let's assume we have eraseblock B0, B1, B2 and B3 of 16 bytes.
B0, B1 and B3 are good, B2 is a bad block.

+--------+--------+--------+--------+
|   B0   |   B1   |xxxB2xxx|   B3   |
+--------+--------+--------+--------+

If I unroll the while loop:
 - loop1:
     now=16
     ret=0 (B0 good)
     offset = 18
     raw_pos = 16
 - loop2:
     now=16
     ret=0 (B1 good)
     offset = 2
     raw_pos = 32
 - loop3:
     now=2
     ret=1 (B2 bad)
     offset = 2
     raw_pos = 34
 - loop4:
     now=2
     ret=0 (B3 good)
     offset = 0
     raw_pos = 36
     bb->offset = 36
     return 34

So we end up with bb->offset = 36, which seems incorrect to me. I would have
understood a value of 50, but 36 ... I don't

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
