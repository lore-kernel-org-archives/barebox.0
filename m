Delivery-date: Mon, 19 Sep 2022 11:03:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaCgY-009RNA-Jr
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 11:03:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaCgX-0001Q7-GM
	for lore@pengutronix.de; Mon, 19 Sep 2022 11:03:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KU1AXENWwJz3BHna09DTejntA8ytFRahjSEqkiURnRM=; b=DfzFhFEcjLHPYbZbXi5qU+WFDT
	I8NZGQx0Po0v2LYvTlu7Aby7I9r18F/w6SOSWZ3oIM9lDtezqPxdTAP5VPOst+NY5zvvkaMCdrtrm
	5G88SXGx9S5PTeDDE39gJlJD6L+ckYsUMminZDgkmO5taMAR9rtXudGfw7q5iebZM9T3w4eDjbVtF
	0SbHImPeC/YXm/g/pseuiUAhsLUT/H2fFXScFApv9N4Ykol7LpQv/S0DGAn4K3oIdRGv6ucgwfUwJ
	lqL8JMLwKh9+Nrffi4K4WTeIYNfe0Dgch5yGAPXJMEO2lEm0L+OIMI2U0SXG6fDMc1fwgMrk8UO0Q
	DltEFFAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaCev-00AVQS-OP; Mon, 19 Sep 2022 09:01:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaCeo-00AVOs-ME
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 09:01:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaCem-0001Hd-Pr; Mon, 19 Sep 2022 11:01:36 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaCel-0007WV-5t; Mon, 19 Sep 2022 11:01:35 +0200
Date: Mon, 19 Sep 2022 11:01:35 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
Message-ID: <20220919090135.GB6477@pengutronix.de>
References: <20220905145214.290551-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220905145214.290551-1-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_020138_748640_4259592E 
X-CRM114-Status: GOOD (  26.39  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] soc: rockchip: add driver for rockchip io domains
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 05, 2022 at 04:52:12PM +0200, Michael Riesch wrote:
> Hi all,
> 
> The IO domains on Rockchip SoCs need to be configured to the correct
> bank voltage. In Linux this is achieved by means of a platform driver
> that reads the voltage value of the supplies and configures the bits
> in the general register file (GRF) accordingly.
> 
> This series ports this driver to barebox to provide support for the
> Rockchip RK356x SoCs. Please note that I could only test the changes
> on RK3568 boards, so I left out the parts for the other SoCs supported
> by the Linux driver. Also, it should be noted that the Linux driver
> uses notifiers to react to voltage changes. This is not supported by
> this barebox driver.
> 
> WARNING: Use those patches with care as they have the potential to
> fry up your board. That said, testers are very welcome ;-)

You are frightening me.

I would apply this series, but given you warn about its usage I'm not
sure what I should do with it. I could give it a test on the RK3568-EVB
once it returned back in our remote lab, but I neither have a Pine64 nor
a BananaPi R2 Pro.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


