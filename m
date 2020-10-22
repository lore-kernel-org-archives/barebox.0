Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVV4C-0003nm-RX
 for barebox@lists.infradead.org; Thu, 22 Oct 2020 07:31:21 +0000
Date: Thu, 22 Oct 2020 09:31:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201022073119.GN26805@pengutronix.de>
References: <20201021145140.597728-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201021145140.597728-1-m.tretter@pengutronix.de>
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
Subject: Re: [PATCH v3 1/2] ARM: mmu64: allow to disable null pointer trap on
 zero page
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 21, 2020 at 04:51:39PM +0200, Michael Tretter wrote:
> Barebox uses the zero page to trap NULL pointer dereferences. However,
> if the SDRAM starts at address 0x0, this makes the first page of the
> SDRAM inaccessible and makes it impossible to load images to offset 0x0
> in the SDRAM.
> 
> Trapping NULL pointer dereferences on such systems is still desirable.
> Therefore, add a function to disable the traps if accessing the zero
> page is necessary and to re-enable the traps after the access is done.
> 
> The zero_page_memcpy function simplifies copying to the SDRAM, because
> this is the most common required functionality, but memtest also
> accesses the zero page and does not use memcpy.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

Applied, thanks

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
