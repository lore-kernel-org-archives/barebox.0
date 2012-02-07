Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RutNd-0003Ho-Np
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 22:19:18 +0000
Date: Tue, 7 Feb 2012 23:18:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120207221851.GH3852@pengutronix.de>
References: <1328633565-21914-1-git-send-email-premi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1328633565-21914-1-git-send-email-premi@ti.com>
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
Subject: Re: [RFC] Select CMD_LOADENV with DEFAULT_ENVIRONMENT
To: Sanjeev Premi <premi@ti.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 07, 2012 at 10:22:45PM +0530, Sanjeev Premi wrote:
> The environment isn't loaded until this command is
> is selected - even if compiled in.
> 
> This patch makes the dependency explicit.
> 
> Signed-off-by: Sanjeev Premi <premi@ti.com>
> ---
>  Problem was encountered when trying to boot Linux with
>  default environmenti on OMAP3 EVM. Since the default
>  config was also being improved from its current state,
>  it took rather long to narrow why the compiled
>  environment was being 'ignored'.

Nice catch. Applied to master.

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
