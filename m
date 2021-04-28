Delivery-date: Wed, 28 Apr 2021 12:49:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbhlI-0007zy-Hj
	for lore@lore.pengutronix.de; Wed, 28 Apr 2021 12:49:44 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbhlH-00086f-Hy
	for lore@pengutronix.de; Wed, 28 Apr 2021 12:49:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DKnkT80aDH4C6ZLx/JMWqqsN1FwWJ8f8RUe+Hr+Ug+c=; b=hs1cfEmAae2Ca/71lP/9n1FFY
	2ClVBXUiCIsUCSWvht6X9K6ZaY73ZPfNin8Llom2rShsByVv4nMP1CGtY+cQX+Huf3+1+GG5hCQ2H
	82xTsSXHeZltFEOTBchsHm8zphMW/Dzc8ETqk+CxKDA58mjACKxLk2g9lbZOFpa7hXFvj43ifbCEh
	Unbwdhknm6z9B9x5MGHrRTyu+u947+zTfdAeZx9AZV6AYYv54olHPxswsv7UO0uSUwHVhKjv+xVr9
	FSQxdXPaAEhJ/2SKSif3kzDsR0P5Gg08thdFRZwm4MQ4+02wxwlGS/oaHKmyP5baZtCDD2Se6TZCB
	ekGgMA6eA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbhkA-003KgU-M1; Wed, 28 Apr 2021 10:48:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbhk1-003KgM-Fa
 for barebox@desiato.infradead.org; Wed, 28 Apr 2021 10:48:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Vnu1AXdosp7s4Mv65zQek0ev3ufBnDxxHTekssZRuqc=; b=pH7aSZvOwAshH2QIqpebLNaBKO
 3DpSaYD6sFaTpji9IVk31WiKbQs7od3gEM0A6iuukrCPSVQXZwo169BugLNeepd/19m0z582HpbyZ
 8MWyKkI6PusQLCdUWRctadVjRAADLSw5ZQVQEV8/P0wUPjhFysY3rHeEG413UM0m7w/QtXs012Uqm
 gd9eJe1INuIaUpL3as3Tmnfx83BqkE5SsKiMjemLFMJukR9YIO8ExB7rkd8TyWqVLmS0OPzPRyHF7
 TS2UTFMoKJ9rBt75TPmkRkxM4B49MQveJXHq5iY7mPsJz7FO/65XT5/dLZkjcWT8yzFrx7uX6XbQ3
 E/XgFdiw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbhjy-00HMya-8P
 for barebox@lists.infradead.org; Wed, 28 Apr 2021 10:48:24 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1lbhjw-0007wE-Mm; Wed, 28 Apr 2021 12:48:20 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1lbhjw-0005um-BD; Wed, 28 Apr 2021 12:48:20 +0200
Date: Wed, 28 Apr 2021 12:48:20 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210428104820.5rgsvqptcwpmgp5q@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
 <20210428102821.2287-1-m.felsch@pengutronix.de>
 <05cf257f-fb53-1465-33d9-d5d69dca6e9d@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <05cf257f-fb53-1465-33d9-d5d69dca6e9d@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:44:18 up 147 days, 50 min, 48 users,  load average: 0.35, 0.15,
 0.12
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_034822_487180_DB98E6DA 
X-CRM114-Status: GOOD (  35.74  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] fixup! common: add initial barebox deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 21-04-28 12:42, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 28.04.21 12:28, Marco Felsch wrote:
> > ---
> > Hi,
> > 
> > this is just a proposal to change the current linker array approach to
> > an initcall approach. Why? Because now we can simply register a
> > board-driver without having to list each compatible. 
> > 
> > I used the pure_initcall without adding a new one, since the
> > documentation says that pure_initcalls are used to init variables. In
> > our case we init boards_list.
> > 
> > Regards,
> >   Marco
> > 
> >  common/deep-probe.c               | 38 +++++++++++++++++++++++++++++--
> >  include/asm-generic/barebox.lds.h | 10 +-------
> >  include/deep-probe.h              | 34 +++++++++++++++------------
> >  3 files changed, 56 insertions(+), 26 deletions(-)
> > 
> > diff --git a/common/deep-probe.c b/common/deep-probe.c
> > index 9fc67f170c..6b04b4f5da 100644
> > --- a/common/deep-probe.c
> > +++ b/common/deep-probe.c
> > @@ -2,8 +2,16 @@
> >  
> >  #include <common.h>
> >  #include <deep-probe.h>
> > +#include <linux/list.h>
> >  #include <of.h>
> >  
> > +struct deep_probe_entry {
> > +	struct list_head entry;
> > +	const char *compatible;
> > +};
> > +
> > +LIST_HEAD(boards_list);
> 
> Looks like it can be made static?

Of course.

> > +
> >  enum deep_probe_state {
> >  	DEEP_PROBE_UNKONWN = -1,
> >  	DEEP_PROBE_NOT_SUPPORTED,
> > @@ -12,6 +20,33 @@ enum deep_probe_state {
> >  
> >  static enum deep_probe_state boardstate = DEEP_PROBE_UNKONWN;
> >  
> > +int deep_probe_enable_board(const struct driver_d *board_driver, const char *compatible)
> > +{
> > +	struct deep_probe_entry *new;
> > +
> > +	if (!board_driver && !compatible)
> > +		return -EINVAL;
> > +
> > +	if (board_driver) {
> > +		const struct of_device_id *of_device_ids = board_driver->of_compatible;
> > +
> > +		for (; of_device_ids->compatible; of_device_ids++) {
> > +			new = xzalloc(sizeof(*new));
> > +			new->compatible = of_device_ids->compatible;
> > +			list_add(&new->entry, &boards_list);
> > +		}
> > +	}
> > +
> > +	if (compatible) {
> > +		new = xzalloc(sizeof(*new));
> > +		new->compatible = compatible;
> > +		list_add(&new->entry, &boards_list);
> > +	}
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(deep_probe_enable_board);
> > +
> >  bool deep_probe_is_supported(void)
> >  {
> >  	struct deep_probe_entry *board;
> > @@ -20,8 +55,7 @@ bool deep_probe_is_supported(void)
> >  		return boardstate;
> >  
> >  	/* determine boardstate */
> > -	for (board = &__barebox_deep_probe_start;
> > -	     board != &__barebox_deep_probe_end; board++) {
> > +	list_for_each_entry(board, &boards_list, entry) {
> >  		if (of_machine_is_compatible(board->compatible)) {
> >  			boardstate = DEEP_PROBE_SUPPORTED;
> >  			return true;
> > diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
> > index c5f9d97547..a7d32160d1 100644
> > --- a/include/asm-generic/barebox.lds.h
> > +++ b/include/asm-generic/barebox.lds.h
> > @@ -114,13 +114,6 @@
> >  	KEEP(*(.rsa_keys.rodata.*));		\
> >  	__rsa_keys_end = .;			\
> >  
> > -#define BAREBOX_DEEP_PROBE			\
> > -	STRUCT_ALIGN();				\
> > -	__barebox_deep_probe_start = .;		\
> > -	KEEP(*(SORT_BY_NAME(.barebox_deep_probe*)))	\
> > -	__barebox_deep_probe_end = .;
> > -
> > -
> >  #ifdef CONFIG_CONSTRUCTORS
> >  #define KERNEL_CTORS()  . = ALIGN(8);                      \
> >  			__ctors_start = .;                 \
> > @@ -143,8 +136,7 @@
> >  	BAREBOX_CLK_TABLE			\
> >  	BAREBOX_DTB				\
> >  	BAREBOX_RSA_KEYS			\
> > -	BAREBOX_PCI_FIXUP			\
> > -	BAREBOX_DEEP_PROBE
> > +	BAREBOX_PCI_FIXUP
> >  
> >  #if defined(CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE) && \
> >  CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE < CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
> > diff --git a/include/deep-probe.h b/include/deep-probe.h
> > index a646c10340..e00bd9bafe 100644
> > --- a/include/deep-probe.h
> > +++ b/include/deep-probe.h
> > @@ -2,25 +2,29 @@
> >  #ifndef __DEEP_PROBE_H
> >  #define __DEEP_PROBE_H
> >  
> > -#include <linux/stringify.h>
> > -#include <linux/types.h>
> > -
> > -struct deep_probe_entry {
> > -	const char *compatible;
> > -};
> > +struct driver_d;
> >  
> >  bool deep_probe_is_supported(void);
> > +int deep_probe_enable_board(const struct driver_d *board_driver, const char *compatible);
> > +
> > +#define _deep_probe_enable_driver(id,drv)			\
> > +	static int __init id(void)				\
> 
> Can't you use drv ## deep_probe_init here and drop id?

Yep, we could use this approach to.

> 
> > +	{							\
> > +		return deep_probe_enable_board(&drv,NULL);	\
> 
> Missing whitespace

> 
> > +	}							\
> > +	pure_initcall(id)
> >  
> > -extern struct deep_probe_entry __barebox_deep_probe_start;
> > -extern struct deep_probe_entry __barebox_deep_probe_end;
> > +#define deep_probe_enable_board_driver(drv)			\
> > +	_deep_probe_enable_driver(__UNIQUE_ID(deepprobe),drv)
> >  
> > -#define __BAREBOX_DEEP_PROBE_ENABLE(_entry,_compatible)			\
> > -	static const struct deep_probe_entry _entry			\
> > -	__attribute__ ((used,section (".barebox_deep_probe_" __stringify(_entry)))) = { \
> > -		.compatible = _compatible,				\
> > -	}
> > +#define _deep_probe_enable_compatible(id,compatible)		\
> > +	static int __init id(void)				\
> > +	{							\
> > +		return deep_probe_enable_board(NULL,compatible);\
> > +	}							\
> > +	pure_initcall(id)
> >  
> > -#define BAREBOX_DEEP_PROBE_ENABLE(_compatible)	\
> > -	__BAREBOX_DEEP_PROBE_ENABLE(__UNIQUE_ID(deepprobe),_compatible)
> > +#define deep_probe_enable_board_compatible(compatible)		\
> > +	_deep_probe_enable_compatible(__UNIQUE_ID(deepprobe),compatible)
> >  
> >  #endif /* __DEEP_PROBE_H */
> 
> Apart from that, I like it:

Thanks for the input, will change it and send a new fixup.

Regards,
  Marco

> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

