Delivery-date: Wed, 16 Mar 2022 11:46:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nURAb-007YlF-RO
	for lore@lore.pengutronix.de; Wed, 16 Mar 2022 11:46:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nURAZ-0000Fq-VE
	for lore@pengutronix.de; Wed, 16 Mar 2022 11:46:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YzcX5lnkbAyEmX4cPzpJxPVowTKKiHZ3lVMGLuLY5Gk=; b=E2ho6tSvrrfR5psGPzmq2UEXDQ
	Md5YkcyG3xPwypoVzsajmZuFnEIiUb12fBuRyE8je4TtbbM7+IeGj46G631MPmfp9s2bxRNpWH1Lw
	KYykryzCN+8Tj1xhPs8LZ3Bng9H/sWxL4X2MjdXJNVyx8B9yWvdS3u9F++6otRq1PmcTnhNJsUi/w
	4bpkAcYbfU1i8fwhQfXR+TH3WCHWsSFMjCkpLG4q7sTl5NuuD4nmHL7VKEGNcxPWL4kpQgGF1b1ME
	srUuxfAfOnvZJ9btZF9zlm9CYDwkxUqXsg8TAoU9CIz+WgpXo4kkXS3PxHzpkW8u0lSivti5NW4bU
	xxVtU9iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUR95-00CW8n-6h; Wed, 16 Mar 2022 10:44:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUR90-00CW8K-S1
 for barebox@lists.infradead.org; Wed, 16 Mar 2022 10:44:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nUR8y-0008Nj-TN; Wed, 16 Mar 2022 11:44:40 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nUR8y-0002Nf-FY; Wed, 16 Mar 2022 11:44:40 +0100
Date: Wed, 16 Mar 2022 11:44:40 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Andrej Picej <andrej.picej@norik.com>, barebox@lists.infradead.org
Message-ID: <20220316104440.GR405@pengutronix.de>
References: <20220315133942.537756-1-andrej.picej@norik.com>
 <20220315133942.537756-2-andrej.picej@norik.com>
 <ad203551-3b95-4ce8-d060-a10de337af5a@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ad203551-3b95-4ce8-d060-a10de337af5a@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:40:05 up 95 days, 19:25, 88 users,  load average: 0.22, 0.15, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220316_034442_930534_7C2BEAC4 
X-CRM114-Status: GOOD (  23.72  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] mfd: da9063: ensure all gpio devices are probed before
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 15, 2022 at 03:24:23PM +0100, Ahmad Fatoum wrote:
> On 15.03.22 14:39, Andrej Picej wrote:
> > GPIO lines in da9063 are assigned dynamically, while majority of SOC
> > GPIO drivers assign their GPIOs in static manner (GPIO line numbers can
> > be calculated).
> > 
> > This introduces regression if deep probe support is used. If da9063
> > GPIOs are registered before the SOCs GPIOs, there is a good chance that
> > the SOCs statically computed GPIO line numbers will already be used by
> > PMIC.
> > 
> > Ensure all SOCs GPIO drivers and GPIO lines get registered before the
> > da9063 registers its own gpiochip.
> > 
> > Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> 
> I don't think this is the proper place. Also I think you may have
> introduced a recursion here if the PMIC happens to have an alias
> itself?
> 
> What I think we could do instead is to move this into gpiochip_add()
> and opencode the alias iterator:
> 
> 
> foreach (gpio_alias) {
> 	if (gpio_alias_dev == chip->dev)
> 		__gpiochip_add();
> 	else
> 		of_device_ensure_probed();
> }

This of_device_ensure_probed() will bring you into the very same loop
again. Better call this loop from outside gpiochip_add(). We could
add a gpio_ensure_probed() which executes this loop. That would be
called from some initcall, or maybe from board code when gpios are
needed before this initcall.

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

