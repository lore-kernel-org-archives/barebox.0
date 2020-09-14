Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHoFD-0004fh-PM
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 13:10:15 +0000
Date: Mon, 14 Sep 2020 15:10:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200914131005.GS4498@pengutronix.de>
References: <20200828173115.22292-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200828173115.22292-1-bst@pengutronix.de>
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
Subject: Re: [PATCH] Documentation: boards: stm32mp: document eMMC boot
 configuration
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Fri, Aug 28, 2020 at 07:31:15PM +0200, Bastian Krause wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> In order to boot from eMMC on the STM32MP15x, the boot_ack bit in the
> ext_csd register must be set. Document this and while at it, fix a
> misformatted code block in the same section.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  Documentation/boards/stm32mp.rst | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)

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
