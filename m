Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WeIkE-0002Sa-Dh
 for barebox@lists.infradead.org; Sun, 27 Apr 2014 06:39:24 +0000
Date: Sun, 27 Apr 2014 08:38:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140427063858.GF5858@pengutronix.de>
References: <1398426868-30285-1-git-send-email-c.hemp@phytec.de>
 <1398426868-30285-4-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398426868-30285-4-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH 4/4] imx6: Add support for phyCARD-i.MX6
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

Hi Christian,

On Fri, Apr 25, 2014 at 01:54:28PM +0200, Christian Hemp wrote:
> Add support for Phytec phyCARD-i.MX6.
> 	- 1GB RAM on two banks
> 	- 1GB RAM on one bank
> 	- 2GB RAM on two banks
> 
> +
> diff --git a/arch/arm/boards/phytec-phycard-imx6/env/boot/net b/arch/arm/boards/phytec-phycard-imx6/env/boot/net
> new file mode 100644
> index 0000000..8fe65d7
> --- /dev/null
> +++ b/arch/arm/boards/phytec-phycard-imx6/env/boot/net
> @@ -0,0 +1,14 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	boot-menu-add-entry "$0" "network (Kernel:tftp;rootf:nfs)"
> +	exit
> +fi
> +
> +path="/mnt/tftp"
> +
> +global.bootm.image="${path}/linuximage"
> +#global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
> +nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
> +bootargs-ip
> +global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"

What's wrong with the already existing entry in
defaultenv/defaultenv-2-base/boot/net?

> diff --git a/arch/arm/boards/phytec-phycard-imx6/env/network/eth0 b/arch/arm/boards/phytec-phycard-imx6/env/network/eth0
> new file mode 100644
> index 0000000..03dcca0
> --- /dev/null
> +++ b/arch/arm/boards/phytec-phycard-imx6/env/network/eth0
> @@ -0,0 +1,16 @@
> +#!/bin/sh
> +
> +# ip setting (static/dhcp)
> +ip=static
> +global.dhcp.vendor_id=barebox-${global.hostname}
> +
> +# static setup used if ip=static
> +ipaddr=192.168.3.11
> +netmask=255.255.255.0
> +gateway=192.168.3.10
> +serverip=192.168.3.10

No ip addresses in the defaultenv please.

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
