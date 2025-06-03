Delivery-date: Tue, 03 Jun 2025 13:00:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMPNz-003HZt-32
	for lore@lore.pengutronix.de;
	Tue, 03 Jun 2025 13:00:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMPNz-0007MV-CM
	for lore@pengutronix.de; Tue, 03 Jun 2025 13:00:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=igZpwPq4v3eO3du/u/Vg4n62ngRu8ar4QHV1ZU9nARg=; b=MrDUisEnNH9EhBNI05MXIRj9sX
	brxqPbQcIRt2TrKqVTijVWjfqCrBxEPF+N0cxouci1kvOjINaStcd1v2Ph2v6jgyIGGllQ8v9uc5n
	F/w0jWI7HVDYO3SIznh5t7L0AGnNgfJSvRZHmyKMTeiFZ6a7iDIK36RGTmB9f+QYfBRL5skal4CXu
	vdVcP0xL5KZPSi0Q+Xr/qtkkwHeTUtiSFyu20D2dtLbaoDjkMbij1DVS0BrXkyuc7fMNn9VwPUJEi
	cH7bjg4s258z7Uk10gNR+VaL4laHFwFZ/Z40JawLcK7ovgzpowGm6mGoe3HGafVSc60xmonzslDIE
	TNBwqeZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMPNM-0000000AjiO-331E;
	Tue, 03 Jun 2025 11:00:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMPNI-0000000Ajhh-23nE
	for barebox@lists.infradead.org;
	Tue, 03 Jun 2025 11:00:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uMPNH-0006uB-C2; Tue, 03 Jun 2025 13:00:07 +0200
Message-ID: <e173690a-c1df-4103-b0ea-9294eb348220@pengutronix.de>
Date: Tue, 3 Jun 2025 13:00:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
Cc: Fabian Pflug <fpg@pengutronix.de>
References: <20250603105914.3068724-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250603105914.3068724-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_040008_542136_ED3A8E04 
X-CRM114-Status: GOOD (  22.15  )
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
Subject: Re: [PATCH] common: optee: improve documentation of options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 6/3/25 12:59, Ahmad Fatoum wrote:
> CONFIG_OPTEE_SIZE and CONFIG_OPTEE_SHM_SIZE have a correspondence to OP-TEE
> build config options, so point that out in the help text.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

v1 -> v2:
  - fix confusion about CFG_SHMEM_SIZE erroneously not being part of
    CONFIG_OPTEE_SIZE

> Cc: Fabian Pflug <fpg@pengutronix.de>
> ---
>  common/Kconfig | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index fe50da8f3084..987148847eac 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1304,9 +1304,11 @@ config OPTEE_SIZE
>  	prompt "OP-TEE Memory Size"
>  	depends on HAVE_OPTEE
>  	help
> -	  Size to reserve in main memory for OP-TEE.
> +	  Size to reserve in main memory for OP-TEE, including its shared memory.
>  	  Can be larger than the actual size used by OP-TEE, this is used to prevent
>  	  barebox from using or speculating into this area.
> +	  On i.MX, this should be at least OP-TEE CFG_TZDRAM + CFG_SHMEM_SIZE.
> +	  The name of the CFG_ options may differ on other platforms.
>  
>  config OPTEE_SHM_SIZE
>  	hex
> @@ -1315,7 +1317,11 @@ config OPTEE_SHM_SIZE
>  	depends on HAVE_OPTEE
>  	help
>  	  Size to reserve in main memory for static OP-TEE shared memory
> -	  communication. Can be used for fixing up the OP-TEE OF node.
> +	  communication. The OP-TEE shared memory starts directly after
> +	  the OPTEE TZDRAM region. It should be chosen to be equivalent
> +	  to CFG_SHMEM_SIZE in OP-TEE.
> +
> +	  This value can be used for fixing up the OP-TEE OF node.
>  
>  	  A shared memory size of 0 means that only dynamic shared memory
>  	  will be supported for communication with OP-TEE. This is the only

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



