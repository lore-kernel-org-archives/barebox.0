Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOCa7-0000nc-QU
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 04:22:08 +0000
Date: Fri, 2 Oct 2020 06:22:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201002042206.GS11648@pengutronix.de>
References: <20200930132451.354162-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930132451.354162-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] shutdown: flush console on barebox shutdown
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 30, 2020 at 03:24:51PM +0200, Lucas Stach wrote:
> Same as in the poweroff and restart path, we should make sure to properly
> drain the console devices when shutting down barebox. This fixes serial
> console corruption when the software running after barebox changes the
> peripheral configuration before all the characters have drained out of
> the FIFO.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  common/startup.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/startup.c b/common/startup.c
> index 1c58e412885f..7d44123941da 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -418,6 +418,8 @@ void shutdown_barebox(void)
>  		pr_debug("exitcall-> %pS\n", *exitcall);
>  		(*exitcall)();
>  	}
> +
> +	console_flush();
>  }
>  
>  BAREBOX_MAGICVAR_NAMED(autoboot_state,
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
