Delivery-date: Fri, 28 Feb 2025 12:49:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnyrq-0082hM-0f
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 12:49:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnyrp-0003m1-21
	for lore@pengutronix.de; Fri, 28 Feb 2025 12:49:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+8sGo16bs/KReudOCulYTL4+z4HAf3LxgQKhjrHlqjY=; b=SyREWjKStFPWnh3YKqkdVg02aD
	AUJlHeTW56HHKMLkYqazZnJiI2rkrOw5YnI6aOoHeSOrkxAIIykSqFhbUK9IQePdBbAj09UGsrlo/
	eg4DH8SJllTlEQesayj/3A7utpbnt+/ycQ8J/bh8h7ZGJ/Ba0Jw/fmjTygl96IKKStzNvp3EuOVTg
	6FxdycEjIOE+Q9teQYe55rAvnIzj4d60uSATnMdf6HNfaoqMi1F5RA+FBgCbKQLUPeHzSsLAHFKpl
	zbQv+ZRLL5aX0RRcwoO8bXRfV5sel6L+pG0jvdj1VsyDhdSFlIn5Xz/uD4CnrHWMq99zAMoPKyyhb
	86TgAWKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnyrD-0000000Anf2-0CYB;
	Fri, 28 Feb 2025 11:48:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tny3E-0000000AftQ-2ldL
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 10:57:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tny3D-0006Jk-Dv; Fri, 28 Feb 2025 11:57:03 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tny3D-003HOX-0L;
	Fri, 28 Feb 2025 11:57:03 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tny3D-005HW7-02;
	Fri, 28 Feb 2025 11:57:03 +0100
Date: Fri, 28 Feb 2025 11:57:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Martin Wege <martin.l.wege@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z8GWfv4oIhB7CDSU@pengutronix.de>
References: <CANH4o6Njc3uHE=NbasRJrRr0W5B89R8MTM_BwGwab7t5fNWuaA@mail.gmail.com>
 <Z6yxUVTp0vGWqs7Q@pengutronix.de>
 <CANH4o6NRK2+ekNe_LrUaoAi8PVbi-MC3hWerv4g6F-WmXmyK5w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANH4o6NRK2+ekNe_LrUaoAi8PVbi-MC3hWerv4g6F-WmXmyK5w@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_025704_692657_2D4405FF 
X-CRM114-Status: GOOD (  17.56  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Mount NFSv4.2 filesystem in barebox?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Feb 21, 2025 at 12:54:00PM +0100, Martin Wege wrote:
> On Wed, Feb 12, 2025 at 3:33 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > Hi Martin,
> >
> > On Tue, Feb 11, 2025 at 01:56:58PM +0100, Martin Wege wrote:
> > > Hello!
> > >
> > > Does barebox have support to mount a NFSv.2 filesystem?
> >
> > No, not yet. For NFSv4 we would first need TCP support. While we started
> > to integrate a TCP stack we are not there yet unfortunately.
> 
> How long is this going to take?

I don't think this will happen anytime soon. It's quite some work and
our bandwidth for adding such a feature without (paying) customer
demand is limited.

That said, the lack of NFSv4 support is nagging me personally as well.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


