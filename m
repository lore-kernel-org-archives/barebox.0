Delivery-date: Tue, 11 Oct 2022 12:54:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiCuW-004SmT-1f
	for lore@lore.pengutronix.de; Tue, 11 Oct 2022 12:54:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiCuT-0007Bk-V7
	for lore@pengutronix.de; Tue, 11 Oct 2022 12:54:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yfapR9sQEAayIO4A+T+Jtigac3/1N4cUfrMbRIXivdE=; b=BLOEarMwBQ78EAcZR+R3B8/HTB
	xt37j6dSIKwUqk33pcVZaKz2ZzIeSqJYv4d2cPzwPMkfv9osWQh564BEYKK6grS0oRVdCnkUbNgEM
	HMqNdlXvFvnT5qzxjvWLnWOosuFAK1xeVZZ5d9oMP/8AI/pO5elDUEhT3JnZldfblifcMSmnU9QwP
	ZuXarBcq4NmzAuW/q1kXMoDKP6GAGB1skTkjOXUXDd7d74mi0B002JmfE8N2epvdpAQbX55GlYs8r
	ZS0yqSB8G3nwrC+SG9bQdzW6i9ZEBQ+cae9+m6aKZambYdjOBN6+D59VowMW3MB1zr3b5BGdS9xQi
	ybAr0wMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiCt4-0043Fn-Tr; Tue, 11 Oct 2022 10:53:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiCsz-0043E9-6F
	for barebox@lists.infradead.org; Tue, 11 Oct 2022 10:53:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oiCsx-000767-88; Tue, 11 Oct 2022 12:53:19 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oiCsx-0003i3-0d; Tue, 11 Oct 2022 12:53:19 +0200
Date: Tue, 11 Oct 2022 12:53:18 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, bst@pengutronix.de
Message-ID: <20221011105318.GH986@pengutronix.de>
References: <20221011103318.299209-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221011103318.299209-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_035321_252319_B37FC530 
X-CRM114-Status: GOOD (  29.27  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master v2 1/2] ARM: MXS: fix breakage for non-DT boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Oct 11, 2022 at 12:33:17PM +0200, Ahmad Fatoum wrote:
> boarddata, the third argument passed from barebox PBL to barebox proper,
> is usually either a pointer to an optionally compressed flattened device tree
> or a machien type integer casted to a pointer.
> 
> In order to support device trees located in the first 8192 bytes of
> address space, barebox has been trying to dereference boarddata, before
> falling back to treating it as integer.
> 
> This resulted in breakage as boarddata may be an integer not divisible
> by 4 and thus an unaligned exception would occur.
> 
> The already existing barebox_arm_boarddata mechanism sidesteps this
> issue: With it, the machine type integer is not passed as is, but the
> address of a suitably aligned structure that contains it is passed
> instead.
> 
> Searching for MACH_TYPE in arch/arm/boards shows 5 boards to be
> affected in-tree, which are all fixed with this commit.
> 
> Fixes: 390bc7834ffc ("ARM: start: check for machine type last")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - Do full relocation instead of get_runtime_offset(). This is
>     required, because GCC[1] generated a pc-relative reference
>     to boarddata as it's in the same translation unit and as
>     such get_runtime_offset() being added was wrong.
>     Instead of relying on compiler whims, we instead set up
>     a full C environment and play it safe.
>   -  s/MACHINE_TYPE/MACH_TYPE/ (Bastian)
> 
> [1]: OSELAS.Toolchain-2021.07.0/arm-v7a-linux-gnueabihf/gcc-11.1.1
> ---
>  arch/arm/boards/chumby_falconwing/lowlevel.c     | 11 ++++++++++-
>  arch/arm/boards/crystalfontz-cfa10036/lowlevel.c | 11 ++++++++++-
>  arch/arm/boards/freescale-mx23-evk/lowlevel.c    | 11 ++++++++++-
>  arch/arm/boards/imx233-olinuxino/lowlevel.c      | 10 +++++++++-
>  arch/arm/boards/karo-tx28/lowlevel.c             | 10 +++++++++-
>  5 files changed, 48 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boards/chumby_falconwing/lowlevel.c b/arch/arm/boards/chumby_falconwing/lowlevel.c
> index 091dd1955260..d2059c8f7808 100644
> --- a/arch/arm/boards/chumby_falconwing/lowlevel.c
> +++ b/arch/arm/boards/chumby_falconwing/lowlevel.c
> @@ -7,8 +7,17 @@
>  #include <mach/imx23-regs.h>
>  #include <generated/mach-types.h>
>  
> +static struct barebox_arm_boarddata boarddata = {
> +	.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
> +	.machine = MACH_TYPE_CHUMBY,
> +};
> +
>  ENTRY_FUNCTION(start_chumby_falconwing, r0, r1, r2)
>  {
>  	arm_cpu_lowlevel_init();
> -	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, (void *)MACH_TYPE_CHUMBY);
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, &boarddata);

Please jump to an explicitly non inlined function after setup_c() to
make sure we access &boarddata in a proper C environment. Otherwise we
do not know if the pointer is dereferenced before or after setup_c().

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


