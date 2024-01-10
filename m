Delivery-date: Wed, 10 Jan 2024 16:19:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNaMl-00BlrX-2o
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 16:19:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNaMl-0002lv-8r
	for lore@pengutronix.de; Wed, 10 Jan 2024 16:19:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2+EDfXG3PdHNFbTWjn2KKdg+xxcAFMAw/FNe+SoFFf8=; b=YlVcvLTNiHb+asqT+gtk80sly5
	ZY1fUVkYcDnlkLZE6274L9ypz7953ngPEXMZQcHlDWLKE3lFukHqAAGbBh5A+17dCM1FPuXvyO046
	2j0xNhl685VUi4hDHsSuMm+MtUeN7M+cnGkWiLcMKt7zsp9RkbZbZJrK9GGojffMc5lUpCjuroFU7
	/LPO7ILcAl3fotYjsRMaPMTWsXHKXw19+jQJZ08PzvlUELHwETBBsQvPRqPYfitlh7tJBZg/jAOel
	Ha6iiQXb0/V3gdHuzD3F3ZMFFZFmjtesNry0GhWx9LE2MKfLUMxq491/xMHLPgGTMFFVH4RABI7f/
	0Xwh8kUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNaLO-00CXxK-1x;
	Wed, 10 Jan 2024 15:18:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNaLL-00CXvm-26
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 15:18:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNaLH-0002SP-Ba; Wed, 10 Jan 2024 16:18:07 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNaLG-001jOq-V5; Wed, 10 Jan 2024 16:18:06 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNaLG-00BEAv-S9; Wed, 10 Jan 2024 16:18:06 +0100
Date: Wed, 10 Jan 2024 16:18:06 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240110151806.GS1318922@pengutronix.de>
References: <20240110143958.3773360-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240110143958.3773360-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_071811_710077_60F73F07 
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH RFC] bootm: support printing bootm parameters determined
 at runtime to file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 10, 2024 at 03:39:58PM +0100, Ahmad Fatoum wrote:
> The barebox bootm command is often not called directly, but via
> bootloader spec or FIT image boot handlers. For debugging, it can be
> useful to reuse those boot handlers, but replace single artifacts, e.g.
> using the barebox device tree instead of the bootloader-spec provided
> device tree.
> 
> To make this easier, have boot -v -d (verbose + dry run) write a boot
> script that reproduces the cancelled boot to /env/boot/cancelled.

I like the idea very much. I also had this problem more than once.

I think an explicit option rather than "-v -d" would be better. With
this there would be a natural way to document this behaviour in the
boot help output.

/env/boot/cancelled would be saved in the environment with a saveenv
which is likely not desirable. Maybe better put it somewhere in /tmp/?

> +	dprintf(fd, "global.bootm.verify=%s\n", verify);
> +
> +	dprintf(fd, "\n");
> +
> +	if (data->os_address != UIMAGE_SOME_ADDRESS)
> +		dprintf(fd, "global.bootm.image.loadaddr=0x%08lx\n", data->os_address);
> +	if (data->os_file)
> +		dprintf(fd, "global.bootm.image='%s'\n", data->os_file);
> +	if (data->oftree_file)
> +		dprintf(fd, "global.bootm.oftree='%s'\n", data->oftree_file);
> +#ifdef CONFIG_BOOTM_INITRD
> +	if (data->initrd_file)
> +		dprintf(fd, "global.bootm.initrd='%s'\n", data->initrd_file);
> +
> +	if (data->initrd_address != UIMAGE_INVALID_ADDRESS)
> +		dprintf(fd, "global.bootm.initrd.loadaddr=0x%08lx\n", data->initrd_address);
> +#endif
> +	if (data->tee_file)
> +		dprintf(fd, "global.bootm.tee_file='%s'\n", data->tee_file);
> +
> +	dprintf(fd, "\n");
> +
> +	bootargs = linux_bootargs_get();
> +	if (bootargs)
> +		dprintf(fd, "global linux.bootargs.dyn.concatenated='%s'\n", bootargs);

This will contain all of linux.bootargs.* which are then added again
when we actually boot the script, so we end up having many bootargs
twice. This is not very nice, I don't know though how/if we can improve
that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


