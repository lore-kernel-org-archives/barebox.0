Delivery-date: Mon, 31 May 2021 10:21:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lndBI-0003Sw-Mk
	for lore@lore.pengutronix.de; Mon, 31 May 2021 10:21:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lndBH-0007Nf-QA
	for lore@pengutronix.de; Mon, 31 May 2021 10:21:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=deXv26hn10BpgYoJPSkbxI1zbr/f30FmdAdWrkoLmQA=; b=njS8Z8Nbz7XR6ufL2QpM3s+BRf
	x2/cadXXhieFAr0Tn+A0shb5STpjdKPm3zAakUOAN8FQXW1OqJj9AJHcZAFKAI0yDslM3mVIQ32K1
	yE8QKUd2mVX8TzQhOrcBl/tLm7mpEdmMq4LO/524MHN3DfseT0PCbpeWRyF2TI7dV2Drtx0M7/Abn
	I0FEoJXVvTDeIxdXgIFc/yEtagkwNo37Fy0lL62UTrOwyVc+9ed1T3y7YEatxsBEheXyBHEVLvuXw
	cm0WlbzCTy90PUBinoI6kHSa9teDc7tTlcWvC96tPq7If5lR+u8wWBv99W8tb5+IY9YTc9G7eBfPq
	muIR3gXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lndAC-00BOjS-2E; Mon, 31 May 2021 08:20:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lndA4-00BOiO-DH
 for barebox@lists.infradead.org; Mon, 31 May 2021 08:20:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lndA3-00072E-77; Mon, 31 May 2021 10:20:35 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lndA2-0007rw-RZ; Mon, 31 May 2021 10:20:34 +0200
Date: Mon, 31 May 2021 10:20:34 +0200
To: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
Cc: barebox@lists.infradead.org,
 Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
Message-ID: <20210531082034.GK5211@pengutronix.de>
References: <20210528194304.13096-1-gwenj@trabucayre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210528194304.13096-1-gwenj@trabucayre.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:20:14 up 102 days, 11:44, 127 users,  load average: 0.41, 0.21,
 0.24
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_012036_496299_A83FF6BF 
X-CRM114-Status: GOOD (  18.03  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: SoCFPGA: add Terasic DE10-Nano board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 28, 2021 at 09:43:04PM +0200, Gwenhael Goavec-Merou wrote:
> From: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
> 
> The Terasic DE10-Nano board is based on CycloneV SoCFPGA (5CSEBA6) with
> 
> What has been tested to work:
> - SD card
> - Gigabit network
> - FPGA (FPPx16 & FPPx32)
> 
> Signed-off-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
> ---
> Changes v1 -> v2:
>  - add note about FPGA status in commit message (Antony)
>  - use SPDX in dts file (Antony)
> ---

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

