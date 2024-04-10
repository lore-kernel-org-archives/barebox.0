Delivery-date: Wed, 10 Apr 2024 08:36:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruRZ0-005h4B-0L
	for lore@lore.pengutronix.de;
	Wed, 10 Apr 2024 08:36:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruRYz-000393-IY
	for lore@pengutronix.de; Wed, 10 Apr 2024 08:36:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CmIppd0nqy/YW9TU4Ir1ubEm6lJE0ykeoMaM605bKbo=; b=zD9VtrDEJLV2ImTBdm5czfa3Jf
	fbJeeNgyRC2tIm+c6cl6ojnsaC6Zyf7nqPDz5Xovlhv28noVmvotp3GxALg+DX9cu2+s/kd254MdK
	vq9QE8qutcIwejaxJoyOZTkQv1FnRhqB9tqDGjiG2CCBejz58PYNGw3CgGWjyVQM8xjYP+IbKiTq8
	+JFkjHM5vBI770p2zhDXc/lGkXLVvtxwGdBsV+GmTbH8nPhMGsHry+3NpRyWZoVWJPKRfJ6Z6OaLf
	1SrPIvD/XZExV6CwlVqx6x57DBoIYnRS8/l2v/uPCuhJMszz0EYbiC1Z3ijOMriIIRwgFJOntBvq+
	JJomjjZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruRYL-00000005Pja-3we3;
	Wed, 10 Apr 2024 06:35:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruRYH-00000005PiJ-1Wgl
	for barebox@lists.infradead.org;
	Wed, 10 Apr 2024 06:35:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ruRYC-0002a8-It; Wed, 10 Apr 2024 08:35:16 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ruRYC-00BRUb-6E; Wed, 10 Apr 2024 08:35:16 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ruRYC-00580T-0P;
	Wed, 10 Apr 2024 08:35:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20240408163101.3730045-1-m.felsch@pengutronix.de>
References: <20240408163101.3730045-1-m.felsch@pengutronix.de>
Message-Id: <171273091612.1222362.13908293231101676797.b4-ty@pengutronix.de>
Date: Wed, 10 Apr 2024 08:35:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_233521_508600_E03F0DD1 
X-CRM114-Status: UNSURE (   6.22  )
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
Subject: Re: [PATCH] mci: sdhci: fix dma mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 08 Apr 2024 18:31:01 +0200, Marco Felsch wrote:
> In case of MMC_DATA_READ the dest address should be used and in case of
> MMC_DATA_WRITE the src address should be used. We had no issues for now
> since both dest and src point to same address due to the union.
> 
> 

Applied, thanks!

[1/1] mci: sdhci: fix dma mapping
      https://git.pengutronix.de/cgit/barebox/commit/?id=743130a7c75f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



