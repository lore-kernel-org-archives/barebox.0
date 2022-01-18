Delivery-date: Tue, 18 Jan 2022 08:36:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9j2U-005Mbz-N8
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 08:36:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9j2S-0003Xn-T3
	for lore@pengutronix.de; Tue, 18 Jan 2022 08:36:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uupmcHIFIM7Z1kpn91pS9gquluk2HLMaAal9Ar91wNM=; b=m9eGGMEGZBeTP4IjHXDHZVMNxq
	gcQBaDfI2mhNsLKsq7Axuj/X213QMb0bETyNW59MycGdYwcjXzERohaL/xhrkPppPM/BSaR9/sVPc
	rdJW7bgZOwvtMPzWMCvKg0BMSAG+60lw6wBUJc7gqOA5OsF3ib4KfAz07iTs9DEJIA25kpMLlp8fZ
	Z42hUU59VPwl9xCMvqysAzj1LHpNVyc14quEpWa6ReMldywN6E2usopfFnKGWRlIFmxu6DVyHAkk0
	SW1ETGfxcWKNX15KS2ISnCXypIOCh/7p2udH2+CpfwuSxxn6zICR+Z7EW2ChIZdfGgO6wYMfu1q0F
	g3D73+cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9j0q-000c9X-Lc; Tue, 18 Jan 2022 07:34:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9j0l-000c8h-C2
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 07:34:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9j0k-0003D3-6a; Tue, 18 Jan 2022 08:34:34 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9j0j-0005Uu-U2; Tue, 18 Jan 2022 08:34:33 +0100
Date: Tue, 18 Jan 2022 08:34:33 +0100
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220118073433.GD23490@pengutronix.de>
References: <20220116213221.3466936-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220116213221.3466936-1-dev@lynxeye.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:34:20 up 38 days, 16:19, 59 users,  load average: 0.05, 0.08, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_233435_437141_DBDBC1AF 
X-CRM114-Status: GOOD (  20.27  )
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
Subject: Re: [PATCH 1/3] clk: ignore of_device_ensure_probed error in clock
 lookup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Jan 16, 2022 at 10:32:19PM +0100, Lucas Stach wrote:
> For CLK_OF_DECLARE clocks there is no driver that is bound to the device,
> so the lookup fails before even trying to find the provider, breaking
> the parent_ready() logic used when initializing the declared providers.
> 
> Ignore the return code from of_device_ensure_probed to allow the lookup
> to proceed as usual. If of_device_ensure_probed the lookup will also fail,
> as no provider will be found.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  drivers/clk/clk.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

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

