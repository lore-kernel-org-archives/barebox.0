Delivery-date: Mon, 12 Jun 2023 08:30:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8b45-003UyF-MS
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 08:30:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8b43-00030A-Da
	for lore@pengutronix.de; Mon, 12 Jun 2023 08:30:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ulk6wFtzxv1lrvxQyfSjo93cQR04zsQrzfDqmCsKcJ0=; b=fa0XN0KYpXyALCuiXpFR84A3M3
	a0jkNEIO3YAhFYkvCW5grQvK921hLhqS+3yQfGXvpvCmiKvwVB9wIPUnmOFbtQFAfN4Y2b6NIySq0
	3boAuDeWjTJtFzpG3I8byZkke3gsHTgDMR3cmuDuU0YB+ae/mRJKQjrYX+srjVwJ3rlmX775bqvG8
	rsi+6PeOmUmLK5Htc/Wjj5NwPGq74nispwHbsKRit3VRM24FbrmlOTFxnpH18q/559llSPTGjIwX7
	dYYDnHD8pN7R4FC/oXn+/iziT/uAiizdpb6WtDKso04QUtPrbVqxxaRAY4fA5bCTISgEjZ8UYH8Pu
	NQ5iwsEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8b30-002lcC-0v;
	Mon, 12 Jun 2023 06:29:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8b2x-002lbL-0h
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 06:29:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8b2v-0002rw-Vi; Mon, 12 Jun 2023 08:28:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8b2v-0001Rr-FG; Mon, 12 Jun 2023 08:28:57 +0200
Date: Mon, 12 Jun 2023 08:28:57 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230612062857.GU18491@pengutronix.de>
References: <20230609135811.1989167-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230609135811.1989167-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230611_232859_250930_AF65F0AB 
X-CRM114-Status: GOOD (  20.10  )
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
Subject: Re: [PATCH master] ci: fix build on master with newer container image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 09, 2023 at 03:58:11PM +0200, Ahmad Fatoum wrote:
> The workflow yaml references the newest container, which now has GCC
> v13.1 after the updates merged to next.
> 
> The work flow yaml on master still hardcodes GCC 12.2 though, leading
> to build breakage. As the container now defines all CROSS_COMPILE_*
> variables by default, we can just drop them from master to fix the
> build.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  .github/workflows/test-defconfigs.yml     | 6 ------
>  .github/workflows/test-labgrid-pytest.yml | 6 ------
>  2 files changed, 12 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/.github/workflows/test-defconfigs.yml b/.github/workflows/test-defconfigs.yml
> index 108e54d289a0..71e440793ce5 100644
> --- a/.github/workflows/test-defconfigs.yml
> +++ b/.github/workflows/test-defconfigs.yml
> @@ -32,12 +32,6 @@ jobs:
>        run: |
>          export ARCH=${{matrix.arch}}
>  
> -        export CROSS_COMPILE_arm=/opt/gcc-12.2.0-nolibc/arm-linux-gnueabi/bin/arm-linux-gnueabi-
> -        export CROSS_COMPILE_arm64=/opt/gcc-12.2.0-nolibc/aarch64-linux/bin/aarch64-linux-
> -        export CROSS_COMPILE_mips=/opt/gcc-12.2.0-nolibc/mips-linux/bin/mips-linux-
> -        export CROSS_COMPILE_powerpc=/opt/gcc-12.2.0-nolibc/powerpc-linux/bin/powerpc-linux-
> -        export CROSS_COMPILE_riscv=/opt/gcc-12.2.0-nolibc/riscv32-linux/bin/riscv32-linux-
> -
>          ./test/generate-dummy-fw.sh
>  
>          ./MAKEALL -O build-${{matrix.arch}} -k test/kconfig/disable_size_check.kconf \
> diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
> index 2c741500663e..399de6dc077a 100644
> --- a/.github/workflows/test-labgrid-pytest.yml
> +++ b/.github/workflows/test-labgrid-pytest.yml
> @@ -42,12 +42,6 @@ jobs:
>        run: |
>          export ARCH=${{matrix.arch}}
>  
> -        export CROSS_COMPILE_arm=/opt/gcc-12.2.0-nolibc/arm-linux-gnueabi/bin/arm-linux-gnueabi-
> -        export CROSS_COMPILE_arm64=/opt/gcc-12.2.0-nolibc/aarch64-linux/bin/aarch64-linux-
> -        export CROSS_COMPILE_mips=/opt/gcc-12.2.0-nolibc/mips-linux/bin/mips-linux-
> -        export CROSS_COMPILE_powerpc=/opt/gcc-12.2.0-nolibc/powerpc-linux/bin/powerpc-linux-
> -        export CROSS_COMPILE_riscv=/opt/gcc-12.2.0-nolibc/riscv32-linux/bin/riscv32-linux-
> -
>          ./test/generate-dummy-fw.sh
>  
>          ./MAKEALL -O build-${{matrix.arch}} -k test/kconfig/enable_self_test.kconf \
> -- 
> 2.38.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


