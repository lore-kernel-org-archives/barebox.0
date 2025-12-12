Delivery-date: Fri, 12 Dec 2025 15:04:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU3kn-00Agoz-2m
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 15:04:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU3kn-0004a0-A5
	for lore@pengutronix.de; Fri, 12 Dec 2025 15:04:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XK/tZD5R/e2B1id03xZxJNQgMeP4kfYIXDQvQ4Yl664=; b=JH9V49KBNfZF0zq2TaeNtzyk5z
	Ah5qSYh6w8h1emuSA3gY9U6YUvSsQixZc4YiNrcY6Z/n09ABqF1Ub6V2iovkX++7LtsyRvUJEavpK
	pvZ8sRxOAwcm5xSIO6CiCEtA/p1G82e0VHNHpjVj3nJgUb9/hamidXcUfCCyrKvVg2p5HAOyrozDG
	xTsSYE49+OYZA6dGNkSqU9wkDmNj6MzCF1/o9lA2gZ0TF4FlpQT1cr9un2fW1ln9AVid0QJvyuYv1
	bUGRqYr//NU1eBFDwLfzlvnFF7fCXMKTxc4osCXEQu6/wLzDgrjOprr/rSmiOBUfZAND8wCZUBJMP
	D6d+YPVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU3kO-00000000bDI-0aEL;
	Fri, 12 Dec 2025 14:03:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU3kL-00000000bCV-2dmo
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 14:03:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU3kK-0004T5-0t; Fri, 12 Dec 2025 15:03:48 +0100
Message-ID: <ea79277f-9fb6-47e7-88a1-2ccfae223052@pengutronix.de>
Date: Fri, 12 Dec 2025 15:03:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20251212050824.1273837-1-chalianis1@gmail.com>
 <20251212050824.1273837-3-chalianis1@gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251212050824.1273837-3-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_060349_674006_99996387 
X-CRM114-Status: GOOD (  12.85  )
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
Subject: Re: [PATCH v2 3/5] test: container: add qemu-efi-aarch64.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 12/12/25 6:08 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> Needed to have ovmf uefi firmwares used for efi armv8 payload test.
> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  test/Containerfile | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/test/Containerfile b/test/Containerfile
> index e4f84e67dafb..d248b3e23924 100644
> --- a/test/Containerfile
> +++ b/test/Containerfile
> @@ -41,6 +41,7 @@ RUN apt-get update && apt-get upgrade && apt-get install -y --no-install-recomme
>  	qemu-system-mips \
>  	qemu-system-x86 \
>  	qemu-system-common \
> +	qemu-efi-aarch64 \
>  	ovmf \
>  	python3 \
>  	python3-crcmod \
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



