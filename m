Delivery-date: Tue, 16 Sep 2025 08:34:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyPGk-003awl-36
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 08:34:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyPGk-0004HC-Du
	for lore@pengutronix.de; Tue, 16 Sep 2025 08:34:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6TLieLp79gVZsQ7lPk8xRcTy03dXscHPEb/Ak5fxoU4=; b=Zr4GZgusb3DsEBaEcpNkMBTXpN
	ylsWBZX6MUwHIovpkxuvPQtWSWZLyeeCtCSKhaVrj+t+90WhwV+w/bbB8fvkZmOaXgKWonOtMBlbi
	O8hcK+eAkLZ4b9e6UqkePUgFchQU0Brz89CCktGB7Fl8KO5Cz+XeypshOC8sQq4BmcqSshp6jYKXi
	0UgU00Ds0rS1TGFxlUnb7UI0Bq2vD58udl9auvSgvjGntgRo6eTA7+7PtTHuDhdW15cO2zO6BRfxt
	s13E7HhlI/sHIETR0vkyV5kAF65lgrP8cBiE5hbKjidUKY4IC7Wi7BB/7fwg+MtJAhWxUtBVA2my9
	YOkqjYCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyPGL-00000006vKN-3GvU;
	Tue, 16 Sep 2025 06:34:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyPGI-00000006vK0-2wPL
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 06:34:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uyPGG-0004C9-SU; Tue, 16 Sep 2025 08:33:56 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uyPGG-001XjN-1k;
	Tue, 16 Sep 2025 08:33:56 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uyPGG-00BT2V-1O;
	Tue, 16 Sep 2025 08:33:56 +0200
Date: Tue, 16 Sep 2025 08:33:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: chalianis1@gmail.com, barebox@lists.infradead.org
Message-ID: <aMkE1GgopPGoyHOA@pengutronix.de>
References: <20250914193249.23414-1-chalianis1@gmail.com>
 <bb89fc4d-fdf6-4a23-80bc-53b14ad9b30d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bb89fc4d-fdf6-4a23-80bc-53b14ad9b30d@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_233358_786622_AFF59136 
X-CRM114-Status: GOOD (  23.01  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] drivers: dma: refactor: rename dma_ops to dma_device_ops.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 15, 2025 at 11:02:12AM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 9/14/25 9:32 PM, chalianis1@gmail.com wrote:
> > From: Chali Anis <chalianis1@gmail.com>
> > 
> > This patch is an esthetic cleanup, rename the dma_ops to dma_device_ops
> > to be sure that the struct in drivers/dma is different from one used in
> > arch/riscv/cpu. I accidentally faced the issue telling that the struct is
> > defined in the two places but it is not supposed to happen since the
> > the driver is never selected from riscv.
> 
> If it's only about resolving the conflicting names, I'd rather rename
> dma_ops for RISC-V to dma_map_ops instead.

I thought about this as well, but I actually like using dma_device_ops.
We have a struct dma_device, so it's consistent to use a struct
dma_device_ops * in there.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


