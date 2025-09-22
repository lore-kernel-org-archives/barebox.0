Delivery-date: Mon, 22 Sep 2025 17:39:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0idj-00609r-1e
	for lore@lore.pengutronix.de;
	Mon, 22 Sep 2025 17:39:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0idi-0002UJ-QQ
	for lore@pengutronix.de; Mon, 22 Sep 2025 17:39:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2fNM9D1xL0rYajPUrQwLUiFdbHV9CDLgio9Hy+kfK2Y=; b=Y5Z+WlOj/tlvLZCBSrU0/boTXu
	bmUyrIDm/OLE2ArknLHxF0aiywlnpMwg3kQZ0way33sfCg3KMGNz0MsVU720rp5xVftrQeT6M3cbw
	S7QONPkpZkPiYGXBnnwkknoGrWfxxMKYPAAHfMl1WUkUBQxNv/efYPiilMOT42KxRSIJyj5k8J5Jk
	krp51rL0xNgSg9ses0qdrNI6A0LsSuHz42iqlvB6hpX5ut4+PsDJDNxI4tDiiI/jFlBE49CEjxGRk
	XGGQcSAE+TaLPBbZirKurj8YGJ+leaOUnMn/kw3xnFjY26bs49nAUwWfb1FwheTKVEmF4Hii0mgRq
	it59U+3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0id0-0000000AqTB-3ggq;
	Mon, 22 Sep 2025 15:38:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0icy-0000000AqSp-30Rc
	for barebox@lists.infradead.org;
	Mon, 22 Sep 2025 15:38:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v0icx-0002Jn-6u; Mon, 22 Sep 2025 17:38:55 +0200
Message-ID: <26a0efd0-c960-4908-ac4d-2b47d374edf3@pengutronix.de>
Date: Mon, 22 Sep 2025 17:38:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
References: <20250918074455.891780-1-tobias@waldekranz.com>
 <20250918074455.891780-7-tobias@waldekranz.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250918074455.891780-7-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_083856_762591_5F39F0CE 
X-CRM114-Status: GOOD (  22.31  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/11] ci: pytest: Open up testfs to more consumers than
 the FIT test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 18.09.25 09:43, Tobias Waldekranz wrote:
> With upcoming dm-verity tests, we want to store more test artifacts
> than the FIT image in the testfs.
> 
> Since the dm tests might run on systems for which no ITS is available
> to build an FIT from, make FIT generation conditional on the ITS being
> available. This allows us to enable the testfs feature on all matrix
> cells that support 9p over virtio.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

FWIW, testfs was supposed to be just a stop-gap.

My current plan is to have a "meta-bootstack" Yocto BSP that generates
actual artifacts that will be used for testing which affords us much
more flexibility.

I see the utility now though in having some tests that can be run locally
without building the BSP, so I would just add a second mount point for
it, so everything good here.

Cheers,
Ahmad

> ---
>  scripts/generate_testfs.sh                  | 20 ++++++++++++--------
>  test/py/test_fit.py                         |  4 +++-
>  test/riscv/qemu-virt64@rv64i_defconfig.yaml |  1 +
>  test/riscv/qemu@virt32_defconfig.yaml       |  1 +
>  4 files changed, 17 insertions(+), 9 deletions(-)
> 
> diff --git a/scripts/generate_testfs.sh b/scripts/generate_testfs.sh
> index c5d24f7e1a..3c200bd401 100755
> --- a/scripts/generate_testfs.sh
> +++ b/scripts/generate_testfs.sh
> @@ -13,14 +13,18 @@ fi
>  rm -rf "${KBUILD_OUTPUT}/testfs/"
>  mkdir -p ${KBUILD_OUTPUT}/testfs
>  
> -cat ${KBUILD_OUTPUT}/images/barebox-dt-2nd.img | \
> -  ${KGZIP} -n -f -9 >${KBUILD_OUTPUT}/barebox-dt-2nd.img.gz
> +generate_fit()
> +{
> +    cat ${KBUILD_OUTPUT}/images/barebox-dt-2nd.img | \
> +	${KGZIP} -n -f -9 >${KBUILD_OUTPUT}/barebox-dt-2nd.img.gz
>  
> -cp .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ${KBUILD_OUTPUT}/
> +    cp .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ${KBUILD_OUTPUT}/
>  
> -find COPYING LICENSES/ | cpio -o -H newc | ${KGZIP} \
> -  > ${KBUILD_OUTPUT}/ramdisk.cpio.gz
> +    find COPYING LICENSES/ | cpio -o -H newc | ${KGZIP} \
> +						   > ${KBUILD_OUTPUT}/ramdisk.cpio.gz
>  
> -${MKIMAGE} -G $PWD/test/self/development_rsa2048.pem -r \
> -      -f ${KBUILD_OUTPUT}/${KBUILD_DEFCONFIG}-gzipped.its \
> -	 ${KBUILD_OUTPUT}/testfs/barebox-gzipped.fit
> +    ${MKIMAGE} -G $PWD/test/self/development_rsa2048.pem -r \
> +	       -f ${KBUILD_OUTPUT}/${KBUILD_DEFCONFIG}-gzipped.its \
> +	       ${KBUILD_OUTPUT}/testfs/barebox-gzipped.fit
> +}
> +[ -f .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ] && generate_fit
> diff --git a/test/py/test_fit.py b/test/py/test_fit.py
> index c53a1ece14..1a23a53a32 100644
> --- a/test/py/test_fit.py
> +++ b/test/py/test_fit.py
> @@ -23,7 +23,9 @@ def test_fit(barebox, env, target, barebox_config):
>      if returncode != 0:
>          pytest.xfail("skipping test due to missing --fs testfs=")
>  
> -    barebox.run_check(f"ls {fit_name('gzipped')}")
> +    _, _, returncode = barebox.run(f"ls {fit_name('gzipped')}")
> +    if returncode != 0:
> +        pytest.xfail("skipping test due to missing FIT image")
>  
>      # Sanity check, this is only fixed up on first boot
>      assert of_get_property(barebox, "/chosen/barebox-version") is False
> diff --git a/test/riscv/qemu-virt64@rv64i_defconfig.yaml b/test/riscv/qemu-virt64@rv64i_defconfig.yaml
> index 7f86d9ac7d..5f1310617a 100644
> --- a/test/riscv/qemu-virt64@rv64i_defconfig.yaml
> +++ b/test/riscv/qemu-virt64@rv64i_defconfig.yaml
> @@ -15,6 +15,7 @@ targets:
>      features:
>        - virtio-mmio
>        - barebox-state
> +      - testfs
>  images:
>    barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
>  imports:
> diff --git a/test/riscv/qemu@virt32_defconfig.yaml b/test/riscv/qemu@virt32_defconfig.yaml
> index 7860e97c52..d0b640aa18 100644
> --- a/test/riscv/qemu@virt32_defconfig.yaml
> +++ b/test/riscv/qemu@virt32_defconfig.yaml
> @@ -16,6 +16,7 @@ targets:
>      features:
>        - virtio-mmio
>        - barebox-state
> +      - testfs
>      runner:
>        download:
>          opensbi-riscv32-generic-fw_dynamic.bin: https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin?raw=true


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


