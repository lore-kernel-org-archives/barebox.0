Delivery-date: Thu, 09 Oct 2025 15:48:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v6r02-005y24-2F
	for lore@lore.pengutronix.de;
	Thu, 09 Oct 2025 15:48:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v6r02-00019G-5p
	for lore@pengutronix.de; Thu, 09 Oct 2025 15:48:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G6J4pudl2MnPjLDbX0ivuC6auGPduYY+LtC77tifVNM=; b=Kw8RcSZ5wh4wu0VS32T5cBDov+
	hFMKHwgJpo6/+vt3K+04lgEJ7t10dRSlz+kmDqgMqpll1jTKeIjKVAlgar30Mn56PqGWJmlwck1t/
	dmrRZrGNLTjW2m7/bGR8HmaS3vaO2d9IJNFCGNTE8yQ67K3PFW/i0uvDuitCm7lyrPd78YPlViOHO
	PTR3geRaIHaiCi4/LG9XqJEPV51aIzDgwY3/sskRKUPTgROAqhPflPBwpTfgrgC2bcjKAqXNXN6N+
	O50+w/Wq8oVL/uuQYq5QrK79grUBt0Tt/AKEJzZ/pbnXz/Ublbq7x+BjywqiGfnDE/FwnoxJGmzqD
	/Hj38A3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6qzQ-00000006GGc-1TvG;
	Thu, 09 Oct 2025 13:47:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6qzM-00000006GGI-3Ots
	for barebox@lists.infradead.org;
	Thu, 09 Oct 2025 13:47:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v6qzH-00012W-LR; Thu, 09 Oct 2025 15:47:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v6qzH-002k9i-0z;
	Thu, 09 Oct 2025 15:47:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v6qzH-0000000DLLe-0xzM;
	Thu, 09 Oct 2025 15:47:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Maud Spierings via B4 Relay <devnull+maudspierings.gocontroll.com@kernel.org>
Cc: Maud Spierings <maudspierings@gocontroll.com>
In-Reply-To: <20251008-ddr3-v1-1-8fe874a12878@gocontroll.com>
References: <20251008-ddr3-v1-1-8fe874a12878@gocontroll.com>
Message-Id: <176001763922.3180313.7564316692509409822.b4-ty@pengutronix.de>
Date: Thu, 09 Oct 2025 15:47:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_064724_849827_A80FAE83 
X-CRM114-Status: UNSURE (   5.80  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: imx: add ddr3 ram support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 08 Oct 2025 14:25:13 +0200, Maud Spierings via B4 Relay wrote:
> Add the necessary bits to use DDR3 on imx platforms.
> 
> Tested on Ka-Ro tx8m-1610 (imx8mm) based platform with DDR3L memory.
> 
> 

Applied, thanks!

[1/1] ARM: imx: add ddr3 ram support
      https://git.pengutronix.de/cgit/barebox/commit/?id=a34a71aa543a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



