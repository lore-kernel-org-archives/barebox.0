Delivery-date: Mon, 25 Mar 2024 09:27:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rofgN-003aI4-21
	for lore@lore.pengutronix.de;
	Mon, 25 Mar 2024 09:27:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rofgN-0007WS-1g
	for lore@pengutronix.de; Mon, 25 Mar 2024 09:27:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2qyNjfVciO6NZ5c+oHVktg8US/EWoAqXnjqgZF3Kozc=; b=fvyFYHujJFWKlUt1+jVNnJsIoa
	ICE6uiltCSEvFR96Fe2fOGzdKVYwIQb6oG2NvjO1w7cx+YR8lAOxNCgnerg82oSrCjW+Jq1DoudzI
	moYgQaZa3EMT3G/k7RK4Zxgpv5NltTGFxxH9TXvYhmOzZQ9YO13HVtdeZxk/2rSW6Lkvnaqjkw0OE
	eec5kkklfJjmCRQ4CAKvR7XD6mXa6+cPqOZk3oU5Ati5n2uemEQrynjMapYEywtVif2YHMq80knaO
	DSBCV6Eg0yKLqemCFRt0T1OHSadps5mSl4rPzkuCKFX/wAgWHPKp3flT1XM4gbD+GwFiNIRDQxrFt
	/Nlyo8DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roffh-0000000G9VU-25zw;
	Mon, 25 Mar 2024 08:27:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roffc-0000000G9TX-1Ulv
	for barebox@lists.infradead.org;
	Mon, 25 Mar 2024 08:27:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1roffZ-0007Pm-Lv; Mon, 25 Mar 2024 09:27:01 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1roffZ-008Nnb-91; Mon, 25 Mar 2024 09:27:01 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1roffZ-00G2YA-0e;
	Mon, 25 Mar 2024 09:27:01 +0100
Date: Mon, 25 Mar 2024 09:27:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZgE1VbATsBpAKnD_@pengutronix.de>
References: <20240322164953.1772129-1-m.felsch@pengutronix.de>
 <20240322164953.1772129-2-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240322164953.1772129-2-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_012704_673675_08A53F5B 
X-CRM114-Status: GOOD (  18.82  )
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
Subject: Re: [PATCH 2/8] FIT: skip possible overlay config nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Marco,

On Fri, Mar 22, 2024 at 05:49:47PM +0100, Marco Felsch wrote:
> The FIT spec is not very specific when it comes to device-tree overlay
> handling.

By FIT spec you mean
https://github.com/u-boot/u-boot/blob/master/doc/usage/fit/overlay-fdt-boot.rst,
right, or is there more?

> Overlays can be added directely to an config node:
> 
> 	config-a {
> 		compatible = "machine-compatible";
> 		kernel = "kernel-img-name";
> 		fdt = "fdt-base-name", "fdt-overlay1-name", "...";
> 	}
> 
> or they are supplied via dedicated config nodes:
> 
> 	overlay-2 {
> 		fdt = "fdt-overlay2-name";
> 	}
> 
> Of course these config nodes can have compatibles as well:
> 
> 	overlay-3 {
> 		compatible = "machine-compatible";
> 		fdt = "fdt-overlay3-name";
> 	}

The text I referenced above doesn't mention compatible properties in
overlay config nodes.

> 
> The current fit_find_compatible_unit() code would skip the overlay node
> if the config-a compatible has the same score as the overlay-3
> compatible and if the overlay-3 config-node is listed after the config-a
> config-node. But if the compatible of config-a config-node has a lower
> score or the overlay-3 config-note is listed first (the spec does not
> specify any order) we end up in taking the overlay-3 config-node instead
> of config-a config-node.

You could distinguish overlay config nodes from full config nodes by the
presence of a "kernel" property. Overlay config nodes do not have it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


