Delivery-date: Fri, 16 May 2025 08:38:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uFoiO-0065vT-0l
	for lore@lore.pengutronix.de;
	Fri, 16 May 2025 08:38:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uFoiN-0003h4-Mh
	for lore@pengutronix.de; Fri, 16 May 2025 08:38:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C1bsBl3SgnsOWbf3dsgjHi64frlIe4EEDvThNsLYuYc=; b=3hvqMmx0rqNjHritaC50ruqC/2
	Q8sISiVLNfkORFCtSJtn5u+nxn+XXX4kzOPobMh7L9GustFv3h0TmNWi53gnjl6IhaFyreEAAYonw
	7CgTLBSAG8PYpz5Vbd9ZyEjOosiqcsEuJUW567qZGZ+rUOdGdULCKuzWyevAISLHVkWd342Isyyjv
	tRM2dQC/KkMqGtllSdDQu1zawqb4ll4pntkpsSV6UGQhPLcoNB15j/cGouT/2t1JIbe+sXtnrxouM
	fVPUJ+chXkaEvYRtHZuIOiaB2lHUQ4c5riGCUBitQumlrQWP/gA5Wofd+HvOyDAi9Jg22m3leqd3f
	7hoY3xlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFohe-00000002alF-0HAM;
	Fri, 16 May 2025 06:37:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFoha-00000002ak0-2VaJ
	for barebox@lists.infradead.org;
	Fri, 16 May 2025 06:37:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uFohY-0003QP-Oh; Fri, 16 May 2025 08:37:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uFohY-002zrN-0P;
	Fri, 16 May 2025 08:37:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uFohY-009yWO-1c;
	Fri, 16 May 2025 08:37:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: lsc@pengutronix.de
In-Reply-To: <20250509125532.983391-1-s.hauer@pengutronix.de>
References: <20250509125532.983391-1-s.hauer@pengutronix.de>
Message-Id: <174737746849.2377587.1858418241063801378.b4-ty@pengutronix.de>
Date: Fri, 16 May 2025 08:37:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_233750_641964_A59EEA1C 
X-CRM114-Status: UNSURE (   7.74  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: k3: fix banks count in DRAM size detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 09 May 2025 14:55:32 +0200, Sascha Hauer wrote:
> We assumed that a DDR4 always has 16 banks. This is true for x4 and x8
> devices, but not for x16 devices which only have 8 banks.
> 
> It seems we can read the number of banks from the BANK_DIFF_x register
> fields, but the exact encoding of these fields is unknown. The reference
> manual only describes them as:
> 
> [...]

Applied, thanks!

[1/1] ARM: k3: fix banks count in DRAM size detection
      https://git.pengutronix.de/cgit/barebox/commit/?id=98551a9d8951 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



