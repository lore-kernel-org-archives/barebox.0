Delivery-date: Fri, 17 Mar 2023 12:13:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pd81i-003qsn-Dr
	for lore@lore.pengutronix.de; Fri, 17 Mar 2023 12:13:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pd81i-0003v4-5n
	for lore@pengutronix.de; Fri, 17 Mar 2023 12:13:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5REYjpg0SlSlyJkC86giU+VBstIUyOAqUzj93C2NBJY=; b=el8vnUNJUtNXVlzzTRsChURqFF
	jfQN6r26+e3unwl0g6e8MMWbDH3ymluLyklUdNbADTWhgLglodaDURJ8NengVNKxIXtZH1sOvVBGt
	W36Y/odhNyAXtr3AD5i7ckPNOsGk3rkzNyB+KViGzycgJVAXckPr2HMoEE/RiN44uL1jsDhPjcJ4Q
	jLnB4Iunk1gWMKKW2HlOaT53Qo3L95z2w9n8CspygpJFpI+lZHv3tnPBjoZLtO9e1euq59JesMddB
	eaC6SjC39VSKrw72stRXElewfHqJjFnaPwNn7UdkDPxX+elqazcYFamGT0+HfGMPEXF8qVLEoJEai
	7BsZ4liw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pd80f-0020vZ-14;
	Fri, 17 Mar 2023 11:12:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pd80c-0020uY-0S
	for barebox@lists.infradead.org;
	Fri, 17 Mar 2023 11:12:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pd80a-0003p4-Sg; Fri, 17 Mar 2023 12:12:28 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pd80a-0001T3-Lg; Fri, 17 Mar 2023 12:12:28 +0100
Date: Fri, 17 Mar 2023 12:12:28 +0100
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230317111228.GA7446@pengutronix.de>
References: <20230316134131.4068293-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230316134131.4068293-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230317_041230_173991_32C1BA1F 
X-CRM114-Status: GOOD (  19.09  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] ARM: boards: protonic-imx6: fix board probe for LANMCU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 16, 2023 at 02:41:31PM +0100, Oleksij Rempel wrote:
> Present barebox version does not execute board probe code on LANMCU.
> Modify vendor prefix for proper functionality.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boards/protonic-imx6/board.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
> index d35d97209b..97d8bb87b2 100644
> --- a/arch/arm/boards/protonic-imx6/board.c
> +++ b/arch/arm/boards/protonic-imx6/board.c
> @@ -1262,7 +1262,7 @@ static const struct of_device_id prt_imx6_of_match[] = {
>  	{ .compatible = "kvg,vicut1", .data = &prt_imx6_cfg_vicut1 },
>  	{ .compatible = "kvg,vicut1q", .data = &prt_imx6_cfg_vicut1q },
>  	{ .compatible = "kvg,vicutp", .data = &prt_imx6_cfg_vicutp },
> -	{ .compatible = "lan,lanmcu", .data = &prt_imx6_cfg_lanmcu },
> +	{ .compatible = "vdl,lanmcu", .data = &prt_imx6_cfg_lanmcu },
>  	{ .compatible = "ply,plybas", .data = &prt_imx6_cfg_plybas },
>  	{ .compatible = "ply,plym2m", .data = &prt_imx6_cfg_plym2m },
>  	{ .compatible = "prt,prti6g", .data = &prt_imx6_cfg_prti6g },
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


