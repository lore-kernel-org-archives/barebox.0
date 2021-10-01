Delivery-date: Fri, 01 Oct 2021 11:29:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWEr1-0008TH-0B
	for lore@lore.pengutronix.de; Fri, 01 Oct 2021 11:29:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWEqz-0008Sh-WE
	for lore@pengutronix.de; Fri, 01 Oct 2021 11:29:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/lDY4doOnw8O3rNAmkf4d1hKYCw5x3PJ6lcVBcrFQyA=; b=q6G1lvc6b9IOQeqzVtCPgjjzwf
	GilQ8NPOISFUnrHQOoXYXdwxowXDEhZ5XD6wRQKIgbPPg4Hble/wfp9AWa7dxMLxD0a7LPpZrYTgU
	HDRdPRMara2EseYqQIWoK3/IK5WVBshWtexQUIrSJOaMXgJMMvrug9wblIa9H99PG3oxoOP+B9wjh
	+twW/G0ZijEy5j0o1sltmdd7UZqOe/mPNEmTRszsw0N4f/y0f9xYGjMpqmnnwgSGpT1KAI2dh0sfW
	BOAuHdzNXQ0EN3uegNlrDm520PnKwpGj0Fhe9yJNfUtGuPK99Xo5lsMQkToQtF/2zg7VnkvAr1sjx
	5FP1M9zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWEpg-00HEPn-JQ; Fri, 01 Oct 2021 09:27:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWEpJ-00HEL8-FO
 for barebox@lists.infradead.org; Fri, 01 Oct 2021 09:27:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWEpH-0008E0-Ud; Fri, 01 Oct 2021 11:27:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWEpH-0006tq-Ck; Fri, 01 Oct 2021 11:27:31 +0200
Date: Fri, 1 Oct 2021 11:27:31 +0200
To: Marcelo Politzer <marcelo.politzer@cartesi.io>
Cc: barebox@lists.infradead.org
Message-ID: <20211001092731.GR24834@pengutronix.de>
References: <20210927200521.7996-1-marcelo.politzer@cartesi.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210927200521.7996-1-marcelo.politzer@cartesi.io>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:25:17 up 225 days, 12:49, 133 users,  load average: 1.71, 0.93,
 0.46
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_022733_560137_4B62D599 
X-CRM114-Status: GOOD (  16.91  )
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
Subject: Re: [PATCH v=2] serial: implement riscv SBI console support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 27, 2021 at 05:05:21PM -0300, Marcelo Politzer wrote:
> Implement a console over legacy SBI (version 0.1.0). There is a tiny ringbuffer
> to simplify checking for presence and reading characters as separate steps.
> ---
>  arch/riscv/cpu/core.c       | 12 ++++++++
>  arch/riscv/lib/sbi.c        | 10 +++++++
>  drivers/serial/Kconfig      |  8 +++++
>  drivers/serial/Makefile     |  1 +
>  drivers/serial/serial_sbi.c | 58 +++++++++++++++++++++++++++++++++++++
>  5 files changed, 89 insertions(+)
>  create mode 100644 drivers/serial/serial_sbi.c

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

