Delivery-date: Tue, 14 Apr 2026 08:31:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCXJK-00BzDm-0J
	for lore@lore.pengutronix.de;
	Tue, 14 Apr 2026 08:31:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCXJJ-0007LS-HN
	for lore@pengutronix.de; Tue, 14 Apr 2026 08:31:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U7y0XjwVZQ2Y+rHBomZ8mkgCEVX02kwxON4EfcBU704=; b=YFNpRQyFLIq3W2fsqJ0YvC2JG4
	UyWzGHDoHUaCf5SG1DIIdQlKkBntUMLwYkgJbVHSZqzgQsCZ7lFcwBo/XUWcGYUHisGarpROk+vSs
	gU+oAqonyDlFRwLgsdHKC1tmJdADT1PwCbMSE5d2v9C1ePSr9THTNQAWw0qDg41zffuRXqouvRY9K
	n6ENx/oklKY9VQ6bDdH+y6I5ZyFvK6ZWolA6X0l0TA4cezqGZVmMpeff+RT/E5hG6iGeem435a8fk
	WGbVjqa+srB6f9emFdPXkOr7A1Chi1ofowHtKHATNE4t29uLPVqaQl6EBX1BPXft7KYYDPjEMCLmW
	euhk1J7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCXIi-0000000GqXJ-2nFW;
	Tue, 14 Apr 2026 06:31:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCXIf-0000000GqWR-0BNB
	for barebox@lists.infradead.org;
	Tue, 14 Apr 2026 06:31:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wCXIc-0007F2-Qi; Tue, 14 Apr 2026 08:31:02 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wCXIc-005IMA-23;
	Tue, 14 Apr 2026 08:31:02 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wCXIc-00000009Q4V-2FLX;
	Tue, 14 Apr 2026 08:31:02 +0200
Date: Tue, 14 Apr 2026 08:31:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <ad3fJpN3kBt-WN7X@pengutronix.de>
References: <20260413102812.1481805-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260413102812.1481805-1-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_233105_079439_590AD44F 
X-CRM114-Status: GOOD (  17.23  )
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
Subject: Re: [PATCH] mem: add flush callback to sync caches for execution
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Apr 13, 2026 at 12:28:12PM +0200, Ahmad Fatoum wrote:
> barebox always calls sync_caches_for_execution() on boot, but it can be
> useful to trigger it manually when testing:
> 
> - memcpy -s /dev/zero -d /dev/mem 0 $TFA_REGION_BASE $TFA_REGION_SIZE
> - sync /dev/mem # flush D$ and invalidate I$
> - smc -i        # check if PSCI monitor is still usable
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  drivers/misc/mem.c | 8 ++++++++
>  1 file changed, 8 insertions(+)

Reverted this one. It breaks compilation on riscv:

In file included from drivers/misc/mem.c:9:
arch/riscv/include/asm/cache.h: In function 'local_flush_icache_all':
arch/riscv/include/asm/cache.h:25:9: error: implicit declaration of function 'riscv_vendor_id' [-Werror=implicit-function-declaration]
   25 |  switch(riscv_vendor_id()) {

And PowerPC:

powerpc-603e-linux-gnu-ld: drivers/misc/mem.o: in function `mem_flush':
drivers/misc/mem.c:13:(.text.mem_flush+0xc): undefined reference to `sync_caches_for_execution'
make[1]: *** [Makefile:1099: barebox] Error 1

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


