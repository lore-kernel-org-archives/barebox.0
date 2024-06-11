Delivery-date: Tue, 11 Jun 2024 10:37:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGx0b-0049TY-2h
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 10:37:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGx0b-0004lk-5d
	for lore@pengutronix.de; Tue, 11 Jun 2024 10:37:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dG1BSfGi4YDDXtpBlrqf0ijaoavrZTT0bs0jrpkP/yY=; b=esoCnLC4sEbf4hRMXsKTw9qJ+7
	1wI/t7yN3Dz8xjlbH7RfOCyJ39BPXavPOPRcyHeatZaDSFFKChGzlSyLIRxHVqq4+99fCjpqrLf9F
	H0wprnLMQECUcRfr9q9qQqEA5+ayPl07QcVj3BUlxIP1fPwexmCHoNOD7rtOxctuSNnR3dsRPNFWW
	v9tOS8C4wp6xqU5dwaZJ7jw9k1sEzqJh/q0Qfnr4tEaBHCLlDCek19DSrZRChjUaD8DxHC1qVZgVy
	FntWKHjG/EEezWXVl3TBNrPRDhnbEL7tjXrTio1tk8m0QZ11qLPzlZc1s6ekNCFirjxWXZ3V1CsVK
	5lFtFpxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGwzu-000000088mn-2MqR;
	Tue, 11 Jun 2024 08:36:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGwzr-000000088mG-2v97
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 08:36:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1sGwzo-0004jZ-5D; Tue, 11 Jun 2024 10:36:48 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1sGwzn-001VJY-P0; Tue, 11 Jun 2024 10:36:47 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1sGwzn-004cqG-2D;
	Tue, 11 Jun 2024 10:36:47 +0200
Date: Tue, 11 Jun 2024 10:36:47 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240611083647.cjy2yz5qqaqb7gnr@pengutronix.de>
References: <20240322164953.1772129-1-m.felsch@pengutronix.de>
 <20240322164953.1772129-2-m.felsch@pengutronix.de>
 <ZgE1VbATsBpAKnD_@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZgE1VbATsBpAKnD_@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_013651_831444_FEE15960 
X-CRM114-Status: GOOD (  24.83  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/8] FIT: skip possible overlay config nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

sorry for the delay on this patchset.

On 24-03-25, Sascha Hauer wrote:
> Hi Marco,
> 
> On Fri, Mar 22, 2024 at 05:49:47PM +0100, Marco Felsch wrote:
> > The FIT spec is not very specific when it comes to device-tree overlay
> > handling.
> 
> By FIT spec you mean
> https://github.com/u-boot/u-boot/blob/master/doc/usage/fit/overlay-fdt-boot.rst,
> right, or is there more?

this is just an example which is not complete e.g. it misses the
signature node in case of verified boot. I used [1] as reference but
after reading it again I see that this reference list the kernel or
firmware properties as mandatory.

[1] https://docs.u-boot.org/en/latest/usage/fit/source_file_format.html#configurations-node

> > Overlays can be added directely to an config node:
> > 
> > 	config-a {
> > 		compatible = "machine-compatible";
> > 		kernel = "kernel-img-name";
> > 		fdt = "fdt-base-name", "fdt-overlay1-name", "...";
> > 	}
> > 
> > or they are supplied via dedicated config nodes:
> > 
> > 	overlay-2 {
> > 		fdt = "fdt-overlay2-name";
> > 	}
> > 
> > Of course these config nodes can have compatibles as well:
> > 
> > 	overlay-3 {
> > 		compatible = "machine-compatible";
> > 		fdt = "fdt-overlay3-name";
> > 	}
> 
> The text I referenced above doesn't mention compatible properties in
> overlay config nodes.

You're right, but the format description chapter [1] does.

> > The current fit_find_compatible_unit() code would skip the overlay node
> > if the config-a compatible has the same score as the overlay-3
> > compatible and if the overlay-3 config-node is listed after the config-a
> > config-node. But if the compatible of config-a config-node has a lower
> > score or the overlay-3 config-note is listed first (the spec does not
> > specify any order) we end up in taking the overlay-3 config-node instead
> > of config-a config-node.
> 
> You could distinguish overlay config nodes from full config nodes by the
> presence of a "kernel" property. Overlay config nodes do not have it.

Of course this could be done but I wanted to make it more explicit since
the FIT spec is not very clear when it comes to overlays. Instead of
adding an explicit image type like:

  - type = "flat_dt_overlay";

they used the already existing definitions. Therefore I went this way so
it is up to user to specify the overlay config nodes explicit.

Regards,
  Marco

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


