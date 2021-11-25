Delivery-date: Thu, 25 Nov 2021 08:49:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mq9Vb-0005Vq-UT
	for lore@lore.pengutronix.de; Thu, 25 Nov 2021 08:49:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mq9Vb-00070d-3K
	for lore@pengutronix.de; Thu, 25 Nov 2021 08:49:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OmGL4Vmg+JzwRzuq3YPiP9hwZ07dlYsoMus1L2Wvp1w=; b=odqb9dl/kxOmxOQileqDUcGXTS
	6qpDdYAEAQFeLsToKmjTrixXiBBg/OTKzzTLjHZ9PBEjMUNQT0lKpj57c6zmchqsUxiYFVJQV1HnK
	CHoa4t+I1pyKIjRyoJb7nxkbOTDx9FeB4ZrF03/YmQQokJDQM9PN44qcG/56XCK2PIipbbn9bCw5e
	cOnaPPAHBQfmUBJr2jVTkdeHl5EQlEax8+S/8W49OtI9E3JbVWH03N02GSQS4TnpoHmgBYPZL8spX
	Bj2/OYc1oWrs7/JU1TknViVQUwg4cUWwkE8FHAzhsTbBasoKWQ2mzYqe4MpuCY5xOukclkMdisv/Q
	9F4+thew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mq9UQ-006d1c-Po; Thu, 25 Nov 2021 07:48:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mq9UL-006d0T-5j
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 07:48:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mq9UJ-0006to-M6; Thu, 25 Nov 2021 08:48:11 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mq9UJ-0007cA-9p; Thu, 25 Nov 2021 08:48:11 +0100
Date: Thu, 25 Nov 2021 08:48:11 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20211125074811.GD28260@pengutronix.de>
References: <20211122213436.309749-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211122213436.309749-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:47:24 up 280 days, 11:11, 143 users,  load average: 0.07, 0.16,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_234813_243213_5F3E516A 
X-CRM114-Status: GOOD (  20.50  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] RISC-V: enable HW_HAS_PCI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 22, 2021 at 10:34:35PM +0100, Ahmad Fatoum wrote:
> With the recently added generic ECAM PCI driver, we can now use PCI
> device drivers on the RISC-V Virt machine. Enable HW_HAS_PCI, so the
> driver and bus support can be selected. As HW_HAS_PCI on its own doesn't
> add any code, just enable it for the whole architecture.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
> v1 -> v2:
>   - add missing <asm/pci.h>
>   - select CONFIG_HW_HAS_PCI from CONFIG_RISCV, instead of CONFIG_SOC_VIRT
> ---
>  arch/riscv/Kconfig           | 1 +
>  arch/riscv/include/asm/pci.h | 7 +++++++
>  2 files changed, 8 insertions(+)
>  create mode 100644 arch/riscv/include/asm/pci.h

I Replaced implicit v1 with this one

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

