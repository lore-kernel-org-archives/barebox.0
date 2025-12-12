Delivery-date: Fri, 12 Dec 2025 10:21:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTzKy-00Acde-2M
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 10:21:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTzKy-0008JE-39
	for lore@pengutronix.de; Fri, 12 Dec 2025 10:21:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nHssc9PN1OqiRIMF2JzMu4hqMBk2sAYv2EHUTmAGDro=; b=o/eTHJSOODPfYMxxkXTA74duIx
	559jnTW8Sb0DykhpHRQVEMnx+TPak2fFH2ffHmMR5fXDynMV3UmI4ccStiw2VenY0jWiDdr7aMlkz
	kYxJKCOokm/iBGMMpvvRhRo+k9/bpZ2v/79zCwJu0S0ySrRifP63lOvN2wkHmMqOY+fXL53mK1KJb
	BYvK0sWZAwI2cwpfmQPNzBnaEA0ptFRlOWw1bITjVVghu4gRq3b7FkBZQbpH+5+mD+ZQ47rIf9b01
	Z/3F9F/EQqzJWIrND5sjVZWGkBNMTnvpdRyYEhYABxs+pqepczBVzrlQNzMdKTVeN3YuXTzZavkY+
	BiHhfAwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTzKV-00000000LJf-0Tyw;
	Fri, 12 Dec 2025 09:20:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTzKT-00000000LIp-0s7I
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 09:20:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTzKR-0008F1-HF; Fri, 12 Dec 2025 10:20:47 +0100
Message-ID: <f1518da9-b4cb-4730-a9fe-0aace7b33242@pengutronix.de>
Date: Fri, 12 Dec 2025 10:20:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20251212050824.1273837-1-chalianis1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251212050824.1273837-1-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_012049_249782_8DA9716A 
X-CRM114-Status: GOOD (  17.46  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/5] test: Containerfile: fix build issue related to
 apt cleanup.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 12/12/25 6:08 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> We cleanup the apt data after the second install group otherwise we
> we have to do an apt update.

This is by design as my understanding was that some tools save each RUN
command separately as layer into the container and so if we don't delete
it again in the same run, the final container will get bigger.

Having to do an extra apt update at start is thus an acceptable tradeoff.

Cheers,
Ahmad

> 
>  => ERROR [ 3/10] RUN apt-get install -y --no-install-recommends lsb-release gpg  &&
> wget https://apt.llvm.org/llvm.sh  && chmod +x llvm.sh && ./llvm.sh 20 -n trixie  0.3s
> ------
>  > [ 3/10] RUN apt-get install -y --no-install-recommends lsb-release gpg &&
> wget https://apt.llvm.org/llvm.sh    && chmod +x llvm.sh && ./llvm.sh 20 &&
> apt-get remove -y lsb-release gnupg &&
> apt-get autoremove -y --purge        && apt-get clean &&
> rm -rf llvm.sh /var/lib/apt/lists/*:
> 0.240 Reading package lists...
> 0.258 Building dependency tree...
> 0.261 Reading state information...
> 0.266 E: Unable to locate package lsb-release
> 0.266 E: Unable to locate package gpg
> ------
> 
>  1 warning found (use docker --debug to expand):
>  - MaintainerDeprecated: Maintainer instruction is deprecated in favor of using label (line 6)
> Containerfile:67
> --------------------
>   66 |
>   67 | >>> RUN apt-get install -y --no-install-recommends lsb-release gpg \
>   68 | >>>      && wget https://apt.llvm.org/llvm.sh \
>   69 | >>>      && chmod +x llvm.sh && ./llvm.sh ${LLVM_VERSION} -n trixie \
>   70 | >>>      && apt-get remove -y lsb-release gnupg \
>   71 | >>>      && apt-get autoremove -y --purge \
>   72 | >>>      && apt-get clean \
>   73 | >>>      && rm -rf llvm.sh /var/lib/apt/lists/*
>   74 |
> --------------------
> ERROR: failed to solve: process "/bin/sh -c apt-get install -y --no-install-recommends
> lsb-release gpg \t&& wget https://apt.llvm.org/llvm.sh \t&& chmod +x llvm.sh &&
> ./llvm.sh ${LLVM_VERSION} -n trixie \t&& apt-get remove -y lsb-release gnupg \t&&
> apt-get autoremove -y --purge \t&& apt-get clean \t&&
> rm -rf llvm.sh /var/lib/apt/lists/*" did not complete successfully: exit code: 100
> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  test/Containerfile | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/test/Containerfile b/test/Containerfile
> index c9e11b45985f..e322fed15727 100644
> --- a/test/Containerfile
> +++ b/test/Containerfile
> @@ -56,9 +56,7 @@ RUN apt-get update && apt-get upgrade && apt-get install -y --no-install-recomme
>  	device-tree-compiler \
>  	u-boot-tools \
>  	yamllint \
> -	yq \
> -	&& apt-get clean \
> -	&& rm -rf /var/lib/apt/lists/*
> +	yq
>  
>  ENV GCC_VERSION=15.2.0
>  ENV LLVM_VERSION=20
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



