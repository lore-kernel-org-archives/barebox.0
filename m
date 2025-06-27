Delivery-date: Fri, 27 Jun 2025 15:02:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV8j3-00BcbG-1W
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 15:02:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV8j2-00046F-Uf
	for lore@pengutronix.de; Fri, 27 Jun 2025 15:02:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DCulOMRkh0VJf4whQ9ZSZlfBxYJSr+xZsEId/s0u7cw=; b=ayndnDUWEa+cjcE4P2N2uCkYPz
	/e/fE6H+K31l+XEGiqvOr/CGs69sQAIKq9RITQ3C1I7wPXpSBlg0BSYa0kn3ZJEtpGqrERc12kpP9
	tuxqkYcHJz/4SrvE5fEyQCFq3CSiCOHj20WaofE02EwLqhdJBpM3S2RKP7/4/1DqR8ZxapXeuF5ht
	5q2pTJhp2pmu7g1q5qHm99RP/8XT6PrAWc32OWoF89SEoGEHH24cMwT+ld1+QuJLwg+N4X83VcjDw
	2Z/O5bqA7kaJ0LhHHzc2D4qSXUsTyns8+eC2F+InaXCdti2Bs4RQSoXQxs1jv8l3rBvFgDRCEqp53
	/NZLWieA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV8iM-0000000EiQ3-3M6M;
	Fri, 27 Jun 2025 13:01:58 +0000
Received: from mail-108-mta182.mxroute.com ([136.175.108.182])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV8Bs-0000000EdrA-2J4R
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 12:28:25 +0000
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta182.mxroute.com (ZoneMTA) with ESMTPSA id 197b15c2bf80008631.001
 for <barebox@lists.infradead.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Fri, 27 Jun 2025 12:28:17 +0000
X-Zone-Loop: ed56252758b65761f9e20a404c0eea5d5c0b194fdbb8
X-Originating-IP: [136.175.111.3]
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mboxify.com
	; s=x; h=Content-Transfer-Encoding:MIME-Version:Date:Subject:To:From:Sender:
	Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
	List-Owner:List-Archive; bh=DCulOMRkh0VJf4whQ9ZSZlfBxYJSr+xZsEId/s0u7cw=; b=G
	XEqdyto4l3aJU5Az8v76WHZcK+f7CEnaY2X+g8GNVr5R0yz5u6bNjbJCL5qWXOFeuA2Qk+CzpFJDo
	sy5HtwDYJtCWes6KlTN3+B3y0FSOVjPu/YsNK5JXS3vDXdxNCfU9jgu1OdVfCbrd8+1evGMUrVSAn
	Db6r0d3apNVLbO0qlN+9S6ggHUt3DYC5W6qnaEvbTHUHMvZrLcofSsfcmc82TS9RvJDTl70U2h27n
	pEvl1e1F+T3VsbXVK8jh+jSUlN6vO02ESEALeOnd1A2/8hCuDiaRublDHLOptssqsuAjaJvmrEeET
	T5HWhYE/yL3fAtG2ilUAPVoEFpEDSm7qw==;
From: Bo Sun <bo@mboxify.com>
To: barebox@lists.infradead.org
Date: Fri, 27 Jun 2025 20:28:10 +0800
Message-Id: <20250627122811.1051283-1-bo@mboxify.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: bo@mboxify.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_052824_672731_1498481F 
X-CRM114-Status: UNSURE (   4.24  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/1] spi: convert transfer delay to new spi_delay struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This resolves the TODO comment in spi_transfer_one_message().

Only one driver (mc13xxx) was using the delay_usecs field, making this a
straightforward conversion with minimal impact.

Bo Sun (1):
  spi: convert transfer delay to new spi_delay struct

 drivers/mfd/mc13xxx.c | 5 ++++-
 drivers/spi/spi.c     | 4 +---
 include/spi/spi.h     | 8 ++++----
 3 files changed, 9 insertions(+), 8 deletions(-)



