Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TN6OZ-0001S1-KP
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 18:25:08 +0000
Date: Sat, 13 Oct 2012 20:25:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121013182505.GB27665@pengutronix.de>
References: <1350137007-10135-1-git-send-email-vicencb@gmail.com>
 <1350137007-10135-3-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350137007-10135-3-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 2/5] ARM: add/rename PSR bits to match linux names
To: Vicente <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 13, 2012 at 04:03:24PM +0200, Vicente wrote:
> 
> Signed-off-by: Vicente <vicencb@gmail.com>
> ---
>  arch/arm/cpu/exceptions.S     |  1 -
>  arch/arm/cpu/interrupts.c     |  6 ++---
>  arch/arm/include/asm/ptrace.h | 55 +++++++++++++++++++++++--------------------
>  3 files changed, 33 insertions(+), 29 deletions(-)
> 
>  /* Are the current registers suitable for user mode?
>   * (used to maintain security in signal handlers)
> @@ -102,13 +107,13 @@ struct pt_regs {
>  static inline int valid_user_regs(struct pt_regs *regs)
>  {
>  	if ((regs->ARM_cpsr & 0xf) == 0 &&
> -	    (regs->ARM_cpsr & (F_BIT|I_BIT)) == 0)
> +	    (regs->ARM_cpsr & (PSR_F_BIT|PSR_I_BIT)) == 0)
>  		return 1;
>  
>  	/*
>  	 * Force CPSR to something logical...
>  	 */
> -	regs->ARM_cpsr &= (CC_V_BIT|CC_C_BIT|CC_Z_BIT|CC_N_BIT|0x10);
> +	regs->ARM_cpsr &= (PSR_V_BIT|PSR_C_BIT|PSR_Z_BIT|PSR_N_BIT|0x10);

Since you are changing these lines anyway, could you add a whitespace
left and right to the operators to match our coding style?

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
