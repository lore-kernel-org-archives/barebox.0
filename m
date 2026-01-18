Delivery-date: Sun, 18 Jan 2026 20:54:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhYqs-002mL0-0o
	for lore@lore.pengutronix.de;
	Sun, 18 Jan 2026 20:54:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhYqr-0002G4-8C
	for lore@pengutronix.de; Sun, 18 Jan 2026 20:54:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XwBm3NDQ30U+eQqMSb3v4kGBunHsg9mXHeTV4p4WgPY=; b=zg+CkEl0JBhYS45VKQNTkNLZx1
	EnqkjaAyp3P8QpGrYmRXbSlkP637U6RKItOI7OuaR1GGEXOUFhKeu2tnfIL+tCcHlV2sqdzS2cQMf
	DiVRoV+1UQ1Uvp7Wox3wgdFyb484Vq5JIhhxnPVIExTME9uVaeOHggwcz9rho24POgWxcuHKfTlnx
	7A804udFh+h1brKjfBCZDPRwpM0cndfQYZU3KrfOGtkev9a5NBbTxG+v/A88EJ4zhFXte+S243g0Z
	2pO59TTEoSZVpXL01/dawlwSFJrhgJOXYGmsySXAC0QNIpqoOYwiSnRF0IQjd/ZxUja6wubs/QwM/
	dIz9wv9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhYqD-00000000r3t-2RTX;
	Sun, 18 Jan 2026 19:53:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhYqB-00000000r3G-1gmi
	for barebox@lists.infradead.org;
	Sun, 18 Jan 2026 19:53:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhYq9-0002A5-8h; Sun, 18 Jan 2026 20:53:37 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhYq9-001IE3-2R;
	Sun, 18 Jan 2026 20:53:37 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhYq8-001cQe-36;
	Sun, 18 Jan 2026 20:53:36 +0100
Date: Sun, 18 Jan 2026 20:53:36 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20260118195336.7alv33wz3nrvpqsr@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-16-8f0625ac5471@pengutronix.de>
 <443e12f3-b1fb-402c-bd49-223fecafcc57@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <443e12f3-b1fb-402c-bd49-223fecafcc57@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_115339_448243_0ABE38B3 
X-CRM114-Status: GOOD (  19.86  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 16/23] pbl: fdt: add fdt_copy_node helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 26-01-15, Ahmad Fatoum wrote:
> Hi,
> 
> On 11/10/25 9:34 PM, Marco Felsch wrote:
> > Add a helper to copy a node from a src FDT into a dest FDT. The helper
> > is used later on by OP-TEE because OP-TEE appends FTD overlay fragements
> > into the provided FTD.
> 
> Does this correctly handle the case of a node already existing in the
> base DT further down the tree or does it add a new node with the same name?

I think this is done by:

	node = fdt_add_subnode(dest_fdt, dest_node, name);
	if (node == -FDT_ERR_EXISTS) {
		node = fdt_subnode_offset(dest_fdt, dest_node, name);
		if (node == -FDT_ERR_NOTFOUND)
			return -FDT_ERR_INTERNAL;
	}

> I am not convinced we need such a function in the PBL, but I will read
> along.

This function is used to split the overlay-fragments from the
barebox-pbl passed FDT which are added by OP-TEE. The reason for doing
this was to not cause any issue during the of_overlay_apply_tree() call
because we have added an odd FDT overlay.

Therefore I'm going to extract the FDTO fragments first.

Regards,
  Marco


> Cheers,
> Ahmad
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


