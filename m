Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WVad6-000078-La
 for barebox@lists.infradead.org; Thu, 03 Apr 2014 05:56:01 +0000
Date: Thu, 3 Apr 2014 07:55:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140403055538.GB17250@pengutronix.de>
References: <1396424491-1651-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1396424491-1651-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: qemu-malta: add CBUS UART support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 02, 2014 at 11:41:31AM +0400, Antony Pavlov wrote:
> This patch adds CBUS UART dts support;
> also it adds the necessary macros for DEBUG_LL.
> 
> qemu-malta supports three serial interfaces:
> 
>   * two ports are provided by the FDC37M817
>     Super I/O; this chip is connected via LPC bus
>     to Intel 82371EB (PIIX4E) South Bridge;
> 
>   * the third serial port is provided by
>     the discrete TI 16C550C (CBUS UART);
>     this chip is connected via CBUS directly
>     to the board's GT64120 North Bridge.
> 
> See Malta User's Manual (MD00048) for details.
> 
> CBUS UART Instructions for use:
> 
>   1. Enable CONFIG_CONSOLE_ACTIVATE_ALL in .config
>      (or disable uart0 in dts) and compile barebox;
> 
>   2. run qemu:
> 
>      qemu-system-mips -nographic -nodefaults \
>         -monitor null -M malta -m 256 \
>         -serial null -serial null -serial stdio \
>         -bios barebox-flash-image
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

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
