Delivery-date: Thu, 12 Mar 2026 15:03:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0gda-00Aqjf-2o
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 15:03:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0gdb-0005Ya-7A
	for lore@pengutronix.de; Thu, 12 Mar 2026 15:03:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M7G3p+FUUmwhfbgBZTC7/feuNxchzXDK1IDwS+r/h8M=; b=KuX4ZQv8o/nVL++6h7Gbzq54S8
	fHlkZSB2QZOM00s6k+FlqSe21ugyzLmOapw6JXC9YRuqVBRcztz+xzbqNNFKb/S0n7LdwO9gSJ/0L
	8nn7Gk7uw7f4ypXr9u+TEANcxlEsWWCIleanKPru2zQ0+9c32tdF17sZWqZT25M7juYbj5c8nipEr
	qjDGnxbbCf5Ip92x79z+VlMzr31kCZ9PoJ68/I04YR+CgOGr/h6uzFBD4YBz2JEEjefJhQNtN9PP/
	AX24JPCPpiQXILAhv4PgzVf11XkQgUyPlgrye6SBLmmbRGP1xLvOqGf6Y3R4/CtsD0+Y4EDmW48DY
	Ij0o7yfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0gcu-0000000EAm9-1dMM;
	Thu, 12 Mar 2026 14:03:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0gcr-0000000EAld-1WVj
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 14:02:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w0gcp-0005O5-QS; Thu, 12 Mar 2026 15:02:55 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w0gco-0051zJ-0n;
	Thu, 12 Mar 2026 15:02:55 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w0gcp-0000000FK1L-25o8;
	Thu, 12 Mar 2026 15:02:55 +0100
Date: Thu, 12 Mar 2026 15:02:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>,
	Robin van der Gracht <robin@protonic.nl>
Message-ID: <abLHj5secNSDzje1@pengutronix.de>
References: <20260311100347.3761707-1-s.hauer@pengutronix.de>
 <abFAW56rE6Pr6xIz@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <abFAW56rE6Pr6xIz@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_070257_686000_E8AD196E 
X-CRM114-Status: GOOD (  19.97  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: rk-usb-loader: push header first
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Mar 11, 2026 at 11:13:47AM +0100, Michael Tretter wrote:
> On Wed, 11 Mar 2026 11:03:47 +0100, Sascha Hauer wrote:
> > From: Michael Tretter <m.tretter@pengutronix.de>
> > 
> > Board that have secure boot enabled need the image header to be able
> > to verify the signature. Boards with secure boot disabled still work
> > with this patch as tested on a RK3588 board.
> 
> I'm not against adding this to the rk-usb-loader, but maybe add some
> comment that this change is based on a wild guess and works by chance. I
> still don't know, how the ROM code or the USB protocol works and if it
> is really correct or necessary to send the entire header.

I can add a comment. FWIW I found another project [1] for a rk-usb-loader
which does exactly the same.

[1] https://github.com/DualTachyon/rk3588-tools/blob/main/rk-usb.c#L117

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


