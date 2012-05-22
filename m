Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SWlN4-0002Bo-Im
 for barebox@lists.infradead.org; Tue, 22 May 2012 09:27:16 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 2C520FF89AD
 for <barebox@lists.infradead.org>; Tue, 22 May 2012 11:30:04 +0200 (CEST)
Date: Tue, 22 May 2012 11:27:18 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120522092718.GE28084@game.jcrosoft.org>
References: <1337653364-31191-1-git-send-email-alan@signal11.us>
 <1337657537-15367-1-git-send-email-alan@signal11.us>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337657537-15367-1-git-send-email-alan@signal11.us>
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
Subject: Re: [PATCH v2] common: Make MENU select PROCESS_ESCAPE_SEQUENCE if
 HUSH_SHELL is selected
To: Alan Ott <alan@signal11.us>
Cc: barebox@lists.infradead.org

On 23:32 Mon 21 May     , Alan Ott wrote:
> print_menu_entry() in common/menu.c calls on process_escape_sequence() when
> HUSH_SHELL is selected.
> 
> Signed-off-by: Alan Ott <alan@signal11.us>
> ---
>  common/Kconfig |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 73d620a..7cd0666 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -342,6 +342,7 @@ config AUTO_COMPLETE
>  config MENU
>  	bool
>  	prompt "Menu Framework"
> +	select PROCESS_ESCAPE_SEQUENCE if SHELL_HUSH
>  	help
>  	   a menu framework that allow us to create list menu to simplify
>  	   barebox and make it more user-frendly
you miss the point of the code

the PROCESS_ESCAPE_SEQUENCE is optionnal and need to stay optionnal
evenif Hush is enable

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
