Delivery-date: Thu, 14 Oct 2021 13:58:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mazNt-0001pF-1c
	for lore@lore.pengutronix.de; Thu, 14 Oct 2021 13:58:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mazNs-0008FX-4b
	for lore@pengutronix.de; Thu, 14 Oct 2021 13:58:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8BFuf68bf47umqSRYzz0g2hbXP8ewIGnJ1LtpAPeuBI=; b=1GyIunbqWhyBA9eg9CWZka/Ptz
	q8sT5wUrkn9PfrUAljk9wt2lV+wOpsTBvoNKyyFov7SQSXUacaylTpMO3jBqD8pOwMNB/jmmbLWrr
	TihSYTDBke3z1CLByM9NogK0cbNEhZzwgazWnl3rdcnRibSlwq37Xtz9bDX1egU0VkPOLTaKzfUMo
	oiD7p87L80PJPUetEqLV+kRUckbobx6qZsGOOVGSxSG/9MRXLQHt3+7cMaNsfel0kyax5Ne/Bcc/R
	YjQrULOlBcsWRSfAEEmb+LPCZI7PO4FFizwNx9LtSuVCLF4LaagfrGkpCo+Jnc7COwZcEfFyVc6d9
	ybqstUtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mazME-002y6c-8p; Thu, 14 Oct 2021 11:57:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mazM9-002y5b-UU
 for barebox@lists.infradead.org; Thu, 14 Oct 2021 11:57:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mazM8-00089h-Lz; Thu, 14 Oct 2021 13:57:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mazM7-0006QU-Rc; Thu, 14 Oct 2021 13:57:03 +0200
Date: Thu, 14 Oct 2021 13:57:03 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20211014115703.GB25698@pengutronix.de>
References: <20211013112247.3065-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211013112247.3065-1-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:56:46 up 238 days, 15:20, 145 users,  load average: 0.15, 0.28,
 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211014_045706_005514_3C781A94 
X-CRM114-Status: GOOD (  21.75  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/1] gpio: add driver for xilinx zynq and zynqmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 13, 2021 at 01:22:46PM +0200, Michael Riesch wrote:
> Hi all,
> 
> This patch adds a GPIO driver for the Xilinx Zynq/Zynq
> UltraScale+ MPSoC architecture based on the corresponding
> driver in the Linux kernel.
> 
> The work was mainly carried out by Thomas Haemmerle, with
> several format fixes and the revisions for v2 applied by me.
> Version 2 of this patch considers the review by Ahmad
> Fatoum.
> 
> Tested on the ZCU106 evaluation board as well as on a
> custom Zynq UltraScale+ MPSoC board.
> 
> Best regards,
> Michael
> 
> Thomas Haemmerle (1):
>   gpio: add driver for xilinx zynq and zynqmp

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

