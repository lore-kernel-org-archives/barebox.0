Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TALeh-00037l-86
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 14:05:03 +0000
Date: Sat, 8 Sep 2012 16:04:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120908140457.GE18243@pengutronix.de>
References: <20120907120713.GQ20330@game.jcrosoft.org>
 <1347020017-12110-1-git-send-email-plagnioj@jcrosoft.com>
 <1347020017-12110-7-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347020017-12110-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 07/11] defaultenv-2/ip: add dhcp-barebox support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 07, 2012 at 02:13:33PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  defaultenv-2/base/bin/bootargs-ip |    2 ++
>  defaultenv-2/base/bin/ifup        |    2 +-
>  2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/defaultenv-2/base/bin/bootargs-ip b/defaultenv-2/base/bin/bootargs-ip
> index 2d4486c..caeb5dd 100644
> --- a/defaultenv-2/base/bin/bootargs-ip
> +++ b/defaultenv-2/base/bin/bootargs-ip
> @@ -6,6 +6,8 @@
>  
>  if [ $ip = dhcp ]; then
>  	global.linux.bootargs.dyn.ip="ip=dhcp"
> +elif [ $ip = dhcp-barebox ]; then
> +	global.linux.bootargs.dyn.ip="ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask::eth0:"
>  else
>  	global.linux.bootargs.dyn.ip="ip=$ipaddr:$serverip:$gateway:$netmask::eth0:"
>  fi
> diff --git a/defaultenv-2/base/bin/ifup b/defaultenv-2/base/bin/ifup
> index 37b986c..554c35e 100644
> --- a/defaultenv-2/base/bin/ifup
> +++ b/defaultenv-2/base/bin/ifup
> @@ -52,7 +52,7 @@ if [ "$ip" = static ]; then
>  	${interface}.serverip=$serverip
>  	${interface}.gateway=$gateway
>  	ret=0
> -elif [ "$ip" = dhcp ]; then
> +elif [ "$ip" = dhcp -o "$ip" = dhcp-barebox ]; then
>  	dhcp
>  	ret=$?
>  	if [ $ret = 0 -a -n "$serverip" ]; then

The ifup script is used to configure networking for barebox. This is not
the place for configuring kernel behaviour. If you want this add an
option to the bootargs-ip script or add a bootargs-ip-barebox script.

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
