Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPSFa-0002xc-7C
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 15:18:09 +0000
Date: Mon, 5 Oct 2020 17:17:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201005151759.GE11648@pengutronix.de>
References: <005d01d69b15$180b4aa0$4821dfe0$@eletechsrl.it>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <005d01d69b15$180b4aa0$4821dfe0$@eletechsrl.it>
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
Subject: Re: imx6ul: fec: stuck on ifup after ifdown
To: Manni Stefano <stefano.manni@eletechsrl.it>
Cc: barebox@lists.infradead.org, Aurelio Colosimo <aurelio@aureliocolosimo.it>

Hi Stefano,

On Mon, Oct 05, 2020 at 02:43:15PM +0200, Manni Stefano wrote:
> Hi,
> 
> on a custom board based on a i.MX6UL using barebox v2020.08.1 'ifup eth0'
> invoked after 'ifdown eth0' stucks forever.
> 
> Have you ever experienced something similar?

I can confirm the same happens here on an i.MX6q board on current
master. I don't know what's happening here. The last thing I see is that
fec_tx_task_enable() is entered. Strange enough the same works on i.MX53
whereas on i.MX8M I get "ERROR: eth0: transmission timeout" on the
second ifup.

This is really strange. It seems fec_tx_task_enable() brings down the
whole SoC, but on the other hand the FEC works properly in a chainloaded
barebox, which should - from the view of the ethernet controller - be
the same as a repeated ifup/ifdown sequence.

I have no idea what is going wrong here.

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
