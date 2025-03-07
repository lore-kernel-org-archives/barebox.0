Delivery-date: Fri, 07 Mar 2025 08:51:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqSUI-00AvMI-0O
	for lore@lore.pengutronix.de;
	Fri, 07 Mar 2025 08:51:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqSUH-0004Lr-09
	for lore@pengutronix.de; Fri, 07 Mar 2025 08:51:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j4M2dfu11zMNy420+23e2L5AT631RD7b9cJqWJ/HMqo=; b=xI6tDHHPLXjpdru7enUXVC2PEW
	ayutWi1qbISr3qro1jcdO9YUdpdPC9w3R6XKLYt11DXjbpOIRs0aPbozF+5VaQB+NtgCYc+2NqmEu
	0nMaovIMz/3qSoJ9jrEeK86E7/LIrcQOaT+IBCqFT3EecJErJm+qU237N8kOZzgsX9HUf7i3WoH8E
	5843EAs1S7YDw7eq++koZXEo03XEdMw97awWQb6Elp8thR+mZkYi25y2oEhNBjcGeQM1vP53YluGp
	iVwuBSSueCNvtPxUaRmcihlbydKv21Tg2b0tazhcXF+e5XxsL9D6joGzTB0PCA5T9nCt4flNX8mla
	62tK5GHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqSTp-0000000DTCZ-32Ea;
	Fri, 07 Mar 2025 07:50:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqSTn-0000000DTC0-2kH0
	for barebox@lists.infradead.org;
	Fri, 07 Mar 2025 07:50:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tqSTm-0004EK-An; Fri, 07 Mar 2025 08:50:46 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tqSTm-004RuQ-02;
	Fri, 07 Mar 2025 08:50:46 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tqSTl-0044GE-34;
	Fri, 07 Mar 2025 08:50:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250307055135.26298-1-eagle.alexander923@gmail.com>
References: <20250307055135.26298-1-eagle.alexander923@gmail.com>
Message-Id: <174133384594.969665.14507034128959480599.b4-ty@pengutronix.de>
Date: Fri, 07 Mar 2025 08:50:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_235047_694245_EE6716B9 
X-CRM114-Status: UNSURE (   7.11  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] at91: Remove non-devicetree board support for SAMA5D3
 SOC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 07 Mar 2025 08:51:35 +0300, Alexander Shiyan wrote:
> Since all SAMA5D3 boards now do not use the devicetree,
> we can safely remove the board support files for this SOC.
> 
> 

Applied, thanks!

[1/1] at91: Remove non-devicetree board support for SAMA5D3 SOC
      https://git.pengutronix.de/cgit/barebox/commit/?id=90738596b7d4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



