Delivery-date: Thu, 27 Nov 2025 12:55:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOaan-005PtD-2J
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 12:55:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOaan-0004cY-64
	for lore@pengutronix.de; Thu, 27 Nov 2025 12:55:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hnlJuKyLFWsIztSEezejsuP0swK7ukKr0GVHihujJe8=; b=CdDDSlRyKgrBrdTGwslqWMwinr
	eJXZUyIYNC0zU04iX4lY2oUY7IxdcL/lFqZ/EyLsbaqqZtW5KBzhKY+UZ1JQTdsIT8PLKvL0feB35
	L8Oj+tGdofcyQ2q3w6xFcdmJCTPhRRXUfFHZEehSqOX+u2pw2I+zh/dDeQK/3iMT722a/p018c0o2
	BUEC2s6X3PYpTuvhCNVNHXIG8dxWrnK5gBYeE8sA7Dg2E1+07wxrpbQsKV8Vwm7hGiCT44ahf+en+
	i0G733L/N06xw08nxVscN5LDKTS27D9Xmn7781ehKioX22e4JQkoEieMIsT1AhGpOndN5B28o0aaB
	RXlrj42g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaaQ-0000000GVUu-3mgG;
	Thu, 27 Nov 2025 11:54:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaaO-0000000GVUM-2YWI
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 11:54:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vOaaN-0004WQ-5l; Thu, 27 Nov 2025 12:54:55 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vOaaM-002mXo-3C;
	Thu, 27 Nov 2025 12:54:55 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vOaaM-009guL-2t;
	Thu, 27 Nov 2025 12:54:54 +0100
Date: Thu, 27 Nov 2025 12:54:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: chalianis1@gmail.com, barebox@lists.infradead.org
Message-ID: <aSg8DmF1rAuXBaJ1@pengutronix.de>
References: <20251127034024.3381739-1-chalianis1@gmail.com>
 <7391cf043e0c56d2b52fe7fdd278349229516f45.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7391cf043e0c56d2b52fe7fdd278349229516f45.camel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_035456_646626_2CC9FA4C 
X-CRM114-Status: GOOD (  17.37  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] pci: pci-tegra: fix null pointer assignation.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 27, 2025 at 10:19:34AM +0100, Lucas Stach wrote:
> Hi,
> 
> Am Mittwoch, dem 26.11.2025 um 22:40 -0500 schrieb
> chalianis1@gmail.com:
> > From: Chali Anis <chalianis1@gmail.com>
> > 
> > the dev might be null, to be sure we move the dev assignation before
> > the pci parent assignation.
> 
> This isn't worded strongly enough. pcie->dev will absolutely be NULL at
> the point where it is assigned to pci.parent, which seem like a blatant
> bug and I don't know how this did ever work or if we just ignored the
> broken parent device connection.

Reworded to:

pci: pci-tegra: fix null pointer assignation.

By the time we set pcie->pci.parent pcie->dev is null. Initialize it
before usage.

Fixes: fd3be9d95f34 ("pci: add pci_controller_init()")

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


