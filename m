Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBKcg-0004Fu-6R
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 07:11:03 +0000
Message-ID: <1347347457.3888.0.camel@lws-weitzel>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Tue, 11 Sep 2012 09:10:57 +0200
In-Reply-To: <1347341465-2560-2-git-send-email-alex.aring@gmail.com>
References: <1347341465-2560-1-git-send-email-alex.aring@gmail.com>
 <1347341465-2560-2-git-send-email-alex.aring@gmail.com>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
Subject: Re: [PATCH 2/3] commands: move nandtest to testing
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

Am Dienstag, den 11.09.2012, 07:31 +0200 schrieb Alexander Aring:
> Move nadntest in commands menu.
nandtest

Jan

> Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> ---
>  commands/Kconfig | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 8f3a15a..2ee8643 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -192,14 +192,6 @@ config CMD_NAND
>  	depends on NAND
>  	prompt "nand"
>  
> -config CMD_NANDTEST
> -	tristate
> -	depends on NAND
> -	depends on PARTITION
> -	depends on NAND_ECC_HW || NAND_ECC_SOFT
> -	select PARTITION_NEED_MTD
> -	prompt "nandtest"
> -
>  config CMD_AUTOMOUNT
>  	tristate
>  	select FS_AUTOMOUNT
> @@ -474,6 +466,14 @@ endmenu
>  
>  menu "testing                       "
>  
> +config CMD_NANDTEST
> +	tristate
> +	depends on NAND
> +	depends on PARTITION
> +	depends on NAND_ECC_HW || NAND_ECC_SOFT
> +	select PARTITION_NEED_MTD
> +	prompt "nandtest"
> +
>  endmenu
>  
>  config CMD_TIMEOUT



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
