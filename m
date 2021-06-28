Delivery-date: Mon, 28 Jun 2021 14:43:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxqbw-0007j3-Rj
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 14:43:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxqbw-0004Fx-2V
	for lore@pengutronix.de; Mon, 28 Jun 2021 14:43:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fXvN8YRJsT82c+YuXt89mBRS8+Qm5lh/Hl7XO0SFjcg=; b=iYQIIDGd33jJaT6RNpkz6tid1r
	vFH/JN0HdIt/nVaxadTAgeS8IDcldvsoC0cLre25IFAN6G56/9NQtNpWRgQQMonrcDMqloCMxBST5
	r8RmtSUKd9fuB/9dwbQqdFRriFHC3C6RRgm1LAdGTnTKH3leI1dRK2yCeG72/50agpV72Cw1Cd2ee
	qvWpMMx0haLc0vJdNWNg+vgWEBqlPL7X9FyCr2AwLPtsmKTmztRF8sN3vAOiUBPDLzL/Iddmk0Dj9
	8aW1THCKooxuKr9kr4bnnUhn4AB8sD4pF1bihZ8azlj1vN4LkHjBXOvHEoDRP0iL9UUK5jjEvznWg
	KyXN15bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxqaR-0081JN-OD; Mon, 28 Jun 2021 12:42:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxqaM-0081Hg-4C
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 12:41:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxqaK-0003x8-4H; Mon, 28 Jun 2021 14:41:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxqaJ-0000qB-Hj; Mon, 28 Jun 2021 14:41:55 +0200
Date: Mon, 28 Jun 2021 14:41:55 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20210628124155.GI9782@pengutronix.de>
References: <20210624160915.21897-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210624160915.21897-1-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:41:42 up 130 days, 16:05, 120 users,  load average: 0.24, 0.16,
 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_054158_266782_2F015872 
X-CRM114-Status: GOOD (  18.91  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 0/2] add support for Rockchip SARADC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 24, 2021 at 06:09:13PM +0200, Michael Riesch wrote:
> Michael Riesch (2):
>   aiodev: add driver for Rockchip SARADC
>   arm: rk3568-evb1: add support for Rockchip SARADC
> 
>  arch/arm/dts/rk3568-evb1-v10.dts |   6 +-
>  arch/arm/dts/rk3568.dtsi         |  12 ++
>  drivers/aiodev/Kconfig           |   8 ++
>  drivers/aiodev/Makefile          |   1 +
>  drivers/aiodev/rockchip_saradc.c | 197 +++++++++++++++++++++++++++++++
>  5 files changed, 223 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/aiodev/rockchip_saradc.c

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

