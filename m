Delivery-date: Fri, 28 Jul 2023 08:10:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qPGgO-00D7x0-5l
	for lore@lore.pengutronix.de; Fri, 28 Jul 2023 08:10:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qPGgL-0002qz-At
	for lore@pengutronix.de; Fri, 28 Jul 2023 08:10:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RYnFhadOMJBK2EtDwnqiBg97+IaZf5pXYc0PYW0hdw0=; b=42bYUwW0phYepR03B6wmCUERAK
	hIvc1oNQqZfbFE/AKqtGi9aGWNOwytQ/TsfjjhPRIkBZZ0pWd0qAR/I2Sq5sPcUZDrRNFr6kjX43w
	ReKwRpZ0prAeCdQxN9t+bJS7zj0r/ZZIXd/plOV+HVlm4UIKxpLwZoUXc+EJ0/v2gRXrdTeWJxm93
	WGky3yVSmClLyxnrsUaUZba9gX0eLDWGnpADrS7tyPPL9cT+CknBREn357FpOuJx7h0eBxDp3otT9
	hhZ1MBH0yPz7j+sluxb2ehQ+viP7bxHRILEfCN6VQ09jaggnZ3dYR3Ao56/UEkzuj0JMJiLaUZQBh
	U4RBL/hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPGfF-001r5a-1n;
	Fri, 28 Jul 2023 06:09:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPGfC-001r4L-2I
	for barebox@lists.infradead.org;
	Fri, 28 Jul 2023 06:09:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qPGfA-0002Yi-Ql; Fri, 28 Jul 2023 08:09:20 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qPGfA-00040D-IQ; Fri, 28 Jul 2023 08:09:20 +0200
Date: Fri, 28 Jul 2023 08:09:20 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230728060920.GD18491@pengutronix.de>
References: <20230726192718.911735-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230726192718.911735-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230727_230922_751238_6512CA24 
X-CRM114-Status: GOOD (  20.98  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] commands: hab: check for error in
 imx_hab_device_locked_down
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jul 26, 2023 at 09:27:15PM +0200, Ahmad Fatoum wrote:
> imx_hab_device_locked_down() reads efuses and that operation can fail.
> Instead of assuming a failure means the efuses are non-zero, have the
> hab command explicitly check for negative error codes.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/hab.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/hab.c b/commands/hab.c
> index 97a1701fa551..8ae943a4c880 100644
> --- a/commands/hab.c
> +++ b/commands/hab.c
> @@ -58,7 +58,13 @@ static int do_hab(int argc, char *argv[])
>  			printf("%02x", srk[i]);
>  		printf("\n");
>  
> -		if (imx_hab_device_locked_down())
> +		ret = imx_hab_device_locked_down();
> +		if (ret < 0) {
> +			printf("failed to determine lockdown mode: '%pe'\n", ERR_PTR(ret));
> +			return ret;
> +		}
> +
> +		if (ret)
>  			printf("secure mode\n");
>  		else
>  			printf("devel mode\n");
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


