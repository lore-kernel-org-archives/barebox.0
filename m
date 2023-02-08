Delivery-date: Wed, 08 Feb 2023 09:24:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPfky-000NK9-FQ
	for lore@lore.pengutronix.de; Wed, 08 Feb 2023 09:24:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPfkv-0006q1-Pb
	for lore@pengutronix.de; Wed, 08 Feb 2023 09:24:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wBlwaynz/pJ/kJ5Sa31zEL6Ba2Ddxe9JtOsndJX30N0=; b=iQGChUgBaT675UKJ4ml89UDWG8
	JYw9tWl3Hj60ImkJtA2Uz8wBof3b9N5Lmsl+KTQqenemY4R/4j1+GmjXXBT8pgRj4ZYIQlQxvUGUJ
	awF/KikbO4BO5ER5hHzSfluDCvcwq7RWDViOqtTDCDOqiD93s2eltzCOV5PCCH7kOZGWDg4IV5mZx
	w8eVN7N0LwcmmtFCxPK0pvKA4ZUt0NnqphWAm6fACofaxOCPH8k/emf7RqPSd8dBOrcAboB3SuYvD
	R12wYgUCO3O/hSHPydIO/yqyj5PMSlMudUcNm9nhufZ7/cbELNEwJTTW7K4jbknaSEMRDOUxqFJHh
	SHwt9m6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPfjo-00EaUL-1f; Wed, 08 Feb 2023 08:23:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPfjj-00EaTk-8p
	for barebox@lists.infradead.org; Wed, 08 Feb 2023 08:23:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPfjh-0006l8-VG; Wed, 08 Feb 2023 09:23:25 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPfjh-0003h8-Nm; Wed, 08 Feb 2023 09:23:25 +0100
Date: Wed, 8 Feb 2023 09:23:25 +0100
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230208082325.GK10447@pengutronix.de>
References: <20230206134551.3227602-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230206134551.3227602-1-rhi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_002327_330014_398A8E5F 
X-CRM114-Status: GOOD (  22.33  )
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
Subject: Re: [PATCH] Documentation: networking: improve net.* variable
 description
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Feb 06, 2023 at 02:45:51PM +0100, Roland Hieber wrote:
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  Documentation/user/booting-linux.rst |  2 ++
>  Documentation/user/networking.rst    | 10 ++++++----
>  2 files changed, 8 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
> index 60babb513cea..1a95f87e77c4 100644
> --- a/Documentation/user/booting-linux.rst
> +++ b/Documentation/user/booting-linux.rst
> @@ -232,6 +232,8 @@ device where the entry is found on. This makes it possible to use the same rootf
>  image on different devices without having to specify a different root= option each
>  time.
>  
> +.. _booting_linux_net:
> +
>  Network boot
>  ------------
>  
> diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
> index 9231ebde56ac..2306cb6a60d1 100644
> --- a/Documentation/user/networking.rst
> +++ b/Documentation/user/networking.rst
> @@ -45,15 +45,17 @@ device:
>  |                              |              | any directly visible subnet. May be set        |
>  |                              |              | automatically by DHCP.                         |
>  +------------------------------+--------------+------------------------------------------------+
> -| global.net.server            | hostname or  | The default server. If unspecified, may be set |
> -|                              | ipv4 address | by DHCP                                        |
> +| global.net.server            | hostname or  | The default server used by the defaultenv boot |
> +|                              | ipv4 address | scripts for NFS and TFTP; see                  |
> +|                              |              | :ref:`booting_linux_net`.                      |
> +|                              |              | If unspecified, may be set by DHCP.            |
>  +------------------------------+--------------+------------------------------------------------+
>  | global.net.nameserver        | ipv4 address | The DNS server used for resolving host names.  |
> -|                              |              | May be set by DHCP                             |
> +|                              |              | May be set by DHCP.                            |
>  +------------------------------+--------------+------------------------------------------------+
>  | global.net.ifup_force_detect | boolean      | Set to true if your network device is not      |
>  |                              |              | detected automatically during start (i.e. for  |
> -|                              |              | USB network adapters)                          |
> +|                              |              | USB network adapters).                         |
>  +------------------------------+--------------+------------------------------------------------+
>  
>  The first step for networking is configuring the network device. The network
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


