Delivery-date: Tue, 05 Dec 2023 08:54:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQGB-003v73-0A
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 08:54:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQGB-0001Xv-22
	for lore@pengutronix.de; Tue, 05 Dec 2023 08:54:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rIAHN4RYssPgyuqOg82qv1k+FfgIuN3VKP9Vk5nKFxc=; b=w4RfnQpkddicew0gR7fRNqwAxb
	sufJjJD79exf1pw/vBPr2nJMKoUDoMMcI/6pHIjNYiiAMjM1wsdHnzMHt9t2ADK8QbAhw4qHKwnAE
	KIoVEE0hL1P6TBt08YC7Cy7v2WINizrWiozOxadCt0ojt+h8NkZHxIoHuzX/ZCbFsdOfQC1ZcUjyD
	uOyelItVQQHLAux9aim88JK0g7MOUAxfnzpY8I0+oGRjLfhFu4k+gURp2NSel3WGi6ATHd2xwSNEe
	YJcTkt7pK0SDf1qDViPfwBnLVHCq7fB8tuvHqSkwhsl3W9HyXxmUuPStYZAPKh4HM3a0EVfVBPVQt
	BBtxDYUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQEo-006YDC-05;
	Tue, 05 Dec 2023 07:53:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQEk-006YCW-1m
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 07:53:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQEj-0001Hk-7a; Tue, 05 Dec 2023 08:52:57 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQEi-00Dh3c-O0; Tue, 05 Dec 2023 08:52:56 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQEi-005Lma-Lc; Tue, 05 Dec 2023 08:52:56 +0100
Date: Tue, 5 Dec 2023 08:52:56 +0100
To: Yann Sionneau <ysionneau@kalrayinc.com>
Cc: barebox@lists.infradead.org
Message-ID: <20231205075256.GJ1057032@pengutronix.de>
References: <20231129082956.30622-1-ysionneau@kalrayinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231129082956.30622-1-ysionneau@kalrayinc.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_235258_589442_E569E6ED 
X-CRM114-Status: GOOD (  27.40  )
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
Subject: Re: [PATCH] mci: set RCA to 2 according to eMMC specification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 29, 2023 at 09:29:56AM +0100, Yann Sionneau wrote:
> According to eMMC Protocol Specification JESD84-B51 Section 7.5
> 
> ```
> The writable 16-bit relative Device address (RCA) register carries the Device
> address assigned by the host during the Device identification. This address is
> used for the addressed host-Device communication after the Device identification
> procedure. The default value of the RCA register is 0x0001. The value 0x0000 is
> reserved to set all Devices into the Stand-by State with CMD7.
> ```
> 
> So definetely 0 does not seem to be a good value.
> Second, the specification says in
> A.6 High-speed e•MMC bus functions / A.6.1 Bus initialization:
> 
> ```
> 17. Send CMD3 with a chosen RCA, with value greater than 1
> ```
> 
> And third, I used a VIP (Verification IP) and plugged it to a simulated host
> controller chip running Barebox and it said:
> 
> ```
> MGC_EMMC: EMMC_SET_RELATIVE_ADDR_INCORR:152 - Set relative addr should be
> greater than 1. address given is = 16'h0001
> Refer to the eMMC Protocol Specification JESD84-B51 Section 7.5
> ```
> 
> Note that with an RCA value of 0 or 1, the VIP would print the same error message.
> 
> Set RCA to 2 instead of 0 for eMMC/MMC case.
> 
> Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
> ---
>  drivers/mci/mci-core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 6d0d647377..b9a8580927 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -450,7 +450,7 @@ static int mmc_send_op_cond(struct mci *mci)
>  	mci->ocr = cmd.response[0];
>  
>  	mci->high_capacity = ((mci->ocr & OCR_HCS) == OCR_HCS);
> -	mci->rca = 0;
> +	mci->rca = 2;
>  
>  	return 0;
>  }
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


