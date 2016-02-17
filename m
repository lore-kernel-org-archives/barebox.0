Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVwDC-0005E1-B3
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 07:07:47 +0000
Date: Wed, 17 Feb 2016 08:07:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160217070723.GJ19372@pengutronix.de>
References: <1455530215-4394-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1455530215-4394-1-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH 1/3] ARM: i.MX6: add function cpu_is_mx6s()
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 15, 2016 at 10:56:53AM +0100, Stefan Christ wrote:
> The cpu_is_mx6* function for the i.MX6 Solo was missing. All other
> functions are already defined.
> 
> Signed-off-by: Stefan Christ <s.christ@phytec.de>
> ---
>  arch/arm/mach-imx/include/mach/imx6.h | 1 +
>  1 file changed, 1 insertion(+)

Applied these three to master, thanks

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
