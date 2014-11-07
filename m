Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmdSC-0004Jb-Tk
 for barebox@lists.infradead.org; Fri, 07 Nov 2014 06:55:30 +0000
Date: Fri, 7 Nov 2014 07:55:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141107065506.GU30369@pengutronix.de>
References: <1415272993-29736-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415272993-29736-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: implement recommended WAR for errata 709718
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 06, 2014 at 12:23:12PM +0100, Lucas Stach wrote:
> ARM Cortex A8 errata 709718:
> "Load and store operations to shared device memory
> regions may not complete in program order"
> 
> We implement the recommended workaround in the bootloader
> as it must be applied before enabling the MMU for the
> first time.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied both, thanks

Sascha

> ---
>  arch/arm/include/asm/errata.h | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm/include/asm/errata.h b/arch/arm/include/asm/errata.h
> index e2ffd87360c0..9525823e4ca8 100644
> --- a/arch/arm/include/asm/errata.h
> +++ b/arch/arm/include/asm/errata.h
> @@ -12,6 +12,18 @@
>   * GNU General Public License for more details.
>   */
>  
> +static inline void enable_arm_errata_709718_war(void)
> +{
> +	__asm__ __volatile__ (
> +		"mrc	p15, 0, r0, c10, c2, 0\n"
> +		"bic	r0, #3 << 16\n"
> +		"mcr	p15, 0, r0, c10, c2, 0\n"
> +		"mrc	p15, 0, r0, c1, c0, 0\n"
> +		"orr	r0, r0, #1 << 28\n"
> +		"mcr	p15, 0, r0, c1, c0, 0\n"
> +	);
> +}
> +
>  static inline void enable_arm_errata_716044_war(void)
>  {
>  	__asm__ __volatile__ (
> -- 
> 2.1.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
