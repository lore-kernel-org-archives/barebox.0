Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RlfYG-0002Rj-9t
 for barebox@lists.infradead.org; Fri, 13 Jan 2012 11:44:10 +0000
Date: Fri, 13 Jan 2012 12:43:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120113114355.GG5446@pengutronix.de>
References: <1326303284-14444-1-git-send-email-premi@ti.com>
 <1326303284-14444-2-git-send-email-premi@ti.com>
 <20120112092853.GZ5446@pengutronix.de>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317F362C@DBDE01.ent.ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E28AAFD00EFAA646AE3DF9B89CD24A89317F362C@DBDE01.ent.ti.com>
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
Subject: Re: [RFC 2/2] ARM omap: Add CONFIG_SILENT
To: "Premi, Sanjeev" <premi@ti.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Jan 12, 2012 at 03:51:49PM +0000, Premi, Sanjeev wrote:
> > -----Original Message-----
> > From: Sascha Hauer [mailto:s.hauer@pengutronix.de] 
> > Sent: Thursday, January 12, 2012 2:59 PM
> > To: Premi, Sanjeev
> > Cc: barebox@lists.infradead.org; Jean-Christophe PLAGNIOL-VILLARD
> > Subject: Re: [RFC 2/2] ARM omap: Add CONFIG_SILENT
> > 
> 
> [snip]
> 
> > BTW you seem to be very concerned about the codesize in the xloader
> > environments, which I can understand. How about giving my 
> > thumb2 patches
> > a try?
> 
> I tried pulling these patches on the latest master, but git am failed.
> Manual patching reports previously applied patches. (I was able to find
> few patches in the series already in master)
> 
> Some hunks don't apply cleanly. For example:
> 
> diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
> index bd9b72a..3fafb4b 100644
> --- a/arch/arm/lib/armlinux.c
> +++ b/arch/arm/lib/armlinux.c
> @@ -253,6 +253,8 @@ void start_linux(void *adr, int swap, struct image_data *data)
>  {
>  	void (*kernel)(int zero, int arch, void *params) = adr;
>  	void *params = NULL;
> +	int architecture = armlinux_get_architecture();
> +
>  #ifdef CONFIG_OFTREE
>  	params = of_get_fixed_tree();
>  	if (params)
> 
> I did quick fix-ups at few places to make compiler happy, but got
> stuck with this:
> 
>   AS      arch/arm/mach-omap/omap3_core.o
> arch/arm/mach-omap/omap3_core.S: Assembler messages:
> arch/arm/mach-omap/omap3_core.S:116: Error: shift must be constant -- `orr r11,r10,r9,lsl r5'
> arch/arm/mach-omap/omap3_core.S:117: Error: shift must be constant -- `orr r11,r11,r7,lsl r2'

This can be fixed with the following:

ARM(	orr	r11, r10, r9, lsl r5	) /* factor way and cache number into r11 */
ARM(	orr	r11, r11, r7, lsl r2	) /* factor index number into r11 */
THUMB(	lsl	r6, r9, r5		)
THUMB(	orr	r11, r10, r6		) /* factor way and cache number into r11 */
THUMB(	lsl	r6, r7, r2		)
THUMB(	orr	r11, r11, r6		) /* factor index number into r11 */

Just how it is done in arch/arm/cpu/cache-armv7.S. Anyway, this is
only the top of the iceberg. All Assembly code must be carefully
reviewed in thumb mode and omap3 has quite a lot of it. I managed
to start a second stage barebox (compiled with xloader defconfig +
THUMB) in which I commented out arch_init_lowlevel() and
board_init_lowlevel().

I see if I can sort some of this stuff out on the weekend.

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
