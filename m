Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TFOA7-0008Jo-DT
 for barebox@lists.infradead.org; Sat, 22 Sep 2012 11:46:23 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 73F49FFA47D
 for <barebox@lists.infradead.org>; Sat, 22 Sep 2012 13:52:11 +0200 (CEST)
Date: Sat, 22 Sep 2012 13:43:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120922114346.GT26553@game.jcrosoft.org>
References: <1348311530.3917.5.camel@mars>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348311530.3917.5.camel@mars>
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
Subject: Re: [PATCH 1/2] net: add nameserver IPs to kernel-parameter ip=
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

On 12:58 Sat 22 Sep     , Christoph Fritz wrote:
> Kernel-parameter "ip=" is used to assign network configuration.
> With linux kernel 3.7 it is also possible to set nameserver IPs.
> 
> This patch adds two new options (nameserver0 and nameserver1) to
> ethernet device parameter. It also updates defaultenv version 1.
defaultenv-2 mandatory

v1 is for fix only


> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> ---
>  defaultenv/bin/boot |    4 +++-
>  defaultenv/config   |    2 ++
>  net/eth.c           |    2 ++
>  3 files changed, 7 insertions(+), 1 deletions(-)
> 
> diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
> index 4e2056e..d5b5844 100644
> --- a/defaultenv/bin/boot
> +++ b/defaultenv/bin/boot
> @@ -61,7 +61,9 @@ if [ x$ip = xdhcp -o ]; then
>  elif [ x$ip = xnone ]; then
>  	bootargs="$bootargs ip=none"
>  else
> -	bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask::eth0:"
> +	bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:"
> +	bootargs="$bootargs$eth0.netmask::eth0::"
> +	bootargs="$bootargs$eth0.nameserver0:$eth0.nameserver1"
>  fi
>  
>  
> diff --git a/defaultenv/config b/defaultenv/config
> index 391ba47..6596753 100644
> --- a/defaultenv/config
> +++ b/defaultenv/config
> @@ -18,6 +18,8 @@ global.dhcp.vendor_id=barebox
>  #eth0.netmask=a.b.c.d
>  #eth0.serverip=a.b.c.d
>  #eth0.gateway=a.b.c.d
> +#eth0.nameserver0=a.b.c.d
> +#eth0.nameserver1=a.b.c.d
>  
>  # can be either 'tftp', 'nfs', 'nand', 'nor' or 'disk'
>  kernel_loc=tftp
> diff --git a/net/eth.c b/net/eth.c
> index d42a72d..bb8157b 100644
> --- a/net/eth.c
> +++ b/net/eth.c
> @@ -229,6 +229,8 @@ int eth_register(struct eth_device *edev)
>  	dev_add_param(dev, "gateway", eth_set_ipaddr, NULL, 0);
>  	dev_add_param(dev, "netmask", eth_set_ipaddr, NULL, 0);
>  	dev_add_param(dev, "serverip", eth_set_ipaddr, NULL, 0);
> +	dev_add_param(dev, "nameserver0", eth_set_ipaddr, NULL, 0);
> +	dev_add_param(dev, "nameserver1", eth_set_ipaddr, NULL, 0);
this is done via net as the nameserver is not interface specific

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
