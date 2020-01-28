Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwXW1-0006Bp-UK
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 20:31:19 +0000
Received: by mail-lf1-x143.google.com with SMTP id n25so10160502lfl.0
 for <barebox@lists.infradead.org>; Tue, 28 Jan 2020 12:31:17 -0800 (PST)
Date: Tue, 28 Jan 2020 23:31:06 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20200128203105.GA9757@chr>
References: <20200128175307.13584-1-pmamonov@gmail.com>
 <20200128182951.vq4pfer3zinz36ih@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128182951.vq4pfer3zinz36ih@pengutronix.de>
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
Subject: Re: [PATCH] MIPS: relocate_code: fix relocation area size
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jan 28, 2020 at 07:29:51PM +0100, Oleksij Rempel wrote:
> On Tue, Jan 28, 2020 at 08:53:07PM +0300, Peter Mamonov wrote:
> > relocate_code() calculates relocation area size as a sum (barebox_image_size +
> > bss_len). barebox_image_size and bss_len are calculated as (__image_end -
> > __image_start) and (__bss_stop - __bss_start) respectively. This doesn't take
> > into account relocation data placed between  __image_end and __bss_start.
> > However relocation preserves BSS position relative to image start, as if
> > relocation data is still there. This causes RAM overflow during BSS
> > initialization in main_entry(). This problem may be hidden due to the alignment
> > of the `relocaddr`.
> 
> Thx! Works on ar9331

Guess you should squash this patch into "MIPS: remove .bss to __rel_start 
overlay", since it fixes the issue caused by the latter.

Regards,
Peter

> 
> Tested-by: Oleksij Rempel <o.rempel@pengutronix.de>
> 
> > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> > ---
> >  arch/mips/lib/reloc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
> > index 32d776a6a6..41e2d5c75f 100644
> > --- a/arch/mips/lib/reloc.c
> > +++ b/arch/mips/lib/reloc.c
> > @@ -121,7 +121,7 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
> >  	memset(__bss_start, 0, bss_len);
> >  	cpu_probe();
> >  
> > -	length = barebox_image_size + bss_len;
> > +	length = __bss_stop - __image_start;
> >  	relocaddr = ALIGN_DOWN(ram_size - length, SZ_64K);
> >  	relocaddr = KSEG0ADDR(relocaddr);
> >  	new_stack = relocaddr - MALLOC_SIZE - 16;
> > -- 
> > 2.24.0
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
