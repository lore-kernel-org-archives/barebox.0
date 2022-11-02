Delivery-date: Wed, 02 Nov 2022 12:21:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqBoI-00CGFV-FU
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 12:21:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqBoH-0005rR-9y
	for lore@pengutronix.de; Wed, 02 Nov 2022 12:21:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wiIDUqry5GuixbCrk7A7MtKSucnGkCvKDj2XSocwIr8=; b=eCSg9n0rSyG1rS3sFqdtQCUXLy
	45XL0oGnJof+HPPu4w6NpZBoEDtkbkZN35mmFEQQmoQEYvGeYflmuF7zCukdqukC/IThwzpp2DBdY
	q9cYhdvh4+Z0fG7A6xDXuI9tFgR1ITKFbySqoK4g5jK2udXb1HeDM+u1g1TeqSBAk1giDpznrbVc4
	lup0vFxd0zntaTSQxtG+GzLez9cPsuJVGVELwkG1Os89k9K/SMJDzC1W4brjtvnudSjH3TmdtcKgG
	oz0NyT2pgzCwOHYjT6tTvPAXVpKQwbwzj3n5eEfALFXfu7uk0apFldY9mKJGNCoNdtzWDOwAZPjdx
	HYHoQxmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqBn1-00Aitr-QN; Wed, 02 Nov 2022 11:20:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqBmx-00Aisc-8S
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 11:20:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqBmw-0005Nn-0h; Wed, 02 Nov 2022 12:20:06 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqBmv-00041U-PY; Wed, 02 Nov 2022 12:20:05 +0100
Date: Wed, 2 Nov 2022 12:20:05 +0100
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221102112005.GN3143@pengutronix.de>
References: <20221102100744.1949741-1-o.rempel@pengutronix.de>
 <20221102100744.1949741-4-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221102100744.1949741-4-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_042007_318161_718EB28C 
X-CRM114-Status: GOOD (  19.29  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 4/4] ARM: boards: skov-imx6: convert all pr_ to dev_
 prints
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Nov 02, 2022 at 11:07:44AM +0100, Oleksij Rempel wrote:
> Unify all printing messages and make use of dev_ instead of pr_.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boards/skov-imx6/board.c | 62 +++++++++++++++----------------
>  1 file changed, 31 insertions(+), 31 deletions(-)
> 
> diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
> index ab8b229a69..d23730221f 100644
> --- a/arch/arm/boards/skov-imx6/board.c
> +++ b/arch/arm/boards/skov-imx6/board.c
> @@ -33,21 +33,21 @@ static int eth_of_fixup_node(struct device_node *root, const char *node_path,
>  		unsigned char ethaddr_str[sizeof("xx:xx:xx:xx:xx:xx")];
>  
>  		ethaddr_to_string(ethaddr, ethaddr_str);
> -		pr_err("The mac-address %s is invalid.\n", ethaddr_str);
> +		dev_err(skov_priv->dev, "The mac-address %s is invalid.\n", ethaddr_str);

Ah, ok, here is that change. This patch should rather be before 3/4.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


