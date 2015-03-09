Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YUvJf-0000MQ-88
 for barebox@lists.infradead.org; Mon, 09 Mar 2015 10:53:44 +0000
Date: Mon, 9 Mar 2015 11:53:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150309105321.GF31289@pengutronix.de>
References: <1425673322-31946-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425673322-31946-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/2] images: move board variable to parent makefile
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 06, 2015 at 09:22:01PM +0100, Lucas Stach wrote:
> A lot of the image makefiles define an equal board variable, which
> gives the impression that this variable is unique for this makefile.
> As those files aren't freestanding makefiles but get included into a
> parent makefile this is not actually true. Attempts to override this
> variable will not work reliable as make is picking up a random instance.
> 
> Fix this confusion by moving this variable out of the individual makefiles.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  images/Makefile          | 2 ++
>  images/Makefile.imx      | 2 --
>  images/Makefile.mvebu    | 2 --
>  images/Makefile.mxs      | 1 -
>  images/Makefile.rockchip | 2 --
>  images/Makefile.tegra    | 2 --
>  6 files changed, 2 insertions(+), 9 deletions(-)

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
