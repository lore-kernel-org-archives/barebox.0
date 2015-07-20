Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZH3nm-0007HD-1w
 for barebox@lists.infradead.org; Mon, 20 Jul 2015 05:39:46 +0000
Date: Mon, 20 Jul 2015 07:39:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150720053924.GU18700@pengutronix.de>
References: <1436874914-7750-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436874914-7750-1-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH] ARM: i.MX6: clarify usage of /dev/imx-ocotp
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Jul 14, 2015 at 01:55:14PM +0200, Stefan Christ wrote:
> Explain the relationship between the OCOTP addresses from the i.MX6
> Reference Manual and the file offset in '/dev/imx-ocotp'.
> 
> Signed-off-by: Stefan Christ <s.christ@phytec.de>
> ---
>  arch/arm/mach-imx/Kconfig | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

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
