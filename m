Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gu0FB-00015N-4T
 for barebox@lists.infradead.org; Wed, 13 Feb 2019 19:30:54 +0000
Date: Wed, 13 Feb 2019 20:30:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190213193049.ecvyoxjklbgpokw3@pengutronix.de>
References: <1550046868-19264-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1550046868-19264-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH v2 1/7] drivers: bus: Add ti-sysc bus driver
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 13, 2019 at 09:34:22AM +0100, Teresa Remmet wrote:
> Adds minimal support for the sysc interconnect target module found
> on many TI SoCs. With this device tree includes have been rearagned.
> We need the driver to probe the child devices of the bus.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
> Changes in v2:
> - set driver in Kconfig to default y
> - Use postcore_platform_driver() call
> - Use global of_default_bus_match_table() instead of local table

Applied to master, thanks

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
