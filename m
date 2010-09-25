Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Ozawu-0004tq-0v
	for barebox@lists.infradead.org; Sat, 25 Sep 2010 20:02:21 +0000
Date: Sat, 25 Sep 2010 22:00:48 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100925200048.GH2111@game.jcrosoft.org>
References: <201009251921.59904.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201009251921.59904.jbe@pengutronix.de>
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
Subject: Re: [PATCH] Fix default baudrate setting
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On 19:21 Sat 25 Sep     , Juergen Beisert wrote:
> commit 604c99039f873952e252a5933309fc8e59b603db
> Author: Juergen Beisert <jbe@pengutronix.de>
> Date:   Sat Sep 25 19:18:25 2010 +0200
> 
>     Fix default baudrate setting
>     
>     The menu entry to set the default baudrate (CONFIG_BAUDRATE) makes no sense,
>     as long as its content is not used. This patch makes barebox using the setting
>     again.
>     
>     Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> 
> diff --git a/common/console.c b/common/console.c
> index 204a08c..71fa88f 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -140,9 +140,12 @@ int console_register(struct console_device *newcdev)
>  	dev->type_data = newcdev;
>  	register_device(dev);
>  
> +#define xstr(s) str(s)
> +#define str(s) #s
can we put those macros in a more generic place?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
