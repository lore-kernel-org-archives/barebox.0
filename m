Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YSJxh-0005sc-T9
 for barebox@lists.infradead.org; Mon, 02 Mar 2015 06:36:18 +0000
Date: Mon, 2 Mar 2015 07:35:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150302063555.GI11010@pengutronix.de>
References: <1425243997-28330-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425243997-28330-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/3] net: designware: don't depend on CONFIG_OFTREE
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Sun, Mar 01, 2015 at 10:06:35PM +0100, Lucas Stach wrote:
> This driver is written in a way that is should also work without
> DT, but it had a compile time dependency on CONFIG_OFTREE.
> 
> Fixes:
> drivers/built-in.o: In function `dwc_probe_dt':
> drivers/net/designware.c:413: undefined reference to `of_get_phy_mode'
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  drivers/net/designware.c | 3 +++
>  1 file changed, 3 insertions(+)

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
