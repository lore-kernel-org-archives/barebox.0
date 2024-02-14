Delivery-date: Wed, 14 Feb 2024 19:10:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raJhw-006S8p-04
	for lore@lore.pengutronix.de;
	Wed, 14 Feb 2024 19:10:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raJhv-0001qf-Ct
	for lore@pengutronix.de; Wed, 14 Feb 2024 19:10:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6q7fPYb6IjOxE9HR+H+yW+VJMWKPIfMyYg/RlS+lsew=; b=iPeRXJ6081gZk1k/bwu7srTqxZ
	uogmg23/tOVn6Tl5e0rRKq4sGBeas6vQ4fQiEaiMUjvmYBuIL62rdsJw4uTalqmcT9K8Pr6N4we5Z
	gFZ2FQwvysO0z+nTfz3wqaMPHthvUwqgYnNItgvtX8fykW4nh/EmmjoHom8eB3J2V32DDDNQJry2U
	Vt0MoMAyx58D8P4lbgMR4XgoT4foSILxO+ti4UQHr1sWe6SAyMRvOFHuMrJsSwrR8AJJwEo1GeLft
	/a41efg4dKTVzH0EKiBWR/Ucy+AwFMNXUgq8qNmxdEJcCoID4tlaZ0HplJcbh8Snesv+JYWAb3hpt
	Oo0Bsq8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raJhC-0000000DsNT-3ThL;
	Wed, 14 Feb 2024 18:09:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raJh9-0000000DsLZ-29Lt
	for barebox@lists.infradead.org;
	Wed, 14 Feb 2024 18:09:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raJh6-0001i7-E1; Wed, 14 Feb 2024 19:09:16 +0100
Message-ID: <718388d8-1540-4f45-9604-ae8e63cf986f@pengutronix.de>
Date: Wed, 14 Feb 2024 19:09:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240213151744.307958-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240213151744.307958-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_100919_594970_5F59FF2B 
X-CRM114-Status: GOOD (  22.44  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/6] implement i.MX93 AHAB secure boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 13.02.24 16:17, Sascha Hauer wrote:
> This adds support for AHAB based secure boot on i.MX93. The user
> interface is integrated into the existing hab command used for ealier
> i.MX variants. On i.MX93 the hab command can:
> 
> - read/write the SRK hash
> - lock the device
> - show lock status of the device
> 
> Like done with HAB the AHAB events will be shown during boot so that
> possible failure events are seen should there be any issues like no
> or wrong SRK hash fused or an unsigned image is attempted to be started.
> 
> Unlike with HAB it is currently not possible to sign the barebox images
> directly within the barebox build system. Instead, the images need to be
> signed afterwards with the NXP CST tool. I am currently unsure if it's
> worth the hassle, as it turned out to be quite straight forward to
> integrate the signing process into YOCTO (likely also ptxdist, but I
> haven't tried yet). In the end it might be easier than adding another
> indirection with tunneling the necessary keys through the barebox build
> process. I might be convinced otherwise though.

Could you make the signing inside the barebox build system optional
for HAB? Then we could have a prompt symbol that depends on HABv4, e.g.
CONFIG_HAB_SIGN_IMAGES or something and disabling that would require
external signing like for AHAB. I think this would improve user experience
a fair bit, because HAB and AHAB could be handled the same build-system
side and it would be easily discoverable in Kconfig that one supports
sigining internally and the other doesn't.

This would also allow us to build-test this configuration.

Thanks,
Ahmad

> 
> Sascha
> 
> Sascha Hauer (6):
>   hab: drop incomplete i.MX28 support
>   hab: drop i.MX35
>   hab: cleanup hab status printing during boot
>   hab: pass flags to lockdown_device()
>   ARM: i.MX: ele: implement more ELE operations
>   hab: implement i.MX9 support
> 
>  arch/arm/mach-imx/Kconfig |   5 +
>  arch/arm/mach-imx/ele.c   | 345 +++++++++++++++++++++++++++++++++++++-
>  drivers/hab/hab.c         | 137 ++++++++++++++-
>  drivers/hab/hab.h         |  10 ++
>  drivers/hab/habv3.c       |   6 +-
>  drivers/hab/habv4.c       |  62 +------
>  include/hab.h             |  20 +--
>  include/mach/imx/ele.h    |  18 ++
>  8 files changed, 516 insertions(+), 87 deletions(-)
>  create mode 100644 drivers/hab/hab.h
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



