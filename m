Delivery-date: Tue, 21 May 2024 14:39:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9OmO-00CGHw-2t
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 14:39:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9OmO-0001RN-4X
	for lore@pengutronix.de; Tue, 21 May 2024 14:39:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0a9nEptDS+HjDgg4Rj1dRJVPiYuiU7pItrxk0G0uh5c=; b=GAsGybjcGnDMJTyNdmiO9eAb2D
	I+dFyPgkbUrEJz6EVbd4Ps7MLzVUs59oxMy0kVcDLbwGLspX/X1gwhqSibUU1TO6y+z4/Dtrr/fdw
	s+PLscGjfb4+Wv1vVYoLiXtnzVccIEO2lePFhO/1ahzuhJnNc82f3tuOgSeYDMTD0kSZMJg91XW5M
	0E7d9Q3v7/JJuUfRO1ZxRNDfI4MCeHl6jLPeI3qffkP28qua/9r78oMY/46T0NFSXskeo5IK7qXJ6
	2+N7NqFRiGSeU3GWgf9wdwt4+DZBcm8VoV3nm56pbBeqhugAsNejknhKEIK+7jm5jvXSDBBI93oCW
	1cIZAswg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Ols-0000000HT9h-3vxW;
	Tue, 21 May 2024 12:39:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Olp-0000000HT9D-08IH
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 12:39:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s9Oln-0001Cn-NB; Tue, 21 May 2024 14:39:07 +0200
Message-ID: <562ff15d-1bbd-49f7-84dc-1939b3dd2261@pengutronix.de>
Date: Tue, 21 May 2024 14:39:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240521104913.1983970-1-s.hauer@pengutronix.de>
 <20240521104913.1983970-3-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240521104913.1983970-3-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_053909_107580_D11DF098 
X-CRM114-Status: GOOD (  21.91  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/4] efi-payload: use handoff data to pass data to barebox
 proper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 21.05.24 12:49, Sascha Hauer wrote:
> EFI payload uses custom fields in struct boarddata to pass data from PBL
> to barebox proper. handoff data was created for exactly this purpose.
> Now that we have it, switch EFI payload over to use it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Tested with barebox as EFI payload compiled for arm64 with both
Tianocore and barebox as EFI loader.

> ---
>  efi/payload/boarddata.c    | 12 +++++++-----
>  efi/payload/entry-multi.c  | 16 +++++++---------
>  include/boarddata.h        |  4 ----
>  include/efi/efi-payload.h  |  5 +++++
>  include/pbl/handoff-data.h |  1 +
>  5 files changed, 20 insertions(+), 18 deletions(-)
> 
> diff --git a/efi/payload/boarddata.c b/efi/payload/boarddata.c
> index 3260e31c7b..d4e4b5ac1d 100644
> --- a/efi/payload/boarddata.c
> +++ b/efi/payload/boarddata.c
> @@ -8,25 +8,27 @@
>  
>  #include <efi/efi-payload.h>
>  #include <efi.h>
> -#include <boarddata.h>
>  #include <memory.h>
>  #include <linux/kernel.h>
>  #include <linux/printk.h>
>  #include <debug_ll.h>
>  #include <init.h>
> +#include <pbl/handoff-data.h>
>  
>  static int handle_efi_boarddata(void)
>  {
> -	const struct barebox_boarddata *bd = barebox_get_boarddata();
> +	size_t size;
> +	struct barebox_efi_data *efidata;
>  	efi_status_t efiret;
>  
> -	if (!barebox_boarddata_is_machine(bd, BAREBOX_MACH_TYPE_EFI))
> +	efidata = handoff_data_get_entry(HANDOFF_DATA_EFI, &size);
> +	if (!efidata)
>  		return 0;
>  
>  	barebox_add_memory_bank("ram0", mem_malloc_start(), mem_malloc_size());
>  
> -	efi_parent_image = bd->image;
> -	efi_sys_table = bd->sys_table;
> +	efi_parent_image = efidata->image;
> +	efi_sys_table = efidata->sys_table;
>  	BS = efi_sys_table->boottime;
>  	RT = efi_sys_table->runtime;
>  
> diff --git a/efi/payload/entry-multi.c b/efi/payload/entry-multi.c
> index f929ab01ec..26cf2ebfa7 100644
> --- a/efi/payload/entry-multi.c
> +++ b/efi/payload/entry-multi.c
> @@ -3,18 +3,13 @@
>  #include <linux/kernel.h>
>  #include <linux/linkage.h>
>  #include <linux/sizes.h>
> -#include <boarddata.h>
>  #include <stdio.h>
>  #include <efi.h>
>  #include <asm/common.h>
>  #include <efi/efi-util.h>
>  #include <efi/efi-payload.h>
>  #include <pbl.h>
> -
> -static struct barebox_boarddata boarddata = {
> -	.magic = BAREBOX_BOARDDATA_MAGIC,
> -	.machine = BAREBOX_MACH_TYPE_EFI,
> -};
> +#include <pbl/handoff-data.h>
>  
>  asmlinkage void __efistub_efi_pe_entry(void *image, struct efi_system_table *sys_table);
>  
> @@ -30,16 +25,19 @@ void __efistub_efi_pe_entry(void *image, struct efi_system_table *sys_table)
>  {
>  	size_t memsize;
>  	efi_physical_addr_t mem;
> +	static struct barebox_efi_data efidata;
>  
>  #ifdef DEBUG
>  	sys_table->con_out->output_string(sys_table->con_out, L"\nbarebox\n");
>  #endif
>  	pbl_set_putc(efi_putc, sys_table);
>  
> -	boarddata.image = image;
> -	boarddata.sys_table = sys_table;
> +	efidata.image = image;
> +	efidata.sys_table = sys_table;
> +
> +	handoff_data_add(HANDOFF_DATA_EFI, &efidata, sizeof(efidata));
>  
>  	mem = efi_earlymem_alloc(sys_table, &memsize);
>  
> -	barebox_pbl_entry(mem, memsize, &boarddata);
> +	barebox_pbl_entry(mem, memsize, NULL);
>  }
> diff --git a/include/boarddata.h b/include/boarddata.h
> index 8c048fd957..6092d5f304 100644
> --- a/include/boarddata.h
> +++ b/include/boarddata.h
> @@ -15,10 +15,6 @@ struct barebox_boarddata {
>  		      * that do not potientially clashes with registered machines,
>  		      * i.e. use a number > 0x10000.
>  		      */
> -#ifdef CONFIG_EFI_STUB
> -	void *image;
> -	void *sys_table;
> -#endif
>  };
>  
>  /*
> diff --git a/include/efi/efi-payload.h b/include/efi/efi-payload.h
> index 774c069229..73b1b9bd8e 100644
> --- a/include/efi/efi-payload.h
> +++ b/include/efi/efi-payload.h
> @@ -8,6 +8,11 @@
>  struct efi_system_table;
>  struct efi_loaded_image;
>  
> +struct barebox_efi_data {
> +	void *image;
> +	void *sys_table;
> +};
> +
>  extern struct efi_system_table *efi_sys_table;
>  extern efi_handle_t efi_parent_image;
>  extern struct efi_device_path *efi_device_path;
> diff --git a/include/pbl/handoff-data.h b/include/pbl/handoff-data.h
> index 18ea9e508b..044b4bb884 100644
> --- a/include/pbl/handoff-data.h
> +++ b/include/pbl/handoff-data.h
> @@ -12,6 +12,7 @@ struct handoff_data {
>  #define HANDOFF_DATA_INTERNAL_DT_Z	HANDOFF_DATA_BAREBOX(1)
>  #define HANDOFF_DATA_EXTERNAL_DT	HANDOFF_DATA_BAREBOX(2)
>  #define HANDOFF_DATA_BOARDDATA		HANDOFF_DATA_BAREBOX(3)
> +#define HANDOFF_DATA_EFI		HANDOFF_DATA_BAREBOX(4)
>  
>  #define HANDOFF_DATA_BOARD(n)		(0x951726fb + (n))
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



