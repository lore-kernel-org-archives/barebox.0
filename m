Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RUz07-0002mo-Je
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 11:04:00 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id F1406DC6C75
 for <barebox@lists.infradead.org>; Mon, 28 Nov 2011 12:10:24 +0100 (CET)
Date: Mon, 28 Nov 2011 12:00:29 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111128110029.GD15008@game.jcrosoft.org>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
 <1322467340-10596-12-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1322467340-10596-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 11/14] bootm: fix typo, update help str
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:02 Mon 28 Nov     , Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/bootm.c |    6 ++----
>  1 files changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/commands/bootm.c b/commands/bootm.c
> index 86470c2..0458919 100644
> --- a/commands/bootm.c
> +++ b/commands/bootm.c
> @@ -44,9 +44,7 @@
>  #include <init.h>
>  #include <asm-generic/memory_layout.h>
>  
> -#ifndef CFG_BOOTM_LEN
>  #define CFG_BOOTM_LEN	0x800000	/* use 8MByte as default max gunzip size */
> -#endif
why do you rempve this too in this patch?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
