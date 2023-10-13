Delivery-date: Fri, 13 Oct 2023 12:39:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrFZX-006xHr-CH
	for lore@lore.pengutronix.de; Fri, 13 Oct 2023 12:39:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrFZV-0004K4-Dj
	for lore@pengutronix.de; Fri, 13 Oct 2023 12:39:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zXUXpYrDbPWZkK33CsnOBDgDBlyt1/3NIZV/mMPLIwA=; b=DhMiY99dlNyoUIbBcaGzJ/ubd+
	MroR7AdnRLZXFa9tplzD5ICQoPlCQ7NYiHvy9JBYv52QahKo6x6wg87QsC5U4GT1S1DnigBSBTf9g
	5isL7UD/AGNZps8hQ7wmzqnGRYFyoXh6faPa+iMW9qi0gDnjftefXW2N6K2Sf9ZjI/mpLPMEa2cXX
	SrTTG5VwoHkbUsfaKrbKfEFhoFI/iYzQQhdFjXKEgtTlhQe0oZZ1q3EXu8uCTLIVAeJ+DhQwnkIDK
	mrOYmH2IWqXbOFEz2rEUabWVw2+TGb7JOhy0AbrOXW8zgSFnBMwQCXnRvqVFBJXKOWKvdBqePMkDV
	Yzaqg2ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFYD-003AND-1A;
	Fri, 13 Oct 2023 10:37:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFYA-003AIf-1k
	for barebox@lists.infradead.org;
	Fri, 13 Oct 2023 10:37:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrFY6-00043G-W2; Fri, 13 Oct 2023 12:37:43 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qrFY6-001NEY-JL; Fri, 13 Oct 2023 12:37:42 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrFY6-00EG2L-H8; Fri, 13 Oct 2023 12:37:42 +0200
Date: Fri, 13 Oct 2023 12:37:42 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20231013103742.GT3359458@pengutronix.de>
References: <CAP1tNvRpgjbBKxCV94cOHdvFtgwmRz0fRX3B2=-FjYXCY+Z_MA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvRpgjbBKxCV94cOHdvFtgwmRz0fRX3B2=-FjYXCY+Z_MA@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_033746_593193_E4E4377B 
X-CRM114-Status: GOOD (  25.52  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: RK3568 some question
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Oct 13, 2023 at 11:12:49AM +0300, Alexander Shiyan wrote:
> Hello.
> 
> I'm trying to run PCI-e 2.0 on an RK3568 processor. The driver loads
> OK and does not detect anyone on the bus except itself.
> In the kernel, everything works as it should and connected devices are
> visible on the bus (in my case, I use Intel AX200 and MediaTek MT7921e
> Wi-Fi modules).
> Enabling PCI debugging produces these messages:
> pbar0 set bad mask
> pbar1 set bad mask
> Has anyone run PCI on this CPU?

I've added the Rockchip PCIe driver for the RK3588 and tested it working
there. I never used it on the RK3568 due to the lack of hardware.

I don't have the Rock5b board handy at the moment, but maybe I can have
a look the next days what the register reads there.

> 
> I'm not too familiar with the PCI subsystem, but after briefly looking
> at the code,
> I saw in the setup_device() function the line:
> pci_write_config_dword(dev, pci_base_address_0, 0xfffffffe);
> On Linux and u-boot this value is ~0.
> The question is, are we doing the right thing here?

I don't know. Where is the corresponding place in Linux?

> 
> And the question is not related to the PCI:
> rk3568_lowlevel_init() does not call arm_cpu_lowlevel_init(). Is this OK?

It should be called once on each board and rk3568_lowlevel_init() seems
like a good place for it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


