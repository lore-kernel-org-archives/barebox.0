Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fUo8U-0008B5-P7
 for barebox@lists.infradead.org; Mon, 18 Jun 2018 06:59:37 +0000
Date: Mon, 18 Jun 2018 08:59:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180618065918.6sijgqa7y66zjffo@pengutronix.de>
References: <20180615042102.12345-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180615042102.12345-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/3] ARM: psci: Remove unused code in psci_entry()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 14, 2018 at 09:21:00PM -0700, Andrey Smirnov wrote:
> Remove what looks like a leftover code that doesn't appear to be
> referenced anywhere.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/cpu/psci.c | 6 ------
>  1 file changed, 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
> index 435ec92cc..f63f66855 100644
> --- a/arch/arm/cpu/psci.c
> +++ b/arch/arm/cpu/psci.c
> @@ -139,12 +139,6 @@ static unsigned long psci_system_reset(void)
>  void psci_entry(u32 r0, u32 r1, u32 r2, u32 r3, u32 r4, u32 r5, u32 r6,
>  		struct arm_smccc_res *res)
>  {
> -	int mmuon;
> -	unsigned long ttb;
> -
> -	mmuon = get_cr() & CR_M;
> -	asm volatile ("mrc p15, 0, %0, c2, c0, 0" : "=r"(ttb));
> -
>  	psci_printf("%s entry, function: 0x%08x\n", __func__, r0);
>  
>  	switch (r0) {
> -- 
> 2.17.0
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
