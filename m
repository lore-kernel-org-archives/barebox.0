Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PfpzP-00012l-1S
	for barebox@lists.infradead.org; Thu, 20 Jan 2011 08:35:36 +0000
Date: Thu, 20 Jan 2011 09:35:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110120083514.GU9041@pengutronix.de>
References: <201101191416.25128.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201101191416.25128.jbe@pengutronix.de>
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
Subject: Re: [PATCH] Fix default environment 'boot' script
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 19, 2011 at 02:16:24PM +0100, Juergen Beisert wrote:
> Maybe this patch is wrong and instead the "nfsroot=$nfsroot,v3,tcp" line must
> be fixed. But at first this patch makes my target again booting with NFS root
> and static IP configuration.
> 
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> 
> diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
> index fa68748..0f3a6cc 100644
> --- a/defaultenv/bin/boot
> +++ b/defaultenv/bin/boot
> @@ -18,7 +18,7 @@ if [ x$ip = xdhcp ]; then
>  elif [ x$ip = xnone ]; then
>  	bootargs="$bootargs ip=none"
>  else
> -	bootargs="$bootargs ip=$eth0.ipaddr::$eth0.gateway:$eth0.netmask:::"
> +	bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask:::"
>  fi

Normally $nfsroot already contains the serverip, so no need to add it
here.

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
