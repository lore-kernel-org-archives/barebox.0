Delivery-date: Fri, 28 Nov 2025 11:08:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOvOc-005kJu-29
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 11:08:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOvOc-0004bd-3K
	for lore@pengutronix.de; Fri, 28 Nov 2025 11:08:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vuihQG98+6ShlCnEAcJpt25KdsoJ1+HwBFEvOofJQmA=; b=VReYZ1FhT026IK2jDhXZyd9Z3G
	3gqSxtBvMJS+kFSEQwZ6Yglnd21x69MatHYQxRckjR+6JvTcm+W++jrPZcivktqh78AZauh/6lG4T
	OjHgfFvtnD63SpjkFWWHhkg9qWA700c+PR9Zd33HjW1jpNa1F8+V0+OTezT610/E2VqlWNUAxs0qv
	G5PiDTEEPdKVvHhrLvLN5Yz5p3wmwahtacBUSyWL0P+mg3bqlbve+Q3JcfRd8dgGCl8ijYR9XXxFf
	4uTjQGxObgcEfx+G3ANeMf4NAGmnUYykZiIOg2UHBakVXHSOf4INgPKWcVuhOuCjkVdKw81dCr47j
	eEfnne5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOvOC-00000000GGq-1bHE;
	Fri, 28 Nov 2025 10:07:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOvO9-00000000GFZ-1fYB
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 10:07:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOvO7-0004VJ-Pt; Fri, 28 Nov 2025 11:07:39 +0100
Message-ID: <2af3b756-dd80-4feb-9a7c-993d38d1c7cf@pengutronix.de>
Date: Fri, 28 Nov 2025 11:07:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
References: <20251127105824.3560951-1-f.pflug@pengutronix.de>
 <20251127143052.3114915-1-f.pflug@pengutronix.de>
 <20251127143052.3114915-5-f.pflug@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251127143052.3114915-5-f.pflug@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_020741_439102_079E6F7C 
X-CRM114-Status: GOOD (  20.80  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 4/4] bootm: introduce bootm.root_arg variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11/27/25 3:25 PM, Fabian Pflug wrote:
> The bootm.root_arg variable will be responsible for the root= part of
> the kernel commandline if bootm.appendroot is set and a root device has
> been selected.
> root_arg allows to replace the root=/dev/... with verity=/dev/..., which
> is useful in a verified boot context, where you pass the root file
> system to the initramfs, but do not want the kernel to be able to parse
> and mount the rootfs. With renaming the root= to something different,
> you make sure, that the kernel does not mount the rootfs.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>

With rename (see below):

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/bootm.c  | 17 ++++++++++++-----
>  fs/fs.c         | 26 --------------------------
>  include/bootm.h |  1 +
>  include/fs.h    |  1 -
>  4 files changed, 13 insertions(+), 32 deletions(-)
> 
> diff --git a/common/bootm.c b/common/bootm.c
> index 8efe3426fe..c00be384d0 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -70,6 +70,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
>  		data->initrd_file = getenv_nonempty("global.bootm.initrd");
>  	}
>  	data->root_dev = getenv_nonempty("global.bootm.root_dev");
> +	data->root_arg = getenv_nonempty("global.bootm.root_arg");

I know root_arg was my suggestion IIRC, but thinking about it this
should rather be root_param as it's about what's before the =, not
what's after it.

>  				if (!root_cdev)
> -					pr_err("no cdev found for %s, cannot set root= option\n", root_dev_name);
> +					pr_err("no cdev found for %s, cannot set %s= option\n",
> +						root_dev_name, bootm_data->root_arg);

This was two lines before Patch 3/4, Patch 3/4 made it into one line,
now patch 4/4 makes it two lines again.

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



