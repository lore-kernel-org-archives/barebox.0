Delivery-date: Tue, 30 Jul 2024 11:06:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYioh-004Pcg-0P
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 11:06:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYiog-0001zd-H0
	for lore@pengutronix.de; Tue, 30 Jul 2024 11:06:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y+eZ5jtkBRSictKQw57d1h9L0IhLiCWzlffDYInRphg=; b=KVaM9G6Yh+1Qpc66XnPWMDRM8P
	R46UsHMP9mF+1MUq5iWQWULpyaw8S3rg6O8CuTkDNB6rHMYYaeLxaIb4V1hKH7Upvt32NIdSxq8ZL
	3lZynaVN/w+IVcDAMGlskkIh7cZABF0X67JGYaPE7uRGGp5yUcKGobM6ImS5abP+DKrPcjlxSmPhr
	Ln87BwhL36zxCnriwpsN9nLPOuFkwnvixrZLMgGTJ5qP+b0U+RtqQ3d0QUPY3wN64fFgsPZoZLaCH
	zTXPUF6Ema3H8mDvOzRoj6WLEo8OeWbLgLYM4ocYLju0U5E+9wHaBfg+Ebtah14RKSfBJI9kb1Qm4
	F1iOYFBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYioB-0000000ERPX-0ZZe;
	Tue, 30 Jul 2024 09:06:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYio0-0000000ERM6-0PF3
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 09:06:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sYiny-0001tA-Ew; Tue, 30 Jul 2024 11:06:02 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sYiny-003FX8-29; Tue, 30 Jul 2024 11:06:02 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sYinx-0095Cd-38;
	Tue, 30 Jul 2024 11:06:01 +0200
Date: Tue, 30 Jul 2024 11:06:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zqis-eFqEpUyebFo@pengutronix.de>
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
 <20240730071929.2016537-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240730071929.2016537-5-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_020604_156531_1B54838D 
X-CRM114-Status: GOOD (  20.34  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/10] mci: turn bool members into bitfield in struct mci
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jul 30, 2024 at 09:19:23AM +0200, Ahmad Fatoum wrote:
> In preparation for adding more boolean flags, turn the current two bools
> into two bits sharing the same u8-sized member.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/mci.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/include/mci.h b/include/mci.h
> index 773aed896c96..4f1ff9dc57c8 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -568,8 +568,8 @@ struct mci {
>  	unsigned csd[4];	/**< card's "card specific data register" */
>  	unsigned cid[4];	/**< card's "card identification register" */
>  	unsigned short rca;	/**< relative card address */
> -	bool sdio;              /**< card is a SDIO card */
> -	bool high_capacity;	/**< high capacity card is connected (OCR -> OCR_HCS) */
> +	u8 sdio:1;              /**< card is a SDIO card */
> +	u8 high_capacity:1;	/**< high capacity card is connected (OCR -> OCR_HCS) */

This doesn't seem to be necessary. They share the same byte in either
way. From a quick test:

struct foo {
	u16 a;
	bool b;
	bool c;
	u32 d;
};

struct bar {
	u16 a;
	u8 b:1;
	u8 c:1;
	u32 d;
};

printf("%d %d\n", sizeof(struct foo), sizeof(struct bar));

The result is 8 for both structs.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


