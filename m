Delivery-date: Wed, 16 Aug 2023 12:03:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWDMj-0067UZ-Re
	for lore@lore.pengutronix.de; Wed, 16 Aug 2023 12:03:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWDMh-00056e-Tf
	for lore@pengutronix.de; Wed, 16 Aug 2023 12:03:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TPjcQgF8ar9FmfzkRX0wkel8j4IO34zGSAZ6GlRwUb4=; b=iZy/nMcBR8wtH0bCC99+BsEFs+
	mKuggMXo8gCHpGtTbEvrIsu9ApnJgvZLmrADCxilioBBN0XmnRZEYBuwtzpEA7metLbPOBg0UIIcI
	EEs8/tTxlGmt0pa4f+R6dh3oop2SMdVDmIenLeEVT716sJUThAgm/LY/UIYS1kZ7oRuGRrp7vTNMG
	0JGnXtEDUHJ38/Vcec7r/R6lshsUbvwkk56jEPlTfDuV7I6VZgdNrEC8KcAUrx08kUxyH5GF8Ro8o
	M4n0vVC7BA+5mwLm01N7SMnYynqzQ7w9dB12ZBbkSJM5V3QP2TMMtJvOnhCoz5KB3ZggBmrnm7LYf
	KGV10oOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWDLc-003gRD-0v;
	Wed, 16 Aug 2023 10:01:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWDLZ-003gQo-11
	for barebox@lists.infradead.org;
	Wed, 16 Aug 2023 10:01:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWDLX-0004s2-9c; Wed, 16 Aug 2023 12:01:47 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWDLW-0001oH-Sb; Wed, 16 Aug 2023 12:01:46 +0200
Date: Wed, 16 Aug 2023 12:01:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Lior Weintraub <liorw@pliops.com>
Cc: "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
	"barebox@lists.infradead.org" <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230816100146.GF5650@pengutronix.de>
References: <PR3P195MB0555C0CAAE5F70743B7DC534C317A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PR3P195MB0555C0CAAE5F70743B7DC534C317A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_030149_369769_A099D91E 
X-CRM114-Status: GOOD (  24.50  )
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
Subject: Re: ARM: aarch64: lowlevel: potential bug in arm_cpu_lowlevel_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Lior,

On Mon, Aug 14, 2023 at 11:35:05AM +0000, Lior Weintraub wrote:
>    Link: [1]File-List
>    Hi Andrew,
>     
>    I am asking about a patch you've introduced about 4 years ago:
>    Commit: cd6e1857a6a824d562bd27379d191602c074f6b7
>     
>    ENTRY(arm_cpu_lowlevel_init)
>                    switch_el x1, 3f, 2f, 1f
>     
>    3:
>                    mov       x0, #1                                    /*
>    Non-Secure EL0/1 */
>                    orr          x0, x0, #(1 << 10)              /* 64-bit EL2
>    */
>                    msr        scr_el3, x0
>                    msr        cptr_el3, xzr
>     
>                    mrs        x0, sctlr_el3
>                    ldr           x1, =SCTLR_ELx_FLAGS
>                    bic          x0, x0, x1
>                    msr        sctlr_el3, x0
>                    isb
>     
>                    b             done
>     
>    This code has introduced a bug in our barebox porting.
>    It could be our mistake but then again we couldn't find any prerequisites
>    conditions that bootloaders need to meet before passing control to barebox
>    pbl.
>    There are 2 bugs that can happen here:
>     1. The bootloader enabled MMU and set the SRAM (given to barebox) as
>        non-secure – This issue can be resolved with adding "dsb sy" command
>        before the "isb"
>     2. The bootloader enabled MMU and dcache on SRAM (given to barebox) as
>        non-secure – This is a bit harder to solve because it needs to call
>        cache invalidate on the stack.

Eventhough it might not be explicitly documented, barebox normally
expects to be called with MMU disabled.

When the MMU is enabled it could have virtually any mapping and there's
no sane way to disable the MMU then.

If your bootloader enables the MMU and there is no way to change that,
then it's up to your board entry code to disable the MMU before calling into
barebox. That said, when there's something can change in arm_cpu_lowlevel_init()
to help you with your case, then we can do that, but I wouldn't consider
this a bug in barebox.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


