Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo1.mail-out.ovh.net ([188.165.38.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T3TSU-00005o-PD
 for barebox@lists.infradead.org; Mon, 20 Aug 2012 15:00:04 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 73A4FFF8EDE
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2012 17:06:59 +0200 (CEST)
Date: Mon, 20 Aug 2012 17:00:09 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120820150009.GC6271@game.jcrosoft.org>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
 <1345472428-17417-12-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1345472428-17417-12-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 11/13] defaultenv: use /env/oftree if it exists
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:20 Mon 20 Aug     , Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  defaultenv/bin/boot |    6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
> index cc72af5..bf6ec76 100644
> --- a/defaultenv/bin/boot
> +++ b/defaultenv/bin/boot
> @@ -135,8 +135,10 @@ else
>  	exit 1
>  fi
>  
> -if [ x$oftree_loc = xnfs -o x$oftree_loc = xtftp ]; then
> -	odev=/oftree
> +if [ -e /env/oftree ]; then
> +	odev="/env/oftree"
and here this need to be the last one anyway
> +elif [ x$oftree_loc = xnfs -o x$oftree_loc = xtftp ]; then
> +	odev="/oftree"
>  	$oftree_loc $oftreeimage $odev || exit 1
>  elif [ x$oftree_loc = xnor ]; then
>  	odev="/dev/nor0.oftree"
please use defaultenv-2

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
