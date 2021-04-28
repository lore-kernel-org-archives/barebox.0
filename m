Delivery-date: Wed, 28 Apr 2021 12:43:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbhfP-0007zJ-DO
	for lore@lore.pengutronix.de; Wed, 28 Apr 2021 12:43:39 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbhfO-0007Qe-4z
	for lore@pengutronix.de; Wed, 28 Apr 2021 12:43:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a0Ny0QGYO5rznHF67ZMkeuJoTg2URmSeaEq/d71Aw8Y=; b=hd2vKuEcgGmWrqrlg318123Oo
	+PSA06jL7RV1at9o045wgdmZuDO5l5V51nQzAf4euFKkKKmxYGW6FCu5Ip81+BDhbku5ohyAN32a8
	nghgPk1ObraxlNP5HaEyRep/Ax1kBfzE18hhn6l+vwgcc7Kked3zlHGl9XdnoY1fXk9EGWH0jQe7M
	dh4deWfNAAacsNjy7cxl1r84CnVssJsVeiS2hpfll5zKT5C69uRHFe5m9bfCv8UH3ORYnCUH27RlC
	hU19LYS3xlsWkjUTi8jCsUq369aETtHy2WYMcu0lFzfbtxQeD7r2lnFHXQKArosAaxujsEkA3MJKq
	k5MEklbYg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbheG-003JnF-4T; Wed, 28 Apr 2021 10:42:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbhe3-003JkL-QT
 for barebox@desiato.infradead.org; Wed, 28 Apr 2021 10:42:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=d2mZbqF49/9aw/M4sgVKxW8UWHnKD8Mkfmvj3+0xAP0=; b=uq0zbjnCWHyouYhCuialEia5+T
 RW694O5hB+oTuNBqzwlySM+A4i8L/FnqXJP1AnKKzUfJ9P9fZJRhFGO9m+gjI3lXvVLQBe7vuYt7a
 X76tlyA65KYprW7XEipFi5IcqnWJahgyv0sSSbOEThka3rF6lGjnufodDuipt7p5FYqPPTnETcU1+
 5jfOdI0wX2o9kIP2zG7JAu1PCj18Cpw7JBAzGQdpzR5UXvo3fotCK8X0XO1fjNKOpKDwDGVE0f2ul
 6xZc25Cr9CG5jzkLooF2fRD/2WEMORZJXjYOIyNS4NgQ5U8zLStwsqVdy3LB+1KaPbDPqaX62RngS
 rkMzrDFQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbhe0-00HMli-Ru
 for barebox@lists.infradead.org; Wed, 28 Apr 2021 10:42:14 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lbhdx-0007Lf-0E; Wed, 28 Apr 2021 12:42:09 +0200
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
 <20210428102821.2287-1-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <05cf257f-fb53-1465-33d9-d5d69dca6e9d@pengutronix.de>
Date: Wed, 28 Apr 2021 12:42:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210428102821.2287-1-m.felsch@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_034212_939162_41BF516A 
X-CRM114-Status: GOOD (  29.51  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] fixup! common: add initial barebox deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Marco,

On 28.04.21 12:28, Marco Felsch wrote:
> ---
> Hi,
> 
> this is just a proposal to change the current linker array approach to
> an initcall approach. Why? Because now we can simply register a
> board-driver without having to list each compatible. 
> 
> I used the pure_initcall without adding a new one, since the
> documentation says that pure_initcalls are used to init variables. In
> our case we init boards_list.
> 
> Regards,
>   Marco
> 
>  common/deep-probe.c               | 38 +++++++++++++++++++++++++++++--
>  include/asm-generic/barebox.lds.h | 10 +-------
>  include/deep-probe.h              | 34 +++++++++++++++------------
>  3 files changed, 56 insertions(+), 26 deletions(-)
> 
> diff --git a/common/deep-probe.c b/common/deep-probe.c
> index 9fc67f170c..6b04b4f5da 100644
> --- a/common/deep-probe.c
> +++ b/common/deep-probe.c
> @@ -2,8 +2,16 @@
>  
>  #include <common.h>
>  #include <deep-probe.h>
> +#include <linux/list.h>
>  #include <of.h>
>  
> +struct deep_probe_entry {
> +	struct list_head entry;
> +	const char *compatible;
> +};
> +
> +LIST_HEAD(boards_list);

Looks like it can be made static?

> +
>  enum deep_probe_state {
>  	DEEP_PROBE_UNKONWN = -1,
>  	DEEP_PROBE_NOT_SUPPORTED,
> @@ -12,6 +20,33 @@ enum deep_probe_state {
>  
>  static enum deep_probe_state boardstate = DEEP_PROBE_UNKONWN;
>  
> +int deep_probe_enable_board(const struct driver_d *board_driver, const char *compatible)
> +{
> +	struct deep_probe_entry *new;
> +
> +	if (!board_driver && !compatible)
> +		return -EINVAL;
> +
> +	if (board_driver) {
> +		const struct of_device_id *of_device_ids = board_driver->of_compatible;
> +
> +		for (; of_device_ids->compatible; of_device_ids++) {
> +			new = xzalloc(sizeof(*new));
> +			new->compatible = of_device_ids->compatible;
> +			list_add(&new->entry, &boards_list);
> +		}
> +	}
> +
> +	if (compatible) {
> +		new = xzalloc(sizeof(*new));
> +		new->compatible = compatible;
> +		list_add(&new->entry, &boards_list);
> +	}
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(deep_probe_enable_board);
> +
>  bool deep_probe_is_supported(void)
>  {
>  	struct deep_probe_entry *board;
> @@ -20,8 +55,7 @@ bool deep_probe_is_supported(void)
>  		return boardstate;
>  
>  	/* determine boardstate */
> -	for (board = &__barebox_deep_probe_start;
> -	     board != &__barebox_deep_probe_end; board++) {
> +	list_for_each_entry(board, &boards_list, entry) {
>  		if (of_machine_is_compatible(board->compatible)) {
>  			boardstate = DEEP_PROBE_SUPPORTED;
>  			return true;
> diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
> index c5f9d97547..a7d32160d1 100644
> --- a/include/asm-generic/barebox.lds.h
> +++ b/include/asm-generic/barebox.lds.h
> @@ -114,13 +114,6 @@
>  	KEEP(*(.rsa_keys.rodata.*));		\
>  	__rsa_keys_end = .;			\
>  
> -#define BAREBOX_DEEP_PROBE			\
> -	STRUCT_ALIGN();				\
> -	__barebox_deep_probe_start = .;		\
> -	KEEP(*(SORT_BY_NAME(.barebox_deep_probe*)))	\
> -	__barebox_deep_probe_end = .;
> -
> -
>  #ifdef CONFIG_CONSTRUCTORS
>  #define KERNEL_CTORS()  . = ALIGN(8);                      \
>  			__ctors_start = .;                 \
> @@ -143,8 +136,7 @@
>  	BAREBOX_CLK_TABLE			\
>  	BAREBOX_DTB				\
>  	BAREBOX_RSA_KEYS			\
> -	BAREBOX_PCI_FIXUP			\
> -	BAREBOX_DEEP_PROBE
> +	BAREBOX_PCI_FIXUP
>  
>  #if defined(CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE) && \
>  CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE < CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
> diff --git a/include/deep-probe.h b/include/deep-probe.h
> index a646c10340..e00bd9bafe 100644
> --- a/include/deep-probe.h
> +++ b/include/deep-probe.h
> @@ -2,25 +2,29 @@
>  #ifndef __DEEP_PROBE_H
>  #define __DEEP_PROBE_H
>  
> -#include <linux/stringify.h>
> -#include <linux/types.h>
> -
> -struct deep_probe_entry {
> -	const char *compatible;
> -};
> +struct driver_d;
>  
>  bool deep_probe_is_supported(void);
> +int deep_probe_enable_board(const struct driver_d *board_driver, const char *compatible);
> +
> +#define _deep_probe_enable_driver(id,drv)			\
> +	static int __init id(void)				\

Can't you use drv ## deep_probe_init here and drop id?

> +	{							\
> +		return deep_probe_enable_board(&drv,NULL);	\

Missing whitespace

> +	}							\
> +	pure_initcall(id)
>  
> -extern struct deep_probe_entry __barebox_deep_probe_start;
> -extern struct deep_probe_entry __barebox_deep_probe_end;
> +#define deep_probe_enable_board_driver(drv)			\
> +	_deep_probe_enable_driver(__UNIQUE_ID(deepprobe),drv)
>  
> -#define __BAREBOX_DEEP_PROBE_ENABLE(_entry,_compatible)			\
> -	static const struct deep_probe_entry _entry			\
> -	__attribute__ ((used,section (".barebox_deep_probe_" __stringify(_entry)))) = { \
> -		.compatible = _compatible,				\
> -	}
> +#define _deep_probe_enable_compatible(id,compatible)		\
> +	static int __init id(void)				\
> +	{							\
> +		return deep_probe_enable_board(NULL,compatible);\
> +	}							\
> +	pure_initcall(id)
>  
> -#define BAREBOX_DEEP_PROBE_ENABLE(_compatible)	\
> -	__BAREBOX_DEEP_PROBE_ENABLE(__UNIQUE_ID(deepprobe),_compatible)
> +#define deep_probe_enable_board_compatible(compatible)		\
> +	_deep_probe_enable_compatible(__UNIQUE_ID(deepprobe),compatible)
>  
>  #endif /* __DEEP_PROBE_H */

Apart from that, I like it:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

