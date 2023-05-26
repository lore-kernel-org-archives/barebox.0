Delivery-date: Fri, 26 May 2023 13:31:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2VfL-00F0kn-0i
	for lore@lore.pengutronix.de; Fri, 26 May 2023 13:31:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2VfI-00068Y-KG
	for lore@pengutronix.de; Fri, 26 May 2023 13:31:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OgBC/3KMyRhRUBEQ+N/YTwVuoD/i3yR0o+ZhYK4+cVk=; b=WoSW2NdAO/G+Wk+z/hdkynYiu2
	hETdVcfTKvof/MzKEqYGeaEopYVG3GGQOYrZvzgpoIBZZs5dsEGlK5RgeCQb907zkDsnn6Olaf10f
	8revFWDL+K2OH813E2QuiEQkc0Beq69AuMvI7vGQLiz3mf8R6A8/QUKkSNL4WXQQnjhZjRUVz7UXm
	VxfjA03Np71pb3NXKT28yvCXmREwUPBpILwYY4pspCjean19aKWFrtsSO2gTyHSZbZTRhpnrKiYJ6
	4sv+Alr67swzKSup3oUyu0JUDG+7uccAxIo7/BVBAxaej//BFbpTVb0dPs9iOwYta4ZPdAeNkQP0j
	CWI8AN/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2VeY-002J3o-1a;
	Fri, 26 May 2023 11:30:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2VeV-002J2R-00
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 11:30:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q2VeP-0005wM-Ei; Fri, 26 May 2023 13:30:29 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q2VeL-0005H4-OO; Fri, 26 May 2023 13:30:25 +0200
Date: Fri, 26 May 2023 13:30:25 +0200
To: marc@cpdesign.com.au
Cc: barebox@lists.infradead.org
Message-ID: <20230526113025.GT17518@pengutronix.de>
References: <10297393.nUPlyArG6x@dev8>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <10297393.nUPlyArG6x@dev8>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_043035_041002_F94B749B 
X-CRM114-Status: GOOD (  23.36  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Troubles booting kernel with new imx8 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 26, 2023 at 08:46:40PM +1000, marc@cpdesign.com.au wrote:
> Hi all, 
> 
> I'm trying to get barebox going for a new imx8mp based board. I can 
> successfully power on and get to a barebox prompt etc and fiddle with gpios, 
> files on sd, memtest etc, but when booting to kernel it will hang. Note though 
> that the board boots ok with u-boot (using exact same kernel image).

Do you have an example crash dump? Does the kernel crash reproducibly or
randomly?

> 
> I'm trying to figure out what is different between booting via uboot and 
> barebox, I'm new to imx8 so have been going down a few rabbit holes...
> 
> Disabling various drivers (eg imx-cpufreq-dt) in the kernel will get past the 
> hang, but result in a crash later on in the boot sequence. Disabling that may 
> get further but will result in a crash somewhere else.
> My instinct is that its something to do with sdma, but a lot of this is still 
> a black box to me.

SDMA is only used in few devices like UART, I2C, SPI and sound. Apart from
sound all devices should work without SDMA, so you could disable the
driver.

> 
> Any hints or suggestions are very welcome! (I can give more info but didn't 
> want to dump everything straight away)

PMIC comes to my mind. Does it need some configuration?

Is the amount of memory detected correctly by barebox?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


