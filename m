Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDqmY-0006FL-9g
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 07:00:10 +0000
Date: Mon, 26 Aug 2013 08:59:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130826065948.GB30088@pengutronix.de>
References: <1377259969-10890-1-git-send-email-shravan.k@phytec.in>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1377259969-10890-1-git-send-email-shravan.k@phytec.in>
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
Subject: Re: [PATCH v2 1/2] ARM: omap: barebox update spi nor MLO handler
To: Shravan Kumar <shravan.k@phytec.in>
Cc: barebox@lists.infradead.org

On Fri, Aug 23, 2013 at 02:12:48PM +0200, Shravan Kumar wrote:
> From: shravan <shravan.k@phytec.in>
> 
> 	-Added mlo spi NOR copy handler
> 	-This handler will convert the MLO to big endian
> 	-Tested with pcm051 board
> 
> Signed-off-by: shravan <shravan.k@phytec.in>
> ---
> changes since v2:
> 	-file and function names are rename from omap_ to am33xx_

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
