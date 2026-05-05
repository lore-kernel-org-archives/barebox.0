Delivery-date: Tue, 05 May 2026 11:57:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKCXF-001CdZ-1I
	for lore@lore.pengutronix.de;
	Tue, 05 May 2026 11:57:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKCXA-0005nm-19
	for lore@pengutronix.de; Tue, 05 May 2026 11:57:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cEEo3TcXVh/dHMuxy5QcimbPL/l7aPRNhLP/B6GX948=; b=jZNI60a1rkGxSeCVWJUy4+/lM1
	wVc8XHbaoLH1+ASG2PLuz4+H6mRD2Lsr/jj+c9su8EVvng9mlU0L5CuGYzYzSwTXMm6OdiwfPB1vb
	Vr4YjAbOWIABSPpZDChPDCo7bx5+r2mNT3vLrHn6nXEGLs18fdJDtwee1S0zogNqBZkLhHmipEcgR
	65CcB20C/Mo2W+Odsd7AznaRHsvEZEp8U5UGbZNp/jP0kLtrUCYq0rim8yiRjTu53h4rI5mVv/UrK
	KVcITcIQFxR7lB2ylSN48/irRCuk6IzSjbfOJkEtpKvI49I2CAyTk8FBwbCo4Ggs9uwCDrvXayTsg
	DL20G7bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKCWV-0000000Fjts-3Bg8;
	Tue, 05 May 2026 09:57:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKCWS-0000000FjtV-3OHK
	for barebox@lists.infradead.org;
	Tue, 05 May 2026 09:57:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKCWR-0005Qi-9Q; Tue, 05 May 2026 11:56:59 +0200
Message-ID: <c3a17e51-3624-4215-b352-6dce10e1a1b4@pengutronix.de>
Date: Tue, 5 May 2026 11:56:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20260428132811.3691086-1-eagle.alexander923@gmail.com>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260428132811.3691086-1-eagle.alexander923@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_025700_904796_BCDA864E 
X-CRM114-Status: GOOD (  23.24  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Alexander,

On 4/28/26 3:28 PM, Alexander Shiyan wrote:

> +static int extlinux_boot(struct bootentry *be, int verbose, int dryrun)
> +{
> +	struct extlinux_entry *e =
> +		container_of(be, struct extlinux_entry, entry);
> +	char *kernel_abs, *initrd_abs = NULL, *fdt_abs = NULL;
> +	struct bootm_data data = {};
> +	int ret;
> +
> +	bootm_data_init_defaults(&data);
> +
> +	data.dryrun = max_t(int, dryrun, data.dryrun);
> +	data.verbose = max(verbose, data.verbose);
> +
> +	kernel_abs = basprintf("%s/%s", e->rootpath, e->kernel);
> +	data.os_file = kernel_abs;
> +
> +	if (e->initrd) {
> +		initrd_abs = basprintf("%s/%s", e->rootpath, e->initrd);
> +		data.initrd_file = initrd_abs;
> +	}
> +
> +	if (e->fdt) {
> +		char *fdtdir = e->fdtdir ? : e->rootpath;
> +
> +		fdt_abs = basprintf("%s/%s", fdtdir, e->fdt);
> +		data.oftree_file = fdt_abs;
> +	}
> +
> +	if (e->append) {
> +		char *append;
> +
> +		/*
> +		 * The same rootfs image may be launched from eMMC or SD card.
> +		 * Remove any hardcoded root= parameter from "append" to avoid
> +		 * conflicts, then let barebox automatically add the correct
> +		 * root= (via global.bootm.appendroot) based on the boot device.
> +		 */
> +		if (data.appendroot)
> +			append = remove_param(e->append, "ROOT=");

Why use the upper case form here? Does the kernel even support uppercase
ROOT=? I suspect not, in which case we can replace the case-insensitive
comparison with a regular one.


I thought about this a bit and I still see multiple issues:

- Even in absence of root=, an initramfs can decide its own root anyway
- Giving this extra meaning to bootm.appendroot will make extlinux.conf
behave differently to blspec
- The extlinux.conf files are not necessarily within a rootfs to begin
with (maybe it's partition with just boot/kernel images)
- Other kernel options that are related to the rootfs aren't touched by this

I am not sure these can be resolved properly.

I thus have a question to you: What happens if you drop remove_param()
completely? Sure we will have two root=, but the later gets precedence,
so your use case would continue to work without giving users a wrong
expectation.

I just Cc'd you on [1] which ensures appendroot is later than whatever
is added by blspec or extlinux.conf.

[1]:
https://lore.barebox.org/barebox/20260505095137.1123867-2-a.fatoum@pengutronix.de/T/#u

> +		else
> +			append = xstrdup(e->append);
> +
> +		globalvar_add_simple("linux.bootargs.dyn.extlinux", append);

Please rename to linux.bootargs.dyn.bootentries like blspec.

These kernel parameters are assembled in alphabetical order and have the
same name both here and in blspec will make interaction with other
parameters less surprising.

> +	ret = bootm_boot(&data);

As mentioned for v1, this should be bootm_entry(), not bootm_boot().

> +	if (ret)
> +		pr_err("bootm failed: %s\n", strerror(-ret));

... %pe\n", ERR_PTR(ret));

Cheers,
Ahmad


-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



