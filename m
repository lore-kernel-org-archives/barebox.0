Delivery-date: Thu, 21 Sep 2023 10:03:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjEf5-005dgT-MY
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 10:03:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjEf3-00025H-Fc
	for lore@pengutronix.de; Thu, 21 Sep 2023 10:03:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SFpFwdOHG75Kaa0XF2PQJMeHcrvTYJv2rTFKkySxFK0=; b=ph16SFDBcFEKQDiRyIq8j3LQQ0
	cUmw367AP9iyYeuRX4Py3EY4B+VqdlZe/t+e7iNzKzIr5JISHvx8aUq+wdt+zTcb1RDJyIe8TVHDd
	fLNIb4yOuUSg+Py/VK1qO1raLa5UsOD9mID0qOEdunG1Gf1N6YRlblajBIT7xzkdAurbt24JCD8Ed
	yTg11Zkj8yUeTDh1iJFM6CjQQ8dt36zxJ8ha4ez0Zr7qWMvdA0nAZzLPWx4bPqKjhx/suzq7iIMXN
	ShcFoHcW5GWf7BtR8vH6KH6vU1bRL15d1MUr4AcXzdCHtr8t07AwHeUdv8VRTdc/2lNIMtCAvRJ96
	R4PlNoRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEe1-005RGJ-02;
	Thu, 21 Sep 2023 08:02:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEdx-005RFe-2F
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 08:02:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEdw-0001ab-Gi; Thu, 21 Sep 2023 10:02:36 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEdw-007sHf-4L; Thu, 21 Sep 2023 10:02:36 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEdw-00Af7y-1y; Thu, 21 Sep 2023 10:02:36 +0200
Date: Thu, 21 Sep 2023 10:02:36 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230921080236.GX637806@pengutronix.de>
References: <20230918170458.121957-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230918170458.121957-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_010237_730021_11B8E2EE 
X-CRM114-Status: GOOD (  22.70  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: have clk_get always return -ENOENT on missing clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 18, 2023 at 07:04:58PM +0200, Ahmad Fatoum wrote:
> Currently, clk_get(dev, NULL) returns -ENOENT on missing clock, but 
> clk_get(dev, "missing-named-clock") returns -EINVAL. This went by unnoticed
> so far as most consumers either require a clock or don't, but with the
> addition of clk_get_optional, it's important that clk_get() return value
> is uniform.
> 
> Therefore align clk_get with Linux and always fall through to clk_get_sys()
> if getting clock over DT is not possible. Failing clk_get_sys() returns
> -ENOENT always, ensuring we can't end up with -EINVAL as before while
> keeping of_clk_get_by_name return value as it is under Linux.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Please order before commit ("clk: implement clk_get_optional helper")
> currently 8b013ac8ec69 in next.
> ---
>  drivers/clk/clkdev.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
> index 68c6ac36a0c8..dbe998b6af35 100644
> --- a/drivers/clk/clkdev.c
> +++ b/drivers/clk/clkdev.c
> @@ -176,9 +176,9 @@ struct clk *clk_get(struct device *dev, const char *con_id)
>  	if (!IS_ERR(clk))
>  		return clk;
>  
> -	if (dev) {
> +	if (dev && dev->of_node) {
>  		clk = of_clk_get_by_name(dev->of_node, con_id);
> -		if (!IS_ERR(clk) || PTR_ERR(clk) != -ENOENT)
> +		if (!IS_ERR(clk) || PTR_ERR(clk) == -EPROBE_DEFER)
>  			return clk;
>  	}
>  
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


