Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQ7yo-0000Q4-Ex
 for barebox@lists.infradead.org; Thu, 21 Jul 2016 07:01:16 +0000
Date: Thu, 21 Jul 2016 09:00:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160721070048.GU20657@pengutronix.de>
References: <1469024265-20098-1-git-send-email-w.egorov@phytec.de>
 <1469024265-20098-8-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1469024265-20098-8-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH 8/8] doc: Add RK3288 Documentation
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 20, 2016 at 04:17:45PM +0200, Wadim Egorov wrote:
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
>  Documentation/boards/rk3288.rst            | 57 ++++++++++++++++++++++++++++++
>  Documentation/boards/rk3288/phytec-som.rst | 24 +++++++++++++
>  2 files changed, 81 insertions(+)
>  create mode 100644 Documentation/boards/rk3288.rst
>  create mode 100644 Documentation/boards/rk3288/phytec-som.rst
> 
> diff --git a/Documentation/boards/rk3288.rst b/Documentation/boards/rk3288.rst
> new file mode 100644
> index 0000000..3acca74
> --- /dev/null
> +++ b/Documentation/boards/rk3288.rst
> @@ -0,0 +1,57 @@
> +Rockchip RK3288
> +===============
> +
> +The RK3288 SoC has a two stage boot process. The booting is completed in two
> +consecutive stages. The binary for the 1st stage is referred to as the
> +Secondary Program Loader (SPL). The binary for the 2nd stage is simply referred to
> +as barebox.
> +SPL is a non-interactive loader and is only used to boot the 2nd stage loader.
> +
> +At this moment barebox can only be used as a 2nd stage bootloader.
> +Starting barebox requires another bootloader which will do the very basic
> +SDRAM initialization for us. We can use the u-boot for that.

Do you plan to add SPL support for barebox aswell? From what I see in
the U-Boot source code the Rockchip SoCs seem to be of the nicer SoCs
which do not require that much and complicated setup.

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
