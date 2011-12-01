Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RW7az-0001iw-Ko
 for barebox@lists.infradead.org; Thu, 01 Dec 2011 14:26:42 +0000
Date: Thu, 1 Dec 2011 15:26:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111201142636.GP27267@pengutronix.de>
References: <87ipm9yd88.fsf@free.fr> <20111124120400.GC27267@pengutronix.de>
 <87d3chxoxp.fsf@free.fr> <20111125000145.GE27267@pengutronix.de>
 <87lir18ag7.fsf@free.fr> <20111128074319.GO27267@pengutronix.de>
 <87d3cc87o5.fsf@free.fr> <20111129081501.GF27267@pengutronix.de>
 <87y5ux6zai.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87y5ux6zai.fsf@free.fr>
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
Subject: Re: ARM, MMU and IO space mapping
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Wed, Nov 30, 2011 at 11:06:13PM +0100, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > We use high vectors at 0xfff00000, so there won't be vectors at 0x0. the
> > 0x0 mapping is only used to catch NULL pointer derefs.
> 
> > That said, being able to catch NULL pointers is a very good thing,
> > especially when there is flash at 0x0 which might be accidently
> > overwritten by some code acting on NULL pointers.
> I don't know if it can be that easily overwritten, but catching NPE is always
> good, it's true.
> 
> > With MMU we could just remap the flash in board code and pass the
> > remapped address as resource to the cfi driver. While I think the
> > cleanest solution would be to use ioremap in all drivers (and make
> > this a no-op on most boards) I don't think it's worth it at the moment.
> OK, remap in board, and input virtual mapping address into io ressource, simple
> enough. OK, I'll try that.
> That would require a function in arch/arm/cpu/mmu.c, to remap a physical address
> range into a virtual one, wouldn't it ? Would you have a suggestion for the API
> ? As in map_io_section(u32 phys_addr, void *virt) ?

How about adding a size parameter ;)

Yes, this looks good enough for now.

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
