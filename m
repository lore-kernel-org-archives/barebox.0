Delivery-date: Wed, 29 May 2024 08:10:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCCVq-0016G4-2l
	for lore@lore.pengutronix.de;
	Wed, 29 May 2024 08:10:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCCVq-0007N5-9F
	for lore@pengutronix.de; Wed, 29 May 2024 08:10:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kYsCCJ7UjjmOrn9d6YFf4a9eBEzf7gBRiUI+7lQORmo=; b=dkrNiD/Q/EJwyLyXyIhPA6qtis
	J+I1D3XA1Fu351esdyVCcZkTy+kI2sDKVODUV/fxiYQW5VrbJQ7ZWIXNgT2KzhIdvhlk5cYnr1CVY
	DgyXJEpfquK7oTVMgzz37LJiM6mhcYNXyxWnie6yjeNDo44Z7kvEjN6CfF27caPqEh+yJq8+giOMA
	eYLfYDdyROijdrzQbuoOQAy+qB+v8WG9TOvT+CXahROuVErsJwHkUn2BdxekkpGsXn1IFQL+DUQq+
	+xMJo8DZhbDEM6Ym7/hKjWqDUEZkW/1aan4Mr86MPQamsgafssJOsguV0eNSuTRhwHDAERV9GTYgc
	yzf/aD1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCCVS-00000002y0e-11iM;
	Wed, 29 May 2024 06:09:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCCVP-00000002y07-0KPg
	for barebox@lists.infradead.org;
	Wed, 29 May 2024 06:09:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCCVN-0007Hh-PF; Wed, 29 May 2024 08:09:45 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCCVN-003QTy-DA; Wed, 29 May 2024 08:09:45 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCCVN-002SK3-17;
	Wed, 29 May 2024 08:09:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240528115141.1961600-1-a.fatoum@pengutronix.de>
References: <20240528115141.1961600-1-a.fatoum@pengutronix.de>
Message-Id: <171696298534.585474.10621437456509088228.b4-ty@pengutronix.de>
Date: Wed, 29 May 2024 08:09:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_230947_174345_D51E9660 
X-CRM114-Status: UNSURE (   8.39  )
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
Subject: Re: [PATCH master] mtd: nand: reinstate raw NAND
 IS_ENABLED(CONFIG_MTD_WRITE) checks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 28 May 2024 13:51:41 +0200, Ahmad Fatoum wrote:
> Some barebox configurations like OMAP MLO require no MTD write support
> to chainload the bigger second stage barebox. As these configurations
> are often size limited by On-Chip SRAM, drivers are expected to guard
> write-related code behind CONFIG_MTD_WRITE. This got lost with the
> recent NAND sync leading to multiple kilobytes in increased code size.
> 
> Reinstate the IS_ENABLED(CONFIG_MTD_WRITE) checks to counteract this
> somewhat. There's likely more opportunity to slim down nand_base as we
> are still above the original size, but this here is the lowest hanging
> fruit.
> 
> [...]

Applied, thanks!

[1/1] mtd: nand: reinstate raw NAND IS_ENABLED(CONFIG_MTD_WRITE) checks
      https://git.pengutronix.de/cgit/barebox/commit/?id=55cf43c442c2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



