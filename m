Delivery-date: Tue, 09 Aug 2022 07:26:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLHkw-00Gw3N-Qt
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 07:26:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLHkx-000893-Hw
	for lore@pengutronix.de; Tue, 09 Aug 2022 07:26:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JogmsPFDDuER1EyaA7Y8JsWAlf3z5Galq256lQKArO0=; b=jWh7SbzHeP7G+esfiytStQR16o
	OnIZRsO2NG7bxdYxSgNhYRgcIBLMYv9sKnJ641FmgtRRDExbHGxDLs5MoTdwsHevn8OvnmpnWyFSW
	vuLQv+eg8LkuO0QHubpt6CiTfFSKOjkzHIVxuImD5YIWHT8Ac8gwMowWh9/oxVV+Cucq10E8OuENT
	Mj5XKfH+/+GTfloArQmMS6kBTahcfjPuJRr5ueuJ//WbUWXYAtHE4cJ9+enaOG8ZzDewvTzcuLMYS
	luDGS9c2pW811OY3A7ayQU7uHsRKK4ht9vjIAHaoyunqDLMXaNxYjkFHbw18Au82yVT//AHWkq1H3
	WVYsfukw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLHjc-001WAv-MO; Tue, 09 Aug 2022 05:24:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLHjX-001W9Y-PS
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 05:24:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLHjW-0007iA-6Z; Tue, 09 Aug 2022 07:24:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLHjV-0004Uj-U4; Tue, 09 Aug 2022 07:24:49 +0200
Date: Tue, 9 Aug 2022 07:24:49 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220809052449.GB31528@pengutronix.de>
References: <20220724063920.1774718-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220724063920.1774718-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_222451_867828_4C028B3D 
X-CRM114-Status: GOOD (  23.94  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mci: add hint on how to resolve warning about vmmc-supply
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Jul 24, 2022 at 08:39:20AM +0200, Ahmad Fatoum wrote:
> For legacy reasons, we do not fail the MCI registration when a regulator
> can't be immediately requested, but we at least print a warning when
> this happens. Add a comment guiding the user into how to resolve the
> warning.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/mci-core.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index b8f71e15986e..8c08a4f61f63 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1941,6 +1941,16 @@ int mci_register(struct mci_host *host)
>  
>  	host->supply = regulator_get(hw_dev, "vmmc");
>  	if (IS_ERR(host->supply)) {
> +		/*
> +		 * If you know your regulator to be always online on boot, but
> +		 * can't easily add a barebox driver for it, you may use
> +		 * barebox,allow-dummy-supply in your board's regulator device
> +		 * tree node to side step this warning.
> +		 *
> +		 * If you run into this warning, because your regulator driver
> +		 * hasn't probed the device yet, consider enabling deep probe
> +		 * for your board, to probe dependencies on demand.
> +		 */
>  		dev_warn(hw_dev, "Failed to get 'vmmc' regulator (ignored).\n");
>  		host->supply = NULL;
>  	}
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


