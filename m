Delivery-date: Wed, 13 May 2026 16:39:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNAjq-001Hu5-10
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 16:39:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNAjo-0005gR-Pa
	for lore@pengutronix.de; Wed, 13 May 2026 16:39:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/1heDi6OA3PGhqAlMqcRgVuYqebsVtXV8Dgf3rCTtv0=; b=M7ofgZOrnk/3mfvnW4q7BuGSOp
	zFOOtoiFcdBFIIypGCizAzFFnJItRu01N3K2x1zo+BMgWRZQeTi1p6RxmIN9gkjQYJH4JdkC/dPHi
	ppg2sMvbUpDTXViMuNiOHTBe7FY3rixPnjRZkRCaRIor4mB3vjoM9Z60kTNH+BcdT8rJQHB29xiME
	H70LskVz9lxLbj1co8G8VZ2W21qw+P0CmRNqAYpwGTgo8Sf+Dg/EEIfgk57rjIbTOi2zmZ7t4Zwz+
	BcLkiwjJJrJKcQhw4ZT9OyC4j3w3iD9BQHsYg+6EN7dXq5v/b3beLo8jsjojgvDF7yZ0CMizR+b+w
	js8c3vrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNABB-00000002rr1-185U;
	Wed, 13 May 2026 14:03:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNAB9-00000002rqW-3wws
	for barebox@bombadil.infradead.org;
	Wed, 13 May 2026 14:03:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=/1heDi6OA3PGhqAlMqcRgVuYqebsVtXV8Dgf3rCTtv0=; b=lY8/34s693t2pChHZpLeLRAoJa
	nZ1vPStdsbOX/zkwQu8JgUHQyXTOKrOeyGNpDANaylZnrefZfRXqhNaSvBqx03ctpsiQMqk74JinN
	VLIAy+TNUMApXGIxUR7IjVF6npkAwWx/0xoFtApoce4jvp16DW7fGENkdy8EQyMFZwjHMjv4sRnxA
	DeiX5rps4UhodXIl/JS46Tfn1ikbjXOnKvGtcoNxZGpKeCahBcol1k0Snx2BDGnojYPqSFy9fBmtv
	uLZ1z22v5B9ryX47us0O8FlYM6Kap0CzcRLy2MtG31ecVTDnQClDBVdR0xW13AKqD7uOcmbLZMmIf
	IJdwnnLQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNAB6-000000006hH-31Ew
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 14:03:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNAB6-0002oV-AA; Wed, 13 May 2026 16:03:12 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNAB6-000bj7-0q;
	Wed, 13 May 2026 16:03:12 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNAB6-00000001DRU-0qRB;
	Wed, 13 May 2026 16:03:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20260513-socfpga-cyclone5-lowlevel-v1-1-8b5ca45d997d@pengutronix.de>
References: <20260513-socfpga-cyclone5-lowlevel-v1-1-8b5ca45d997d@pengutronix.de>
Message-Id: <177868099219.289979.606797020640921649.b4-ty@pengutronix.de>
Date: Wed, 13 May 2026 16:03:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_150313_095854_F5E9EAF9 
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: socfpga: cyclone5: rename lowlevel.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 May 2026 14:18:46 +0200, Michael Tretter wrote:
> The lowlevel.h is very specific for the cyclone5 and doesn't even build
> for other platforms or boards. Rename the header to make this more
> obvious.
> 
> 

Applied, thanks!

[1/1] arm: socfpga: cyclone5: rename lowlevel.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=1037139d3c5e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



