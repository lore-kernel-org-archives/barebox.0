Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TMbVl-0007tQ-Ce
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 09:26:29 +0000
Received: from mail413.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 52E241050174
 for <barebox@lists.infradead.org>; Fri, 12 Oct 2012 11:32:58 +0200 (CEST)
Date: Fri, 12 Oct 2012 11:24:08 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121012092408.GE13639@game.jcrosoft.org>
References: <1350024615-4260-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350024615-4260-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] defaultenv-2: Select CMD_ECHO & CMD_ECHO_E by default
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 10:50 Fri 12 Oct     , Alexander Shiyan wrote:
> Command is used in the scripts and it should be compiled in.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  common/Kconfig |    2 ++
>  1 files changed, 2 insertions(+), 0 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 9210739..2783405 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -564,6 +564,8 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
>  	select CMD_GLOBAL
>  	select CMD_AUTOMOUNT
>  	select CMD_BASENAME
> +	select CMD_ECHO
> +	select CMD_ECHO_E
ECHO_E need to be optionnal as you may not want the color support

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
