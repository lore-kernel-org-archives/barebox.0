Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkD4n-0005vs-LR
 for barebox@lists.infradead.org; Tue, 13 May 2014 13:49:02 +0000
Date: Tue, 13 May 2014 15:48:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140513134840.GS5858@pengutronix.de>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
 <1399969739-10355-2-git-send-email-holgerschurig@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1399969739-10355-2-git-send-email-holgerschurig@gmail.com>
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
Subject: Re: [PATCH 01/19] commands: group 'help' output
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 13, 2014 at 10:28:41AM +0200, Holger Schurig wrote:
> The old output of "help" was just producing a long list, that usually
> scrolled of the screen (even on a X11 terminal). This list is more
> compact, and also sorted by groups.
> 
> The old output format (plus grouping) is now available with 'help -v'.
> 

[...]

> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index c440a69..cdeebc0 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1713,8 +1713,10 @@ int of_add_memory(struct device_node *node, bool dump)
>  			continue;
>  		}
>  
> +#if 0
>  		of_add_memory_bank(node, dump, n,
>  				res.start, resource_size(&res));
> +#endif
>  		n++;
>  	}

This got in here accidently.

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
