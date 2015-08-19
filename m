Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZS3kJ-0001VT-Am
 for barebox@lists.infradead.org; Wed, 19 Aug 2015 13:49:40 +0000
Date: Wed, 19 Aug 2015 15:49:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150819134922.GV18700@pengutronix.de>
References: <1439547405-12578-1-git-send-email-l.stach@pengutronix.de>
 <1439547405-12578-3-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1439547405-12578-3-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 3/5] video: ipu-fb: mark internally used functions as
 static
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Aug 14, 2015 at 12:16:43PM +0200, Lucas Stach wrote:
> Fixes symbol clashes with the IPUv3 driver:
> In function `ipu_ch_param_write_field':
> drivers/video/imx-ipu-v3/ipu-common.c:103: multiple definition of `ipu_ch_param_write_field'
> drivers/video/imx-ipu-fb.c:359: first defined here
> 
> In function `ipu_cpmem_set_format_rgb':
> drivers/video/imx-ipu-v3/ipu-common.c:155: multiple definition of `ipu_cpmem_set_format_rgb'
> drivers/video/imx-ipu-fb.c:504: first defined here
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

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
