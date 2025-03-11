Delivery-date: Tue, 11 Mar 2025 09:49:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trvIX-00Cbha-2L
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 09:49:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trvIW-0003hf-HU
	for lore@pengutronix.de; Tue, 11 Mar 2025 09:49:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tUQiRakKtKAQxjzTZnDDlL/Rq5+Nbw5KSwqQ9+di3Js=; b=luA/1zMx0OVOHOSeWhA7YNw7zh
	dB/QlW4fdLZKSRhoCg+VVwUdwUDFozj9DKd63kPTARU/kZbrgdplatUuEvWETDWJOdvjijWSCPWWE
	x8LeZJ3EU1oKPh2zLwLA3r6W+/SvstLi9ZsORaXEjzSxmZSN1mdNmG5D6iE1F3xbiJTmTMr2bKkl4
	wbqPh+bugx7L6cJVggAVzDx0fLIYQt4w8kNzu2i+xNk4EixAj0YkmMOa9PlWvysTll9/zMD83WYwL
	xWCxs5XQ0jyGN/K+04J50F6AEacWZbZaww8viNsAZCN8TATsLodky4Vdgyp51Os1maD45BQnO/WrX
	3SKwRl5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trvHx-0000000523a-3kaG;
	Tue, 11 Mar 2025 08:48:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trvHu-0000000522K-3DOJ
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 08:48:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1trvHt-0003ZQ-HD; Tue, 11 Mar 2025 09:48:33 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1trvHt-0059KV-16;
	Tue, 11 Mar 2025 09:48:33 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1trvHt-007gGb-0k;
	Tue, 11 Mar 2025 09:48:33 +0100
Date: Tue, 11 Mar 2025 09:48:33 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <20250311084833.5h32rntkvk6ggi5i@pengutronix.de>
References: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
 <20250310174058.t3rsxws6syxz2rqp@pengutronix.de>
 <Z8_wg9fWKN4s0vrd@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z8_wg9fWKN4s0vrd@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_014834_803358_924E5CAC 
X-CRM114-Status: GOOD (  20.72  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/13] am625: support secure loading of full barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-03-11, Sascha Hauer wrote:
> On Mon, Mar 10, 2025 at 06:40:58PM +0100, Marco Felsch wrote:
> > Hi Sascha,
> > 
> > On 25-02-28, Sascha Hauer wrote:
> > > On K3 SoCs only a small barebox is loaded by the ROM into SRAM. This
> > > barebox then loads the full barebox from SD/eMMC or USB DFU. In a secure
> > > boot environment the full barebox must be authenticated. This series
> > > implements two ways for accomplishing this.
> > > 
> > > First way is to utilize the ROM API to authenticate images. The other
> > > way is to compile a secure hash into the first stage binary and check
> > > if the full barebox image matches the hash. Using the ROM API means
> > > different first stage and second stage images can be combined whereas
> > > hashing binds specific builds together avoiding mix and match attacks.
> > 
> > before having a closer look on your patchset, do we really want to have
> > the 2nd case to be available?
> 
> Yes, as explained to avoid mix-and-match attacks.

Argh.. sorry, I meant the first case, the ROM API one. If the ROM API
allows mix-and-match attacks, we need to mark it as INSECURE. Sorry for
the confusion.

Regards,
  Marco

> > If we really want the 2nd case to be
> > available we should bound it to CONFIG_INSECURE (if not already done).
> 
> Ok, will do.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


