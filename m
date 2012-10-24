Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TQw1I-00073W-Am
 for barebox@lists.infradead.org; Wed, 24 Oct 2012 08:08:57 +0000
Received: from mail417.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 02ABEFFBF83
 for <barebox@lists.infradead.org>; Wed, 24 Oct 2012 10:18:40 +0200 (CEST)
Date: Wed, 24 Oct 2012 10:06:41 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121024080641.GM21588@game.jcrosoft.org>
References: <1351064903-17330-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351064903-17330-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] defenv-2: set username to 'none'
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:48 Wed 24 Oct     , Sascha Hauer wrote:
> The current 'sha' setting, though admittedly very convenient for me,
> was never intended to be in mainline.
prefer empty

Best Regards,
J.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  defaultenv-2/base/init/general |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/defaultenv-2/base/init/general b/defaultenv-2/base/init/general
> index 98a92d1..1de06ce 100644
> --- a/defaultenv-2/base/init/general
> +++ b/defaultenv-2/base/init/general
> @@ -6,7 +6,7 @@ if [ "$1" = menu ]; then
>  fi
>  
>  # user (used for network filenames)
> -global.user=sha
> +global.user=none
>  
>  # timeout in seconds before the default boot entry is started
>  global.autoboot_timeout=3
> -- 
> 1.7.10.4
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
