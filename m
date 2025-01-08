Delivery-date: Wed, 08 Jan 2025 15:38:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXCC-000m7f-1D
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 15:38:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXCC-0001dd-B9
	for lore@pengutronix.de; Wed, 08 Jan 2025 15:38:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gig+DaXDwV2G8p77XQmcAF9XN+NuyDmV8q+/KJ/qlCg=; b=reCtCp+7d7iz1/Nve2bQhpD6ZY
	P+fmZnzHPCcDkQA8uThcvD8fUu3PaeTS8lMpmReDGvssZ0mN6mQVp4esjWNt5POcy6FalV45B1Y3d
	LSj6LPktUpfU0aEoeE2lNeT12zvJfgivucWRZLbsBZtXWt/Wj7rKOnhLrl/RJVkbtp7XTWLzBUmtL
	mbYur4wzZR9agy5A8GqczM9dw7CawwRTzuhHTnW55sJWNokrtxzhexxGD/L+H9vPh8tygCUXoSdh1
	c6+3Wnh9Y4fgRdLcrR2XAFy+pShXB8OKhp4LFeVmMbmzQ3DhI1EFju7sTJXnDcenx87OeDD7EVRhI
	Nc7274Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXBk-00000008oiU-2P6S;
	Wed, 08 Jan 2025 14:37:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVX9d-00000008oKn-1vzB
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 14:35:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVX9c-0000y0-Ai; Wed, 08 Jan 2025 15:35:28 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVX9b-007XQ0-1C;
	Wed, 08 Jan 2025 15:35:28 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVX9c-000JfP-0G;
	Wed, 08 Jan 2025 15:35:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20250107113047.1231520-1-o.rempel@pengutronix.de>
References: <20250107113047.1231520-1-o.rempel@pengutronix.de>
Message-Id: <173634692807.75578.13877180792560407201.b4-ty@pengutronix.de>
Date: Wed, 08 Jan 2025 15:35:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_063529_501218_DA070D73 
X-CRM114-Status: UNSURE (   7.58  )
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
Subject: Re: [PATCH v1] nvmem: bsec: Fix incorrect size calculation for PTA
 read
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 07 Jan 2025 12:30:47 +0100, Oleksij Rempel wrote:
> Correct the size parameter in stm32_bsec_pta_read() to use sizeof(*val)
> instead of sizeof(val). The previous implementation incorrectly
> calculated the size of the pointer instead of the pointed-to value,
> potentially causing incorrect behavior during the read operation.
> 
> 

Applied, thanks!

[1/1] nvmem: bsec: Fix incorrect size calculation for PTA read
      https://git.pengutronix.de/cgit/barebox/commit/?id=06e9050f42fd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



