Delivery-date: Wed, 19 Mar 2025 12:02:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1turBe-001QSg-2C
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 12:02:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1turBd-00052L-IP
	for lore@pengutronix.de; Wed, 19 Mar 2025 12:02:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S1s4M4nVMz7EaFMS77aa9akpzuVzaTk0LhUGAriAxMo=; b=tMoDkImFSsbC+oIzJFngpleb2U
	9kAWOVE6iKBi1uB8NCq4WIT++8etHqy5/Rv0mNMHYC5S7+sNo8ESNsXEcYOIAdTngbd2lh3swDlDd
	x2bDBW2Dudj/ddUVBoi5DURvFRq0oHuxIfq26KGv3lrh/yFUo16yk/oni5R8ee1XoedBrbyls2iuh
	wfeaWsGq1visp/8jMbV4pawYYS+CThi+mQ4ZWBp8hH9Ktexm8jWfvlDPfwH8c/h+Qd5tWasF4d9tc
	jqFCSIezyz8F/VY6vuz1D3lGpDkNgd5SE9UllBFW7Dt7XP7ZXTFBIb5eFdP0IN9N+qRa2bgK3p+Vs
	OSnAfH+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1turB4-00000008jV4-27FH;
	Wed, 19 Mar 2025 11:01:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1turB0-00000008jSu-01HY
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 11:01:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1turAx-0004i3-3T; Wed, 19 Mar 2025 12:01:31 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1turAw-000Zz6-1a;
	Wed, 19 Mar 2025 12:01:30 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1turAw-004rWs-2W;
	Wed, 19 Mar 2025 12:01:30 +0100
Date: Wed, 19 Mar 2025 12:01:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z9qkCsnzeOjtnJkh@pengutronix.de>
References: <20250319102228.2401563-1-s.hauer@pengutronix.de>
 <50522640-eedf-4c34-81ad-9238aa6d39b9@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <50522640-eedf-4c34-81ad-9238aa6d39b9@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_040134_052320_CA016105 
X-CRM114-Status: GOOD (  19.89  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] serial: omap: make Linux console name configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Mar 19, 2025 at 11:55:53AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 3/19/25 11:22, Sascha Hauer wrote:
> > Depending on the configuration Linux on OMAP SoCs either needs ttyO or
> > ttyS as console name. We used to pass ttyO, but c1c0d18973
> > ("serial: omap: Use ttyS as Linux console name") recently changed this
> > to ttyS which breaks setups that used to work earlier. Make the
> > name configurable to allow for setups requiring ttyS and use ttyO
> > as default to keep existing setups working.
> > 
> > Note that with ti,am4372-uart we used to pass ttyO as well, but this
> > specific compatible is only supported by the 8250 based driver which
> > needs ttyS as console name. 
> 
> This reads as if 8250_omap supports only ttyS, but it has logic to
> support ttyO as well.

s/needs/prefers/ maybe

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


