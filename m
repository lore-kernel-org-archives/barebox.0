Delivery-date: Thu, 27 Nov 2025 12:54:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOaZr-005Prp-0X
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 12:54:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOaZq-0004NQ-K6
	for lore@pengutronix.de; Thu, 27 Nov 2025 12:54:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5tgYM/mBDgcQk7ceEaANmFRJAvnLp9s7B26EYijAN/o=; b=a8BsRuPglnAmn+IWC42wg4HcZk
	r+oLOeyAza1n+A3M/tJRODoHVGPCVkKNxiaYDxAAqZWHrNhjSYzt2wEqFRY/NdjW8uIx327DvNe6R
	vmzBLcOrz0ODua1KKBvLtnFC5Yeh8O5hevDGwdb6vokaqWX97XiSdBqkGi4TiZhSrhmLyUjoqmWdj
	pRKRiOZk87AvgOSNXP5BIEGDAzN1CoBFLgUjmMoqbdZnT9O5rbzTLI5PiQ9a9Ll3HA4vvh6C3IWI2
	uiGKZFj1SJzMJKcSHcZ7iNqXXjUMycXpIKUX7xP+Wd4Bj9G7mqsBrmyOjH3jyodEM6+fpiGWh/uCp
	m8N+P8vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaZQ-0000000GVId-0fB8;
	Thu, 27 Nov 2025 11:53:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaZN-0000000GVHV-2ghS
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 11:53:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vOaZM-0004Dp-3d; Thu, 27 Nov 2025 12:53:52 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vOaZL-002mWv-12;
	Thu, 27 Nov 2025 12:53:51 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vOaZL-009gtr-0l;
	Thu, 27 Nov 2025 12:53:51 +0100
Date: Thu, 27 Nov 2025 12:53:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: chalianis1@gmail.com, barebox@lists.infradead.org
Message-ID: <aSg7z0GGSgtsQzPV@pengutronix.de>
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
X-CRM114-CacheID: sfid-20251127_035353_716822_A4EB4A42 
X-CRM114-Status: GOOD (  19.24  )
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

This was broken by:

commit fd3be9d95f342a3d056a08a8e69fe81fd2a35948
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Tue Mar 26 11:07:37 2024 +0100

    pci: add pci_controller_init()

    Upcoming patches will add a list to struct pci_controller. To make
    sure we have a single point to initialize the list introduce a
    pci_controller_init() and call it from all drivers which use
    register_pci_controller(). Make sure host->parent is set correctly
    before calling register_pci_controller() as that will be needed for
    device tree parsing later.

    Link: https://lore.barebox.org/20240326100746.471532-8-s.hauer@pengutronix.de
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


