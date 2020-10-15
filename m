Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSys7-0008S2-K6
 for barebox@lists.infradead.org; Thu, 15 Oct 2020 08:44:28 +0000
Date: Thu, 15 Oct 2020 10:44:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201015084426.GJ13710@pengutronix.de>
References: <20201014150824.3578133-1-m.tretter@pengutronix.de>
 <424d6679-3acd-f6fe-adb3-860ba75ab820@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <424d6679-3acd-f6fe-adb3-860ba75ab820@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: mmu64: allow to disable null pointer trap on
 zero page
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Michael Tretter <m.tretter@pengutronix.de>

On Wed, Oct 14, 2020 at 06:29:47PM +0200, Ahmad Fatoum wrote:
> 
> 
> On 10/14/20 5:08 PM, Michael Tretter wrote:
> > Barebox uses the zero page to trap NULL pointer dereferences. However,
> > if the SDRAM starts at address 0x0, this makes the first page of the
> > SDRAM inaccessible and makes it impossible to load images to offset 0x0
> > in the SDRAM.
> > 
> > Trapping NULL pointer dereferences on such systems is still desirable.
> > Therefore, add a function to disable the traps if accessing the zero
> > page is necessary and to re-enable the traps after the access is done.
> 
> Can't we map the (phy_addr_t)0 at some higher virtual address and
> change uimage to use phys_to_virt() ?
> 
> Something like 
> 
> static inline void *phys_to_virt(unsigned long phys)
> {
> 	if (!IS_ENABLED(CONFIG_ARM_MACH_CUSTOM_MAPPING) || !arm_mach_phys_to_virt)
> 		return (void *)phys;
> 	return arm_mach_phys_to_virt(phys);
> }

Please don't. A user of that function would have to implicitly know that
phys_to_virt() would have to be called exactly for the zero page. Also
how big is the area returned from phys_to_virt()? If it's up to the next
page boundary a user would have to align all of it's memcpys to page
boundaries for no gain.

I rather suggest to introduce an explicit

void *memcpy_to_zero(void *dst, void *src, size_t len)

The implementation could then be architecture specific and could choose
if it likes to just map the zero page to NULL or somewhere else.

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
