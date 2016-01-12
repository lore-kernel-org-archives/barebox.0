Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aIuXA-0002Zj-28
 for barebox@lists.infradead.org; Tue, 12 Jan 2016 08:42:33 +0000
Date: Tue, 12 Jan 2016 09:42:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160112084208.GU13058@pengutronix.de>
References: <1452557300-30090-1-git-send-email-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1452557300-30090-1-git-send-email-festevam@gmail.com>
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
Subject: Re: [PATCH] imx233-olinuxino: Fix mx23_power_init() arguments
To: Fabio Estevam <festevam@gmail.com>
Cc: Fabio Estevam <fabio.estevam@nxp.com>, barebox@lists.infradead.org, pmamonov@gmail.com

On Mon, Jan 11, 2016 at 10:08:20PM -0200, Fabio Estevam wrote:
> From: Fabio Estevam <fabio.estevam@nxp.com>
> 
> Commit 4d70da6 ("ARM: MXS: power-init: Add parameters to
> mx28_power_init()") causes imx233-olinuxino to not boot anymore.
> 
> imx233-olinuxino is commonly powered from external input supply,
> so adjust the mx23_power_init() arguments to reflect that.
> 
> Reported-by: Peter Mamonov <pmamonov@gmail.com>
> Signed-off-by: Fabio Estevam <fabio.estevam@nxp.com>
> Tested-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  arch/arm/boards/imx233-olinuxino/lowlevel.c | 2 +-
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
