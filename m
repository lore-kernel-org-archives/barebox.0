Delivery-date: Tue, 16 Dec 2025 07:47:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVOpo-00C1Fs-1U
	for lore@lore.pengutronix.de;
	Tue, 16 Dec 2025 07:47:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVOpn-00040f-TE
	for lore@pengutronix.de; Tue, 16 Dec 2025 07:47:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kgrPyzZTxAwnebbj00iQWoKt2SW6lejlFby6jNl+X2U=; b=keGMhhm+NxUuup/v5/S8I9z7dz
	j5cA0zrtXQfIKTRTkUrZWuarckf1Av7YpSa+vQxtAlJRAgWddmHl97v1i5b0SKlPrYpQ5Ncub1QKv
	v3FxvCdQR4jjrKBKnmAYfW+bZvtqXZbYw0z/mcpBOnFsrzp5nnlfxTmZxxoq3DyJe4UeHy1KUGZ9G
	ck8aIxbq/eg99ZUehQFcrJu6+skuIKc+tNyxNQ6DIc/EC+Sk/6PrM8kp5eFNB5zbjVlHzTaEFzJ9n
	xY0wt2S+oi9ewOuzxMWqXEb0yLDo0tMF/SA92WCv72M/iTIaQ12E8v40gEtcTGe+1uApeVrFxQ11m
	118iXeMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVOpA-00000004ndx-1i5M;
	Tue, 16 Dec 2025 06:46:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVOp3-00000004ncm-0VIE
	for barebox@lists.infradead.org;
	Tue, 16 Dec 2025 06:46:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vVOp0-0003vW-Bj; Tue, 16 Dec 2025 07:46:10 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <789ef3a6-6bf5-4704-b83d-692d06b992ed@pengutronix.de> (Ahmad
	Fatoum's message of "Mon, 15 Dec 2025 15:25:08 +0100")
References: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-0-11eea1b2ef41@pengutronix.de>
	<20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-2-11eea1b2ef41@pengutronix.de>
	<789ef3a6-6bf5-4704-b83d-692d06b992ed@pengutronix.de>
User-Agent: mu4e 1.12.13; emacs 30.2
Date: Tue, 16 Dec 2025 07:46:09 +0100
Message-ID: <87sedaapqm.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_224613_158311_C4D35F17 
X-CRM114-Status: GOOD (  17.31  )
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
Cc: barebox@lists.infradead.org
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
Subject: Re: [PATCH 2/5] dts: include: reset: rst-mgr-s10: add SOFTPYH_RESET
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2025-12-15 at 15:25 +01, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi,

> Hello Steffen,
> 
> On 12/15/25 3:21 PM, Steffen Trumtrar wrote:
> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > ---
> >  dts/include/dt-bindings/reset/altr,rst-mgr-s10.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/dts/include/dt-bindings/reset/altr,rst-mgr-s10.h b/dts/include/dt-bindings/reset/altr,rst-mgr-s10.h
> > index 04c4d0c6fd..e0f3d5395c 100644
> > --- a/dts/include/dt-bindings/reset/altr,rst-mgr-s10.h
> > +++ b/dts/include/dt-bindings/reset/altr,rst-mgr-s10.h
> > @@ -22,7 +22,7 @@
> >  #define USB0_RESET		35
> >  #define USB1_RESET		36
> >  #define NAND_RESET		37
> > -/* 38 is empty */
> > +#define SOFTPHY_RESET		38
> 
> I don't find this definition in v6.19-rc1. A commit message might have
> told me where this is from, but there is none :(
> 
> Anyways, we don't patch dts/, so this patch is not appropriate.

whoops, of course we don't :(


Steffen

-- 
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |


