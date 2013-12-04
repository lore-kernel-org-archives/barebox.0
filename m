Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VoFNx-0001Yf-Sf
 for barebox@lists.infradead.org; Wed, 04 Dec 2013 16:33:15 +0000
Date: Wed, 4 Dec 2013 17:32:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131204163251.GQ24559@pengutronix.de>
References: <1385997765-19218-1-git-send-email-s.hauer@pengutronix.de>
 <87vbz57fr6.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87vbz57fr6.fsf@free.fr>
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
Subject: Re: [PATCH] mtd: mtdraw: drop ioctl callback for mtdraw device
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Tue, Dec 03, 2013 at 11:04:45PM +0100, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > Do not call mtd_ioctl for mtdraw devices. mtd_ioctl will derefence
> > the priv pointer to a struct mtd_info whereas with mtdraw devices it will be
> > a struct mtdraw pointer. We do not need ioctls for mtdraw devices, so drop
> > it instead of fixing it.
> 
> Very true for the fix.
> As to whether we need ioctls for raw mtd devices, we're loosing bad block
> operations and memgetinfo.
> 
> Unfortunately that's a flaw with my split of core.c/mtdraw.c. The complete fix
> would be to have mtd_ioctl split into :
>  - mtd_ioctl : would call 
>               _mtd_ioctl(struct mtd_info *info, int request, void *buf)
>  - _mtd_ioctl : current code of ioctl handling
> And add :
>  - mtdraw_ioctl: would call _mtd_ioctl()
> 
> For the time being your patch is perfectly fine. Do you want me to add the split
> + mtdraw_ioctl() ? That's not a too big amount of work.

For MEMGETINFO we can directly call into _mtd_ioctl(), but for
MEM[SG]ETBADBLOCK the offsets would have to be corrected first. Is this
worth the effort? Otherwise we could do something like:

int mtdraw_ioctl(struct cdev *cdev, int request, void *buf)
{
	struct mtd_info *mtd = to_mtd(cdev);

	switch (request) {
	case MEMGETINFO:
		return mtd_memgetinfo(mtd, buf);
	default:
		return -EINVAL;
	}
}

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
