Delivery-date: Mon, 13 Feb 2023 08:44:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pRTVk-005zdv-6K
	for lore@lore.pengutronix.de; Mon, 13 Feb 2023 08:44:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pRTVh-0000Vk-90
	for lore@pengutronix.de; Mon, 13 Feb 2023 08:44:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0eLt2s6MjiwbsNJq/3AozvgmUrYQskuO7bYZ56QBW30=; b=yR555lNyXX0KshpE03Vfk2MnEV
	HtuqVADZZtZrPV88zs7fo1UvwcDMyhwPt0frLS17dfD74uituOyl0YzXdxg1WVTGBU6bs9/T9WiMD
	q0cZ9UawsIb64OfC/uCvmScTf5RRy0ofSi4Zo72soOFUNak6EofMxg2o8N715bff/qoD1YPsdOjzw
	TeIC8myfaFVeyLd4jQQ6R2C4PQSa3HCDFmPlE4VCBDBwrFYaX2+aEwpL40iVGY2WC/btRDg41nJyN
	UZ+kvXmcHnvmONXzLZWYWsIKesDxQEPrU26RaWsJTCqlBqLZKYnc8rdjHPbpDt6ZdFLsaP3Groz2R
	16Nk30wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRTTl-00DT8e-Nh; Mon, 13 Feb 2023 07:42:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRTTe-00DT77-Bb
	for barebox@lists.infradead.org; Mon, 13 Feb 2023 07:42:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pRTTX-0000KK-M7; Mon, 13 Feb 2023 08:42:11 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pRTTX-0002YG-E7; Mon, 13 Feb 2023 08:42:11 +0100
Date: Mon, 13 Feb 2023 08:42:11 +0100
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230213074211.GD10447@pengutronix.de>
References: <20230210224831.2597135-1-rhi@pengutronix.de>
 <20230210224831.2597135-2-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230210224831.2597135-2-rhi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230212_234218_420999_7B440103 
X-CRM114-Status: GOOD (  29.57  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] defaultenv: boot/net: allow customising NFS port and
 path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 10, 2023 at 11:48:31PM +0100, Roland Hieber wrote:
> There are use cases where the port and mount path of the NFS root need
> to be changed from the default values, e.g. with the userspace NFS
> daemon used by 'ptxdist nfsroot', which tells you:
> 
>     Mount rootfs with nfsroot=/root,v3,tcp,port=13049,mountport=13049
> 
> (The port number can vary of course, depending on how many users on your
> devel server have already started unfsd at the same time.)
> 
> Support such use cases by introducing two new variables for the port
> number and the mount path, which get inserted into the kernel command
> line. Use the old default mount path as fallback when the new variable
> is not set.

Does this approach really make you happy with your usecase? The port
may change with every invocation of 'ptxdist nfsroot'.

With bootloaderspec it should be possible to do this in barebox:

boot nfs://host:13049//root

If that works we might convince Michael to print this line suitable for
copy-paste along with the output of 'ptxdist nfsroot'.

Sascha

> 
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  Documentation/user/networking.rst     | 10 ++++++++++
>  defaultenv/defaultenv-2-base/boot/net | 11 ++++++++++-
>  2 files changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
> index 6bd16ea8d1bd..e95957c0a26a 100644
> --- a/Documentation/user/networking.rst
> +++ b/Documentation/user/networking.rst
> @@ -53,6 +53,16 @@ device:
>  | global.net.nameserver        | ipv4 address | The DNS server used for resolving host names.         |
>  |                              |              | May be set by DHCP.                                   |
>  +------------------------------+--------------+-------------------------------------------------------+
> +| global.net.nfspath           | string       | If set, determines the mount path of the root         |
> +|                              |              | file system on the NFS server.                        |
> +|                              |              | If not set, the default value                         |
> +|                              |              | ``/home/${global.user}/nfsroot/${global.hostname}``   |
> +|                              |              | is used.                                              |
> ++------------------------------+--------------+-------------------------------------------------------+
> +| global.net.nfsport           | short        | If set, determines the port of the NFS server         |
> +|                              |              | (the ``mountport`` and ``port`` arguments of the      |
> +|                              |              | ``nfsroot`` parameter in the kernel command line).    |
> ++------------------------------+--------------+-------------------------------------------------------+
>  | global.net.ifup_force_detect | boolean      | Set to true if your network device is not             |
>  |                              |              | detected automatically during start (i.e. for         |
>  |                              |              | USB network adapters).                                |
> diff --git a/defaultenv/defaultenv-2-base/boot/net b/defaultenv/defaultenv-2-base/boot/net
> index e79432eb277c..236955ef6fed 100644
> --- a/defaultenv/defaultenv-2-base/boot/net
> +++ b/defaultenv/defaultenv-2-base/boot/net
> @@ -22,7 +22,16 @@ initramfs="${path}/${global.user}-initramfs-${global.hostname}"
>  if [ -f "${initramfs}" ]; then
>  	global.bootm.initrd="$initramfs"
>  else
> -	nfsroot="${nfsserver}:/home/${global.user}/nfsroot/${global.hostname}"
> +	if [ -z "${global.net.nfspath}" ]; then
> +		nfsroot="${nfsserver}:/home/${global.user}/nfsroot/${global.hostname}"
> +	else
> +		nfsroot="${nfsserver}:${global.net.nfspath}"
> +	fi
> +
> +	if [ -n "${global.net.nfsport}" ]; then
> +		nfsroot="${nfsroot},port=${global.net.nfsport},mountport=${global.net.nfsport}"
> +	fi
> +
>  	ip_route_get -b ${global.net.server} global.linux.bootargs.dyn.ip
>  	global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
>  fi
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


