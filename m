Delivery-date: Mon, 17 Nov 2025 12:02:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKx0X-001x4K-1M
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 12:02:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKx0W-0004bF-TG
	for lore@pengutronix.de; Mon, 17 Nov 2025 12:02:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=63OiL4dTlRC1cPhB4bSXfysqucPoD2mLDpDm3ldowTs=; b=Ok9fGjje+YneyQ2m4aGul+t8AI
	6Re8hyP2Ijk5E5KsAedGyZ93u6vXismT4QAgcBa+8fUHNUEM3EUlc2JhWrEpC7r5bWf5sx4QiwCN+
	pWyIP2KHPcEwfEFcFz2KoCzNhhczL/VAnG6gBE0ynTbin/iFAzJZgW9fL/tfFt+OJyB4oLMRoegec
	TOWawJHGGu7PtAFgu1GLnylkRaj7uEFat8fx08My5HFpWXs8iRKQUZWoLTB321oBE28yA1dqxVoAU
	YWAR+BAHnZxVNLse3tlh8rsds+oebRuZ+4ndqueetSYbYLbfIWCuzhfj12p+kcmHH96eMyFTpXjzP
	N/ZlTsVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKx00-0000000Fvkv-3BCt;
	Mon, 17 Nov 2025 11:02:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKwzx-0000000FvkL-2Vag
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 11:02:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vKwzv-0004K0-VD; Mon, 17 Nov 2025 12:02:15 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vKwzv-000thx-2V;
	Mon, 17 Nov 2025 12:02:15 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vKwzv-008Ii3-26;
	Mon, 17 Nov 2025 12:02:15 +0100
Date: Mon, 17 Nov 2025 12:02:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aRsAtx-dOzEZLFvo@pengutronix.de>
References: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
 <20251117-soc-uid-v2-2-a2415bf9133d@pengutronix.de>
 <76eca53c-c233-4e5c-831e-52b76ff0a875@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <76eca53c-c233-4e5c-831e-52b76ff0a875@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_030217_640157_4EEA0F2E 
X-CRM114-Status: GOOD (  18.64  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/9] soc: imx8mp: Soc ID is 128bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 17, 2025 at 10:59:56AM +0100, Jonas Rebmann wrote:
> Hi Sascha,
> 
> On 2025-11-17 09:35, Sascha Hauer wrote:
> > On i.MX8MP the SoC ID has 128 bits instead of 64 bits as on other i.MX8M
> > SoCs. Read the remaining 64 bits which so far haven't been included in
> > the SoC ID.
> > 
> > On already rolled out devices a change of the SoC ID is undesired, so
> > this commit introduces CONFIG_ARCH_IMX8MP_KEEP_COMPATIBLE_SOC_UID. With
> > this option enabled the old SoC ID will be used.
> 
> I think we should avoid using the terms SoC ID and SoC UID
> interchangeably. Apparently some (TI) refer to SoC part numbers as SoC
> IDs, which I find confusing enough by itself.

Right. I'll look through the series and replace the remaining
occurences of SoC ID with SoC UID.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


