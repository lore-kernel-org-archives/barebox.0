Delivery-date: Tue, 21 Feb 2023 11:18:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUPim-00DmDo-SJ
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 11:18:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUPil-00008k-Pa
	for lore@pengutronix.de; Tue, 21 Feb 2023 11:18:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UCDhMYkBH77464DWByQgt9cW1GyOxPM0FLAIP+ki1So=; b=De2PdrNJOlV3frIClymWdvn5Y0
	AVnXzjVSMAT1q4qZxaiapU9Wcoy159YPEvHWZtz33RLJlxs6DxiAJX4WZSMR6XwPlUazJG6zrPwRl
	5GBTA3gjb2DD6IYpfJmSWopPotG42qpMUgusV1xxi8TrQXQWHsTapUWq5GMhc/JNEJp0F8ZwyMQAm
	4XbvO4Vb+vyQVU1xVB4WEhjIMXL7VV0QvxapCR7NiwVbRwrjd7X42TifJAqk4/AsEGHvsNKkll0WN
	VryU7jJwPU5hpMSNWRcFopoWE8Wi+slKjTaROWbym+BgzL7lBfNw/9DOU9rjoaBXHFOjD8ffSOzaD
	Tr1Q62Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUPhS-007MOo-ND; Tue, 21 Feb 2023 10:16:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUPhN-007MOG-3E
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 10:16:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUPhK-0008PH-Df; Tue, 21 Feb 2023 11:16:34 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUPhK-0004EJ-4o; Tue, 21 Feb 2023 11:16:34 +0100
Date: Tue, 21 Feb 2023 11:16:34 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230221101634.GD10447@pengutronix.de>
References: <20230217175124.1897402-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230217175124.1897402-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_021637_155924_FC434CC5 
X-CRM114-Status: GOOD (  30.35  )
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
Subject: Re: [PATCH master] ARM: stm32mp: much enlarge very early stack size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 17, 2023 at 06:51:24PM +0100, Ahmad Fatoum wrote:
> The barebox stack is always located at a fixed offset from the end of
> SDRAM. To determine end of SDRAM, barebox may need a stack setup, so
> at that early time, either stack pointer set up by BootROM is reused
> or we set up a temporary stack on some on-chip SRAM .
> 
> On STM32MP1, TF-A runs after BootROM, so barebox runs in normal world
> without prepared stack and TF-A is located on on-chip SRAM.
> 
> So what we did so far was have a small stack of 64 bytes starting behind
> end of barebox image to cover the first function call to determine
> actual memory size. This may have been chosen that small with the thought
> that an overflow would give an error message anyway, because of failed
> decompression. An overflow of exactly 4 bytes overwrites just the barebox
> proper image size though located at the end of the barebox image, thereby
> overflowing the size and leading to out-of-bounds access during decompression
> in 1 of 4 cases depending on barebox size, because we align barebox
> proper size to 16 bytes...
> 
> Let's just use a fully sized stack even in the early state. That's
> usually 32K and we expect a barebox loaded into DRAM to always have
> that much bytes following it. Another way would've been to use
> some of the other SRAMs, but I decided to leave those alone, as not
> to clobber data used by the coprocessor, when reloading barebox.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-stm32mp/include/mach/entry.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-stm32mp/include/mach/entry.h b/arch/arm/mach-stm32mp/include/mach/entry.h
> index f8d981cca7cd..8d3adb4bdaf9 100644
> --- a/arch/arm/mach-stm32mp/include/mach/entry.h
> +++ b/arch/arm/mach-stm32mp/include/mach/entry.h
> @@ -11,7 +11,7 @@ static __always_inline void stm32mp_cpu_lowlevel_init(void)
>  	unsigned long stack_top;
>  	arm_cpu_lowlevel_init();
>  
> -	stack_top = (unsigned long)__image_end + get_runtime_offset() + 64;
> +	stack_top = (unsigned long)__image_end + get_runtime_offset() + CONFIG_STACK_SIZE;
>  	stack_top = ALIGN(stack_top, 16);
>  	arm_setup_stack(stack_top);
>  }
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


