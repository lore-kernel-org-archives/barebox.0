Delivery-date: Wed, 21 Jun 2023 09:54:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBsg2-00FOeU-UN
	for lore@lore.pengutronix.de; Wed, 21 Jun 2023 09:54:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBsg0-0005nc-H9
	for lore@pengutronix.de; Wed, 21 Jun 2023 09:54:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aBzqDy4Wd3TRhX6TaQTO73Lk5OueYqI30gtfOI0AN2c=; b=cScFjTXK5kuyvxOFHRvDsDfkPl
	B1gdQ9oIEKejsKQ2aa5bUkjbym7PEGYRSrchlbiM1YXaNn+/IlrbBvCE1ImIi8E7ULq9pCB/oeIq3
	39VdMxkp2mP6TrxzvKDUp2AI+Uza6joRNc+0zslcriLoyIcnpOYVHImluVu6nI9/8LmzE/Z72jVRN
	nHam0rP6CEQmLPwNs5JgE0Y4ekMICF1OzIeYjd7rmCvLgOZo7pHjN5WBOM99LSN0JRaorbXGtW9XB
	7q3S8evwLGYklQjjMOcapjuKswapgCM5Hyx2vLj9wX7pjRsW5U7cKsfbJTI0DVW90rlPmGmxkG+xx
	/WA2A00w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBser-00DbIA-2k;
	Wed, 21 Jun 2023 07:53:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBsen-00DbHO-27
	for barebox@lists.infradead.org;
	Wed, 21 Jun 2023 07:53:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBsel-0005gD-Tz; Wed, 21 Jun 2023 09:53:35 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBsel-0003bq-LG; Wed, 21 Jun 2023 09:53:35 +0200
Date: Wed, 21 Jun 2023 09:53:35 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230621075335.GQ18491@pengutronix.de>
References: <20230619094637.4134449-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230619094637.4134449-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_005337_691518_0CD6E707 
X-CRM114-Status: GOOD (  19.24  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ci: build: have CI build ARCH=openrisc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 19, 2023 at 11:46:37AM +0200, Ahmad Fatoum wrote:
> qemu-system-misc ships with qemu-system-or1k and kernel.org mirrors a
> crostool toolchain capable of building barebox for running in it.
> Let's make use of that. We don't yet activate openrisc for CI test
> as it fails to boot up with SELFTEST_OF_MANIPULATION. A suggested fix
> is still under discussion[1].
> 
> [1]: https://lore.barebox.org/barebox/20230605063719.1431079-1-a.fatoum@pengutronix.de/
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .github/workflows/build-defconfigs.yml | 2 +-
>  test/Containerfile                     | 2 ++
>  2 files changed, 3 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/.github/workflows/build-defconfigs.yml b/.github/workflows/build-defconfigs.yml
> index ff9264721d87..4cf6df52d44d 100644
> --- a/.github/workflows/build-defconfigs.yml
> +++ b/.github/workflows/build-defconfigs.yml
> @@ -3,7 +3,7 @@ name: build images
>  on: [push, pull_request]
>  
>  env:
> -  ARCH: arm mips powerpc riscv sandbox x86
> +  ARCH: arm mips powerpc riscv sandbox x86 openrisc
>  
>  jobs:
>    defconfigs:
> diff --git a/test/Containerfile b/test/Containerfile
> index a53c00584f68..224ea2ea4804 100644
> --- a/test/Containerfile
> +++ b/test/Containerfile
> @@ -55,6 +55,7 @@ RUN korg_crosstool_dl() { wget -nv -O - https://mirrors.edge.kernel.org/pub/tool
>      korg_crosstool_dl x86_64 ${GCC_VERSION} arm-linux-gnueabi && \
>      korg_crosstool_dl x86_64 ${GCC_VERSION} aarch64-linux     && \
>      korg_crosstool_dl x86_64 ${GCC_VERSION} mips-linux        && \
> +    korg_crosstool_dl x86_64 ${GCC_VERSION} or1k-linux        && \
>      korg_crosstool_dl x86_64 ${GCC_VERSION} powerpc-linux     && \
>      korg_crosstool_dl x86_64 ${GCC_VERSION} riscv64-linux
>  
> @@ -74,6 +75,7 @@ RUN cd /tmp && \
>  ENV CROSS_COMPILE_arm=/opt/gcc-${GCC_VERSION}-nolibc/arm-linux-gnueabi/bin/arm-linux-gnueabi-
>  ENV CROSS_COMPILE_arm64=/opt/gcc-${GCC_VERSION}-nolibc/aarch64-linux/bin/aarch64-linux-
>  ENV CROSS_COMPILE_mips=/opt/gcc-${GCC_VERSION}-nolibc/mips-linux/bin/mips-linux-
> +ENV CROSS_COMPILE_openrisc=/opt/gcc-${GCC_VERSION}-nolibc/or1k-linux/bin/or1k-linux-
>  ENV CROSS_COMPILE_powerpc=/opt/gcc-${GCC_VERSION}-nolibc/powerpc-linux/bin/powerpc-linux-
>  ENV CROSS_COMPILE_riscv=/opt/gcc-${GCC_VERSION}-nolibc/riscv64-linux/bin/riscv64-linux-
>  
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


