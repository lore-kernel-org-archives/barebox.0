Delivery-date: Tue, 05 Dec 2023 08:54:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQGU-003v8J-1x
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 08:54:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQGU-0001c7-LG
	for lore@pengutronix.de; Tue, 05 Dec 2023 08:54:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7ui9I+buUHN4ZaMaVnDB2xthfwRrD4FaEtlO5yTw5iI=; b=PNIc1e0U8dt/koWMD0CMlBwPJC
	q/GbDySA2Aixjmjzn2yVwg7M/w2OOh51KKJA8rtOzCb9Y3wsBnHS7nqbiwZxTz0G9JiNl+VWxDoQH
	PMm43VYvFafLi9OhVNibJBFXcDCRij+okbPXJ00z4HNKlIK+im1xqRNZDI2Ay69jqJN1aQpHyvYeV
	ST1ji6zVImUOwJw1lp3/SI5eFGWwbPilXuWsLU3W7KHTxSpUIFdLSQlyvAHjH70+m995M0eAxNhnC
	ucPB5kYiUPos6cvXhJy+Yh10QLsnU+8HEC1GU2ONHdQ5rlgLdJ+SKnP1aMupUhbbU4nuJ/GPeajum
	WoCB6dWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQFM-006YIY-0B;
	Tue, 05 Dec 2023 07:53:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQFD-006YHm-35
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 07:53:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQFC-0001MC-Q1; Tue, 05 Dec 2023 08:53:26 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQFC-00Dh3j-Dl; Tue, 05 Dec 2023 08:53:26 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQFC-005Lms-BT; Tue, 05 Dec 2023 08:53:26 +0100
Date: Tue, 5 Dec 2023 08:53:26 +0100
To: Yann Sionneau <ysionneau@kalrayinc.com>
Cc: barebox@lists.infradead.org
Message-ID: <20231205075326.GK1057032@pengutronix.de>
References: <20231129094149.17290-1-ysionneau@kalrayinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231129094149.17290-1-ysionneau@kalrayinc.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_235327_998359_7CC3C7F2 
X-CRM114-Status: GOOD (  18.58  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mci: eMMC responds to CMD12 with R1 in case of read
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 29, 2023 at 10:41:49AM +0100, Yann Sionneau wrote:
> eMMC specification JESD84-B51 states page 126
> table 49 — Basic commands (class 0 and class 1) that
> CMD12 (STOP_TRANSMISSION) response is R1 for read cases
> and R1b for write cases.
> 
> Fix wrong reponse type in eMMC read cases.
> 
> Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
> ---
>  drivers/mci/mci-core.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 07eca96a9d..f34023f580 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -298,7 +298,8 @@ static int mci_read_block(struct mci *mci, void *dst, int blocknum,
>  	ret = mci_send_cmd(mci, &cmd, &data);
>  
>  	if (ret || blocks > 1) {
> -		mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0, MMC_RSP_R1b);
> +		mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0,
> +			      IS_SD(mci) ? MMC_RSP_R1b : MMC_RSP_R1);
>  		mci_send_cmd(mci, &cmd, NULL);
>  	}
>  	return ret;
> -- 
> 2.42.0
> 
> 
> 
> 
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


