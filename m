Delivery-date: Thu, 25 Nov 2021 08:47:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mq9U6-0005Q4-RP
	for lore@lore.pengutronix.de; Thu, 25 Nov 2021 08:47:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mq9U6-0006sq-0r
	for lore@pengutronix.de; Thu, 25 Nov 2021 08:47:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ogJS/nkDKeCg+hcH5XKCf9i82PtP8uTlhUVNAvMqZ/w=; b=QgtcAGxNy+6ymwnorrqkLIH+Q5
	Hn9AFddwEEmwLpr2y6H2DaV6TEHQ50IZWchXcfv8y4T7p8Qfiuw7Ai1rty0kTyoxp1lRkz2Z0aA5a
	m6mGwCRVCJR9hzM9xvbEob46iWPzSTlqN+K6YBjNuPSv5oy6bTOWUXVGAdvLAGSb0T89U7FFVvswm
	AFn2pEbDVEHUPs3VP031PUTbfJPrMT0Ma44Dn2YOZP3v2ULksj/uURVP5tg3vWUQDM690EFh4LQ1b
	iY/1SRP0BNXu8wKvDVkJT5wi8PFoh+7Z3oOYw45DYqOwGSMWBElXUGzaISsjNjStKcUfPVKUO4nFS
	tWb9Aeyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mq9Sy-006cgb-Kl; Thu, 25 Nov 2021 07:46:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mq9St-006cfi-Od
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 07:46:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mq9Ss-0006mt-J5; Thu, 25 Nov 2021 08:46:42 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mq9Ss-0007aZ-8G; Thu, 25 Nov 2021 08:46:42 +0100
Date: Thu, 25 Nov 2021 08:46:42 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20211125074642.GC28260@pengutronix.de>
References: <20211122205056.267375-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211122205056.267375-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:46:15 up 280 days, 11:10, 136 users,  load average: 0.24, 0.21,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_234643_825540_17CE03B3 
X-CRM114-Status: GOOD (  17.20  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] RISC-V: configs: virt: enable networking and PCI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 22, 2021 at 09:50:56PM +0100, Ahmad Fatoum wrote:
> Recently, we have gained support for PCI and virtio networking. Enable
> both in the config as well as related useful options that depends on
> them.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/riscv/Kconfig.socs             |  1 +
>  arch/riscv/configs/virt32_defconfig | 20 ++++++++++++++++----
>  arch/riscv/configs/virt64_defconfig | 22 +++++++++++++++++-----
>  3 files changed, 34 insertions(+), 9 deletions(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

