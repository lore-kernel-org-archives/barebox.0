Delivery-date: Thu, 15 Feb 2024 13:55:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rabGh-007R3o-2I
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 13:55:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rabGh-0004Xp-4i
	for lore@pengutronix.de; Thu, 15 Feb 2024 13:55:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sBLTNe0dPV2948Ph8cctjOdKUh4uqICkKtZ2Foc9dZw=; b=Qgs07iYsOUSqKgwDB7tTHf/EO1
	h53U3mYAoFgwV5pceS+AN7KwuCWyFltHikh9QN+WGeATYZJlIYuHPYX+1Nr6DEOpNaHQrNBjerEHX
	CWX0h3LIF0fVaFWnkKBhna56Vx4JmM/9f0VpWqspAAePALfyg51eWELCHjfq+cPFsZxalqdNNeecy
	48QdfLvr9LuSmNR4JV+Qku6LGVaYP/vB69thZVT1z8c0XOeZ6cCopTp8MnPWpwR/Nv+Ajz32187Ay
	ToIhMRwi6UJb9U5Oa2p6y/bFbbrhR4Tn/jIXJ5yOxhtSKS9YzNVhSQVHC7Kw4tD87z0DI8eGGhSH/
	J+XEerig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rabGJ-0000000GJ0P-3PXY;
	Thu, 15 Feb 2024 12:54:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rabGH-0000000GJ01-0nmo
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 12:54:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rabGG-0004UX-1p; Thu, 15 Feb 2024 13:54:44 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rabGF-000t78-Lp; Thu, 15 Feb 2024 13:54:43 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rabGF-00A255-1v;
	Thu, 15 Feb 2024 13:54:43 +0100
Date: Thu, 15 Feb 2024 13:54:43 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20240215125443.k5abaq425fbndvg2@pengutronix.de>
References: <20240215074757.960200-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240215074757.960200-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_045445_246500_66070960 
X-CRM114-Status: GOOD (  13.89  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/7] Detect partition changes at runtime
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 24-02-15, Sascha Hauer wrote:
> With this series barebox can detect partition table changes at runtime
> and reparse the partition table in that case. With this it's possible
> for example to write an image to a SD card and mount partitions directly
> afterwards without restarting barebox.
> 
> The fastboot code is also changed to check for existing partitions when
> they are actually used and no longer during initialization time of the
> gadget. With this it becomes possible to expose a full device via
> fastboot and also some not yet existing partitions. When the full device
> is written to one can then write to a (newly created) partition directly
> afterwards.
> 
> The reparsing of the partition table only works when none of the
> partitions are mounted or otherwise opened. When a partition is open
> when the partition table changes, then barebox will continue with
> the old partition table just like Linux does.

Finally :) except my three comments fell free to add my:

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


