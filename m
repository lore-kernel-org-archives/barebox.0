Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnzeS-0000tG-GT
 for barebox@lists.infradead.org; Wed, 24 Jun 2020 07:16:57 +0000
Date: Wed, 24 Jun 2020 09:16:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200624071655.GA919@pengutronix.de>
References: <20200623132521.4727-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200623132521.4727-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 0/4] dts: clean up and a fix
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 23, 2020 at 03:25:17PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> the vexpress changed paths, again, so building now fails. Fortunately[1],
> a label: had been introduced meanwhile, that we could use. This is what
> the first patch does. Please order it before the v5.8-rc1 sync, so we
> don't have intermittent build breakage[2].
> 
> The other three patches remove code that became obsolete with the device
> tree sync.
> 
> [1]: The same patch adding the label, also added the partitions node,
>      which broke barebox on the board, but that's a different issue..
> [2]: We probably want a make dtbs target to spot such issues and fix
>      them up into the same commit if needed
> 
> Cheers
> Ahmad Fatoum (4):
>   ARM: vexpress: dts: use direct &phandle instead of &{/path}
>   ARM: stm32mp: dts: extend now upstream stm32mp157c-lxa-mc1.dts
>   clk: at91: remove no-longer needed dt-compat code
>   clk: at91: remove now-duplicate crutch #defines

Applied 2-4, thanks

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
