Delivery-date: Mon, 09 Feb 2026 15:12:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpS0I-00AZpq-0J
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 15:12:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpS0H-00012k-5o
	for lore@pengutronix.de; Mon, 09 Feb 2026 15:12:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=30qo+e9CCvzVPyENILARJV8pqJEOhvUwnV5xQaXLCJs=; b=Nn5HA+h7AJFANoeflK51jLqGuH
	f1Y23O/AM4OVYY9kZoRRXASYrlyooj3iCXgw/5T6T78L+6bB9zsfyGtU/EvhVlp/7MVio0Ie4pR/U
	qfHQU1JXibjftdZa4f5yc3vK2r5dSWSsGtqs90fhmx5qapEEAg6mk9EEdCnpgAAMlxQrqTE95iyEF
	LEQvjibawFNaJjE7p9KO06xQPbrb+TG5O3XYD5dFBYP2N7c5EY+io8YGqrKmheWqDtszedH7Wxd/Z
	hSGnyDJ9kl+fZV60UT2DYhJcgd+CeW+jASMELm2VIyhIJw7KG+3AxiUQaVUjX9mXR5ysixixKtjXA
	eiyIze8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpRzo-0000000FUVo-0S76;
	Mon, 09 Feb 2026 14:12:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpRzl-0000000FUVM-2A9g
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 14:12:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpRzj-0000zL-Jc; Mon, 09 Feb 2026 15:12:07 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpRzk-004u68-0I;
	Mon, 09 Feb 2026 15:12:07 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpRzj-00000002oDY-1XJS;
	Mon, 09 Feb 2026 15:12:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20260204173338.1567736-1-m.felsch@pengutronix.de>
References: <20260204173338.1567736-1-m.felsch@pengutronix.de>
Message-Id: <177064632736.669673.8295468258279959828.b4-ty@pengutronix.de>
Date: Mon, 09 Feb 2026 15:12:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_061209_687298_DC0415F2 
X-CRM114-Status: UNSURE (   4.60  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] handoff-data: add missing include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 04 Feb 2026 18:33:31 +0100, Marco Felsch wrote:
> 


Applied, thanks!

[1/1] handoff-data: add missing include
      https://git.pengutronix.de/cgit/barebox/commit/?id=637ed433481c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



