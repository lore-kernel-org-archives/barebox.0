Delivery-date: Fri, 04 Aug 2023 10:34:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRqGg-006xDC-0N
	for lore@lore.pengutronix.de; Fri, 04 Aug 2023 10:34:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRqGe-0000qE-4N
	for lore@pengutronix.de; Fri, 04 Aug 2023 10:34:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sCj9mLxFaUi432cvV/hSrK3GIvxYyFB+t8VtfDy7lqg=; b=s7tnqcxw1XjJN5KgPfhTkyIUZE
	+u2JNY+WG33XqYbf+q4C6FT4wyQpptmzAbkOUwykPOkOOmJ86XbAqZ4aOEIKs8bIEREahzvbwRvJK
	5b44ZB6/bK7BOj+o3H8tA/S/vBJv21PMZCjTdzIItHx8PUG7ukbtX1xgQC31xKdxpnhHWclDf4AXF
	8Eb4N/O26mLTBr41tLrsTretDiYVCBIUy90m68C1bbA5tqnPCdXgP606WEjT4MCRGoBMFm/oRELKU
	Wg7a5BV0R1tS2OpxygK5ptNLPV+PGtfXSt0MarlzrWtbCK6MeAkhGaP3Bi3bSiXHYbYGg9Vf2bgXS
	itjLKxgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRqFZ-00BtjH-02;
	Fri, 04 Aug 2023 08:33:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRqFU-00BtiC-0E
	for barebox@lists.infradead.org;
	Fri, 04 Aug 2023 08:33:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRqFS-0000bE-Ra; Fri, 04 Aug 2023 10:33:26 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRqFS-0000br-Jj; Fri, 04 Aug 2023 10:33:26 +0200
Date: Fri, 4 Aug 2023 10:33:26 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230804083326.GE26314@pengutronix.de>
References: <20230803133935.90026-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230803133935.90026-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230804_013328_104173_A16535AC 
X-CRM114-Status: GOOD (  17.71  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RESEND] mfd: rk808: Add missing RK809 chip ID to poweroff
 handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Aug 03, 2023 at 04:39:35PM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/mfd/rk808.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index 738ba305ac..1361bb7101 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -224,6 +224,7 @@ static void rk808_poweroff(struct poweroff_handler *handler)
>  		reg = RK808_DEVCTRL_REG,
>  		bit = DEV_OFF_RST;
>  		break;
> +	case RK809_ID:
>  	case RK817_ID:
>  		reg = RK817_SYS_CFG(3);
>  		bit = DEV_OFF;
> -- 
> 2.38.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


