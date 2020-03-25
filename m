Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH2nV-0000HW-MO
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 09:58:07 +0000
Date: Wed, 25 Mar 2020 10:58:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200325095803.GD27288@pengutronix.de>
References: <CAGm1_kssX7T6KHNp7pp2dbfSUXSH4_RtOB3jo+6Ldwi11rB5YA@mail.gmail.com>
 <20200323083012.GP3335@pengutronix.de>
 <CAGm1_kvEGeMhGMr32AMZapL52L7Ks0-zdRs4=p4Rj=JgOS6Y=Q@mail.gmail.com>
 <20200324073557.GS3335@pengutronix.de>
 <CAGm1_kuqWnrg6M6FLtgQ9Lsq9h6a+SG7n-OOOmGbpHJ_d94jCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGm1_kuqWnrg6M6FLtgQ9Lsq9h6a+SG7n-OOOmGbpHJ_d94jCQ@mail.gmail.com>
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
Subject: Re: am335x: load a kernel with integrated initramfs
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>, Lucas Stach <lst@pengutronix.de>

On Tue, Mar 24, 2020 at 05:21:16PM +0100, Yegor Yefremov wrote:
> On Tue, Mar 24, 2020 at 8:35 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > On Mon, Mar 23, 2020 at 01:22:33PM +0100, Yegor Yefremov wrote:
> > > Hi Sascha,
> > >
> > > On Mon, Mar 23, 2020 at 9:30 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > >
> > > > Hi Yegor,
> > > >
> > > > On Fri, Mar 20, 2020 at 09:29:04AM +0100, Yegor Yefremov wrote:
> > > > > I get an "handler failed with: Out of memory" message when trying to
> > > > > load my 22MB large kernel-fit.itb. Below you can see the related log:
> > > > >
> > > > > mounted /dev/nand0.UBI.ubi.kernel on /mnt/nand0.UBI.ubi.kernel
> > > > > YY: bootm_boot
> > > > > YY: read file 0, size 22661672, PAGE_SIZE 4096
> > > > > YY: fit_open
> > > > > FIT: Opened FIT image: Simple image with single Linux kernel and FDT blob
> > > > > FIT: configuration 'conf221@1': Boot Linux kernel with FDT blob (221)
> > > > > FIT: image 'kernel@1': 'Vanilla Linux kernel'
> > > > > FIT: /images/kernel@1/hash@1: hash OK
> > > > >
> > > > > Loading open firmware Device Tree flattened Binary
> > > > > '/mnt/nand0.UBI.ubi.kernel/kernel-fit.itb'
> > > > > OS image not yet relocated
> > > > > Passing control to FIT image handler
> > > > > YY: do_bootm_linux
> > > > > YY: before bootm_load_os
> > > > > YY: bootm_load_os
> > > > > YY: kernel size 22484352
> > > > > YY: for each memory bank: size 22484352
> > > > > __request_region: 0x86b37000:0x880a857f conflicts with 0x87efe860:0x8fdfd0bf
> > > >
> > > > So your kernel has a size of 22484352 bytes. We want to places the
> > > > kernel at a place where we do not risk that it overwrites itself during
> > > > decompression. We assume that the kernel gets five times bigger during
> > > > decompression. So we put it at 0x80000000 + 22484352 * 5. Here the image
> > > > takes 22484352 bytes, so ends at 0x80000000 + 22484352 * (5 + 1) which
> > > > is already inside the malloc area.
> > > >
> > > > Try the attached patch, it should solve that issue.
> > >
> > > No, it doesn't. But reducing the malloc size helped. I have tried the
> > > reduced size with and without the fix.
> >
> > Nevertheless I would still be interested why the patch doesn't work.
> > Care to have a look? Some printfs of the addresses would be enough to
> > give me a clue.
> 
> Loading open firmware Device Tree flattened Binary
> '/mnt/nand0.UBI.ubi.kernel/kernel-fit.itb'
> YY: mem_start 80000000, mem_size 133163104
> YY: image_decomp_size 112422912
> YY: mem_end 87efe85f
> YY: kaddr initial 86b37000
> YY: kaddr final 8688d2df
> YY: load_address 8688d000
> YY: mem_free 87eff000
> FIT: image 'fdt220@1': 'Flattened Device Tree blob (220)'
> FIT: /images/fdt220@1/hash@1: hash OK
> handler failed with: Out of memory
> 
> I hope this helps.

Yes, that helps, thanks. It seems the kernel now fits into the available
memory, but now there's no space left above the kernel to place the
device tree, at least that's what I assume.

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
