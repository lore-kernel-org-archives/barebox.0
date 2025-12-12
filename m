Delivery-date: Fri, 12 Dec 2025 15:04:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU3kb-00AgoO-1H
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 15:04:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU3ka-0004X1-Qw
	for lore@pengutronix.de; Fri, 12 Dec 2025 15:04:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gpurEEY6qAb4K9pUdLMkCIR7YSrzMPks3KmdUtrnDs4=; b=e/ETdquB+qgahU2xaPelTPh/Uh
	CMtHj0UoNHAjFaQA2u8t0ekqA0BoymGoTTKbva2++SkF7rvw5BYdZlLjfDK7W8pR0YSWjg3D7ruri
	X/GWO1tDd9CZlp2hJk1fdxzJzm6q3d3E7LOiO0cfNawmR4l2NuGBoMZ4hXtOGAWLrh4YowG/sI4a9
	D8dKI1SBFjRrvYICwP/TQbKp3oLVXyzjdsALgaYRT78Q4zam9O04dH0NxQiFuInzenVoGC3zOe/xk
	pUdIkpF9QjlKpgKyVAbKmbBKpE53N4hqRZF+vh/CAMSfdeu0xMAHf3t8vYIfN3xDCxl8IRJaCrVlQ
	sPHwWUkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU3k5-00000000bBG-3YDP;
	Fri, 12 Dec 2025 14:03:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU3k2-00000000bAu-3Bi1
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 14:03:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU3k0-0004Qo-Vu; Fri, 12 Dec 2025 15:03:29 +0100
Message-ID: <020ee3b7-04de-4930-b076-64bc3f616b47@pengutronix.de>
Date: Fri, 12 Dec 2025 15:03:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20251212050824.1273837-1-chalianis1@gmail.com>
 <20251212050824.1273837-2-chalianis1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251212050824.1273837-2-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_060330_800737_BB0A39E7 
X-CRM114-Status: GOOD (  13.90  )
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
Subject: Re: [PATCH v2 2/5] ci: container: update llvm to 21 and fix
 dependency issue.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 12/12/25 6:08 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> upgrade back to llvm 21 and specify distroname argument to llvm
> which prevents having packages conflicts.
> 
> Fixes: 305c0a1ed064 ("ci: container: downgrade LLVM to v20")
> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  test/Containerfile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/test/Containerfile b/test/Containerfile
> index e322fed15727..e4f84e67dafb 100644
> --- a/test/Containerfile
> +++ b/test/Containerfile
> @@ -59,11 +59,11 @@ RUN apt-get update && apt-get upgrade && apt-get install -y --no-install-recomme
>  	yq
>  
>  ENV GCC_VERSION=15.2.0
> -ENV LLVM_VERSION=20
> +ENV LLVM_VERSION=21
>  
>  RUN apt-get install -y --no-install-recommends lsb-release gnupg \
>  	&& wget https://apt.llvm.org/llvm.sh \
> -	&& chmod +x llvm.sh && ./llvm.sh ${LLVM_VERSION} \
> +	&& chmod +x llvm.sh && ./llvm.sh ${LLVM_VERSION} -n trixie \
>  	&& apt-get remove -y lsb-release gnupg \
>  	&& apt-get autoremove -y --purge \
>  	&& apt-get clean \
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



