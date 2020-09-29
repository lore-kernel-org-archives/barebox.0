Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kN9Zf-0007YH-NZ
 for barebox@lists.infradead.org; Tue, 29 Sep 2020 06:57:20 +0000
Date: Tue, 29 Sep 2020 08:57:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200929065718.GQ11648@pengutronix.de>
References: <1601199177-11599-1-git-send-email-u74147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1601199177-11599-1-git-send-email-u74147@gmail.com>
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
Subject: Re: [PATCH v2] asm/debug_ll_ns16550.h: add parament divisor
To: Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de

On Sun, Sep 27, 2020 at 05:32:57PM +0800, Du Huanpeng wrote:
> From: duhuanpeng <u74147@gmail.com>
> 
> add a parameters for the assembly version for passing divisor,
> and set the default value to DEBUG_LL_UART_ADDR when no parameter
> is given.
> now it is possiable to recalculate divisor in runtime to keep
> the baudrate unchanged. when pll settings changed outside of barebox.
> e.g. jtag.
> 
> Signed-off-by: duhuanpeng <u74147@gmail.com>
> ---
>  arch/mips/include/asm/debug_ll_ns16550.h  | 4 ++--
>  arch/riscv/include/asm/debug_ll_ns16550.h | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)

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
