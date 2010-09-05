Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from pfepa.post.tele.dk ([195.41.46.235])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OsIlY-0007Ip-RJ
	for barebox@lists.infradead.org; Sun, 05 Sep 2010 17:12:30 +0000
Date: Sun, 5 Sep 2010 19:12:26 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20100905171226.GA3052@merkur.ravnborg.org>
References: <1283704919-26808-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1283704919-26808-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH] init: introduce __BARE_INIT for .section
	".text_bare_init.text"
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

> diff --git a/include/init.h b/include/init.h
> index 8692b68..5a7a5b6 100644
> --- a/include/init.h
> +++ b/include/init.h
> @@ -7,6 +7,10 @@
>  #define __init
>  #define __initdata
>  
> +/* For assembly routines */
> +#define __BARE_INIT	.section ".text_bare_init.text"

You should consider using:
#define __BARE_INIT  .section ".text_bare_init.text","ax"

Then you do not rely on the as/ld to add these flags.
In the kernel we had a few cases where it mattered.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
