Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RaQGe-0002xq-Gq
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 11:11:29 +0000
Date: Tue, 13 Dec 2011 12:11:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111213111104.GP27267@pengutronix.de>
References: <1323710046-4455-1-git-send-email-robert.jarzmik@free.fr>
 <20111213092147.GC27267@pengutronix.de> <87zkewycio.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zkewycio.fsf@free.fr>
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
Subject: Re: [PATCH 0/2] drivers/mtd: add a core
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Tue, Dec 13, 2011 at 11:46:55AM +0100, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > So if no protests from other side come we can:
> >
> > - git mv drivers/mtd/nand/nand.c drivers/mtd/core.c
> > - replace the oob device with the data+oob device
> > - apply whatever other fixes you need
> Sure, that would be great.
> If no one complains in the next 5 days, I'll provide a V2 of the patch doing it
> your way :
>  - patch1: move nand.c into core.c
>  - patch2: convert all existing nand devices to core.c (ie. add_mtd_device)
>    *Warning* The device will be named "/dev/mtd<N>" and not "/dev/nand<N>". This
>    can break things, especially if legacy board code relies on the "nand" device
>    naming. Solutions:
>      (a) Add a parameter to add_mtd_device: add_mtd_device(struct mtd_info *mtd,
>      char *basename)
>          => if basename == NULL, then use "mtd"
>          => if basename != NULL, use basename for device name
>      (b) Create a specialized add_nand_device()
>      (c) Convert all legacy boards from "nand" to "mtd"
>  - patch3: amend core.c to bring in the device+oob function
> 
> Does it look good to you ?

Yeah, sounds good.

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
