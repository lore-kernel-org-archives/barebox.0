Delivery-date: Fri, 13 Jun 2025 13:31:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ2cg-006qdN-0H
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 13:31:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ2cf-0003i1-Hh
	for lore@pengutronix.de; Fri, 13 Jun 2025 13:31:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nIcv58H0dJ26RXdIi3jPq3NwnzM5b+eDvPUabhOrEx4=; b=Ighcydb2qu1CS7T0p3Hg2pvBbb
	gzaBBDD9lZZr2MWadjDkktWRgjGh6YSHJHeJb881ZlReRVOwG7JVUVnsa1xwwuR4/whZGzfCgme8j
	QY13AbcGiWn0d0LeSOIhvMaTVMIxaxucIkq4EST4Ag/8Flbr1WHYAxXYPkDdlQzwrFvKdhw+fwLcE
	u/V5gNshKex+Sn851AmKYMFW6myovYdj2RLOWKhR45pywBHDq415tTeZ942hnHAZAsb/SqitNLB5O
	D+Oof+OTPwqeYFc96iFUDo/bGk5Y6Z2vGLKILUpu3o5iFv2i6FVzSJ5QRBXdzLSbG786TQkzcSTz1
	XCYTGDtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ2cM-0000000GAb9-4Brb;
	Fri, 13 Jun 2025 11:30:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0Vz-0000000FtSM-3qqT
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 09:16:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uQ0Vx-0006zz-98; Fri, 13 Jun 2025 11:15:57 +0200
Message-ID: <8f53bf93-2b44-40f9-bb71-8a45d0528167@pengutronix.de>
Date: Fri, 13 Jun 2025 11:15:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
 <20250613-arm-mmu-xn-ro-v1-1-60f05c6e7b4b@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250613-arm-mmu-xn-ro-v1-1-60f05c6e7b4b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_021559_962379_3C1436F1 
X-CRM114-Status: GOOD (  13.77  )
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
Subject: Re: [PATCH 1/7] memory: request RO data section as separate region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 6/13/25 09:58, Sascha Hauer wrote:
> Map the RO data section as separate region so that it becomes visible in
> the iomem output.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/memory.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/common/memory.c b/common/memory.c
> index a5b081be2c709f04667a67fbd2110520ab4973e3..708bfd26a0fc3d295d09632fb92e89f474bb7422 100644
> --- a/common/memory.c
> +++ b/common/memory.c
> @@ -103,8 +103,12 @@ static int mem_malloc_resource(void)
>  			malloc_end - malloc_start + 1);
>  	request_barebox_region("barebox code",
>  			(unsigned long)&_stext,
> -			(unsigned long)&_etext -
> +			(unsigned long)&__start_rodata -
>  			(unsigned long)&_stext);
> +	request_barebox_region("barebox RO data",
> +			(unsigned long)&__start_rodata,
> +			(unsigned long)&__end_rodata -
> +			(unsigned long)&__start_rodata);
>  	request_barebox_region("barebox data",
>  			(unsigned long)&_sdata,
>  			(unsigned long)&_edata -
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



