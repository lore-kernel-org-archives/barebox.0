Delivery-date: Fri, 09 Jul 2021 23:00:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m1xbM-0006R4-7Y
	for lore@lore.pengutronix.de; Fri, 09 Jul 2021 23:00:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m1xbL-0002EQ-DE
	for lore@pengutronix.de; Fri, 09 Jul 2021 23:00:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8m5vCkleI6H9GA1D1+crc9b3ZEyL389SBdKhWoKnM5A=; b=PJWk8QkViloCQ1
	Gi81vLPJVD+8n6S/ae1QJXbHoWaVpiiiWf3Pnqm8ZuQfN2oqtFVFZghGxd7a2g0vCP1r1pBLEpS71
	y7WZBVeJWkHaEvU8JjCT69kk0JPBaHWsaAMHhfiBeGUNyAuPTCrP+dzikNo11z45FsblBTPzc1Yv1
	+T8rf3wVzk83CcJcAaWAuIMW9G/VvV9uNoajDgubOdEPbNRuH1QzlyO6AKCg/mRw4m9Q9E+wm5/M1
	I3i+jj/GhuS7B7V09KhqbTR+5+GqDNZyd0wTNgroQ2EF+BmZcmPnl3t+NFpUXbq9AtTe1YiYkmLwb
	pZ7focNoTrnQS0A2dZcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1xa8-002UQQ-Qs; Fri, 09 Jul 2021 20:58:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1xa3-002UQ1-KJ
 for barebox@lists.infradead.org; Fri, 09 Jul 2021 20:58:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1m1xa2-0002Ak-BG; Fri, 09 Jul 2021 22:58:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1m1xa2-000641-1o; Fri, 09 Jul 2021 22:58:38 +0200
Date: Fri, 9 Jul 2021 22:58:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210709205838.GE9782@pengutronix.de>
References: <20210708083035.40814-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210708083035.40814-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 22:58:25 up 142 days, 22 min, 118 users, load average: 0.02, 0.10, 
 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210709_135839_709764_772CC3E5 
X-CRM114-Status: GOOD (  18.44  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH next 0/3] RISC-V: resurrect nmon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jul 08, 2021 at 11:30:32AM +0300, Antony Pavlov wrote:
> After migrating to PBL we can't use nmon assembler macro
> in C code anymore. This series adds necessary wrapper
> for invoking nmon from PBL C code.
> 
> Antony Pavlov (3):
>   RISC-V: make it possible to run nmon from PBL C code
>   RISC-V: boards: erizo: make it possible to use nmon
>   RISC-V: boards: beaglev: make it possible to use nmon

Applied, thanks

Sascha

> 
>  arch/riscv/Kconfig.socs              |  1 +
>  arch/riscv/boards/beaglev/lowlevel.c |  2 ++
>  arch/riscv/boards/erizo/lowlevel.c   |  2 ++
>  arch/riscv/boot/Makefile             |  1 +
>  arch/riscv/boot/nmon_entry.S         | 13 ++++++++
>  arch/riscv/include/asm/riscv_nmon.h  | 49 ++++++++++++++++++----------
>  6 files changed, 51 insertions(+), 17 deletions(-)
>  create mode 100644 arch/riscv/boot/nmon_entry.S
> 
> -- 
> 2.32.0
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

