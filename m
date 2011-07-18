Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QifzG-0001Yd-1j
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 05:03:22 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id A3A08FF9A55
	for <barebox@lists.infradead.org>;
	Mon, 18 Jul 2011 07:03:47 +0200 (CEST)
Date: Mon, 18 Jul 2011 06:46:40 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110718044640.GJ20678@game.jcrosoft.org>
References: <1310803330.2562.13.camel@ubuntu.ubuntu-domain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1310803330.2562.13.camel@ubuntu.ubuntu-domain>
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
Subject: Re: [PATCH] checks for return value during the initcall
To: Vikram Narayanan <vikram186@gmail.com>
Cc: barebox@lists.infradead.org

On 13:32 Sat 16 Jul     , Vikram Narayanan wrote:
> Hi,
> 
> This patch checks for the return value, if there is no memory allocated in the getc_buffer_flush initcall.
> 
> Signed-off-by: Vikram Narayanan<vikram186@gmail.com>
> ---
> diff --git a/common/console.c b/common/console.c
> index d60e57f..c502638 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -37,6 +37,7 @@
>  #include <poller.h>
>  #include <linux/list.h>
>  #include <linux/stringify.h>
> +#include <errno.h>
>  
>  LIST_HEAD(console_list);
>  EXPORT_SYMBOL(console_list);
> @@ -118,6 +119,8 @@ static int getc_buffer_flush(void)
>  {
>  	console_input_buffer = kfifo_alloc(1024);
>  	console_output_buffer = kfifo_alloc(1024);
> +	if(!console_input_buffer || !console_output_buffer)
> +		return ENOMEM;
return -ENOMEM;

and a DEBUG_LL message is important here for debug

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
