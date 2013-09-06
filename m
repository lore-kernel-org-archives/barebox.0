Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VHq7h-0000YB-BT
 for barebox@lists.infradead.org; Fri, 06 Sep 2013 07:06:29 +0000
Date: Fri, 6 Sep 2013 09:06:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130906070606.GS30088@pengutronix.de>
References: <20130904100113.GA21829@ns203013.ovh.net>
 <1378289412-28761-1-git-send-email-plagnioj@jcrosoft.com>
 <1378289412-28761-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1378289412-28761-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/2] defaultenv-2: add login support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 04, 2013 at 12:10:12PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> request password to login is a timeout is specified and /env/etc/passwd
> present
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  defaultenv-2/base/bin/init | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
> index ca02ba6..e696dce 100644
> --- a/defaultenv-2/base/bin/init
> +++ b/defaultenv-2/base/bin/init
> @@ -16,11 +16,15 @@ global editcmd=sedit
>  [ -e /env/config-board ] && /env/config-board
>  /env/config
>  
> +# request password to login is a timeout is specified and /env/etc/passwd present
> +[ -n ${global.login.timeout} ] && login_cmd=login
> +
>  # allow to stop the boot before execute the /env/init/*
>  # but without waiting
>  timeout -s -a -v key 0
>  
>  if [ "${key}" = "q" ]; then
> +	${login_cmd}
>  	exit
>  fi
>  
> @@ -38,6 +42,7 @@ timeout -a $global.autoboot_timeout -v key
>  autoboot="$?"
>  
>  if [ "${key}" = "q" ]; then
> +	${login_cmd}
>  	exit
>  fi
>  
> @@ -48,7 +53,11 @@ fi
>  if [ -e /env/menu ]; then
>  	if [ "${key}" != "m" ]; then
>  		echo -e "\ntype exit to get to the menu"
> +		${login_cmd}
>  		sh
>  	fi
> +	${login_cmd}
>  	/env/menu/mainmenu

You should do it like this:

if [ -e /env/menu ]; then
	${login_cmd}
	if [ "${key}" != "m" ]; then
		echo -e "\ntype exit to get to the menu"
		sh
	fi
	/env/menu/mainmenu
fi

Otherwise you get prompted for a password when entering the shell and
agin when going to the menu.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
