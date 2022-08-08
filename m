Delivery-date: Mon, 08 Aug 2022 16:23:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL3fQ-00GG1j-Ng
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 16:23:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL3fR-00025R-A4
	for lore@pengutronix.de; Mon, 08 Aug 2022 16:23:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3QABA2ZBGYWL+ByYRJzdVHMg+G0H3iwQX6GyCMwQPQI=; b=vKn4gQiOBzoLEZ7VpqaZ/bwKYe
	LX1zpWsxROYTDqFQDGgbsyeHNuVMiXQxgIVHiWUb21sU/AsCB1sEwlmAII9VKNG4rrLGTkm9fe7v7
	XZIESDNpyFZvwPI+ekAVKVjd7ZmXJa0iO+3AsuzeBbaUIPdSCEuIhCI+p2DstQR4AlEyOuCLdxcFB
	2XRFmc707yKfsxdKCwasmY32td79dMRNVjxuWmQeGPHGBFqN3rqQNLWrVu4sqNFmfARGT1yDMA/Ci
	9CyVOIjtXWX/aWcw9wvbKbVJg6tYxwcja8eVqq0+2v9lnbPlPXp2kgeMip5885DNCweOEJ9T4lbTi
	xfSHzBDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL3ds-00ELVl-EL; Mon, 08 Aug 2022 14:22:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL3dn-00ELRj-HT
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 14:22:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL3dd-0001xQ-JY; Mon, 08 Aug 2022 16:21:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL3dc-0007Ul-Be; Mon, 08 Aug 2022 16:21:48 +0200
Date: Mon, 8 Aug 2022 16:21:48 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Johannes Zink <j.zink@pengutronix.de>
Message-ID: <20220808142148.GV31528@pengutronix.de>
References: <20220718114824.2632364-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220718114824.2632364-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_072159_601777_3AE0413D 
X-CRM114-Status: GOOD (  23.16  )
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
Subject: Re: [PATCH master 1/2] regulator: handle regulator_get_voltage(NULL)
 gracefully
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 18, 2022 at 01:48:23PM +0200, Ahmad Fatoum wrote:
> Unlike recent versions of Linux, barebox represents the dummy regulator
> as a NULL pointer and regulator API is supposed to anticipate operation
> on a NULL pointer. When regulator_get_voltage was ported from Linux,
> this was not taken into consideration, which leads to
> regulator_get_voltage(NULL) crashing with a NULL pointer dereference.
> 
> Fix this by returning -EINVAL for dummy regulators. This aligns us with
> how Linux would behave in this situation.
> 
> Fixes: 6ee83ce08b24 ("regulator: add regulator_get_voltage() to API")
> Reported-by: Johannes Zink <j.zink@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/regulator/core.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index 1fb344656f38..472b26f3a0ac 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -574,9 +574,14 @@ EXPORT_SYMBOL_GPL(regulator_bulk_free);
>  
>  int regulator_get_voltage(struct regulator *regulator)
>  {
> -	struct regulator_dev *rdev = regulator->ri->rdev;
> +	struct regulator_dev *rdev;
>  	int sel, ret;
>  
> +	if (!regulator)
> +		return -EINVAL;
> +
> +	rdev = regulator->ri->rdev;
> +
>  	if (rdev->desc->ops->get_voltage_sel) {
>  		sel = rdev->desc->ops->get_voltage_sel(rdev);
>  		if (sel < 0)
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


