Delivery-date: Fri, 11 Jun 2021 09:57:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrc2R-0001on-3k
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 09:57:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrc2Q-0006lm-8T
	for lore@pengutronix.de; Fri, 11 Jun 2021 09:57:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Yk1MKaVfSk7LgJI3L1HqwRse/FWorT6V7SN7H2qvxJk=; b=n8JZnfHLfBfvPUvA6qIfJ3NDF/
	uy7KUk1QG/2QPgeiqqdMfd1DSDiI+Tv79UhjWaMXPo6DL7OaXTMmM+nD0UYhzDuvGhOChxaPUV8UC
	IVE5ucKI1NVzcuxQDL5B+pF/37ESYV72vt1PdL4/UT+YCoAAf3Ph45O8r6h6YrXt60Jgd71kXTrdp
	tNg2S9ulWr7HznM8xBRr2Nwb+PQrLZttI1PcnETN9fp13xyCR8TkvLiUUPmIHbkA9GVP93SY2heQU
	T6xGaeGX+/lEbaAXSlpDuSygMsH2xsNHn/oZr4JSAB75cpK7+JYWZU+7pnAiPghyp7nD7NmB/HwFu
	y6Nvuw/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrc11-004F4X-G5; Fri, 11 Jun 2021 07:55:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrc0w-004F3Q-2q
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 07:55:39 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lrc0u-0006Vd-EG; Fri, 11 Jun 2021 09:55:36 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
 <20210602095507.24609-5-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <6dde4130-1f96-d925-9e53-9f8c74d89a1f@pengutronix.de>
Date: Fri, 11 Jun 2021 09:55:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210602095507.24609-5-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_005538_156254_9010A409 
X-CRM114-Status: GOOD (  16.01  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/24] clk: introduce struct clk_hw
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 02.06.21 11:54, Sascha Hauer wrote:

> In Linux the ops in struct clk_ops take a struct clk_hw * argument

> instead of a struct clk * argument as in barebox. With this taking

> new clk drivers from Linux requires a lot of mechanical conversions.

> Instead of doing this over and over again swallow the pill once and

> convert the existing barebox code over to clk_hw.

> 

> The implementation is a little different from Linux. In Linux struct clk

> is only known to the core clock code. In barebox struct clk is

> publically known and it is embedded into struct clk_hw. This allows

> us to still use struct clk members in the clock drivers which we

> currently still need, because otherwise this patch would be even

> bigger.

> 

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

drivers/clk/sifive, which was added recently doesn't have these changes
and thus the build fails. To reproduce, without installed RISC-V toolchain, try:

   ./test/emulate.pl --runtime=podman sifive_defconfig

Doing the conversions aren't completely trivial to me, as there are no
clkdev clk_hw helpers ported and I still need to figure out how to use them.
Given that your caches are still hot, could you take a look?

Thanks,
Ahmad

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

