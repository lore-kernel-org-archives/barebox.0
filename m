Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo1.mail-out.ovh.net ([46.105.35.72]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8ZMh-00049I-8h
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 17:55:55 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 20CCFFFBAC9
 for <barebox@lists.infradead.org>; Wed, 29 Jan 2014 18:55:42 +0100 (CET)
Date: Wed, 29 Jan 2014 18:50:37 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140129175037.GA9671@ns203013.ovh.net>
References: <1390678468-28378-1-git-send-email-shc_work@mail.ru>
 <1390678468-28378-8-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1390678468-28378-8-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 08/12] ARM: at91: boot_test_cmd: Use __iomem specifier
 for memory pointer
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 23:34 Sat 25 Jan     , Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/mach-at91/boot_test_cmd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-at91/boot_test_cmd.c b/arch/arm/mach-at91/boot_test_cmd.c
> index aa5c020..c0658b9 100644
> --- a/arch/arm/mach-at91/boot_test_cmd.c
> +++ b/arch/arm/mach-at91/boot_test_cmd.c
> @@ -17,7 +17,7 @@ static int do_at91_boot_test(int argc, char *argv[])
>  {
>  	int opt;
>  	u32 *buf32;
> -	void *buf;
> +	void __iomem *buf;
this is a RAM no __iomem


iomem is for register

Best Resgards,
J.
>  	void (*jump)(void) = NULL;
>  	int fd;
>  	int ret = 1;
> -- 
> 1.8.3.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
