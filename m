Delivery-date: Tue, 05 Aug 2025 07:17:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujA33-007BWm-1X
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 07:17:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujA32-00027w-Ut
	for lore@pengutronix.de; Tue, 05 Aug 2025 07:17:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m6msoruL4UZtssQlc/5O2ByWbetnuts9NQWIqXzgO6Y=; b=MEt/bCtMnbtwKSpbjj3UjexXnQ
	WZtQnllquHQSxf63quHewU7XiCaf4Qn45BD7k2+nQsCnXGqZuv7+7+UwFYNSTz6S3Ndb2ixfyRrkL
	mtxE//Z5ZhzSO2i6jjajL37RjTELWs1WEJi68c81+kaHOAXL+YPRBcSBnqFDf81IU8RvJBJJKzEnK
	x8ixYXKtoUHDqop/fGTmRNcKN0rwzgw2c2YZ7s8R2G6AviRF01WXp1HrRWrEiUTy9axmEpur1rC0T
	FLNIZ7Op6mUlxXRCfR97WDAWsN2VBgBEi2Pmz4gXCjm/P47q93/lSyU4RfEIIIU8wj4qpx/0lZn3I
	N+WAGG2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujA2Z-0000000Bo2H-3yhw;
	Tue, 05 Aug 2025 05:16:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujA2X-0000000Bo1t-2D9B
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 05:16:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujA2V-00022M-Od; Tue, 05 Aug 2025 07:16:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujA2T-00BzNX-2l;
	Tue, 05 Aug 2025 07:16:41 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujA2T-00Do7r-2Z;
	Tue, 05 Aug 2025 07:16:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20250730170252.1285892-1-m.felsch@pengutronix.de>
References: <20250730170252.1285892-1-m.felsch@pengutronix.de>
Message-Id: <175437100179.3290938.1057546740159387274.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 07:16:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_221645_566886_4B67C183 
X-CRM114-Status: UNSURE (   7.97  )
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
Subject: Re: [PATCH] ARM: i.MX8M: remove early handoff-data handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 30 Jul 2025 19:02:52 +0200, Marco Felsch wrote:
> Commit fd1fbc15d5b9 ("ARM: i.MX: move handoff-data out of OCRAM") added
> the support to store early handoff-data within DRAM. As the commit says
> this says, this was to be prepared for early-board handoff data passing.
> 
> The commit added the support only for i.MX8MM and i.MX93. All other
> i.MX8MQ/P/N platforms are left out. This isn't very intuitiv given that
> the commit prepared the common code base for future usage.
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX8M: remove early handoff-data handling
      https://git.pengutronix.de/cgit/barebox/commit/?id=7fda70780019 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



