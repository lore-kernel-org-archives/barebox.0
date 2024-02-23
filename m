Delivery-date: Fri, 23 Feb 2024 08:38:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rdQ90-002dst-2y
	for lore@lore.pengutronix.de;
	Fri, 23 Feb 2024 08:38:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rdQ90-0001hB-AQ
	for lore@pengutronix.de; Fri, 23 Feb 2024 08:38:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EJA98kP6Q3O1aThAEraV3+xURBxzQ8oLiewp+2RdVrw=; b=HmDcqlJfWNcyOl8GKeVqaUxuCF
	qeGWusOJfyNaTv/FSzb3mgGSHZ2Zz8U8duSEAIgyFtgt4ECvJ5iFqVcIyDAkQhHMOIA28aw8JxJl9
	u2WolKL0cwwnI6ZgvRL69GL6LbEjRU3ydUnrRAkBQayzlXEU6vxHN7/Uj9ncNYu0RE/ZgPgWv7xZh
	qdtqTmgVNArQhq8OebZ/QkNjCpWKczOHFdIBYYxetV4E1AQVVzDPwXS8P6hSQelWrU6v4LBx7laiH
	cag2aPgTxTb9OgQR7aC/3c4G2dfpImXQIpm4W7h/S3ZYos6omAVsruJ+5nMRkg32ZQqs/i/S4+lZ+
	XWPkAoaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdQ8A-00000008KQY-04ww;
	Fri, 23 Feb 2024 07:38:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdQ7p-00000008KMc-3WbP
	for barebox@lists.infradead.org;
	Fri, 23 Feb 2024 07:37:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rdQ7n-0001b9-62; Fri, 23 Feb 2024 08:37:39 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rdQ7m-002NiR-Pe; Fri, 23 Feb 2024 08:37:38 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rdQ7m-004Byy-2F;
	Fri, 23 Feb 2024 08:37:38 +0100
Date: Fri, 23 Feb 2024 08:37:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZdhLQqJZRvy4K3QA@pengutronix.de>
References: <20240221150323.2715164-1-s.hauer@pengutronix.de>
 <20240221150323.2715164-9-s.hauer@pengutronix.de>
 <a27b45a4-2e4c-4ad0-8f81-85ed7638d79b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a27b45a4-2e4c-4ad0-8f81-85ed7638d79b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_233741_923250_FE343C09 
X-CRM114-Status: GOOD (  24.11  )
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
Subject: Re: [PATCH 8/8] ARM: tqma6ul: use upstream device trees
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Feb 21, 2024 at 05:42:49PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 21.02.24 16:03, Sascha Hauer wrote:
> > The tqma6ul has several upstream device trees depending on the exact
> > board type. This removes the downstream device tree in favour for the
> > upstream device trees. The board type can be determined from an EEPROM
> > on the board. This patch also adds support for reading the EEPROM and
> > picking the right device tree for the board found.
> 
> Is the existing "mba6ulx" device tree not a subset of all boards?
> Would it make sense to fall back to that instead of using a specific
> DT that may fail on other variants?

I don't know if it's a subset of all boards. There are enough TQMa6ul
device trees already, I don't think we should keep even more of them
around.

> > +	writel(0x12, iomux + 0x0094);
> > +	writel(0x0, iomux + 0x05bc);
> > +	writel(0x1b8b0, iomux + 0x0320);
> > +	writel(0x12, iomux + 0x0098);
> > +	writel(0x0, iomux + 0x05c0);
> > +	writel(0x1b8b0, iomux + 0x0324);
> 
> Could iomux_v3_setup_pad and pinctrl macros be used here instead?

Yes, fixed.

> >  	select ARM_USE_COMPRESSED_DTB
> > +	select BOARD_TQ
> > +	select I2C
> 
> Is I2C absolutely needed in barebox proper?

No, it's not. I though we have to select I2C to get I2C_IMX_EARLY, but
apparently that's not necessary.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


