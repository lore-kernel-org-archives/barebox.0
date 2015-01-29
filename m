Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGmhK-00010X-6Z
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 10:51:42 +0000
Date: Thu, 29 Jan 2015 19:51:15 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
In-Reply-To: <20150129090622.GZ12209@pengutronix.de>
References: <1422499613-683-1-git-send-email-yamada.m@jp.panasonic.com>
 <20150129090622.GZ12209@pengutronix.de>
Message-Id: <20150129195115.3DB2.AA925319@jp.panasonic.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH v2] param: add error check to __dev_add_param()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,



On Thu, 29 Jan 2015 10:06:22 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Besides, I normally don't like these checks. dereferencing NULL pointers
> means you get a backtrace showing you what went wrong. Returning an error
> means adding code which in this case makes dev_add_param just fail
> silently because the return value often is not checked.
> 

What a coincidence!
Actually, I was writing the following patch yesterday:




> Author: Masahiro Yamada <yamada.m@jp.panasonic.com>
> Date:   Wed Jan 28 22:07:59 2015 +0900
> 
>     param: do not search NULL-named parameter
>     
>     If the argument name is given with NULL, it is passed to strcmp()
>     resulting in NULL-pointer access.  It would be safer to return NULL
>     (which means "Not found") in such a case.
>     
>     Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
> 
> diff --git a/lib/parameter.c b/lib/parameter.c
> index 865ad9f..c37d877 100644
> --- a/lib/parameter.c
> +++ b/lib/parameter.c
> @@ -33,6 +33,9 @@ struct param_d *get_param_by_name(struct device_d *dev, const char *name)
>  {
>         struct param_d *p;
>  
> +       if (!name)
> +               return NULL;
> +
>         list_for_each_entry(p, &dev->parameters, list) {
>                 if (!strcmp(p->name, name))
>                         return p;


Do you mean, you do not like such a patch?



Best Regards
Masahiro Yamada


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
