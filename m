Delivery-date: Wed, 30 Apr 2025 11:03:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uA3MA-000lqe-0P
	for lore@lore.pengutronix.de;
	Wed, 30 Apr 2025 11:03:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uA3M9-00047J-Ik
	for lore@pengutronix.de; Wed, 30 Apr 2025 11:03:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+DIQhqIXaa19R5GCo10/y0Hh4MLa0mgWzA041blzJZU=; b=eZQrlv+0R0M9T+JMwkUvtHbgvF
	yykiO4/Mc3b02pKwigKk8AQ+murAr+YmtZfWIoK37IetaTKxStTqV4mDwF/bpxx+PVdYxX1L0jpIp
	EIPDLzXrejVShkXf6Z3PNb0he8rUWtouwHBzU3fuG6H988DGoTfibvaYWiPogFhihffxoq2S64dpF
	c6c1IwKZ3h5ujp4/uI2lWMdKxWXvekZysb2lA0Phv8hi6dAGWxYxAl188KpcupyU7+D+rJFJZbs2S
	9Hh1tG+t8vYW9QsJLQ5RzFyineYWkdB3QN+JM82V+IukBJJXEp8554iLeXT/rPFPDiwe7e0+475jc
	RhKrsYvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA3LL-0000000CHQJ-1lP0;
	Wed, 30 Apr 2025 09:03:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA3LJ-0000000CHPp-11Tf
	for barebox@lists.infradead.org;
	Wed, 30 Apr 2025 09:03:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uA3LH-0003ni-9r; Wed, 30 Apr 2025 11:02:59 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uA3LH-000Oli-0O;
	Wed, 30 Apr 2025 11:02:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uA3LH-00E21k-0B;
	Wed, 30 Apr 2025 11:02:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250429140518.3059481-1-s.hauer@pengutronix.de>
References: <20250429140518.3059481-1-s.hauer@pengutronix.de>
Message-Id: <174600377905.3344337.9475059071920689873.b4-ty@pengutronix.de>
Date: Wed, 30 Apr 2025 11:02:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_020301_284917_F10AB9C1 
X-CRM114-Status: UNSURE (   6.87  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: am65-cpsw-nuss: fix common enable counter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 29 Apr 2025 16:05:18 +0200, Sascha Hauer wrote:
> The cpsw common is ought to be reference counted, but the reference
> counter is only ever increased to one. Increase the reference for
> additional am65_cpsw_common_start() calls.
> 
> This fixes a warning when barebox is shut down:
> 
> ERROR: 8000000.ethernet@8000000.of: dma failed with -22
> 
> [...]

Applied, thanks!

[1/1] net: am65-cpsw-nuss: fix common enable counter
      https://git.pengutronix.de/cgit/barebox/commit/?id=426bfa6e8de5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



