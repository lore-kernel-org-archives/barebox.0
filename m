Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXpRx-0002p5-HG
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 15:32:27 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=a3f-osx.local)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <a.fatoum@pengutronix.de>) id 1gXpRm-0003qa-2N
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 16:32:14 +0100
References: <20181204091500.2841-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c362fe2d-5c2a-b402-88b9-c9d9baa8901c@pengutronix.de>
Date: Fri, 14 Dec 2018 16:32:13 +0100
MIME-Version: 1.0
In-Reply-To: <20181204091500.2841-1-a.fatoum@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH] arm: common: document safe usage of arm_setup_stack
To: barebox@lists.infradead.org

Hello,

On 4/12/18 10:15, Ahmad Fatoum wrote:
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/include/asm/common.h | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm/include/asm/common.h b/arch/arm/include/asm/common.h
> index c32cdfe5ec2f..72ac988cc131 100644
> --- a/arch/arm/include/asm/common.h
> +++ b/arch/arm/include/asm/common.h
> @@ -46,6 +46,12 @@ static inline unsigned long get_sp(void)
>  	return sp;
>  }
>  
> +/*
> + * At least with GCC 7.3.1, listing sp in the clobber register can generate
> + * erroneous accesses to the fp, even in __naked functions. Therefore _always_
> + * branch to a noinline function as soon as possible (usually after relocation
> + * and c_setup).
> + */
>  static inline void arm_setup_stack(unsigned long top)
>  {
>  	__asm__ __volatile__("mov sp, %0"
> 

any comments?

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
