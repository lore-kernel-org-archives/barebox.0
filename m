Delivery-date: Fri, 14 Jan 2022 11:37:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8JxZ-001xb2-Am
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 11:37:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8JxY-0000DS-9M
	for lore@pengutronix.de; Fri, 14 Jan 2022 11:37:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MON6kgzbYt1uLMC85238FIca0rgrTFFAS6E5O+/XzOg=; b=kH2KMw0ivFsjG9yWUJdzJMDpYL
	jnWC83IkSaKffy7IDL+JMRXEXl8xKgt1EIGRvcQYny2iuWpFxtpebFKlNz09bdBlo5aJwqy5i9UHr
	t7SpQctpRTQSwuMmlWz6cpZi2ckf6+5suqLfgJBbnnMTESZbwYZ8CLqtm67OxJZebDfR4f+WaDTko
	XvkD/yL/Fr3IPABICvaXk8OtZYPc8lC9VBuu8joDdG1cNEm08iLXCrvQsZxB9iJtFmmVnHGvCz0pz
	ukvZm1gX8MXf+4LO2vc1k3tr3krOtrG/liqTEO0tsffMET0s1etnLErqUVNjpVjhgNI9tlyjx+Nx9
	WOW2GKAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8JwJ-008jcO-OA; Fri, 14 Jan 2022 10:36:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8JwC-008jb3-2x
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 10:36:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n8JwA-00005c-QF; Fri, 14 Jan 2022 11:36:02 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n8JwA-0005lv-H3; Fri, 14 Jan 2022 11:36:02 +0100
Date: Fri, 14 Jan 2022 11:36:02 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220114103602.GY26619@pengutronix.de>
References: <20220114085425.315113-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220114085425.315113-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:35:07 up 34 days, 19:20, 79 users,  load average: 0.17, 0.13, 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_023604_154075_ECD906A8 
X-CRM114-Status: GOOD (  18.37  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] i2c: add Rockchip i2c controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 14, 2022 at 09:54:25AM +0100, Ahmad Fatoum wrote:
> For addressing the PMIC on Rockchip platforms, add an i2c controller
> driver. Tested with rk3399 and rk808.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - remove unneeded udelay(1)s (Sascha)
>   - use readl_poll_timeout
>   - fix typos, copy-paste leftovers (Sascha)
>   - early exit on NAK (Sascha)
> ---
>  drivers/i2c/busses/Kconfig        |   8 +
>  drivers/i2c/busses/Makefile       |   1 +
>  drivers/i2c/busses/i2c-rockchip.c | 458 ++++++++++++++++++++++++++++++
>  3 files changed, 467 insertions(+)
>  create mode 100644 drivers/i2c/busses/i2c-rockchip.c

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

