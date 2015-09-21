Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZduSU-0000B9-02
 for barebox@lists.infradead.org; Mon, 21 Sep 2015 06:20:14 +0000
Date: Mon, 21 Sep 2015 08:19:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150921061951.GD7858@pengutronix.de>
References: <1442576523-15880-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1442576523-15880-1-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH] images: ignore *.imx-sram-img
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 18, 2015 at 01:42:03PM +0200, Stefan Christ wrote:
> Add pattern to gitignore to hide files:
> 
>     start_imx6_cm_fx6.imx-sram-img
>     start_imx6_utilite.imx-sram-img
> 
> Signed-off-by: Stefan Christ <s.christ@phytec.de>
> ---
>  images/.gitignore | 1 +
>  1 file changed, 1 insertion(+)

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
