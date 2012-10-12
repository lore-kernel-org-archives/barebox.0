Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMam5-000384-Cq
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 08:39:19 +0000
Date: Fri, 12 Oct 2012 10:39:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121012083915.GN27665@pengutronix.de>
References: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
 <20121010074015.GM27665@pengutronix.de>
 <CAAMcf8D0Xn6aWztkD=8dnv3P1qxNgxSV-2Q37kGOaRsOQE7xVA@mail.gmail.com>
 <20121010093223.GX27665@pengutronix.de>
 <CAAMcf8CLimKWZddBfctSCct0wOJOk7tgTJpM7m_w8h5dOQRt1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAMcf8CLimKWZddBfctSCct0wOJOk7tgTJpM7m_w8h5dOQRt1Q@mail.gmail.com>
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
Subject: Re: [PATCH 00/14] archosg9: add support for tablet
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 12, 2012 at 02:55:18AM +0200, vj wrote:
> > Ups, missed that. That's really a huge speed gain. I wonder why this
> > happens. Maybe the overhead of request/release sdram region is
> > significant with MMU disabled. Could you play with the BUFSIZ parameter
> > to see if there's a good compromise between speeding up your transfer
> > and still sensible buffer sizes?
> 
> Here are the results:
> 13133*PAGE_SIZE: Transferred 53789775 bytes in 3.326747 seconds at
> 15.419848 MBps
>    64*PAGE_SIZE: Transferred 53789775 bytes in 3.478078 seconds at
> 14.748928 MBps
>    32*PAGE_SIZE: Transferred 53789775 bytes in 3.655790 seconds at
> 14.031968 MBps
>    16*PAGE_SIZE: Transferred 53789775 bytes in 3.987313 seconds at
> 12.865286 MBps
>     8*PAGE_SIZE: Transferred 53789775 bytes in 4.540697 seconds at
> 11.297368 MBps
>     4*PAGE_SIZE: Transferred 53789775 bytes in 5.876598 seconds at
> 8.729188 MBps
>     2*PAGE_SIZE: Transferred 53789775 bytes in 8.249404 seconds at
> 6.218380 MBps
> Note: 13133 is reading the file at once.

So 32 * PAGE_SIZE could be a good compromise. That is still a fine
enough granularity for requesting SDRAM regions.

> 
> >
> > BTW I wonder if it would be possible to use the MMU in your setup. We
> > have a 1:1 flat mapping which should be no problem for the ROM code.
> > You probably would have to use dma_alloc_coherent to allocate the
> > buffers which are used for USB transfers.
> 
> Tested with MMU enabled having the buffers on local stack: fail
> with buffers allocated with xzalloc: fail
> with dma_alloc_coherent: fail
> all of them freezes when calling the ROM function
> omap4_usbboot_pdata.io->write(...)
> also tried this initcalls, all with same result:
> core_initcall(omap4_usbboot_init);
> postmmu_initcall(omap4_usbboot_init);
> 
> Why it doesn't work? I don't know. But if anybody wants to investigate attached
> is the ROM code. At the top of the file are the entry points used by
> barebox, which
> surely are wrong because aren't dword aligned!

I have no idea. That's probably the point where a jtag debugger could
help.

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
