Delivery-date: Thu, 20 Jan 2022 09:26:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nASmL-007Tst-2x
	for lore@lore.pengutronix.de; Thu, 20 Jan 2022 09:26:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nASmJ-000689-IK
	for lore@pengutronix.de; Thu, 20 Jan 2022 09:26:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t5S14qfx23qEsjuNLnRMpvqH32K34hCI93eGGE2QLyI=; b=tpljg84WDiRehjVSNXuEzSYmD2
	prRc94q/1wqvf2woL5HKDCwl1iDQS+Uz+8lIZWvXB1aRJFxJuyk6q4mYLk6eO1LLlDsAo01cn5BJR
	KM8QjQ16tkvGGPRQaeb9q6kjs5EWl9oiQhssyNYX8quzHJtNZA/fwFUvXMDbtY2edqB7q9+ltQ6Ib
	D6GqFQdtgSd8oDqsZvXjsKCsLsSUkr2r8d6bdtm80Y8WyFqUrscE1jCAetPV/pCZQM1ZsAInyxCJQ
	mu98OtcupeQPHdzeSCq/E6hZRT3vVcxU8u+CviuUUYI9gPeYCX/noYB9BaRTeIDMPUdE+8LP02inN
	Lrn7WbVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nASl2-009joE-Jx; Thu, 20 Jan 2022 08:25:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nASkx-009jnH-JW
 for barebox@lists.infradead.org; Thu, 20 Jan 2022 08:25:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nASkw-0005vj-1B; Thu, 20 Jan 2022 09:25:18 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nASkv-0005FJ-H1; Thu, 20 Jan 2022 09:25:17 +0100
Date: Thu, 20 Jan 2022 09:25:17 +0100
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
Message-ID: <20220120082517.GJ23490@pengutronix.de>
References: <20220117230235.13549-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220117230235.13549-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:24:58 up 40 days, 17:10, 75 users,  load average: 0.24, 0.25, 0.32
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220120_002519_684131_589CC92F 
X-CRM114-Status: GOOD (  17.05  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/5] Add support for QOI image format
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 18, 2022 at 12:02:30AM +0100, Jules Maselbas wrote:
> changes in v2:
>  - added SPDX licence identifier
>  - added comment on modification done on qoiconv.c
>  - added pr_fmt macro and removed keep_file_data=1 in lib/gui/qoi.c
>  - reword few commits.
> 
> ---
> 
> Jules Maselbas (5):
>   filetype: Add QOI format image type
>   gui: Add qoi image format
>   scripts: Add qoiconv to convert png to qoi
>   logo: Enable image format selection for the logo
>   logo: Add choice for the QOI image format option

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

