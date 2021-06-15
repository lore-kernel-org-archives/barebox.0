Delivery-date: Tue, 15 Jun 2021 19:34:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCxU-00036E-Jm
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 19:34:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCxS-00022t-S8
	for lore@pengutronix.de; Tue, 15 Jun 2021 19:34:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8bJm6n63pzoVs0h/bheKR6uUzOvfrkrU2oIfhYC78Ws=; b=0uWh0SCbxcNjDbkHiwDSahPPy4
	CaXKypyeT5adgQXuc3xWd9z1kITankrb3PAjvg7fpYR6yLqXhSkkx1c4qsdTe6PUcI6LLzRCDP4k7
	G1URwQeESaiqnstIr0CfU5z3j/qr9SA8Y0x8nPAUlOo/75QK0MlehJlHbLfqIWOuADLgrgkJR0MFF
	kR2iCs8zyHLPHS0psfp1s5rAPmKCagG9zJhAz6ZIO1ucRxyud1YBOjVSmD+LD82ni24/PihWvb3cw
	dsvSl4kRbCY7YtWjK/JtOi9kn+VCyzOxh/cieATYnnr4BGYDvltHDg98VTLdxFJtY85QJK9q06tDM
	RoC48upA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltCw8-001lGP-Ab; Tue, 15 Jun 2021 17:33:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9IM-000E8e-RW
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 13:39:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=3CNZbdvCgRPk6i6lTfr2LuaG89dnpWFNhqnoR37g7zg=; b=nUCqP6TKh8wBrjrTAK9lEM9RLD
 TxB5mp9JjtQkauu2MhvBihAiQ8W8zbrwHCgjGRzQ/Cu7dzd9quu8WQdrxDDIFM0rVMRzbNZ8gy0FS
 TkVVnuzVwU6F2NHYVJ0eWq5X+2SLUZXvz3hc9poHj+yO2t4WWfRHIYitWUt8bSvGpGhBlN3vO/q/e
 Zsn8J8VYy7/G9hFB/EqPxbhxwsvPvkTlRT2KpGBUAf0oiMgWawFM1v8lGRdoJBQqqjhA5jED5qqRb
 bS01Qeoelify9Fwy27X6DsixF/XeEbp2IFDrZkW9GVPykLWWL4q5OjYJlyFobGLrmk7qi0t4GLH/E
 Nx24i+Ug==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt59K-007Y7j-Eg
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 09:14:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt59Q-0005Mn-OU; Tue, 15 Jun 2021 11:14:28 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt59Q-000783-Ee; Tue, 15 Jun 2021 11:14:28 +0200
Date: Tue, 15 Jun 2021 11:14:28 +0200
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org
Message-ID: <20210615091428.GF9782@pengutronix.de>
References: <20210613222639.13190-1-marc@cpdesign.com.au>
 <20210613222639.13190-3-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210613222639.13190-3-marc@cpdesign.com.au>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:14:08 up 117 days, 12:38, 119 users,  load average: 0.05, 0.15,
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_101429_344514_1951F5B8 
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] ARM: am33xx: add define for 800Mhz MPU PLL point
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 14, 2021 at 08:26:38AM +1000, Marc Reilly wrote:
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  arch/arm/mach-omap/include/mach/am33xx-clock.h | 1 +
>  1 file changed, 1 insertion(+)

Applied this one and 4/4 for now.

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

