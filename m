Delivery-date: Mon, 31 May 2021 10:49:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lndbl-0003bc-P6
	for lore@lore.pengutronix.de; Mon, 31 May 2021 10:49:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lndbk-0003SW-Ly
	for lore@pengutronix.de; Mon, 31 May 2021 10:49:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:Date:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zFNNrTqXmvY5GBgYlTH0HD3kLLTxVtIH+40akKr3/8Y=; b=guNVT5a1yeNbrY
	N9HQdB4J00TSsaI2+y3QHxqPLKKHTIYWu9vuSbgdAUCGEVAsU28CNlI4HjDe43gpNvamQZihJj/3M
	vhv21NwXK3lEF2ojBnyONWMj/p6hw+vsqDK9NZU+/u4GxR0jgg7/EeQkG2ZFMj5OK1ZYQcp8uJ/RN
	lqtMwQA5uu4ilEh6hpxhYGqayMO3Qe7k3uVVcvXaCNUSgPhYnS/Ha6ZtO9CdL/YJFU4qG96bKDxkC
	rxWmZ1ORPOniiLa5zYGD4MqVi/psq3OxmxgFZpYWnJj0SBo+zcwVSNwY1Opr3VVMw/qXybtdw5avA
	BzkEI7dd3d6qXlghNOmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lndaV-00BWaB-TC; Mon, 31 May 2021 08:47:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lndZh-00BWHv-FR
 for barebox@lists.infradead.org; Mon, 31 May 2021 08:47:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lndZg-0003B1-4l; Mon, 31 May 2021 10:47:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lndZf-0001EA-Nm; Mon, 31 May 2021 10:47:03 +0200
Date: Mon, 31 May 2021 10:47:03 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210531084703.GN5211@pengutronix.de>
References: <20210527193600.20879-1-gwenj@trabucayre.com>
 <7e50995d-c3fa-b716-cce5-2ab6bf38f275@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e50995d-c3fa-b716-cce5-2ab6bf38f275@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:45:28 up 102 days, 12:09, 133 users,  load average: 0.21, 0.17,
 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_014705_545329_683CCBEE 
X-CRM114-Status: GOOD (  26.85  )
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
Cc: barebox@lists.infradead.org,
 Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: SoCFPGA: add Terasic DE10-Nano board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 31, 2021 at 10:17:30AM +0200, Ahmad Fatoum wrote:
> Hello,
> 
> On 27.05.21 21:36, Gwenhael Goavec-Merou wrote:
> > From: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
> > 
> > The Terasic DE10-Nano board is based on CycloneV SoCFPGA (5CSEBA6) with
> > 
> > What has been tested to work:
> > - SD card
> > - Gigabit network
> > 
> > Signed-off-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
> > ---
> >  arch/arm/boards/Makefile                      |   1 +
> >  arch/arm/boards/terasic-de10-nano/Makefile    |   2 +
> >  arch/arm/boards/terasic-de10-nano/board.c     |  35 +
> >  .../terasic-de10-nano/iocsr_config_cyclone5.c | 678 ++++++++++++++++++
> >  arch/arm/boards/terasic-de10-nano/lowlevel.c  |  13 +
> >  .../boards/terasic-de10-nano/pinmux_config.c  | 241 +++++++
> >  .../arm/boards/terasic-de10-nano/pll_config.h | 107 +++
> >  .../boards/terasic-de10-nano/sdram_config.h   | 112 +++
> >  .../boards/terasic-de10-nano/sequencer_auto.h | 225 ++++++
> >  .../sequencer_auto_ac_init.c                  |  67 ++
> >  .../sequencer_auto_inst_init.c                | 158 ++++
> >  .../terasic-de10-nano/sequencer_defines.h     | 165 +++++
> >  arch/arm/configs/socfpga-xload-2_defconfig    |   1 +
> >  arch/arm/configs/socfpga_defconfig            |   1 +
> >  arch/arm/dts/Makefile                         |   1 +
> >  arch/arm/dts/socfpga_cyclone5_de10_nano.dts   |  34 +
> >  arch/arm/mach-socfpga/Kconfig                 |   4 +
> >  dts/src/arm/socfpga_cyclone5_de10_nano.dts    | 117 +++
> 
> Please place this file in arch/arm/dts. dts/ is synchronized
> with the upstream device tree repository from Linux.
> 
> If you want to keep the device trees separate, you can make
> this one into a dtsi, which can then be dropped from arch/arm/dts
> as soon as the device tree is upstreamed and appears in barebox dts/

Indeed. I was about to merge dts/src/arm/socfpga_cyclone5_de10_nano.dts
into arch/arm/dts/socfpga_cyclone5_de10_nano.dts, but I stopped when I
realized that they are licensed differently. Please resend once again.

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

