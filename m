Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SxLC6-00017T-CL
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 16:57:47 +0000
Date: Fri, 3 Aug 2012 18:57:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120803165744.GE24458@pengutronix.de>
References: <1343396404-10288-1-git-send-email-j.weitzel@phytec.de>
 <1343396404-10288-2-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343396404-10288-2-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH 1/3] Add support for OMAP4460 TPS62361
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 27, 2012 at 03:40:02PM +0200, Jan Weitzel wrote:
> based on: [U-Boot] [PATCH v 4/5] omap4: support TPS programming
> TPS62361 is the new power supply used in OMAP4460 that
> supplies vdd_mpu.
> 
>  
> -noinline int omap4_scale_vcores(void)
> +noinline int omap4_scale_vcores(unsigned vsel0_pin)

Please fix the users of omap4_scale_vcores in this patch aswell.

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
