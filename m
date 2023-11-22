Delivery-date: Wed, 22 Nov 2023 16:25:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5p6e-004Vc1-0F
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 16:25:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5p6e-0001ZP-48
	for lore@pengutronix.de; Wed, 22 Nov 2023 16:25:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oxMnZcCIwwPQSfgLIrh14TvIs6ABVRDgUmb75gVsZ20=; b=AoqmijFmN6cxEmACer2hvmhJ2V
	8nAsC8CgvuoABmmtySNwL1WIZea2d1Ph4GRHA0shVGCF/QxhpswMk29hPQXtsIIQHzr1tzTYiZpBh
	KairjAaKz6ej+7NqenKFwJ4AznfGOalcK2WWa7i5gCDj7qNMU7SRM25hAO3xWSxMXt3sir3rpRt5D
	XRXYEL+la2zfnOzXUIsqUFQ8qobUa0W4n8h1b7CDjMb1LugHB63tOX2wycK7igMB5LaMnMXlydZYl
	pRP0g/enytCbVoXNcZOG4/MOqSWqG74OX3sbibzI6PK1qe/5RSO2eGn1cvEHHx+2BGnr65Nlrtbrb
	YuZt88wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5p5L-002F48-2l;
	Wed, 22 Nov 2023 15:24:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5p5I-002F3Z-2g
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 15:24:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r5p5E-00015F-PQ; Wed, 22 Nov 2023 16:24:08 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r5p5D-00AqIx-Pu; Wed, 22 Nov 2023 16:24:07 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r5p5D-003Jtq-NW; Wed, 22 Nov 2023 16:24:07 +0100
Date: Wed, 22 Nov 2023 16:24:07 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: Ahmad Fatoum <ahmad@a3f.at>,
	Alexander Shiyan <eagle.alexander923@gmail.com>,
	Thorsten Scherer <T.Scherer@eckelmann.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20231122152407.GA3359458@pengutronix.de>
References: <20231122094747.340825-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231122094747.340825-1-uwe@kleine-koenig.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_072412_867438_4DFDF9F0 
X-CRM114-Status: GOOD (  17.87  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 0/2] Allow generating MAC addresses from machine ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 22, 2023 at 10:47:48AM +0100, Uwe Kleine-König wrote:
> Hello,
> 
> On Tue, Nov 21, 2023 at 09:33:58AM +0100, Sascha Hauer wrote:
> > This series neither applies to master nor to next, please resend
> 
> here is the rebased series. Applies to current next. There are no other
> changes.
> 
> Best regards
> Uwe
> 
> Ahmad Fatoum (2):
>   common: machine_id: support deriving app specific UUIDs
>   net: add generic MAC address derivation from machine ID

Applied, thanks

Sascha

> 
>  common/machine_id.c  | 83 +++++++++++++++++++++++++++++++++++++++++++-
>  include/linux/uuid.h |  8 +++++
>  include/machine_id.h | 11 ++++++
>  include/net.h        |  2 ++
>  net/Kconfig          | 17 +++++++++
>  net/eth.c            | 15 ++++++--
>  net/net.c            | 49 ++++++++++++++++++++++++--
>  7 files changed, 179 insertions(+), 6 deletions(-)
> 
> base-commit: 7c12dcdbe20ffc872af8b433c91263c6520cf669
> -- 
> 2.42.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


