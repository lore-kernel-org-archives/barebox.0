Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UhHdV-0002gi-T4
 for barebox@lists.infradead.org; Tue, 28 May 2013 11:00:14 +0000
Received: from mail422.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 42E45FF909E
 for <barebox@lists.infradead.org>; Tue, 28 May 2013 12:59:48 +0200 (CEST)
Date: Tue, 28 May 2013 12:55:38 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130528105538.GE27130@game.jcrosoft.org>
References: <1369727146-15275-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369727146-15275-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [SPAM] [PATCH] scripts: genenv: remove empty files from tempdir
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:45 Tue 28 May     , Jan Luebbe wrote:
> This allows leaving out default files from the environment by overriding
> them with empty files in the board or BSP.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
can we move it to the buildir and keep it

and no need to have a uniq name everytime
>  scripts/genenv | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/genenv b/scripts/genenv
> index 374db6d..3e91062 100755
> --- a/scripts/genenv
> +++ b/scripts/genenv
> @@ -24,7 +24,7 @@ for i in $*; do
>  done
>  )
>  
> -find $tempdir -name '.svn' -o -name '*~' | xargs --no-run-if-empty rm -r
> +find $tempdir -name '.svn' -o -name '*~' -o -size 0 | xargs --no-run-if-empty rm -r
>  
>  $objtree/scripts/bareboxenv -s $tempdir $target
>  
> -- 
> 1.8.2.rc2
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
