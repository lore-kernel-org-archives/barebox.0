Delivery-date: Tue, 09 Sep 2025 17:40:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0S4-0017J3-1X
	for lore@lore.pengutronix.de;
	Tue, 09 Sep 2025 17:40:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0S3-0002C4-VV
	for lore@pengutronix.de; Tue, 09 Sep 2025 17:40:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ej2B+8s0XDh/5TVjPv5URLFYsFDHgEwC3R14/1JMLoQ=; b=vKQusupgbMhWDOuYeOnp9nXwwn
	mFkVB/8lcimEyOBPih1cgMXf0SpQ4wSNdKJpEwfkgE3VgXnxxTHyp6XD28PWGezZ+9ZYos5FoK4lV
	CBeJJc38/2zp2cqHEvmAYNKotERZ9sf/xv/tkBjRDp8pkIiMe+HrhkVfOGO+w8Fs8FGa9giO1/XAM
	5FLQGysb1IHJHi4neJMF5geAfsgVHeXaictWwTO+Z54DzwPeKKUe11a0bwrRGw3R+PXS0IWdTu1TJ
	8O6LqqNFZnZnF+VaJKd9EszuCPnWey06bQ4XTE3HGyQF+RRKKD3CKVTWfGP+8k9w5Z0K2owUEMJDM
	73cC+wgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0RJ-000000089Jh-451s;
	Tue, 09 Sep 2025 15:39:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvuq8-000000063ct-0llX
	for barebox@lists.infradead.org;
	Tue, 09 Sep 2025 09:40:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvuq6-0004Vv-EO; Tue, 09 Sep 2025 11:40:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvuq6-000Ok7-0p;
	Tue, 09 Sep 2025 11:40:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvuq6-00000003vKE-0pOO;
	Tue, 09 Sep 2025 11:40:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Enrico Joerns <ejo@pengutronix.de>
In-Reply-To: <20250909064828.899889-1-s.hauer@pengutronix.de>
References: <20250909064828.899889-1-s.hauer@pengutronix.de>
Message-Id: <175741083819.935299.14169996674845599695.b4-ty@pengutronix.de>
Date: Tue, 09 Sep 2025 11:40:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_024044_094853_650FDE05 
X-CRM114-Status: UNSURE (   4.75  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: k3 am62l: fix typo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 09 Sep 2025 08:48:28 +0200, Sascha Hauer wrote:
> Add missing 'a'.
> 
> 

Applied, thanks!

[1/1] Documentation: k3 am62l: fix typo
      https://git.pengutronix.de/cgit/barebox/commit/?id=648306d7e309 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



