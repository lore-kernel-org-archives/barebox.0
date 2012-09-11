Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBLBE-0008QI-Gg
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 07:46:45 +0000
Date: Tue, 11 Sep 2012 09:46:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120911074642.GI18243@pengutronix.de>
References: <1347341465-2560-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347341465-2560-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH 1/3] commands: add testing menu
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 11, 2012 at 07:31:03AM +0200, Alexander Aring wrote:
> Add command menu for testing utilities.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>

Applied, thanks. I fixed the typo Jan mentioned while applying

Sascha

> ---
>  commands/Kconfig | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index f2756cc..8f3a15a 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -472,6 +472,10 @@ config CMD_OFTREE
>  
>  endmenu
>  
> +menu "testing                       "
> +
> +endmenu
> +
>  config CMD_TIMEOUT
>  	tristate
>  	prompt "timeout"
> -- 
> 1.7.12
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
