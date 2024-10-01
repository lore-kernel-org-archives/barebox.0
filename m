Delivery-date: Tue, 01 Oct 2024 12:10:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svZpf-004vVA-2a
	for lore@lore.pengutronix.de;
	Tue, 01 Oct 2024 12:10:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svZpg-0005gU-8N
	for lore@pengutronix.de; Tue, 01 Oct 2024 12:10:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rh1d9v2E5XeA2xhquNhgJxsxQOfBhjw6IttxURPTDHw=; b=z8V5r0CoPkOo1vJ+L/dwKsx+9M
	ze8nTKg9eFsQ1KT1OmMW/F3j/2ZcVHLNHDG+44375BaVcHsN44tCkFFxVZeQWfyw3lunnI4WkJUxY
	aYqYda/Q9sA9glLiFQmUWpCEIU+U6qhbSHytw6akRTBWUATurkx+EjwI3KZ5HOEIg6SqnNEsyO5bg
	+YJCIOCbhYCpeMdLGFu7eq+KvWS6eqqpzGKABkcfHB3yrghBfyRR67SE21fD+5zDIApwKEVhhyOeE
	PYlbH5vcCZzQ5RbYIE4LccgSqOAdXCXdYU2cFdRtoY/4VklTrbjQtwpFtf4Ar5m85+28gj2zq8Pf1
	yTPhzxjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svZpE-00000002J6i-0wqr;
	Tue, 01 Oct 2024 10:09:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svZpB-00000002J4K-1eIL
	for barebox@lists.infradead.org;
	Tue, 01 Oct 2024 10:09:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1svZp8-0005OJ-4l; Tue, 01 Oct 2024 12:09:42 +0200
Message-ID: <35ea0112-3aa6-4c6e-a0f8-e143359df0b9@pengutronix.de>
Date: Tue, 1 Oct 2024 12:09:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: afa@pengutronix.de
References: <20241001095741.920605-1-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241001095741.920605-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_030945_485798_5060D850 
X-CRM114-Status: GOOD (  24.22  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: Fix erase_grp_size extraction for SD with csd_struct
 v0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 01.10.24 11:57, Sascha Hauer wrote:
> In mci_extract_erase_group_size() we test for (IS_SD() && csd_struct_v1)
> which means that for non csd_struct_v1 SD cards we fall into the MMC
> path and evaluate ext_csd. This doesn't exist for SD cards and the
> code crashes with a NULL pointer deref.
> 
> Fix this by always falling into the SD case for SD cards. Add the
> missing erase_grp_size extraction for csd_struct v0 cards. The code
> for that is taken from the corresponding Linux code.
> 
> Fixes: 91a11c7d50 ("mci: add support for discarding write blocks")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks for the fix,
Ahmad

> ---
>  drivers/mci/mci-core.c | 17 ++++++++++++++---
>  1 file changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index ec4a5c0749..48a3df9ec9 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1228,9 +1228,20 @@ static void mci_extract_erase_group_size(struct mci *mci)
>  		return;
>  
>  
> -	if (IS_SD(mci) && UNSTUFF_BITS(mci->csd, 126, 2) != 0) {
> -		/* For SD with csd_struct v1, erase group is always one sector */
> -		mci->erase_grp_size = 1;
> +	if (IS_SD(mci)) {
> +		if (UNSTUFF_BITS(mci->csd, 126, 2) == 0) {
> +			unsigned int write_blkbits = UNSTUFF_BITS(mci->csd, 22, 4);
> +
> +			if (UNSTUFF_BITS(mci->csd, 46, 1)) {
> +				mci->erase_grp_size = 1;
> +			} else if (write_blkbits >= 9) {
> +				mci->erase_grp_size = UNSTUFF_BITS(mci->csd, 39, 7) + 1;
> +				mci->erase_grp_size <<= write_blkbits - 9;
> +			}
> +		} else {
> +			/* For SD with csd_struct v1, erase group is always one sector */
> +			mci->erase_grp_size = 1;
> +		}
>  	} else {
>  		if (mci->ext_csd[EXT_CSD_ERASE_GROUP_DEF] & 0x01) {
>  			/* Read out group size from ext_csd */


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


