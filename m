Delivery-date: Tue, 17 Jun 2025 10:42:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRRtI-008DA8-0q
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 10:42:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRRtH-00058J-OJ
	for lore@pengutronix.de; Tue, 17 Jun 2025 10:42:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3Mj+D9nSGohYOf4p6rp0JFdO0/94NBKJZy0T74CZDOU=; b=MbY9cPZkXGzSUGrjEIYAh0UCd3
	CbjC4I/ECa2xYu1jFUt/QGuZ7bwhMtkAxkJycHCURP+l15/jZorz/REcg5RjUD4HzGCo+QOR0kMKQ
	gu8K9aSFt8fyVe6lPvfJ8kdlqjTy1P/jEu+0XheMVgXPcLg1f+3/VWH/FiitXrhyA1p+emxXtI8Nl
	PSeOure27vh8wSLT4O3BcT+4ep8awwsa0hkcOg7glruA9LJ5OwMKkZpcVT/Urm16I+BF/rE2UQlBQ
	c3hrWJ3hykPtv3sASkBGSnGKQIUv+AJj2VA/Wp8yh2MC4tDIujKA8cXW0dAegr0Iyg2cDecpQlQjs
	xUw35VBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRsp-00000006csv-0wDU;
	Tue, 17 Jun 2025 08:41:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRYe-00000006a3s-2DI4
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 08:20:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uRRYc-0008OY-T1; Tue, 17 Jun 2025 10:20:38 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uRRYc-003wV2-2G;
	Tue, 17 Jun 2025 10:20:38 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uRRYc-001O3f-1w;
	Tue, 17 Jun 2025 10:20:38 +0200
Date: Tue, 17 Jun 2025 10:20:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aFElVn4Kk5CR95B4@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
 <20250605-arm-k3-am62l-v2-18-53257d4b2dd2@pengutronix.de>
 <306265bc-0506-48c0-8a15-2f5019f69092@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <306265bc-0506-48c0-8a15-2f5019f69092@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_012040_570653_97E4DAAA 
X-CRM114-Status: GOOD (  15.27  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 18/33] dma: ti: k3-udma-am62l: Add AM62L support DMA
 drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jun 16, 2025 at 01:57:48PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 6/5/25 14:42, Sascha Hauer wrote:
> > +	switch (uc->config.dir) {
> > +	case DMA_MEM_TO_MEM:
> 
> Tangential question. Could we implement arbitrary memory read/write on
> top of this without further changes to the driver?

I hope so. Would be nice indeed, but I haven't tested this.

> 
> Having a /dev/dma device or similar with the same API as /dev/mem would
> be useful to test isolation of OP-TEE.

Agreed.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


