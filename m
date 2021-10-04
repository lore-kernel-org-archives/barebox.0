Delivery-date: Mon, 04 Oct 2021 14:00:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMeG-0007BA-MK
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 14:00:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMeF-00069L-O1
	for lore@pengutronix.de; Mon, 04 Oct 2021 14:00:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mpg2VTwQLSCVuVvT6XaNtxqgQ3PvcHGpL/pdzRiupUU=; b=NbgglY/BVlQ6U9yvouHiRtq1rc
	bur/SGv7VDeyLpy8jnwaBq9OqkUz272jV38Kdd5sI4+kOMnzdfUfvAKvdfrjwQ/vIMiMNVfVVzkPv
	7hwqbsb5pz3ANnwi7B6JLiyRJEF2e0mZPiifsBlUR6MKJkloCNNWm+VJy9aJLF767tc7zQauJiRpf
	ZDR53dCzXwv682U9PJX6HqnGVMCXtm1pRTqTglTpNY90+/QkNuOySN5x1H0QMsj7xGMWGzccXZ6Y9
	g8arZ8dJ1r/bm1yirTqElpp1LK0mwnLGTi3DMENBp8PhYnR7XJv61H6sVFcVt1dvALrR1zUIt5CSv
	N/0+Fbhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXMd0-006L3U-HK; Mon, 04 Oct 2021 11:59:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXMcu-006L2e-2g
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 11:59:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXMcs-0005wr-Kl; Mon, 04 Oct 2021 13:59:22 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXMcs-0004yv-Bg; Mon, 04 Oct 2021 13:59:22 +0200
Date: Mon, 4 Oct 2021 13:59:22 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211004115922.GG28453@pengutronix.de>
References: <20210825065554.23283-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210825065554.23283-1-r.czerwinski@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:59:07 up 228 days, 15:22, 144 users,  load average: 0.32, 0.21,
 0.24
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_045924_153188_F2D89B1A 
X-CRM114-Status: GOOD (  19.98  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: eqos: let phy_resume handle fixed link phys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Aug 25, 2021 at 08:55:54AM +0200, Rouven Czerwinski wrote:
> Currently barebox will try to talk to the phy over mdio, even if the
> parent is a fixed-link. This will result in the following stacktrace:
> 
>   barebox@Linux Automation Test Automation Controller (TAC):/ dhcp
>   unable to handle NULL pointer dereference at address 0x00000130
>   pc : [<dfc01800>]    lr : [<dfc0f963>]
>   sp : dffefd40  ip : 004c4b40  fp : d00286e0
>   r10: cf25cc4e  r9 : 00000000  r8 : 05f5e100
>   r7 : 00000130  r6 : 00000000  r5 : 00000000  r4 : 00000130
>   r3 : 00000109  r2 : 00000000  r1 : 00000000  r0 : 00000130
>   Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
>   WARNING: [<dfc01800>] (slice_acquire+0xc/0x28) from [<dfc0f963>] (mdiobus_read+0x13/0x28)
>   WARNING: [<dfc0f963>] (mdiobus_read+0x13/0x28) from [<dfc10685>] (eqos_start+0x85/0x32c)
>   WARNING: [<dfc10685>] (eqos_start+0x85/0x32c) from [<dfc3cdf1>] (eth_open+0xd/0x24)
>   WARNING: [<dfc3cdf1>] (eth_open+0xd/0x24) from [<dfc3e391>] (dhcp+0xb/0x3a)
>   WARNING: [<dfc3e391>] (dhcp+0xb/0x3a) from [<dfc30fab>] (do_dhcp+0xfb/0x114)
>   WARNING: [<dfc30fab>] (do_dhcp+0xfb/0x114) from [<dfc0490f>] (execute_command+0x23/0x4c)
>   WARNING: [<dfc0490f>] (execute_command+0x23/0x4c) from [<dfc0a127>] (run_list_real+0x5bf/0x638)
>   WARNING: [<dfc0a127>] (run_list_real+0x5bf/0x638) from [<dfc09a2b>] (parse_stream_outer+0xc7/0x154)
>   WARNING: [<dfc09a2b>] (parse_stream_outer+0xc7/0x154) from [<dfc0a383>] (run_shell+0x3f/0x6c)
>   WARNING: [<dfc0a383>] (run_shell+0x3f/0x6c) from [<dfc010b9>] (run_init+0x191/0x200)
>   WARNING: [<dfc010b9>] (run_init+0x191/0x200) from [<dfc01153>] (start_barebox+0x2b/0x6c)
>   WARNING: [<dfc01153>] (start_barebox+0x2b/0x6c) from [<dfc4be6d>] (barebox_non_pbl_start+0x121/0x164)
>   WARNING: [<dfc4be6d>] (barebox_non_pbl_start+0x121/0x164) from [<dfc00005>] (__bare_init_start+0x1/0xc)
> 
>   WARNING: [<dfc4da7d>] (unwind_backtrace+0x1/0x78) from [<dfc01461>] (panic+0x1d/0x34)
>   WARNING: [<dfc01461>] (panic+0x1d/0x34) from [<dfc4b6a3>] (do_exception+0xf/0x14)
>   WARNING: [<dfc4b6a3>] (do_exception+0xf/0x14) from [<dfc4b711>] (do_data_abort+0x21/0x34)
>   WARNING: [<dfc4b711>] (do_data_abort+0x21/0x34) from [<dfc4b454>] (do_abort_6+0x48/0x54)
> 
> Simply return with 0 if bus is zero which indicates that the phy is
> connected to a fixed link.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  drivers/net/designware_eqos.c | 4 ++++
>  1 file changed, 4 insertions(+)

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

