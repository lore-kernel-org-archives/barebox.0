Delivery-date: Tue, 05 Mar 2024 07:57:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhOk8-009POA-22
	for lore@lore.pengutronix.de;
	Tue, 05 Mar 2024 07:57:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhOk8-0001f2-36
	for lore@pengutronix.de; Tue, 05 Mar 2024 07:57:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cdry4087H0kuSw6We1GRrFBsg3YYJ0srHLQUeVTk4Io=; b=H7B01aUdnNiMvpPnjctJP+mp4R
	Xm7Oo9G1psd9Ee8UtyGpcXXEugZkHCXSWkLQM0VaCHH1t4oQP0iCY2TVTa8p3qdxNp8T50Tr8P0q7
	c5OAgMibY2cP/2Tafksque+NOmk7k8gieHNLydpOf5BxeKPs/3/kkyOABMdS2eQ3Lp1q8f/uYuQf6
	wiEP+5vPhNBgb9T/9slVvGpmfmdszefQQrqd3td2BiMCvpENsIGGLSdVwbK0har1zz9mj2RYtIObs
	ls3ERTOQSv7up+YXBERue1/vazoc5caOvznKJUYY9KG7OMkUD5AheGFXhs8XUeHPTqZ9aAsvkrMSF
	X8YMtc5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhOjS-0000000CFNI-3xxt;
	Tue, 05 Mar 2024 06:56:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhOjP-0000000CFLZ-0YIW
	for barebox@lists.infradead.org;
	Tue, 05 Mar 2024 06:56:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhOjM-0001Ur-HK; Tue, 05 Mar 2024 07:56:52 +0100
Message-ID: <fbcea1a1-6aae-45bb-9194-53db55ff1c78@pengutronix.de>
Date: Tue, 5 Mar 2024 07:56:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20240305054024.519900-1-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240305054024.519900-1-antonynpavlov@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_225655_207360_32324F8D 
X-CRM114-Status: GOOD (  12.55  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] gitignore: ignore *.dtbo and *.dtbo.S
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 05.03.24 06:40, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  .gitignore | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/.gitignore b/.gitignore
> index f0afd899e1a..c9921d83ed1 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -38,6 +38,8 @@ binary.0
>  Module.symvers
>  *.dtb
>  *.dtb.*
> +*.dtbo
> +*.dtbo.S

There's also *.dtbo.o intermediary files, we probably want to use
a *.dtbo.* glob here, like the one we have above for *.dtb.*.

Thanks,
Ahmad

>  
>  #
>  # Top-level generic files

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



