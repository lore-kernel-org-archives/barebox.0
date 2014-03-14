Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo5.mail-out.ovh.net ([178.32.96.204]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOVcF-0002Lh-Ms
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 17:09:52 +0000
Received: from mail438.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 0D62D10183F0
 for <barebox@lists.infradead.org>; Fri, 14 Mar 2014 18:10:19 +0100 (CET)
Date: Fri, 14 Mar 2014 18:11:16 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140314171116.GE6478@ns203013.ovh.net>
References: <1394791908-22061-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1394791908-22061-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [SPAM] [PATCH] splash: Print error message when no renderer is
 found
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:11 Fri 14 Mar     , Sascha Hauer wrote:
> the splash command silently fails when no renderer is found for
> an image type. Print an error message in this case.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  lib/gui/image_renderer.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/lib/gui/image_renderer.c b/lib/gui/image_renderer.c
> index 78e5777..9c92983 100644
> --- a/lib/gui/image_renderer.c
> +++ b/lib/gui/image_renderer.c
> @@ -23,6 +23,8 @@ static struct image_renderer *get_renderer(void* buf, size_t bufsize)
>  			return ir;
>  	}
>  
> +	printf("No renderer found for filetype %s\n", file_type_to_string(type));

	eprintf?
> +
>  	return NULL;
>  }
>  
> -- 
> 1.9.0
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
