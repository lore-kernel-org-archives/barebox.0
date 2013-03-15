Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGP0H-0001or-ME
 for barebox@lists.infradead.org; Fri, 15 Mar 2013 07:24:38 +0000
Date: Fri, 15 Mar 2013 08:24:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130315072436.GX1906@pengutronix.de>
References: <1363121319-23894-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363121319-23894-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] defaultenv-2: move settings in a submenu
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Mar 12, 2013 at 09:48:39PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> To be more clear
> 
> so on the mainmenu we will just have
>  - the boot option
>  - settings
>  - shell
>  - reset
> 
> when starting to have a long list of boot option the menu start to be big

Applied, thanks

Sascha

> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  defaultenv-2/menu/menu/mainmenu |    6 +-----
>  defaultenv-2/menu/menu/settings |   21 +++++++++++++++++++++
>  2 files changed, 22 insertions(+), 5 deletions(-)
>  create mode 100644 defaultenv-2/menu/menu/settings
> 
> diff --git a/defaultenv-2/menu/menu/mainmenu b/defaultenv-2/menu/menu/mainmenu
> index abd6c46..12c5554 100644
> --- a/defaultenv-2/menu/menu/mainmenu
> +++ b/defaultenv-2/menu/menu/mainmenu
> @@ -18,11 +18,7 @@ while true; do
>  
>  	boot-entries-collect
>  
> -	menu -e -a -R -m boot -c "$global.editcmd /env/network/eth0" -d "Network settings"
> -	menu -e -a -R -m boot -c "$global.editcmd /env/config" -d "Config settings"
> -	menu -e -a -m boot -c "boot-entries-edit" -d "Edit boot entries"
> -	menu -e -a -m boot -c "init-entries-edit" -d "Edit init entries"
> -	menu -e -a -R -m boot -c "saveenv || echo \"failed to save environment\" && sleep 2" -d "Save settings"
> +	menu -e -a -m boot -c "settings" -d "Settings"
>  	menu -e -a -m boot -c 'PATH=$savepath; echo "enter exit to return to menu"; sh' -d "${DARK_YELLOW}Shell${NC}"
>  	menu -e -a -m boot -c reset -d "${RED}Reset${NC}"
>  
> diff --git a/defaultenv-2/menu/menu/settings b/defaultenv-2/menu/menu/settings
> new file mode 100644
> index 0000000..3b95d4c
> --- /dev/null
> +++ b/defaultenv-2/menu/menu/settings
> @@ -0,0 +1,21 @@
> +#!/bin/sh
> +
> +export menu_exit=false
> +
> +while true; do
> +	menu -a -m settings -d "${CYAN}Settings${NC}"
> +
> +	menu -e -a -R -m settings -c "$global.editcmd /env/network/eth0" -d "Network settings"
> +	menu -e -a -R -m settings -c "$global.editcmd /env/config" -d "Config settings"
> +	menu -e -a -m settings -c "settings-entries-edit" -d "Edit settings entries"
> +	menu -e -a -m settings -c "init-entries-edit" -d "Edit init entries"
> +	menu -e -a -R -m settings -c "saveenv || echo \"failed to save environment\" && sleep 2" -d "Save settings"
> +	menu -e -a -m settings -c "menu_exit=true" -d "back"
> +
> +	menu -s -m settings
> +	menu -r -m settings
> +
> +	if [ $menu_exit = true ]; then
> +		exit
> +	fi
> +done
> -- 
> 1.7.10.4
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
