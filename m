Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aG14E-00013n-5x
 for barebox@lists.infradead.org; Mon, 04 Jan 2016 09:04:42 +0000
Date: Mon, 4 Jan 2016 10:04:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160104090420.GE13058@pengutronix.de>
References: <1451627918-31967-1-git-send-email-andrew.smirnov@gmail.com>
 <1451627918-31967-2-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1451627918-31967-2-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 2/6] ARM: mmu: Add VBAR setup
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 31, 2015 at 09:58:34PM -0800, Andrey Smirnov wrote:
> Add code to make sure that normal vector exception table, when it is
> used due to unavailability of the high vector table, was not re-mapped
> from 0x0 via VBAR by someone else before us.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/cpu/mmu.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> index 784221c..e32523b 100644
> --- a/arch/arm/cpu/mmu.c
> +++ b/arch/arm/cpu/mmu.c
> @@ -302,6 +302,12 @@ static void vectors_init(void)
>  		 * live without being able to catch NULL pointer dereferences
>  		 */
>  		exc = arm_create_pte(0x0);
> +
> +		/*
> +		  Make sure that vecotrs are not re-mapped from 0x0
> +		  via VBAR (no-op on non-ARMv7)
> +		 */

s/vecotrs/vectors/

/*
 * Please use this multimline
 * comment style.
 */

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
