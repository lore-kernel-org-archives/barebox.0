Delivery-date: Mon, 03 Jul 2023 10:45:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGFBX-00DHmI-73
	for lore@lore.pengutronix.de; Mon, 03 Jul 2023 10:45:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGFBU-00087A-S0
	for lore@pengutronix.de; Mon, 03 Jul 2023 10:45:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F6n7c8HQV4vS7DoZdhqb+6Nq140U/0RRV5E47+pn+GU=; b=iUR8OEE2Om28hPsctxXtR0z7Bh
	N2eMA/LgFgsfmUyQf8ZsmX+LgqvtRnmS7jHvkeTEmp5CkC+vWGJs6J3p9dijZcsjas9FliaWzgPEG
	i0SEoNNm6YdlxcMbIuODBZVedrJyM2O+0jaa9tHNKcrnbepoBDsQy3fjajmXwY+Y3a7rWQQZDQXmW
	DQBhEWdRcSQ0fbaSu4rxMKmfAHZT08UhORYaIexNWNEmc+ukw979nGh1pl52y/4YjQVjJZyz9N0W4
	XLKOkYjsbABGa/YUPvrerYwszuoHJHn8QtrOL8BvGFcE3DnyxlUgwgFKSoADimhy/RwluK5cwLTuC
	C+o2BbaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGFA9-009n9v-1R;
	Mon, 03 Jul 2023 08:44:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGFA6-009n8N-2i
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 08:44:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGFA0-0007mx-M4; Mon, 03 Jul 2023 10:43:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGFA0-0001kC-AD; Mon, 03 Jul 2023 10:43:52 +0200
Date: Mon, 3 Jul 2023 10:43:52 +0200
To: Denis Orlov <denorl2009@gmail.com>
Cc: Ian Abbott <abbotti@mev.co.uk>, barebox@lists.infradead.org
Message-ID: <20230703084352.GJ18491@pengutronix.de>
References: <20230629201446.16679-1-denorl2009@gmail.com>
 <2174e39f-3e29-bd33-ab15-ba0eb86a58f5@mev.co.uk>
 <ab0ad661-511e-5f56-2086-f3be2a1ff6ae@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ab0ad661-511e-5f56-2086-f3be2a1ff6ae@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_014358_878024_287DCC90 
X-CRM114-Status: GOOD (  26.68  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] nios2: remove arch remains from drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 30, 2023 at 09:55:29PM +0300, Denis Orlov wrote:
> On 6/30/23 11:57, Ian Abbott wrote:
> > On 29/06/2023 21:13, Denis Orlov wrote:
> >> The architecture was removed back in the commit efccc13513, however some
> >> drivers that were available exclusively for NIOS2 were left over. As it
> >> has been impossible to compile those since then, it seems reasonable to
> >> just get rid of them.
> >>
> >> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> >> ---
> >>   drivers/serial/Kconfig              |  10 --
> >>   drivers/serial/Makefile             |   2 -
> >>   drivers/serial/serial_altera.c      |  94 -----------
> >>   drivers/serial/serial_altera_jtag.c |  99 ------------
> >>   drivers/spi/Kconfig                 |   4 -
> >>   drivers/spi/Makefile                |   1 -
> >>   drivers/spi/altera_spi.c            | 236 ----------------------------
> >>   7 files changed, 446 deletions(-)
> >>   delete mode 100644 drivers/serial/serial_altera.c
> >>   delete mode 100644 drivers/serial/serial_altera_jtag.c
> >>   delete mode 100644 drivers/spi/altera_spi.c
> >
> > As a point of interest, none of those drivers should really depend on NIOS2.  They are usable on an ARM SoCFPGA system if the FPGA logic contains the corresponding Altera/Intel IP components.
> >
> > Whether or not anyone needs them in barebox is another matter, but I have certainly used them in ARM SoCFPGA Linux systems booted from barebox.
> >
> 
> Hmm, maybe those drivers should rather depend on ARCH_SOCFPGA then?
> Would be great if someone tested them in barebox running on a SoCFPGA.
> Otherwise, they are just rotting in the source tree, with no actual
> usage.

To make them usable on SoCFPGA the drivers would at least need device
tree probing support. drivers/serial/serial_altera.c needs a CPU_FREQ
define for baudrate setting. This would have to be replaced with clk
support. I think we can remove them from the tree for now and add them
back in a fresh state once somebody needs them.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


