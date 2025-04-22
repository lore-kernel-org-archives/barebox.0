Delivery-date: Tue, 22 Apr 2025 12:28:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Are-0040ui-06
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 12:28:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Ard-0001mG-8l
	for lore@pengutronix.de; Tue, 22 Apr 2025 12:28:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SPRWruRZ5fPdtXfCEJKovtezXc5fXJedrAMjl7hLlWU=; b=MexQoG7Ee04Ew8zPLVLRBCN4gv
	B9RSgg/gQhaRjc+tfaQ+rwsrJAL3O5PtX8m4YVoEbFntjQeVkLWQFtQy533zUvIH0muFFGz1inGBy
	UuKa5muf2hhO1vNCElqFkKoA6E1rSs++CjHHaIKumdMT6RO54uyMC9oEU6i07C2iZ7bob1el2coW/
	A7PlngKMaHmJBj/k1t/or3DF/jleHE1HFU/YZlsQeUGImUWoT8DGRDl6qy5WaiGndTbzQsVySCgFR
	RdB1iCJbici7TDk3Fj/ruUQJCOE9tx6smnDBhyEHnp0JeVxHsQ3nB9CwPMsgFwWRM5VSdEPT2VIrA
	7G8lpcmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7ArD-00000006kuF-0X4s;
	Tue, 22 Apr 2025 10:28:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u79o6-00000006XLe-2M9F
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:20:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79o5-0004eo-3K; Tue, 22 Apr 2025 11:20:45 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79o4-001Wms-2x;
	Tue, 22 Apr 2025 11:20:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79o4-00CdnG-2l;
	Tue, 22 Apr 2025 11:20:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250422075620.220337-1-a.fatoum@pengutronix.de>
References: <20250422075620.220337-1-a.fatoum@pengutronix.de>
Message-Id: <174531364485.3012857.715436240761620171.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 11:20:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_022046_600700_7CB364F0 
X-CRM114-Status: UNSURE (   6.73  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: address: implement dummy iounmap
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 22 Apr 2025 09:56:20 +0200, Ahmad Fatoum wrote:
> of_iomap doesn't do any actual mapping, just base address computation,
> so it makes sense for iounmap to be a no-op to make porting kernel code
> easier.
> 
> 

Applied, thanks!

[1/1] of: address: implement dummy iounmap
      https://git.pengutronix.de/cgit/barebox/commit/?id=abd4f369ea2b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



