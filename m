Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SWbX5-0005xU-JX
 for barebox@lists.infradead.org; Mon, 21 May 2012 22:56:57 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id BB48FFF89C7
 for <barebox@lists.infradead.org>; Tue, 22 May 2012 00:47:15 +0200 (CEST)
Date: Tue, 22 May 2012 00:44:29 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120521224429.GD28084@game.jcrosoft.org>
References: <1337615616-7209-1-git-send-email-alan@signal11.us>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337615616-7209-1-git-send-email-alan@signal11.us>
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
Subject: Re: [PATCH] common: Make MENU depend on PROCESS_ESCAPE_SEQUENCE
To: Alan Ott <alan@signal11.us>
Cc: barebox@lists.infradead.org

On 11:53 Mon 21 May     , Alan Ott wrote:
> print_menu_entry() in common/menu.c depeneds on process_escape_sequence().
> 
> Signed-off-by: Alan Ott <alan@signal11.us>
> ---
>  common/Kconfig |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 73d620a..ebb9400 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -342,6 +342,7 @@ config AUTO_COMPLETE
>  config MENU
>  	bool
>  	prompt "Menu Framework"
> +	depends on PROCESS_ESCAPE_SEQUENCE
>  	help
>  	   a menu framework that allow us to create list menu to simplify
>  	   barebox and make it more user-frendly
no the menu does not need this as I use it withouth hush

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
