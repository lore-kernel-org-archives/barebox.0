Delivery-date: Tue, 02 Nov 2021 09:08:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhoqN-0003ZS-QI
	for lore@lore.pengutronix.de; Tue, 02 Nov 2021 09:08:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhoqM-0001TT-SI
	for lore@pengutronix.de; Tue, 02 Nov 2021 09:08:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Tu52m9WHlXWMrSv4Z/kj/IqIF9EM49Pwn/fzHz6UeK0=; b=lqmrlliYAcXDN+sX3WqTI4cA6v
	bgB3uQanDalEASyETVd3Fv253CB2KmB6aZzjbjW42K3qXyM9mQu7qzVOXJTCXfSZ8wpGTsyozTR56
	LJnxXZw7zdmme4qjYXBwENWAohMTi31KDpzcWcfvhNibUt5dVpFGLUVIjvnV+tm8djcEQb3TrVfgX
	D+5jNeiA/jw82Q6BUjEgjd4Qh8qrKRZ2KJTJnywcqdT9QGLHBcBu9mPYf8UVmEjU7ARZNIWjgdh25
	QqTd3lSUJ7G+QOgDJ6AMCO5avYZh5pZuG+CP4AQsKeX4vjDgiwKUoUIY8saAk5V6NFp+UyUhHWVor
	ApjzoAdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhoor-000sB8-KX; Tue, 02 Nov 2021 08:06:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhoon-000sAQ-2I
 for barebox@lists.infradead.org; Tue, 02 Nov 2021 08:06:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhool-0001NO-Ff; Tue, 02 Nov 2021 09:06:51 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhool-0004Jw-41; Tue, 02 Nov 2021 09:06:51 +0100
Date: Tue, 2 Nov 2021 09:06:51 +0100
To: Philipp Zabel <pza@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org,
 Ian Abbott <abbotti@mev.co.uk>
Message-ID: <20211102080651.GY25698@pengutronix.de>
References: <20211101175207.2160779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211101175207.2160779-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:03:47 up 257 days, 11:27, 122 users,  load average: 0.51, 0.39,
 0.32
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211102_010653_134101_E9D9FA7D 
X-CRM114-Status: GOOD (  25.74  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] mci: dw_mmc: make reset control optional again
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 01, 2021 at 06:52:07PM +0100, Ahmad Fatoum wrote:
> As documented in 90bdf1e5d1e4 ("mci: dw_mmc: match against StarFive MMC
> compatibles"), it was intended for the reset to remain optional as to
> not break existing users. Unfortunately, my later a3cf324593ea
> ("mci: dw_mmc: add optional reset line") didn't heed that and made it
> required, breaking SoCFPGA DW-MMC use as a result.
> 
> Revert that line to fix the regression.
> 
> Fixes: a3cf324593ea ("mci: dw_mmc: add optional reset line")
> Reported-by: Ian Abbott <abbotti@mev.co.uk>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/dw_mmc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
> index b402090ab3cb..86c4f43e88f5 100644
> --- a/drivers/mci/dw_mmc.c
> +++ b/drivers/mci/dw_mmc.c
> @@ -572,7 +572,7 @@ static int dw_mmc_probe(struct device_d *dev)
>  
>  	rst = reset_control_get(dev, "reset");

Philipp, the reset binding lists the reset-names property as optional.
What's the expected behaviour of the reset_control_get() above when the
reset-names property is not present in the device tree? Should it return
an error or should it return the unnamed reset control?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

