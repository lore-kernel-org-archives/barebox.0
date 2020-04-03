Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKKEB-00047u-Fj
 for barebox@lists.infradead.org; Fri, 03 Apr 2020 11:11:13 +0000
Date: Fri, 3 Apr 2020 13:11:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200403111109.GT27288@pengutronix.de>
References: <DB7PR02MB4332AE69BFFEF787322B8DB2ABC60@DB7PR02MB4332.eurprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR02MB4332AE69BFFEF787322B8DB2ABC60@DB7PR02MB4332.eurprd02.prod.outlook.com>
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
Subject: Re: [PATCH 7/7] Zedboard added Zynq FPGA manager
To: Michael Graichen <michael.graichen@hotmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Michael,

On Thu, Apr 02, 2020 at 08:23:56AM +0000, Michael Graichen wrote:
> This adds support to programm the PL part of the Zynq SoC,
> but only the non-secure way and no partial reconfiguration.
> It adds the 'zynq_fpga_manager' so we can use 
> 
> firmwareload -l
> firmwareload -t zynq-fpga-manager /mnt/mmc0.0/design_1_wrapper.bit
> 
> to programm the PL.

...

> 
> +    start = get_time_ns();    
> +    while (1) {
> +        reg = readl(mgr->regs + STATUS_OFFSET);
> +        
> +        if(!(reg & STATUS_PCFG_INIT_MASK))
> +            break;            
> +     
> +        if (is_timeout(start, 100 * MSECOND))
> +			return -ETIMEDOUT;
> +    }

You can use readl_poll_timeout() as a shortcut to such
register-poll-timeout loops.

The code looks good to me, but the patches need some coding style polish
before I can apply them. There are a lot of trailing whitespaces.
Indentation should be done with tabs, tab width is 8 chars.

Also the patches lack a "Signed-off-by:" line

Regards,
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
