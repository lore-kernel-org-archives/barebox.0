Delivery-date: Tue, 30 Jan 2024 08:12:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUiI0-00BXoG-2c
	for lore@lore.pengutronix.de;
	Tue, 30 Jan 2024 08:12:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUiI1-000208-G5
	for lore@pengutronix.de; Tue, 30 Jan 2024 08:12:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XOsMAD5aixRkvAcju5VIgLvZqeLRh1cTBGZswEZuDPU=; b=pUXFUs+FyNApdMgH4kmaEfSOpt
	nLGDgoThmi/t+KZDdWHquPm32FHGNO9HvYx5NlcAoV9M1QPQnVb1jjMEOOlA2MIyYWZSmAMQ/RzNg
	1yHe/EEZrMEAnfXCK9qZVSf6DSCkzJiQNjFutxokC3xuqDzzBZqiFs9HT0oi9qALQaBNVVcolTnNf
	qkoTXQZ42uyNyy1sXYN8WSSi3ap3CHf98aIdERqbR1yclTzrqajQS8l3vZhEUewQLoZAzap+WjblQ
	0ql9BEaZtxWUOy/m2HNTjIAAto4IMGKe+WK2pPEJkqxLscy+p+SzWOlyIi4pnaBS4NxdMn4wdPb84
	pNtZA1UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUiHM-0000000FUzN-3Op3;
	Tue, 30 Jan 2024 07:11:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUiHJ-0000000FUyv-3gWW
	for barebox@lists.infradead.org;
	Tue, 30 Jan 2024 07:11:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rUiHF-0001vh-E1; Tue, 30 Jan 2024 08:11:25 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rUiHE-003MJo-3m; Tue, 30 Jan 2024 08:11:24 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rUiHE-002YrA-1S; Tue, 30 Jan 2024 08:11:24 +0100
Date: Tue, 30 Jan 2024 08:11:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20240130071124.GC406126@pengutronix.de>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
 <20240104141746.165014-19-s.hauer@pengutronix.de>
 <o7zxvviipdmg6clblu4e2jduqilx4d54w2ra4b3guajgxum54k@omyjqfyirjzv>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <o7zxvviipdmg6clblu4e2jduqilx4d54w2ra4b3guajgxum54k@omyjqfyirjzv>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_231129_935813_CBE80BEA 
X-CRM114-Status: GOOD (  17.94  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 18/19] mci: imx-esdhc-pbl: implement esdhc xload for
 ls1028a
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 29, 2024 at 06:36:29PM +0100, Uwe Kleine-König wrote:
> Hello Sascha,
> 
> On Thu, Jan 04, 2024 at 03:17:45PM +0100, Sascha Hauer wrote:
> > diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
> > index c13830d726..2c74d101e4 100644
> > --- a/drivers/mci/imx-esdhc-pbl.c
> > +++ b/drivers/mci/imx-esdhc-pbl.c
> > @@ -9,6 +9,8 @@
> >  #include <asm/sections.h>
> >  #include <asm/cache.h>
> >  #include <mach/imx/xload.h>
> > +#include <firmware.h>
> > +#include <asm/atf_common.h>
> >  #ifdef CONFIG_ARCH_IMX
> >  #include <mach/imx/atf.h>
> >  #include <mach/imx/imx6-regs.h>
> > @@ -319,7 +321,8 @@ static int layerscape_esdhc_load_image(struct fsl_esdhc_host *host, void *adr, u
> >  	val |= div_val;
> >  	sdhci_write32(&host->sdhci, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET, val);
> >  
> > -	sdhci_write32(&host->sdhci, ESDHC_DMA_SYSCTL, ESDHC_SYSCTL_DMA_SNOOP);
> > +	sdhci_write32(&host->sdhci, ESDHC_DMA_SYSCTL,
> > +		      ESDHC_SYSCTL_DMA_SNOOP | ESDHC_SYSCTL_PERIPHERAL_CLK_SEL);
> 
> This affects ls1046, too. Is this intended?

It's not intended to do this in this patch, nevertheless I beliebe it's
the right thing to do also for LS1046a

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


