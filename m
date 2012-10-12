Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TMbWM-00086N-2G
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 09:27:07 +0000
Received: from mail413.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 271181050123
 for <barebox@lists.infradead.org>; Fri, 12 Oct 2012 11:33:35 +0200 (CEST)
Date: Fri, 12 Oct 2012 11:24:44 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121012092444.GF13639@game.jcrosoft.org>
References: <1350024615-4260-1-git-send-email-shc_work@mail.ru>
 <1350024615-4260-2-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350024615-4260-2-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 2/2] defaultenv-2: Select CMD_EDIT by default if
 CMD_MENU_MANAGEMENT is selected
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 10:50 Fri 12 Oct     , Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  commands/Kconfig |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index e934f29..89ab2fc 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -79,6 +79,7 @@ config CMD_MENU
>  config CMD_MENU_MANAGEMENT
>  	bool
>  	depends on CMD_MENU
> +	select CMD_EDIT
no cmd_edit have nothing to do with menu

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
