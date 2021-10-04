Delivery-date: Mon, 04 Oct 2021 12:00:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXKmD-0003dE-HV
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 12:00:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXKmC-0007K1-KM
	for lore@pengutronix.de; Mon, 04 Oct 2021 12:00:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qgSDzimNrTjMCW3oG7DTASMUMvKUGmOhztIHeRbu+34=; b=fepFTgbuD6abwDthfy76sak8yV
	UfKuPVtCPZmnYCwdH2DWtwqWfycfcnZdCdJD+QEHLX+rlEArQnS+zEiK5HktUfDfwd2WdhuZt+dwx
	QwoJGPJVqoyX4qat95y/ffO/Kchuqd2xTdoQ7OslFYqW6sP6+lUGyGIKWrKoyrYgipvplPb8i4Bp8
	y2+A1je4BMm6fwzGbJR3GzV7fLS3WF1zKbGMooJZjskWdqd5U9Ge0Ptp37BS51rcWmPhVMl2YDcyv
	3nMym9tpuznr5hKK6McKm4QNVtvB8WuqnyapMj0WgUT63f3hhiXoSnRd+trLJ4tKnzrRFu6GgbLPA
	9LeR5Omw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXKkq-005sQf-Ot; Mon, 04 Oct 2021 09:59:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXKkj-005sPd-21
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 09:59:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXKkh-00071D-If; Mon, 04 Oct 2021 11:59:19 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXKkh-0004gx-4D; Mon, 04 Oct 2021 11:59:19 +0200
Date: Mon, 4 Oct 2021 11:59:19 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20211004095919.GN28453@pengutronix.de>
References: <20210913121350.9307-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210913121350.9307-1-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:59:01 up 228 days, 13:22, 133 users,  load average: 0.03, 0.19,
 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_025921_131132_092485B9 
X-CRM114-Status: GOOD (  25.37  )
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
Subject: Re: [PATCH v2 0/3] arm: zynqmp: add support for zcu106 and boot
 sources
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 13, 2021 at 02:13:47PM +0200, Michael Riesch wrote:
> Hi all,
> 
> This series features some mixed additions to and improvements of
> the Xilinx Zynq UltraScale+ MPSoC support in barebox.
> 
> The first patch introduces support for the Xilinx Zynq UltraScale+
> MPSoC ZCU106 evaluation board (based on the board support for the
> ZCU104). Tested the basic features (SD card, Ethernet, ...) on a
> ZCU106 board (well, obviously...).
> 
> The second patch fixes two links in the Zynq UltraScale+ part
> of the documentation.
> 
> Finally, the third patch introduces support for the boot source
> detection on the Zynq UltraScale+ architecture in general. Tested
> on the ZCU106 and a custom Zynq UltraScale+ board.
> 
> Version 2 of this patch considers the reviews by Michael Tretter
> and Ahmad Fatoum. Now boot source and instance are set in the
> zynqmp_init method and the boot source/instance determination has
> been revised for better readability.
> 
> Best regards,
> Michael
> 
> Michael Riesch (3):
>   arm: zynqmp: add support for xilinx zcu106 board
>   Documentation: boards: zynqmp: fix broken links
>   arm: zynqmp: add boot source support

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

