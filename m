Delivery-date: Wed, 27 Aug 2025 13:57:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urEmp-0054XB-1V
	for lore@lore.pengutronix.de;
	Wed, 27 Aug 2025 13:57:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urEmo-0001LY-9H
	for lore@pengutronix.de; Wed, 27 Aug 2025 13:57:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L/fRCS6sAXGej0+STFR4TtdAnN5zyJkm0zAJizxq1sk=; b=SwcQ1ZT2HYBrpLoLxWMtFyoHVL
	wr7HTWQLWRQ49gj8NpMjXGsC38YFtahAGhDo7xOpWXuAnmTpc3gadDoLi9NyyieDZBW9WTYlX36py
	ZUYvHPg1QbcHlWlk0KJBrrI3nxr+pDMG9g+dIek91zykwpQXrg8uyYbXbgcinErfp/QvODG8A9MZS
	Ol4VdyxIpMtVSsgJfCG9tDSXjdDD85VTHZ20nFDOEWmUMAWFVE9oVbW2gFsSQcKiKE8s/Ep+3UdyK
	9fSeY4XOb3if3TFGOx25AOiJd85gmzq96Zu76fy9yF6a+zGEhGiSj7kKMIdXbbH+5G1pGj430H1Ge
	2RpFEa+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urEmH-0000000FM2g-02SL;
	Wed, 27 Aug 2025 11:57:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urDyO-0000000F9es-2VvI
	for barebox@lists.infradead.org;
	Wed, 27 Aug 2025 11:05:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1urDyM-0000jN-Dz; Wed, 27 Aug 2025 13:05:46 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1urDyL-002NsM-3D;
	Wed, 27 Aug 2025 13:05:46 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1urDyL-002pxo-2p;
	Wed, 27 Aug 2025 13:05:45 +0200
Date: Wed, 27 Aug 2025 13:05:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
Message-ID: <aK7mic8MBXuUVJXc@pengutronix.de>
References: <20250826061108.3372599-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250826061108.3372599-1-chalianis1@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_040548_637155_2688C45B 
X-CRM114-Status: GOOD (  27.56  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: bootm: only use initrd override if non-empty
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

I have some trouble understanding this patch.

On Tue, Aug 26, 2025 at 02:11:08AM -0400, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> OSTree integration in Yocto generates an empty initramfs
> file and references it in the boot configuration (under
> /boot/loader/ostree-1.conf) to suppress init= kernel arguments.
> This caused Barebox to always prefer the override, even when
> the initramfs was empty, preventing booting of FIT images
> that already contain an embedded initramfs.

So you have one initrd specified in /boot/loader/ostree-1.conf and
another one in your FIT image, right?

By default and without this patch I would assume the initrd from the FIT
image takes precedence, right?

> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  common/bootm.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/common/bootm.c b/common/bootm.c
> index 3a2eb262b26a..f31ef546d92c 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -279,14 +279,18 @@ static int bootm_open_initrd_uimage(struct image_data *data)
>  const struct resource *
>  bootm_load_initrd(struct image_data *data, unsigned long load_address)
>  {
> +	struct stat st;
>  	enum filetype type;
>  	int ret;
>  
>  	if (!IS_ENABLED(CONFIG_BOOTM_INITRD))
>  		return NULL;
>  
> -	if (bootm_get_override(&data->initrd_file, bootm_overrides.initrd_file))
> -		goto initrd_file;
> +	if (bootm_get_override(&data->initrd_file,
> +			       bootm_overrides.initrd_file)) {

This path is only taken when bootm_overrides.initrd_file is non empty,
so it seems you are booting with boot -o bootm.initrd=/some/initrd

Without this patch you would then end up using /some/initrd as initrd

> +		if (!stat(data->initrd_file, &st) && st.st_size > 0)
> +			goto initrd_file;

Now with this patch you use /some/initrd only when it exists and is non
empty. Otherwise you would end up using the initrd from the FIT image,
the same initrd which would be used if you had not set -o bootm.initrd=/some/initrd.

I think I am misunderstanding something.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


