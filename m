Delivery-date: Fri, 30 Jan 2026 14:36:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vloff-006zwd-0H
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 14:36:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlofe-0005y6-3b
	for lore@pengutronix.de; Fri, 30 Jan 2026 14:36:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1eM7BvqcPNAGljuCQ3WMTvBc4HuVgzwlIDPX0VzDYrY=; b=T2+gukxRoQ6fz8D+K5EN0tPMx8
	ST9p+PP5glzxAr03FhalYmJ2h7he12R1uHOGwRQYOEd8n5TH4zy965rAhEGm/ViBEpY22CAt0G1Ub
	mu0xsSYvr9EXON/tJbQZpKj8FxXJaSnl+nyuSzS7ciFjnSd7LKuW1g3ZXT35Sl1WUh5O1BItG02mi
	NTTeJB0AatouKamkZu8AkZHNd7EAnjKnpM1Qm6ZQjE3GdcTXZNWisIBxRnUr0PRV1Cv64yIMH5+F0
	y0WvhTIawtAEICLY7Um/EIk38c0GsWitZe5PSZOuTmstJ+rVwMlc1mUAsyXuqxK4W4sBYUvOdkyw0
	PNrdYEhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlofE-00000001Xht-0un3;
	Fri, 30 Jan 2026 13:35:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlofA-00000001XhU-49ot
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 13:35:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vlof8-0005sS-Op; Fri, 30 Jan 2026 14:35:50 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vlof8-003G0K-1Q;
	Fri, 30 Jan 2026 14:35:49 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vlof7-006dSs-26;
	Fri, 30 Jan 2026 14:35:49 +0100
Date: Fri, 30 Jan 2026 14:35:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aXyztWu6WtJvnMw9@pengutronix.de>
References: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
 <20260127084546.3751357-5-a.fatoum@pengutronix.de>
 <4e51fc1a-108e-46b1-b258-88190f2740d1@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4e51fc1a-108e-46b1-b258-88190f2740d1@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260130_053553_032377_F790B51A 
X-CRM114-Status: GOOD (  20.19  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/15] bootm: give bootm_load_ functions an end address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 27, 2026 at 04:31:58PM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 1/27/26 9:39 AM, Ahmad Fatoum wrote:
> > So far we expected that a load operation will not overflow, but there
> > was actually no way for the callee to check this.
> > 
> > As the architecture-specific bootm handlers are tasked with allocating
> > memory for boot artifacts have them pass along not only the start of the
> > load region, but also its end, so the callee can check that it didn't
> > overflow.
> > 
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Please dismiss this one patch. I got at least one end offset wrong and I
> will just redo it separate from this series.

With this at least the next patch doesn't apply anymore. Please resend
then.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


