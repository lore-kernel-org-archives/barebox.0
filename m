Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gytnb-0007Hs-KP
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 07:38:41 +0000
Date: Wed, 27 Feb 2019 08:38:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190227073837.keyrulk76yur6eed@pengutronix.de>
References: <20190226210749.8898-1-christian.hemp@posteo.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190226210749.8898-1-christian.hemp@posteo.de>
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
Subject: Re: [PATCH] Documentation: imx8mq-evk: fix firmware path
To: Christian Hemp <christian.hemp@posteo.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 26, 2019 at 10:07:49PM +0100, Christian Hemp wrote:
> Since commit: "da985aac8 firmware: drop the imx subdir" the firmware is
> not longer placed in imx subdir. So the subdir can be removed from the
> documentation.
> 
> Signed-off-by: Christian Hemp <christian.hemp@posteo.de>
> ---
>  Documentation/boards/imx/nxp-imx8mq-evk.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

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
