Delivery-date: Tue, 30 Mar 2021 07:37:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR74g-0002sT-Va
	for lore@lore.pengutronix.de; Tue, 30 Mar 2021 07:37:58 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR74g-0002GJ-Ak
	for lore@pengutronix.de; Tue, 30 Mar 2021 07:37:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tkr6RvaXUewIyTlwXDYm0EDvGUnEGSpAESKhImUYlNw=; b=fk+eQC+ayemDaNbHGn3LTF52b
	/o/JwXJyK6YPaPswIeGTPLzjx/cfYO1h1xjOZtSFjSi9Nfyc0QgLOSvS3NphmhpHkW4uL3pIpLY4R
	rKOvdmZ6ZE9+KUdgTRnUhM2LcadAPVzlW6muymdEsj7IFj9chsjAOi546vQ7mqYx/ub5ceF0JT4nB
	vjKL9uL2QPkWwLX1p8RJcRXx3vsYCIWF5oAA5f3jeA731IdlDTtl/vNUv5yOhWXib4Z2DwEr/27Gr
	yf0HOa/UbziB/4SrsVTEmyyoyko5ItoQw7gfTVt2rOcbAX07qO7XRKjDJdGB7eN0uowHAVwLaBRnC
	Wv5s9N9ng==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lR73k-002lcP-6w; Tue, 30 Mar 2021 05:37:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lR73b-002lb5-EC
 for barebox@lists.infradead.org; Tue, 30 Mar 2021 05:36:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lR73Z-0002BR-RZ; Tue, 30 Mar 2021 07:36:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lR73Z-0008WO-I1; Tue, 30 Mar 2021 07:36:49 +0200
Date: Tue, 30 Mar 2021 07:36:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210330053649.GJ609@pengutronix.de>
References: <20210329223120.442256-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210329223120.442256-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:36:39 up 40 days,  9:00, 61 users,  load average: 0.04, 0.06, 0.06
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_063651_562675_765A0D2A 
X-CRM114-Status: GOOD (  16.05  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] RISC-V cycle timer fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 30, 2021 at 01:31:17AM +0300, Antony Pavlov wrote:
> Antony Pavlov (3):
>   clocksource: timer-riscv: adapt riscv_timer_get_count_rdcycle() for
>     RV32
>   RISC-V: erizo.dtsi: set timebase-frequency = <24000000>
>   RISC-V: drop old timer handling code
> 

Applied, thanks

Sascha

>  arch/riscv/dts/erizo.dtsi         |  2 +
>  arch/riscv/lib/Makefile           |  2 +-
>  arch/riscv/lib/riscv_timer.c      | 63 -------------------------------
>  drivers/clocksource/timer-riscv.c | 13 +++++--
>  4 files changed, 13 insertions(+), 67 deletions(-)
>  delete mode 100644 arch/riscv/lib/riscv_timer.c
> 
> -- 
> 2.30.1
> 
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

