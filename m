Delivery-date: Mon, 12 Sep 2022 11:17:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfZH-0024Vp-VH
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 11:17:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfZG-0002c9-JQ
	for lore@pengutronix.de; Mon, 12 Sep 2022 11:17:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ykAYsGvhgxfGUlSayRz1YXD/4zNoXLd9Kr0Mwb95Lxw=; b=QSpqxLoATeF2y/tsOKXlRcVmGr
	usfq3fKLr/UR/P50wY4VTB1hxJj6tuHDm8+WXMyGiCElW4UzqyK9hRdBY1xpJe4HomvN4WMJhR7GJ
	CD15c4d7c8vmF99jRnn4TjpfDCaWdDedXIPt0Q+C2w7Y6KT9k0KTk1hlIH5TXIOTqtcnuM0VN8T/+
	nu22NxmOz6EqaVt+ttJkNAynuG4UV7XOJXZSyVW42ja2bxal4VLjE6mC+a6XiYD6UmAq5KrraNYw/
	pUu3v9eTRMYvpjEn9gOH98FONz2mTksEqJi7Yr24+bftktcKhZGLEdW03qx9vl5u+CqiJNSHL7r26
	4L+1DPeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfXb-0089pX-Q5; Mon, 12 Sep 2022 09:15:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXeOD-007fRD-Kl
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 08:02:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXeO9-00083A-8L; Mon, 12 Sep 2022 10:01:53 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXeO8-00020X-I2; Mon, 12 Sep 2022 10:01:52 +0200
Date: Mon, 12 Sep 2022 10:01:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Trent Piepho <trent.piepho@igorinstitute.com>,
	Oleksij Rempel <o.rempel@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Barebox List <barebox@lists.infradead.org>
Message-ID: <20220912080152.GE24324@pengutronix.de>
References: <20220907112118.71575e3650222736432b3086@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220907112118.71575e3650222736432b3086@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_010157_710345_5D52B8B4 
X-CRM114-Status: GOOD (  27.39  )
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
Subject: Re: Makefile.lib: cmd_dtc: warning: missing whitespace after the
 macro name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Sep 07, 2022 at 11:21:18AM +0300, Antony Pavlov wrote:
> Hi Everyone!
> 
> During MIPS ath79_defconfig build I have a 'missing whitespace after the macro name' warning:
> 
>   AS [P]  arch/mips/dts/ar9331_tl_mr3020.dtb.pbl.o
>   DTC     arch/mips/dts/ar9344-tl-wdr4300-v1.7.dtb
> <stdin>:1:9: warning: missing whitespace after the macro name
>   XZKERN  arch/mips/dts/ar9344-tl-wdr4300-v1.7.dtb.z
> 
> E.g. see https://gitlab.com/frantony/barebox/-/jobs/2969826747#L47
> 
> The reason is the scripts/Makefile.lib generates a C macro with the point symbol in the macro name because the arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts file name contains the point symbol before '.dts', as a result we have:
> 
>   #define ar9344_tl_wdr4300_v1.7_dts 1
> 
> e.g.
> 
>   barebox$ grep -RHn -o "define ar9344_tl_wdr4300_v1.* 1" . 2>/dev/null
>   ./arch/mips/dts/.ar9344-tl-wdr4300-v1.7.dtb.cmd:1:define ar9344_tl_wdr4300_v1.7_dts 1
> 
> cmd_dtc in scripts/Makefile.lib substitutes the '-' symbols with the '_' symbols but do nothing with other unwanted C preprocessor macro name symbols.
> 
> It looks like the linux kernel has no problems with extra point symbols in dts file names, there are several files with extra dot in dts:
> 
>   barebox$ find dts/ -iname '*.*.dts' | wc -l
>   33
> 
> So we have to fix Makefile.lib.
> 
> This simple patch fixes the warning problem:
> 
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 16308497b84..2f79656c1e9 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -363,7 +363,7 @@ $(obj)/%.dtb.z: $(obj)/%.dtb FORCE
>  dts-frags = $(subst $(quote),,$(CONFIG_EXTERNAL_DTS_FRAGMENTS))
>  quiet_cmd_dtc = DTC     $@
>  # For compatibility between make 4.2 and 4.3
> -cmd_dtc = /usr/bin/env echo -e '$(pound)define $(subst -,_,$(*F))_dts 1\n'$(foreach f,$< $(dts-frags),'$(pound)include "$(f)"\n') | \
> +cmd_dtc = /usr/bin/env echo -e '$(pound)define $(subst -,_,$(subst .,_,$(*F)))_dts 1\n'$(foreach f,$< $(dts-frags),'$(pound)include "$(f)"\n') | \
>  	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) - ; \
>  	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
>  		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
> 
> I suppose that this simple patch may lead to some undesirable side effects.

One side effect is that this gets even less readable.

Another one would be that two dts filenames which only differ in the
usage of '.' and '_' would result in the same define, but I think that
case is negligible as this define is unused in barebox itself. It could
be used by external dts fragments passed in via CONFIG_EXTERNAL_DTS_FRAGMENTS.

Other than that, what side effects are you afraid of?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


