Delivery-date: Tue, 14 Jan 2025 10:38:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXdNp-000xq0-1j
	for lore@lore.pengutronix.de;
	Tue, 14 Jan 2025 10:38:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXdNo-0002LS-Vg
	for lore@pengutronix.de; Tue, 14 Jan 2025 10:38:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xm4g6Y2HV/mCblpZFztBzMyM2aB0nzIs2KkJ3LT9DeI=; b=vNxuq+e83AMM937QuyzZgtyUkP
	0Amcz1C8VabEAK2bZpcXEfPJnG4XaDPl7yvG89IR1QdMGHeyjZNMkp2ScuAhQmfQ3Olrstdjp0vok
	CAvsD3eklG50eo3+/VxyCRISsZq5wCHjiR61Z9pov/KC9P6kpIAHodZ6y+IsfifJJSLKVtcAKlwIq
	ixn23lR1Dp61nDjzGK10AZVA5qCHOIDOS8f8h5uW3ahWAa9xl+SoiFk2vvdpTnkk65OmQipi0oSN5
	YtHo3/4cOLnSPqR47D7SLp6qv3xL29HPtKdFKXAl8eEpO+R6gg436FEWr2eHcdUcTsl7js8fq45xm
	QAMVp8GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXdNU-00000007yKw-1kEY;
	Tue, 14 Jan 2025 09:38:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXdND-00000007yFz-2sV4
	for barebox@lists.infradead.org;
	Tue, 14 Jan 2025 09:38:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tXdNB-0002Ga-Oj; Tue, 14 Jan 2025 10:38:09 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tXdNB-000PdL-0E;
	Tue, 14 Jan 2025 10:38:09 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tXdNB-009n7l-1Z;
	Tue, 14 Jan 2025 10:38:09 +0100
Date: Tue, 14 Jan 2025 10:38:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <Z4YwgdAmkqf7qlb-@pengutronix.de>
References: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
 <20250113-k3-r5-v3-17-065fcdcc28d3@pengutronix.de>
 <79fbd9f8-b538-4446-8b02-d1225edb883b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <79fbd9f8-b538-4446-8b02-d1225edb883b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_013811_723143_C88F2052 
X-CRM114-Status: GOOD (  20.03  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 17/23] scripts: k3: add script to generate cfg files
 from yaml
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 14, 2025 at 10:29:55AM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 13.01.25 12:27, Sascha Hauer wrote:
> > The K3 images need some config binary snippets. In U-Boot these snippets
> > are generated from board specific YAML files using binman. This patch
> > adds a small python which does the same for barebox. The python script
> > is based on the corresponding binman code in U-Boot.
> > 
> > The YAML files are board specific in U-Boot, but mostly are identical
> > for all boards of a specific SoC type, so we provide common SoC specific
> > YAML files in barebox for now.
> 
> I thought the YAML files are only required for the Cortex-R5?

Indeed. As said the extra-y below should be a
extra-$(CONFIG_MACH_K3_CORTEX_R5). I fixed this in the meantime.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


