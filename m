Delivery-date: Wed, 29 May 2024 08:09:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCCUw-0016F3-0r
	for lore@lore.pengutronix.de;
	Wed, 29 May 2024 08:09:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCCUv-00079f-N3
	for lore@pengutronix.de; Wed, 29 May 2024 08:09:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wQE6hswM4M/1IelVxPR10Rn7yKmfq8CjkuukLYMEPd4=; b=1RN0coRXumBWdmEiPYj4S4y/ik
	l/eqdwL5RVDSz42UjuEwVY74YPnc1ULesmgNF5+myHYq39ej7QkvI6abS6+E5OxBrvULl0vYplPGI
	nA1xnkuVGMjX7IxXR14ZbL/YQzilz+RC++h38I4TCZAysJl9dXmBNzoxvKsuUBRxMl+qu1PpZ136X
	RuVx1g6Mk0Q1H9msYjRVtiCqwNzXcxQBfWHbveaxhY2OmP7rP455CZvFdyEl6dtlJX8XCg1AtnoCw
	+2W0MyXhMKwehcIetYRYpnR+fzM10LcS6RGqiSNj9IDNFLFxKbeC/OFk8ZI3PLBI76g1XTWa5lK2o
	f5UTwyCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCCUL-00000002xnc-3wmH;
	Wed, 29 May 2024 06:08:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCCUI-00000002xkw-0rKZ
	for barebox@lists.infradead.org;
	Wed, 29 May 2024 06:08:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCCUE-00071B-QV; Wed, 29 May 2024 08:08:34 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCCUE-003QTg-EC; Wed, 29 May 2024 08:08:34 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCCUE-002SFe-1E;
	Wed, 29 May 2024 08:08:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Roland Hieber <rhi@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240527132842.1016597-1-rhi@pengutronix.de>
References: <20240527132842.1016597-1-rhi@pengutronix.de>
Message-Id: <171696291437.585205.13492870584984122304.b4-ty@pengutronix.de>
Date: Wed, 29 May 2024 08:08:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_230838_289045_0EA78693 
X-CRM114-Status: UNSURE (   7.16  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] commands: mipi_dbi: fix null pointer dereference when
 writing data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 27 May 2024 15:28:43 +0200, Roland Hieber wrote:
> When accessing argv[optind + i], the whole array index must stay below
> argc, not only i. Also val is only 4 bytes long, so when indexed with i
> (which was initialised to optind, which is at least 3) will overflow
> after reading one data argument from the command line. Add a guard
> against the latter case, and initialise i to 0 to fix the first problem.
> 
> 
> [...]

Applied, thanks!

[1/1] commands: mipi_dbi: fix null pointer dereference when writing data
      https://git.pengutronix.de/cgit/barebox/commit/?id=da602c975fcc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



