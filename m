Delivery-date: Mon, 05 Jan 2026 13:12:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcjRj-001W0D-2r
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 13:12:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcjRj-0003nR-9y
	for lore@pengutronix.de; Mon, 05 Jan 2026 13:12:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ryt5zkUAsloZUaOTbs8hdikWiCLXhts409Po2BJ/HIo=; b=2UdCliQqgksAcxRVVRcmvZBw7Q
	f54b7UjapCYkt2hjs43F8vPV7Po5kIvsYFjNNnJq2xAbpDHZX0D5ABjoqeHs55mJ89VcpzxpSzDEe
	WXOsHzg9IwcgbOVuGcSppIp4bwJudR+5SQ1cFqPJfAB4Vq+Uy1XoaKhlmiamN5wAWKwzVg1TXQ2zT
	qsBmgU8ilw3ioxPKn+pokRWO0EZyUbMdAlJ1IcslESVfxYmx8Gf/liYR93CxO2fb7Y54Y3Zx/zJa9
	9oTqVI9fABt+b2EimbWLX3GJgSBvcKokkCQi7yuG3EarFyfr5QRTLCRczp9g5h3ftvpn7R5Oi4d9k
	1NeYA6gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcjRH-0000000BFse-1Smk;
	Mon, 05 Jan 2026 12:11:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcjRE-0000000BFsB-0xkM
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 12:11:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcjRC-0003fU-IG; Mon, 05 Jan 2026 13:11:54 +0100
Message-ID: <44ff845e-8a6a-4c38-8e7d-ec1504f9914b@pengutronix.de>
Date: Mon, 5 Jan 2026 13:11:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-9-e97853f98232@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-9-e97853f98232@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_041156_270237_95305533 
X-CRM114-Status: GOOD (  17.99  )
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
Subject: Re: [PATCH 09/19] PBL: allow to link ELF image into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 1/5/26 12:26 PM, Sascha Hauer wrote:
> Some architectures want to link the barebox proper ELF image into the
> PBL. Allow that and provide a Kconfig option to select the ELF image.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  images/Makefile | 18 ++++++++++++++++--
>  images/piggy.S  |  4 ++++
>  pbl/Kconfig     |  8 ++++++++
>  3 files changed, 28 insertions(+), 2 deletions(-)
> 
> diff --git a/images/Makefile b/images/Makefile
> index 448479ee8cf355a771ce63314ce64a631544f488..8d4fd1504ab64d4f4d1cc19f2b36cff9939964e3 100644
> --- a/images/Makefile
> +++ b/images/Makefile
> @@ -138,7 +138,13 @@ $(obj)/%.itb: $(obj)/%.its FORCE
>  $(obj)/%.fit: $(obj)/$$(FILE_$$(@F)) $(dtstree)/dtbs-list FORCE
>  	$(call if_changed,fit)
>  
> -$(obj)/piggy.o: $(obj)/barebox.z FORCE
> +ifeq ($(CONFIG_PBL_IMAGE_ELF),)
> +PIGGY_IMAGE := $(obj)/barebox.z
> +else
> +PIGGY_IMAGE := $(obj)/barebox.elf.z
> +endif

Heh, in my attempt, I had an elfcompress host tool that compressed every
segment separately and then the PBL decompressed every segment on its
own directly to the load address.

Having things laid out properly from the get go is certainly neater.
Why not call it barebox.z still though and change BAREBOX_PROPER to be
vmbarebox? This would

> +
> +$(obj)/piggy.o: ${PIGGY_IMAGE} FORCE
>  
>  $(obj)/sha_sum.o: $(obj)/barebox.sha.bin FORCE
>  
> @@ -154,6 +160,14 @@ $(obj)/barebox.sum: $(obj)/barebox.z FORCE
>  $(obj)/barebox.z: $(obj)/../$(BAREBOX_PROPER) FORCE
>  	$(call if_changed,$(suffix_y))
>  
> +# barebox.elf.z - compressed barebox ELF binary
> +# ----------------------------------------------------------------
> +# Prevent the %.elf pattern rule from building ../barebox.elf
> +$(obj)/../barebox.elf: ;
> +
> +$(obj)/barebox.elf.z: $(obj)/../barebox.elf FORCE
> +	$(call if_changed,$(suffix_y))

As you noticed youtself, barebox.elf is not a good name, because it's
generated outside this makefile, but still has an %.elf: rule.

How about vmbarebox instead?

> +config PBL_IMAGE_ELF
> +	bool

should select ELF.


Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



