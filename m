Delivery-date: Wed, 24 Jan 2024 14:57:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSdl6-00GHJM-2b
	for lore@lore.pengutronix.de;
	Wed, 24 Jan 2024 14:57:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSdl7-00078C-HV
	for lore@pengutronix.de; Wed, 24 Jan 2024 14:57:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sdCYESHxWT/3E/dRRsKy7QmWAY5c50k/967Gn1sLtDo=; b=dNu1zGmnwQ2LPYOJFlqJhnKn16
	df7jfvPUgeCIRaYFguVvtWiuKGQGw34xHp2pnRtUSJ8C9mnhDkhd7Zk3p9dpXPgZ7oGNjGHIKL1Bd
	Ih7w6U42DX5adisFNbD/xnqPa+oWQFwVB6+h8vG42mImgj1T1O7N6JuTb/z4wYgMnlzVt7pIg/z9k
	Gy2KCaFlZsyTCp3dLxjZWhityAwwESSaFDkUpzJQ13LmqFiqgmKTUFz0f96qEYTY5KJPDLb18xbKg
	DUHGtmnOoKkPYZmbA3JZ2IaU0PzPgjg0J4azeuNKkRFi5b9WvCyuI9s3nrFYSVF06HxCX/wi9djPQ
	wJNTK5Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSdk7-003YMc-28;
	Wed, 24 Jan 2024 13:56:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSdk3-003YLH-1s
	for barebox@lists.infradead.org;
	Wed, 24 Jan 2024 13:56:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rSdk2-00073o-72; Wed, 24 Jan 2024 14:56:34 +0100
Message-ID: <12b6b0e6-25c6-4a63-ab0d-2cf1f8de23bd@pengutronix.de>
Date: Wed, 24 Jan 2024 14:56:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20240124134738.133782-1-m.felsch@pengutronix.de>
 <20240124134738.133782-4-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240124134738.133782-4-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_055635_815884_28A9F080 
X-CRM114-Status: GOOD (  15.55  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] uncompress: add detected file type debug print
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24.01.24 14:47, Marco Felsch wrote:
> This can be useful for developers.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  lib/uncompress.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/lib/uncompress.c b/lib/uncompress.c
> index e7a3ffde823e..48e8173501c6 100644
> --- a/lib/uncompress.c
> +++ b/lib/uncompress.c
> @@ -97,6 +97,8 @@ int uncompress(unsigned char *inbuf, int len,
>  		ft = file_detect_type(uncompress_buf, 32);
>  	}
>  
> +	pr_debug("Filetype detected: %s\n", file_type_to_string(ft));

Not that I mind, but do you know about the filetype command?

> +
>  	switch (ft) {
>  #ifdef CONFIG_BZLIB
>  	case filetype_bzip2:

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



