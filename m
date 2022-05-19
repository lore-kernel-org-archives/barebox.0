Delivery-date: Thu, 19 May 2022 13:57:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nremI-00219I-4p
	for lore@lore.pengutronix.de; Thu, 19 May 2022 13:57:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nremG-0007e7-S0
	for lore@pengutronix.de; Thu, 19 May 2022 13:57:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eA3rODHlMEqcp7Ppg97oJ3MXyCijNWKcb7f9DoDbtks=; b=QugTj3NTHW1WNnckdYOmoVPPcF
	Epz3FBWValxYDJFFZEpSc5Sw8xn377VXwmPyxJafrUgsHfzd0TdkpKDRItJ4TToohsNKyL+TlX2oq
	GYw+6jYYz8FkrgzDm56/sJWXRIJXrojNlV9PcenQvSxRgWN/JteIPUAU4Lbk4biyD4Q4VwOwRNfhx
	rL2fba1LS+vCMjt75cZsjaXUTlIdWjxFxXYuDGCsARB6ZqVv3R/DZjArP3ZadL2PBTnzbkwmokNWx
	ujNlY2NJu2yMMdTiHE3Uh/n6xTonQlXJNPu4MtomYoeuhTszgg20U4GtC2uOkg128uXs48qKjENad
	FVP/8R+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrek9-006XX8-Dn; Thu, 19 May 2022 11:55:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrek4-006XUQ-Jy
 for barebox@lists.infradead.org; Thu, 19 May 2022 11:54:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nrejy-0007H8-M2; Thu, 19 May 2022 13:54:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nrejy-00031H-AI; Thu, 19 May 2022 13:54:50 +0200
Date: Thu, 19 May 2022 13:54:50 +0200
To: Frank Wunderlich <frank-w@public-files.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220519115450.GV25578@pengutronix.de>
References: <1694C0B0-A962-420E-BA70-8061E8E9CA7F@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1694C0B0-A962-420E-BA70-8061E8E9CA7F@public-files.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:28:02 up 49 days, 23:57, 57 users,  load average: 0.02, 0.05, 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_045456_677402_42C89A93 
X-CRM114-Status: GOOD (  23.84  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Driver load order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Frank,

On Thu, May 19, 2022 at 12:59:35PM +0200, Frank Wunderlich wrote:
> Hi,
> 
> I try to create a basic driver for rk808 pmic/iodomains. I've noticed
> that first the iodomain driver is probed and then the rk808 on,but i
> need it reversed as rk808 registers regulators linked in iodomain via
> devicetree.
> 
> How can i defer iodomain probing till rk808 is ready (regulators
> available defined as phandles in iodomain dt node)? Currently i get
> always ENODEV (property does not exist or regulator is not ready
> yet)....

Your board has deep probe enabled. The idea with deep probe is that the
devices for a specific device node are registered on demand instead of
any particular order. Basically this means that once you do a
regulator_get() the regulator will be registered automatically for you
without having to mess with the probe order.

That said I'm not sure if that works properly with regulators yet. For
deep probe to work there must be a device registered for the device node
representing the regulator. Currently this is not the case, there will
only be a device for the "rockchip,rk808" device node, but not for the
regulator child nodes.

I haven't found a suitable test setup to have a deeper look. If you
could bring your rk808 driver up to a point where it actually registers
the regulators then I could add the missing pieces in the regulator core
for you.

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

