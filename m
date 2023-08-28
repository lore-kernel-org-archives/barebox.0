Delivery-date: Mon, 28 Aug 2023 08:21:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qaVd2-00BhOn-3o
	for lore@lore.pengutronix.de; Mon, 28 Aug 2023 08:21:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qaVcz-0005uY-U1
	for lore@pengutronix.de; Mon, 28 Aug 2023 08:21:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+UHJRjXr+GiVuusWE1OaWgX7WZRFDrLAOnd9lNMqyhI=; b=Gt1Aeu0ncZUmjS80iEvUNopoej
	/i66m9jKUwPUhUWOZYBVqZe0n7VOB9PcKTPEc8RsWQUvSvz/vbG+NLHQln78g4suMjHopV7O9sN4A
	gqNzglnpcycXY6V7KLtjcF4057uTvORafhNHmvoRCYiPayuu5zISEJLtGN6rEBM8/8ERi8ajHyTZG
	a85wYT4hm8qAn3d6BpLbApBoVDWCzZr+kB6qeLqohIcW+ySLW7asuTv2FzcAeTWZcoTpjWhyd87eo
	W5ouFTYPSm0kpFPfJnSXQwnvkoym7y+7mQuiziXxznS+yaYMCQDQYxOyBpfKxRPrMCL28WVcvbpPQ
	LQx/dslA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qaVbe-008wkh-0g;
	Mon, 28 Aug 2023 06:20:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qaVba-008wjQ-12
	for barebox@lists.infradead.org;
	Mon, 28 Aug 2023 06:20:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1qaVbU-0005UN-QU; Mon, 28 Aug 2023 08:20:00 +0200
Message-ID: <b3093699-65ac-1860-513d-02232c8fb873@pengutronix.de>
Date: Mon, 28 Aug 2023 08:19:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: rhi@pengutronix.de, jzi@pengutronix.de, ejo@pengutronix.de
References: <20230825172250.2857448-1-a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE
From: Johannes Zink <j.zink@pengutronix.de>
In-Reply-To: <20230825172250.2857448-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230827_232006_362518_1C5D9D0E 
X-CRM114-Status: GOOD (  31.51  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fastboot: scale default sparse max_download_size with
 available memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 8/25/23 19:22, Ahmad Fatoum wrote:
> The fastboot host tool chokes when asked to sparse images that are not
> 4K-aligned:
> 
>    error: write_sparse_skip_chunk: don't care size 4280912 is not a multiple
>    of the block size 4096
> 
> This is often not a problem, because disk images tend to be 4K-aligned
> and are best converted to sparse images properly explicitly anyway, so
> don't care holes are preserved.
> 
> Bootloader binaries on the other hand are smaller than the default
> fastboot.max_download_size of 8M, so they are downloaded as a single
> chunk without problems.
> 
> Situation is different for kernel and FIT images, which aren't
> necessarily 4K aligned, usually bigger than 8M, and are usually
> compressed, so explicitly sparsing them doesn't save time and thus is
> usually not done.
> 
> Short of fixing the fastboot host tool, users can skip sparsing kernel
> images as well by choosing a suitable larger fastboot.max_download_size
> than the 8M default.
> 
> To improve user experience, let's scale max_download_size with the
> available memory. The minimum default value remains 8M, but the value
> can go up to 128M now and is computed by dividing available malloc
> area by 8 (roughly 1/16th of total SDRAM). For ARM systems, buffer
> sizes would now look like this:
> 
>    SDRAM Size	Fastboot Buffer size
> 
>    1024M		64M
>     512M		32M
>     256M		16M
>     128M		8M
> 
> To err on the side of caution, we only generate powers-of-two sizes.
> This only affects the default value and users can as before override
> it in the environment.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

LGTM

Reviewed-by: Johannes Zink <j.zink@pengutronix.de>

> ---
>   common/fastboot.c | 9 ++++++++-
>   include/memory.h  | 5 +++++
>   2 files changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/common/fastboot.c b/common/fastboot.c
> index f91f398d7a95..645aaa6a9f3f 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> @@ -30,7 +30,9 @@
>   #include <ubiformat.h>
>   #include <unistd.h>
>   #include <magicvar.h>
> +#include <linux/log2.h>
>   #include <linux/sizes.h>
> +#include <memory.h>
>   #include <progress.h>
>   #include <environment.h>
>   #include <globalvar.h>
> @@ -940,9 +942,14 @@ struct file_list *get_fastboot_partitions(void)
>   
>   static int fastboot_globalvars_init(void)
>   {
> -	if (IS_ENABLED(CONFIG_FASTBOOT_SPARSE))
> +	if (IS_ENABLED(CONFIG_FASTBOOT_SPARSE)) {
> +		fastboot_max_download_size
> +			= roundup_pow_of_two(clamp_t(ulong, mem_malloc_size() / 8,
> +						     SZ_8M, SZ_128M));
>   		globalvar_add_simple_int("fastboot.max_download_size",
>   				 &fastboot_max_download_size, "%u");
> +	}
> +
>   	globalvar_add_simple_bool("fastboot.bbu", &fastboot_bbu);
>   	globalvar_add_simple_string("fastboot.partitions",
>   				    &fastboot_partitions);
> diff --git a/include/memory.h b/include/memory.h
> index ffd66db02ba0..73642dd5aaa5 100644
> --- a/include/memory.h
> +++ b/include/memory.h
> @@ -10,6 +10,11 @@ void mem_malloc_init(void *start, void *end);
>   ulong mem_malloc_start(void);
>   ulong mem_malloc_end(void);
>   
> +static inline ulong mem_malloc_size(void)
> +{
> +	return mem_malloc_end() - mem_malloc_start();
> +}
> +
>   struct memory_bank {
>   	struct list_head list;
>   	unsigned long start;

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



