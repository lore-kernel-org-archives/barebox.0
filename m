Delivery-date: Wed, 11 Jan 2023 09:22:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFWNG-008f0d-Kr
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:22:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFWNE-0003qn-Er
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:22:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oUhPMiqJS33SMSpWgN3zZiuTrY1cdhxiyqac5r6PZj0=; b=h6lxgC1mx/ncYQXVX8PgkyZ/5A
	PB6+x2yPUCTGdCMVuR2UFxDDCkkLiNCyhZ3EpZ1h2MvPSm+FWt8z8ncrpNpGTK2Ru/mO5ubeXKsGQ
	bE87CJwSjxG0ZU6xz3xVNlZ5yZUVLzQ5oxstWoiNJmTXS2LXG2fDJjD/vJ3M0cl9c47VidclSHA4m
	9DpzrlVLHTn1LFxMEHMmCS0T/LRP53ehs+AqyIqjLHbm/53uG5D51wa3JTZi4Co+hhI5nDKEDHB0W
	RE0OJ9putIzYcc0xcLQsl6wMyra0ulS1Ic/E7KA3tUWNTcuP/cDaRbi9Z7kfPloJDzMgozAF62S3f
	KUDVDzoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFWLm-00AKId-8U; Wed, 11 Jan 2023 08:20:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFWLh-00AKHU-3T
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 08:20:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFWLf-0003a3-Jl; Wed, 11 Jan 2023 09:20:39 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFWLf-00085t-Dv; Wed, 11 Jan 2023 09:20:39 +0100
Date: Wed, 11 Jan 2023 09:20:39 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230111082039.GG24755@pengutronix.de>
References: <20230111075113.898062-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230111075113.898062-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_002041_161987_F1D6ECE9 
X-CRM114-Status: GOOD (  37.05  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8M: bootrom: access OCRAM directly if running
 in EL3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 11, 2023 at 08:51:14AM +0100, Ahmad Fatoum wrote:
> It's straight-forward to hack barebox PBL to skip ATF installation
> and to start barebox proper in EL3. This can be useful for debugging
> and may in future be just a Kconfig option like we now have with
> Rockchip.
> 
> In such a configuration, we don't need to copy the ROM log out of OCRAM,
> because there's no ATF installed there that might overwrite it.
> Therefore, just directly access the event log pointer in BootROM if
> running in EL3. As 0x9e0 is in the first zero page, we use the function
> in zero_page.h to temporarily disable traps in the zero page. We don't
> need to do that in PBL though as even early MMU will be enabled later.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> I wanted to send this along with an option to disable ATF via Kconfig,
> but that will need us to touch all boards and maybe replace current_el()
> checks with comparison whether we run in DRAM to avoid renewed setup.
> 
> I may look later into this, but this patch may still be useful to have.
> ---
>  arch/arm/mach-imx/Makefile              |  4 ++--
>  arch/arm/mach-imx/bootrom-cmd.c         | 14 ++++++++++++--
>  arch/arm/mach-imx/include/mach/romapi.h |  4 ++++
>  arch/arm/mach-imx/romapi.c              | 24 ++++++++++++++++--------
>  include/zero_page.h                     |  2 +-
>  5 files changed, 35 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
> index cc834fed7be7..5d70e79b57f1 100644
> --- a/arch/arm/mach-imx/Makefile
> +++ b/arch/arm/mach-imx/Makefile
> @@ -18,8 +18,8 @@ lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
>  obj-$(CONFIG_ARCH_IMX7) += imx7.o
>  obj-$(CONFIG_ARCH_VF610) += vf610.o
>  obj-pbl-$(CONFIG_ARCH_IMX8M) += imx8m.o
> -lwl-$(CONFIG_ARCH_IMX8M) += atf.o romapi.o
> -obj-pbl-$(CONFIG_ARCH_IMX8M) += tzasc.o
> +lwl-$(CONFIG_ARCH_IMX8M) += atf.o
> +obj-pbl-$(CONFIG_ARCH_IMX8M) += romapi.o tzasc.o
>  obj-$(CONFIG_IMX_IIM)	+= iim.o
>  obj-$(CONFIG_NAND_IMX) += nand.o
>  lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
> diff --git a/arch/arm/mach-imx/bootrom-cmd.c b/arch/arm/mach-imx/bootrom-cmd.c
> index 0238d09b169f..c891fd2e0640 100644
> --- a/arch/arm/mach-imx/bootrom-cmd.c
> +++ b/arch/arm/mach-imx/bootrom-cmd.c
> @@ -8,6 +8,7 @@
>  #include <linux/bitfield.h>
>  #include <mach/imx8m-regs.h>
>  #include <mach/xload.h>
> +#include <mach/romapi.h>
>  #include <asm/barebox-arm.h>
>  
>  /* i.MX7 and later ID field is swapped compared to i.MX6 */
> @@ -51,6 +52,9 @@ static int imx8m_bootrom_decode_log(const u32 *rom_log)
>  {
>  	int i;
>  
> +	if (!rom_log)
> +		return -ENODATA;
> +
>  	for (i = 0; i < 128; i++) {
>  		u8 event_id = FIELD_GET(ROM_EVENT_FORMAT_V1_ID, rom_log[i]);
>  		u8 event_id_idx = FIELD_GET(ROM_EVENT_FORMAT_V1_ID_IDX, rom_log[i]);
> @@ -178,11 +182,17 @@ static int imx8m_bootrom_decode_log(const u32 *rom_log)
>  
>  static int do_bootrom(int argc, char *argv[])
>  {
> -	const struct imx_scratch_space *scratch = arm_mem_scratch_get();
> -	const u32 *rom_log_addr = scratch->bootrom_log;
> +	const u32 *rom_log_addr;
>  	bool log = false;
>  	int ret, opt;
>  
> +	if (current_el() == 3) {
> +		rom_log_addr = __imx8m_get_bootrom_log();
> +	} else {
> +		const struct imx_scratch_space *scratch = arm_mem_scratch_get();
> +		rom_log_addr = scratch->bootrom_log;
> +	}

Can we put this into a imx8m_get_bootrom_log() in romapi.c?

That way we have all code handling the places where the bootrom log is
stored together in one file and do not need to export a __ prefixed
function.

> +/* only usable in EL3 */
> +const u32 *__imx8m_get_bootrom_log(void);


>  	if (rom_log_addr < MX8M_OCRAM_BASE_ADDR ||
>  	    rom_log_addr >= MX8M_OCRAM_BASE_ADDR + MX8M_OCRAM_MAX_SIZE ||
>  	    rom_log_addr & 0x3) {
>  		pr_warn("No BootROM log found at address 0x%08lx\n", rom_log_addr);
> +		return NULL;
> +	}
> +
> +	return (u32 *)rom_log_addr;
> +}
> +
> +void imx8m_save_bootrom_log(void *dest)
> +{
> +	if (!IS_ENABLED(CONFIG_IMX_SAVE_BOOTROM_LOG)) {
> +		pr_debug("skipping bootrom log saving\n");
>  		return;
>  	}
>  
> -	memcpy(dest, (u32 *)rom_log_addr, 128 * sizeof(u32));
> +	memcpy(dest, __imx8m_get_bootrom_log(), 128 * sizeof(u32));

__imx8m_get_bootrom_log() may return NULL. You should check for that
before passing it into memcpy.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


