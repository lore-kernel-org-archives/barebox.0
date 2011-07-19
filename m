Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QjDwv-00053b-Dn
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 17:19:19 +0000
Date: Tue, 19 Jul 2011 19:19:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110719171910.GP20587@pengutronix.de>
References: <20110719160758.GK5727@game.jcrosoft.org>
	<1311091752-9114-4-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311091752-9114-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 04/16] add a add_mem_device function
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 19, 2011 at 06:09:00PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Add a helper function for boards to register their memory
> devices. This makes the board code smaller and also helps
> getting rid of map_base and struct memory_platform_data.
> 
> And switch all of the memory to it
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---

> diff --git a/common/Makefile b/common/Makefile
> index 9fed2ae..27aebae 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -9,6 +9,7 @@ obj-$(CONFIG_POLLER)		+= poller.o
>  obj-$(CONFIG_BLOCK)		+= block.o
>  
>  obj-y += memory.o
> +obj-y += mem.o

Seems you forgot to git add common/mem.c.

I think the previous patch can be squashed into this one. Other than
that the series looks good.

Thanks
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
