Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VNoPO-00053O-IE
 for barebox@lists.infradead.org; Sun, 22 Sep 2013 18:29:27 +0000
Date: Sun, 22 Sep 2013 20:29:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130922182905.GP30088@pengutronix.de>
References: <1379831996-11714-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379831996-11714-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2] console_simple: set baudrate at register
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Sep 22, 2013 at 08:39:55AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> as the console is always enable
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  common/console_simple.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/common/console_simple.c b/common/console_simple.c
> index 5c80dcd..e1d4c85 100644
> --- a/common/console_simple.c
> +++ b/common/console_simple.c
> @@ -89,6 +89,11 @@ int console_register(struct console_device *newcdev)
>  	console_list.prev = console_list.next = &newcdev->list;
>  	newcdev->list.prev = newcdev->list.next = &console_list;
>  
> +	if (newcdev->setbrg) {
> +		newcdev->baudrate = CONFIG_BAUDRATE;
> +		newcdev->setbrg(newcdev, newcdev->baudrate);
> +	}
> +
>  	barebox_banner();
>  
>  	return 0;
> -- 
> 1.8.4.rc3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
