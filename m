Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qr3Er-0007GW-2o
	for barebox@lists.infradead.org; Wed, 10 Aug 2011 07:30:06 +0000
Date: Wed, 10 Aug 2011 09:30:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110810073000.GV31404@pengutronix.de>
References: <1312838236-646-1-git-send-email-plagnioj@jcrosoft.com>
	<1312838236-646-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1312838236-646-2-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/5] arm_dcc: fix missing switch to resource
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 08, 2011 at 11:17:13PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/serial/arm_dcc.c |    1 -
>  1 files changed, 0 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/serial/arm_dcc.c b/drivers/serial/arm_dcc.c
> index 0199da3..e1066ab 100644
> --- a/drivers/serial/arm_dcc.c
> +++ b/drivers/serial/arm_dcc.c
> @@ -157,7 +157,6 @@ static struct driver_d arm_dcc_driver = {
>  static struct device_d arm_dcc_device = {
>  	.id	= -1,
>  	.name	= "arm_dcc",
> -	.size	= 4096,
>  };
>  
>  static int arm_dcc_init(void)

I suppose this one is for master?

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
