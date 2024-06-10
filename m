Delivery-date: Mon, 10 Jun 2024 10:34:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGaTx-003azg-2m
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 10:34:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGaTx-00084x-6x
	for lore@pengutronix.de; Mon, 10 Jun 2024 10:34:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uh1ck+9D2Oo21RRGiv5qsiG70534TD/AKZev7b2LB34=; b=vNaEq6BCKNpCzg8VnCj0dGr1Hh
	T3z7T06DRsF2/Qto+rxG8xr490qNTBf0+1cyKr+FQgNByUo2WhX3dI89Hc5MU3mYlc4yuXtaaDcHP
	cayiqp50AkqGgwzRl4CK2nEgOq2aCCW8wAuv0r8rL5W3EkghV9O1qAn8i0GHOd0NxGHhWhd9HqLva
	VO1mOFfDG5A6C3XvMbtahnMh1ybn5ZJZzz3FI6hUqXmxD48rWbvPCycn9XXrJ7zNSwwbqM7nvP49s
	r5THfaFluG5gls5uPz0hn+KUguNka+k5pa7fxtTtWPshyQzeajYxn1tyJFwtDvbm8CO8lLL5+Jpaq
	rDctOTqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGaTN-00000004GYb-3P9l;
	Mon, 10 Jun 2024 08:33:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGaTK-00000004GXp-2zjU
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 08:33:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGaTI-00081C-3b; Mon, 10 Jun 2024 10:33:44 +0200
Message-ID: <9544d04c-6d5e-4a5b-93cf-7cfabf9a90ae@pengutronix.de>
Date: Mon, 10 Jun 2024 10:33:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240610081213.858714-1-s.hauer@pengutronix.de>
 <20240610081213.858714-3-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240610081213.858714-3-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_013346_793876_855CBEFA 
X-CRM114-Status: GOOD (  23.64  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/4] base: add class device support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 10.06.24 10:12, Sascha Hauer wrote:
> This introduces the concept of class devices in barebox. Class devices
> group together devices of the same type. Several subsystems like
> watchdog and network devices have a struct device embedded in their
> subsystem specific struct anyway, so we can use this as a class device.
> As these class devices are collected on a list we can use this list to
> iterate over all network/watchdog devices and thus free the subsystems
> from the burden of keeping a list themselves.
> 
> There is a 'class' command added in this patch which can be used to show
> all registered classes along with the devices registered for each class.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/Kconfig                  |  6 +++++
>  commands/Makefile                 |  1 +
>  commands/class.c                  | 30 ++++++++++++++++++++++
>  drivers/base/Makefile             |  1 +
>  drivers/base/class.c              | 41 +++++++++++++++++++++++++++++++
>  include/asm-generic/barebox.lds.h |  7 ++++++
>  include/device.h                  | 21 ++++++++++++++++
>  7 files changed, 107 insertions(+)
>  create mode 100644 commands/class.c
>  create mode 100644 drivers/base/class.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 899673bfee..7831e6276d 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -68,6 +68,12 @@ config CMD_BOOTROM
>  
>  	  bootrom [-la]
>  
> +config CMD_CLASS
> +	tristate
> +	prompt "class"
> +	help
> +	  Show information about registered classes and devices

s/classes and devices/device classes/.

> +#define BAREBOX_CLASSES				\
> +	STRUCT_ALIGN();				\
> +	__barebox_class_start = .;		\
> +	KEEP(*(SORT_BY_NAME(.barebox_class*)))	\
> +	__barebox_class_end = .;

While I don't mind using linker lists for this, can you add a note
to the commit message why you decided against dynamic allocation?

> +struct class {
> +	const char *name;
> +	struct list_head devices;
> +	struct list_head list;
> +};
> +
> +#define DECLARE_CLASS(_name, _classname)					\

This is a definition, not ony a declaration and
Linux has DEFINE_CLASS defined in <linux/cleanup.h>.

How about DEFINE_DEV_CLASS?

> +	struct class _name __ll_elem(.barebox_class_##_name) = {		\
> +		.name = _classname,						\
> +		.devices = LIST_HEAD_INIT(_name.devices),			\
> +	}

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



