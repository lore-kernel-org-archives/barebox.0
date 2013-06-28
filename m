Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo1.mail-out.ovh.net ([188.165.38.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UsZ9s-000624-Uq
 for barebox@lists.infradead.org; Fri, 28 Jun 2013 13:56:18 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 2935EFF9AEE
 for <barebox@lists.infradead.org>; Fri, 28 Jun 2013 15:55:53 +0200 (CEST)
Date: Fri, 28 Jun 2013 15:52:02 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130628135202.GA23449@game.jcrosoft.org>
References: <1372327600-24715-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372327600-24715-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] ARM: Marvell boards: Fix out of tree compilation
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:06 Thu 27 Jun     , Sascha Hauer wrote:
> The Marvell boards accidently add a .c instead of a .o file
> to the targets. This has the side effect of breaking out of tree
> compilation.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Best Regards,
J.
> ---
>  arch/arm/boards/globalscale-mirabox/Makefile | 2 +-
>  arch/arm/boards/solidrun-cubox/Makefile      | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/globalscale-mirabox/Makefile b/arch/arm/boards/globalscale-mirabox/Makefile
> index 9320510..dcfc293 100644
> --- a/arch/arm/boards/globalscale-mirabox/Makefile
> +++ b/arch/arm/boards/globalscale-mirabox/Makefile
> @@ -1 +1 @@
> -obj-y += board.c
> +obj-y += board.o
> diff --git a/arch/arm/boards/solidrun-cubox/Makefile b/arch/arm/boards/solidrun-cubox/Makefile
> index 9320510..dcfc293 100644
> --- a/arch/arm/boards/solidrun-cubox/Makefile
> +++ b/arch/arm/boards/solidrun-cubox/Makefile
> @@ -1 +1 @@
> -obj-y += board.c
> +obj-y += board.o
> -- 
> 1.8.3.1
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
