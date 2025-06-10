Delivery-date: Tue, 10 Jun 2025 11:05:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOuvS-005kCo-1e
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 11:05:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOuvS-0008NY-07
	for lore@pengutronix.de; Tue, 10 Jun 2025 11:05:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QBhSOnTcYuJjsGcynfKoPFs3l/Y98mfbIXZ2rlFoB5U=; b=XMBsMUyYa0ptER+NMtADBlCiN2
	tY+JagnwCBvVBpBkJsW91thyj0NWlRp81tI//WhI1852ILyPavL2JPK5+f/i3HgJfor4MO2P9rrVf
	LCNyx8fCsZC0U64VSnv3b1abUFBDnRMBlc13/bI8U+PSfJnZDMldsAmhbWcYAFFrEYM06zBNP+OUu
	RK5S4EMJ7CxcAGb/lKLEo1G819AEnX3fyrYs8R6MeYyveS/7lorXQr+81FuRjNBYeiE6QvMUMx1Gk
	OOfYhSeV++v97pb8TWnq2KzYA3sqtNN6EqJJPV9OyRCji8A4SsF3lxZi7XBANwyAy+g6UARZ9ScJh
	c4qgFw8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOuv0-00000006GoA-40PX;
	Tue, 10 Jun 2025 09:05:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOuos-00000006Fty-2gnX
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 08:58:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uOuor-0004yW-4W; Tue, 10 Jun 2025 10:58:57 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uOuoq-002k8Z-1h;
	Tue, 10 Jun 2025 10:58:56 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uOuoq-004mEK-1H;
	Tue, 10 Jun 2025 10:58:56 +0200
Date: Tue, 10 Jun 2025 10:58:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Johannes Roith <johannes@gnu-linux.rocks>
Cc: barebox@lists.infradead.org, michael.graichen@hotmail.com,
	a.fatoum@barebox.org, Michael Tretter <mtr@pengutronix.de>
Message-ID: <aEfz0FvnghM1aLTF@pengutronix.de>
References: <20250607134711.48122-1-johannes@gnu-linux.rocks>
 <aERDj6CjDeVesN9h@Precision-T3610>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aERDj6CjDeVesN9h@Precision-T3610>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_015858_675930_4EEE7195 
X-CRM114-Status: GOOD (  17.93  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Added support for Zynq 7000 FPGA firmware loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Johannes,

On Sat, Jun 07, 2025 at 03:50:07PM +0200, Johannes Roith wrote:
> Hello,
> 
> the patch compiles for the Zynq 7000 and the ZynqMP SoC, but as I only
> have a board with a Zynq 7000 chip available, I could only test the PL
> loading for this platform.
> 
> It would be good to test it also on the ZynqMP to be sure, I didn't
> break anything.

I asked Michael Tretter to give it a test. Let's see.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


