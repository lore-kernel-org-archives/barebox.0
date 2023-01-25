Delivery-date: Wed, 25 Jan 2023 15:30:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKgnN-001apa-Gf
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 15:30:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKgnL-0003Ub-1m
	for lore@pengutronix.de; Wed, 25 Jan 2023 15:30:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/Gxz/UCcUZPjNdj/7prUQP5Ky78YJZLyElin296oiUI=; b=cr+YdNrEEWU0n1Qb3A6U/TGQYZ
	VirFkUooxD4v3Od968yPc9RbqSWl4LzSVbRroESVzZBD9xKQEl+PivFPBd9xRUYLi5uTbIjOEdo3i
	UpZcFWTtVeZmgqILErOmrj+Tn4Ujg6NXGlzeclueCfIrGwzCZFot9BmQaZEEP0sq2+3hwAqFOJk7U
	7N9gFAH7pLlsxVdQdiUFEu/FgRjCh71osYSACUa72b6Lvuqp5fYdN2+gFtbSRWe8Kclippd49i+P/
	hcp0MSFyXCdQJ2KiQdzY/zCPz5UROyEUjZZFSVop4pnTgW3Xtr5dcOtJGpPFF8YhfHpPUPL4wHWsO
	3Nx/RMIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKgm4-007XpI-Dk; Wed, 25 Jan 2023 14:29:16 +0000
Received: from out-52.mta0.migadu.com ([2001:41d0:1004:224b::34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKglz-007Xnu-EM
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 14:29:13 +0000
Date: Thu, 26 Jan 2023 01:28:42 +1100
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <Y9E8mqaQ+S2PeatL@novena-choice-citizen>
References: <20230122175141.119834-5-contact@jookia.org>
 <20230123093305.GS24755@pengutronix.de>
 <Y9AlCQieCBIEOjs5@novena-choice-citizen>
 <20230125080406.GW24755@pengutronix.de>
 <Y9DkOI1yxte95PYg@novena-choice-citizen>
 <20230125081923.GY24755@pengutronix.de>
 <Y9EvGHjLUX1ykAxU@novena-choice-citizen>
 <072ab8ce-d92f-8841-a44e-621a3ba345a4@pengutronix.de>
 <Y9E23b56PcfZWsum@novena-choice-citizen>
 <77f25018-39ab-ec53-56a5-21bfdeb484d7@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <77f25018-39ab-ec53-56a5-21bfdeb484d7@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_062911_639393_FB038E9B 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 03:16:05PM +0100, Ahmad Fatoum wrote:
> We could add the binding to the barebox AT24/AT25 driver. We'll need
> to make sure we don't fail the probe in the error path as not to
> break existing users. Fortunately, with deep probe, we will
> have no -EPROBE_DEFER that would complicate this.

I'm really not sure if specifying the regulator (that should always be on) for
every possible node is a good idea. I'd need to add -supply properties to:

- USB
- Sata
- HDMI
- SD cards
- Ethernet
- PCIe
- FPGA
- I2C
- UART

Some regulators even require multiple inputs such as 3v and 5v delayed.

John.


