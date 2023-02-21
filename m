Delivery-date: Tue, 21 Feb 2023 10:38:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUP61-00DjbT-JY
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 10:38:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUP60-00033j-FH
	for lore@pengutronix.de; Tue, 21 Feb 2023 10:38:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wiqcBntVZUKUICyL4fmMHCZ3xpy3GppXyi4MbwilY8w=; b=R6INuibRI3+u1dTV90+u7vASTD
	6p0vJ77RP4hlmLiFB+aTvxIxPW7JqiyteBwzpdtgNzJWVep5qTINd3v0FkuBaKGowM0BOFgE0l2fp
	ucz49zs0uf8pemp6A86CtbXyhLWIwZqV4Vs4Tdc64DZ4TVuXCpmSxu0PaW9MhrgiRh2npa86TePZb
	3yRYgfi3/6h/cAu0uRxXfZCLYI8LtyZ6aDBYnKeJZap4xoLXSzq5RFETefvHkiw4caBTB+gcnApVm
	yam354wRM82p8hLUiz6H3ksv+I8VSuqZoOt9YQdZBz4iIgXodc07wTW+CGpp1ncK3VwRqBJ7uNbbU
	ROVr2kGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUP4h-007Dqn-Eb; Tue, 21 Feb 2023 09:36:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUP4a-007DqG-1e
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 09:36:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUP4Y-0002tz-3s; Tue, 21 Feb 2023 10:36:30 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUP4W-0007gP-P4; Tue, 21 Feb 2023 10:36:28 +0100
Date: Tue, 21 Feb 2023 10:36:28 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230221093628.GB10447@pengutronix.de>
References: <20230217203733.2926811-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230217203733.2926811-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_013632_127660_A6D51EF3 
X-CRM114-Status: GOOD (  20.13  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] gen-dtb-s: reference OF IMD entries automatically
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 17, 2023 at 09:37:32PM +0100, Ahmad Fatoum wrote:
> We currently require IMD_OF_USED to get the DT compatible into the
> barebox image data meta section. As the PBL is already referencing the
> DT to pass it along to barebox proper, let's add a reference from the DT
> to the image data section to make IMD_OF_USED unnecessary.
> 
> Suggested-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/gen-dtb-s | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
> index c5c46a4d8675..9cc2e7a72cc2 100755
> --- a/scripts/gen-dtb-s
> +++ b/scripts/gen-dtb-s
> @@ -49,6 +49,9 @@ echo "__dtb_${name}_start:"
>  echo ".incbin \"$dtb\""
>  echo "__dtb_${name}_end:"
>  echo ".global __dtb_${name}_end"
> +if [ "$imd" = "y" ]; then
> +	echo ".word __barebox_imd_OF_${name}"
> +fi
>  echo ".balign STRUCT_ALIGNMENT"
>  
>  compressed=$(${CONFIG_SHELL} "${srctree}/scripts/file-size.sh" $dtb.z)
> @@ -66,4 +69,7 @@ echo ".incbin \"$dtb.z\""
>  echo "__dtb_z_${name}_end:"
>  echo ".global __dtb_z_${name}_end"
>  echo ".balign STRUCT_ALIGNMENT"
> +if [ "$imd" = "y" ]; then
> +	echo ".word __barebox_imd_OF_${name}"
> +fi
>  echo "#endif"

This results in several linker errors here when compiling
imx_v8_defconfig:

/opt/OSELAS.Toolchain-2022.10.0/aarch64-v8a-linux-gnu/gcc-12.2.1-clang-15.0.2-glibc-2.36-binutils-2.39-kernel-6.0.5-sanitized/bin/aarch64-v8a-linux-gnu-ld: arch/arm/dts/imx8mm-innocomm-wb15-evk.dtb.pbl.o: relocation R_AARCH64_ABS32 against `__barebox_imd_OF_imx8mm_innocomm_wb15_evk' can not be used when making a shared object

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


