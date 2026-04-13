Delivery-date: Mon, 13 Apr 2026 13:13:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCFEd-00BhL6-0w
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 13:13:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCFEc-0000e6-PI
	for lore@pengutronix.de; Mon, 13 Apr 2026 13:13:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VXk+1DXL9VrZf/r124dwmQnSs0F7KAVJ9Ao/L4ayVLA=; b=stSNfaiOQhnKUMFNR7njAaC8JY
	P63Gqk3rL/9+ZrobGi3plwx2OGe/Au+1IWilWBqgpECZl23K046Rsgkv6xj/9SM0o7X73bM3M8upP
	lmz7hloK2T2CPa9tJOqE2lcjLqtHaa7+15akESYRj7ayfHiCe1G8bPKyysqxQdHUmbPfyhiYHrNOk
	1z9p7GW+60TdlHE9bd4hoXX+TCtZGH1v9ZOhzScqCSP1LyUDzzmjDjrox9isTy4v+zTmZdyoLlI9a
	LF9skVLlF25iXc/BvXwz1jBB2CUrfILZyRH17RAK26tphc0e70bGn4tMaOIM1/b4jH3SHLTfP9oe+
	KTQMbh1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCFE6-0000000FYO9-0NqX;
	Mon, 13 Apr 2026 11:13:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCFE1-0000000FYNQ-3VPI
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 11:13:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCFDz-0000Z4-WA; Mon, 13 Apr 2026 13:13:04 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCFDz-0059rr-2b;
	Mon, 13 Apr 2026 13:13:03 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCFDz-0000000EqAc-2xry;
	Mon, 13 Apr 2026 13:13:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260325113711.2163037-1-a.fatoum@pengutronix.de>
References: <20260325113711.2163037-1-a.fatoum@pengutronix.de>
Message-Id: <177607878370.3537103.12594947003259451475.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 13:13:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_041305_882328_5D1FF0A0 
X-CRM114-Status: UNSURE (   5.72  )
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
Subject: Re: [PATCH master] clk: scmi: clock: add compatibility for clock
 version 3.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 25 Mar 2026 12:37:07 +0100, Ahmad Fatoum wrote:
> TF-A v2.14 breaks consumers that don't yet speak its newer SCMI clock
> protocol, which currently includes barebox as well as some Linux LTS
> releases like v6.6 and earlier.
> 
> As barebox is usually updated alongside TF-A, do the easy thing of
> supporting both new and old TF-A versions by mimicking what Linux does.
> 
> [...]

Applied, thanks!

[1/1] clk: scmi: clock: add compatibility for clock version 3.0
      https://git.pengutronix.de/cgit/barebox/commit/?id=c305c34a82f2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



