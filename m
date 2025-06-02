Delivery-date: Mon, 02 Jun 2025 14:33:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM4Le-002xaP-1o
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 14:33:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM4Le-0004bu-16
	for lore@pengutronix.de; Mon, 02 Jun 2025 14:33:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2PHGNsoTowGWG0n0BXNvcAEeSp6BNa8SszMXPJVViGQ=; b=D1V3rRl0JA+SFw23CDHmNBhSTf
	S+RPA855YxoH24631HzXdPp3/T29FG6Uc5gn9r3YfHU433tIE+gQLe1/pWKsdBJGiaYGZ+RvVWwvl
	jaHAHQjNj5++9AeLOzJKHwCBFJYioPhccNiCXfd+ou8rIwKogzabWjV9ir9SHWcVBwq0CM84hwBd4
	y5gsLBmVoq0FpX5k6eWu9lNeyqRsO6YEYXbazge1kLWZ8dsNg6Qd8fAm+NXYyEDNmK+2h/1I4ajsR
	DBrIrDPWxLmMxSdnbwJD9cuN5hohsmhUxRlCOHAgn46Q+o0F8/rqeBLy0xmSQ8iLr81SKbvWeVvNs
	zo0cFR1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM4L5-00000007MvH-1gFf;
	Mon, 02 Jun 2025 12:32:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM4EM-00000007MKd-3ceg
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 12:25:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uM4EL-00026Y-Gm; Mon, 02 Jun 2025 14:25:29 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM4EL-001S9J-14;
	Mon, 02 Jun 2025 14:25:29 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM4EL-006e5P-0j;
	Mon, 02 Jun 2025 14:25:29 +0200
Date: Mon, 2 Jun 2025 14:25:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
Message-ID: <aD2YOXBjq9CzASym@pengutronix.de>
References: <20250527212300.575031-1-a.fatoum@barebox.org>
 <20250527212300.575031-8-a.fatoum@barebox.org>
 <aD2VWAhkaVs9txjY@pengutronix.de>
 <8d27b9f5-7b0d-4489-884b-38339adb0fec@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8d27b9f5-7b0d-4489-884b-38339adb0fec@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_052530_904068_61E28072 
X-CRM114-Status: GOOD (  19.90  )
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
Subject: Re: [PATCH 07/15] efi: types: implement
 efi_phys_to_virt/efi_virt_to_phys helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jun 02, 2025 at 02:14:36PM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 6/2/25 14:13, Sascha Hauer wrote:
> > On Tue, May 27, 2025 at 11:22:52PM +0200, Ahmad Fatoum wrote:
> >> From: Ahmad Fatoum <ahmad@a3f.at>
> >>
> >> We shouldn't have any physical addresses exceeding 32-bit on 64-bit
> >> systems,
> > 
> > Why? Aren't 64bit physical addresses normal on 64bit systems?
> 
> Sorry, other way round. We shouldn't have 64-bit addresses on 32-bit
> systems.
> 
> > 
> >> especially as barebox doesn't implement ARM32 LPAE.
> > 
> > This patch doesn't seem to be Arm specific, so why mention ARM32 LPAE
> > here?
> > 
> > I think I am missing something here.
> 
> Sorry for the Switcharoo. Can you fixup or should I resend?

Fixed it up, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


