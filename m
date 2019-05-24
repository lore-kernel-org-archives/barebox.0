Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU3W5-0005zw-Pc
 for barebox@lists.infradead.org; Fri, 24 May 2019 06:17:23 +0000
Date: Fri, 24 May 2019 08:17:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190524061719.mozcnxo3bvucn7wf@pengutronix.de>
References: <20190523153943.7995-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523153943.7995-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v3 0/9] ARM: at91: misc fixes and cleanup
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, sam@ravnborg.org

On Thu, May 23, 2019 at 05:39:34PM +0200, Ahmad Fatoum wrote:
> The fixes are the same as in v2. The cleanup was made cleaner
> a bit.
> 
> Changes since v2:
>   - Collected Sam's Tested-by and Reviewed-by
>   - Reinstated *_get_ddram_size helpers, but without #ifdefs,
>     as suggested by Sascha
>   - While doing that, some more unnecessary #ifdef usage unraveled,
>     so added two patches for those as well
>   - Squashed in a fix for another const-safety warning, suggested by Sam
> 
> Changes since v1:
>   - Collected Sam's Tested-by and Reviewed-by
>   - Included Sam's fix for the sama5d4 as patch 03
>   - moved debug_ll base address defaults to common/Kconfig
>   - above also got rid of a typo in the base address constant name
>   - added patches 06-09 which remove board-specific helpers as suggested
>     by Sascha in the review of the sama5d3 first stage patchset
>   - added patch 10 with a fix for a warning I ran into in the newly
>     ported clock drivers
> 
> Ahmad Fatoum (8):
>   ARM: at91: replace __raw_{readl,writel} of peripherals with
>     readl,writel
>   ARM: at91: debug_ll: make UART base address configurable
>   ARM: at91: remove references to non-existing CONFIG_ARCH_AT91*
>   ARM: at91: remove no-longer needed subarch #ifdefery
>   ARM: at91: remove #ifdefery around *_get_ddram_size helpers
>   ARM: at91: fix at91sama5_get_ddram_size for sama5d4
>   ARM: at91: remove duplicate get_ddram_size code
>   clk: at91: fix warning about missing const-safety
> 
> Sam Ravnborg (1):
>   arm: sama5d4: fix stack setup

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
