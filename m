Delivery-date: Thu, 05 Jun 2025 13:54:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9BG-00405N-1H
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:54:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9BF-0004Jy-SP
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:54:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bGxOLIeUc2OJJNICU9lKQpRyHALQENEGkTyuXQkIScI=; b=KtIstuFuEQ3X5JoGqZZRiOKDo2
	nqDkySvQbMp1tbrUImETCR5UJq50Fyz6QHnyvTATLNAcey7XzCCA/j40QqrGjxIwoKA6bObE9xh4l
	Dzn3GwJXBfroEg6cfUrzAQHgdha+7PoCJOp4HPHJT6Zj19ywj0xYNzZL6EUwWSr4fu9UoWAF9b2K4
	VwgLIbYX1XTKfMJ+Ciw0NGN0jXat/8ZvP0LypSA6lXBNqRvPOdQ8FyVGtN0Flhu4imun/pCYHV5ZC
	V7zLUKJDJ472+h2l0Ob5FFoU6pW/u4apqF+sh4e6BpbrK/+KgSkvT7FG8DFf6DBzmLso1csVd/L1C
	9qjtbm7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9Ap-0000000FQAQ-1QV7;
	Thu, 05 Jun 2025 11:54:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9Am-0000000FQ89-1aS2
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:54:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9Aj-0003qt-Nz; Thu, 05 Jun 2025 13:54:13 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9Aj-001x2y-1i;
	Thu, 05 Jun 2025 13:54:13 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9Aj-0022Dv-1U;
	Thu, 05 Jun 2025 13:54:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250605101416.463490-1-s.hauer@pengutronix.de>
References: <20250605101416.463490-1-s.hauer@pengutronix.de>
Message-Id: <174912445345.485182.10596144330623490054.b4-ty@pengutronix.de>
Date: Thu, 05 Jun 2025 13:54:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_045416_441024_F70B06AF 
X-CRM114-Status: UNSURE (   5.77  )
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
Subject: Re: [PATCH] Documentation: boards: k3: remove obsolete k3.rst
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 05 Jun 2025 12:14:16 +0200, Sascha Hauer wrote:
> k3.rst describes the initial k3 documentation when we only had second
> stage support after U-Boot. This is now obsolete and the full
> documentation is in ti-k3.rst.
> 
> 

Applied, thanks!

[1/1] Documentation: boards: k3: remove obsolete k3.rst
      https://git.pengutronix.de/cgit/barebox/commit/?id=2d619db48e92 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



