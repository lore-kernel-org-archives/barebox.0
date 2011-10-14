Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REgcK-0003yw-Pf
	for barebox@lists.infradead.org; Fri, 14 Oct 2011 12:12:01 +0000
Date: Fri, 14 Oct 2011 14:11:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111014121158.GF13898@pengutronix.de>
References: <1318543601-20819-1-git-send-email-loic.minier@linaro.org>
	<1318543601-20819-6-git-send-email-loic.minier@linaro.org>
	<20111014072020.GY13898@pengutronix.de>
	<20111014085903.GA26536@bee.dooz.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111014085903.GA26536@bee.dooz.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/5] Use size_t for memory offsets
To: =?iso-8859-15?Q?Lo=EFc?= Minier <lool@dooz.org>
Cc: barebox@lists.infradead.org

On Fri, Oct 14, 2011 at 10:59:03AM +0200, Lo=EFc Minier wrote:
> On Fri, Oct 14, 2011, Sascha Hauer wrote:
> > You should change the prototypes in include/driver.h aswell.
> =

>  Ah thanks, now it strikes me that the very same constructs are present
>  in many file_operations implementations; e.g. imx_iim_cdev_read and
>  imx_iim_cdev_write also use an ulong offset, as well as
>  ubi_volume_cdev_read/ubi_volume_cdev_write (unsigned long), lp_read,
>  miidev_read/_write etc.
> =

>  I had a look at file_operations in linux now, and it uses
>  size_t/ssize_t and a loff_t type for regular read/write:
> struct file_operations {
>         loff_t (*llseek) (struct file *, loff_t, int);
>         ssize_t (*read) (struct file *, char __user *, size_t, loff_t *);
>         ssize_t (*write) (struct file *, const char __user *, size_t, lof=
f_t *);
> =

>  however for aio:
>         ssize_t (*aio_read) (struct kiocb *, const struct iovec *, unsign=
ed long, loff_t);
>         ssize_t (*aio_write) (struct kiocb *, const struct iovec *, unsig=
ned long, loff_t);
> =

>  loff_t is defined as long long on 32-bits and 64-bits arches, which I
>  believe are both 8 bytes.
> =

>  So perhaps it's better to switch from ulong to unsigned long long for
>  offsets?  This isn't important for mem_read/mem_write, but it would be
>  for e.g. MMC accesses as it's of course valid to seek after the first
>  4 G of a MMC on a 32-bits system.

Yes, an 8 byte type would be definitely better for file offsets. It
would be a first step to support SD cards > 4G. I have looked into
this several times before and ended up with huge patches everytime
I tried.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
