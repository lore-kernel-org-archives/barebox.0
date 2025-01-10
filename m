Delivery-date: Fri, 10 Jan 2025 09:28:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWANI-000IW8-0K
	for lore@lore.pengutronix.de;
	Fri, 10 Jan 2025 09:28:12 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWANI-0002Aq-8c
	for lore@pengutronix.de; Fri, 10 Jan 2025 09:28:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XNE/hWPvo9wqlEaiQ1S95krzsZAuNWiDTc226Gox9Wo=; b=PrRW92JBdsWADJrIXoSb83fDpF
	5p9a4nMeTF0php9vLqocFSDXCHhz4JND/hmNmCYtMhllD81ddKTyV6GGwErbA015VM4t4cT2Bp885
	TlPoP321uKGrZekIdDU+aq7OiTxP0E+NlrIcpiAngXkkjADDkuiOiQooh/yDfCEATqGHoN0J0wwOa
	AN/87IWiyuNn1SnAtEl0aWs2Y5dwHPItavy/doRemAXYN/GQuNTSJMkucTVM5/KRDexGnYkTQWgHi
	nt1JXBcUh/jyVp9LSn8sXpS4VPn3GoePJzBemRJxQxjgoRZDiwErvB4zPnCMdIScWcxK0DPO8mKxA
	IOKhiwBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWAMt-0000000EWHp-0Fl7;
	Fri, 10 Jan 2025 08:27:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWAMq-0000000EWEv-2Kjv
	for barebox@lists.infradead.org;
	Fri, 10 Jan 2025 08:27:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tWAMn-00025o-Pe; Fri, 10 Jan 2025 09:27:41 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tWAMn-0007vg-1y;
	Fri, 10 Jan 2025 09:27:41 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tWAMn-001sLO-1g;
	Fri, 10 Jan 2025 09:27:41 +0100
Date: Fri, 10 Jan 2025 09:27:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z4DZ_YNBp4NuLSyY@pengutronix.de>
References: <20250109074433.3242953-1-s.hauer@pengutronix.de>
 <e4af3816-0f89-402a-8d4f-25c477dc62ee@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e4af3816-0f89-402a-8d4f-25c477dc62ee@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_002744_592890_CE395FCF 
X-CRM114-Status: GOOD (  23.30  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: add config option for dfu command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jan 09, 2025 at 10:10:42AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 09.01.25 08:44, Sascha Hauer wrote:
> > Add an extra config option for the dfu command to avoid building it in
> > non interactive builds which leads to linker errors.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  commands/Kconfig  | 6 ++++++
> >  commands/Makefile | 2 +-
> >  2 files changed, 7 insertions(+), 1 deletion(-)
> > 
> > diff --git a/commands/Kconfig b/commands/Kconfig
> > index 67116ec9fc..a30299abf6 100644
> > --- a/commands/Kconfig
> > +++ b/commands/Kconfig
> > @@ -2172,6 +2172,12 @@ config CMD_USBGADGET
> >  	depends on USB_GADGET
> >  	prompt "usbgadget"
> >  
> > +config CMD_DFU
> > +	bool
> > +	depends on USB_GADGET_DFU
> > +	default y
> 
> Let's use the occasion and make it not enabled by default?
> 
> > +	prompt "dfu"
> 
> Please add a help text pointing out usbgdaget and mentioning that
> the downside of using dfu (blocks shell).

Did that while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


