Delivery-date: Mon, 26 May 2025 15:47:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYAk-000XL6-0L
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 15:47:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYAj-0006vA-KP
	for lore@pengutronix.de; Mon, 26 May 2025 15:47:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3PLgWUoBcuPpmy8l/LGIOVTwNgv5eDqd/dMmrE7Hj+g=; b=CQY31aCALS2nkYm6C4IieEkBDs
	M4iWYP7+iJEsfV8IzliA3w5Ag2HXTliEkRR8WG0NTVUJixs55qH4A0wlejFbfXJN8mXTlhFwIy3Zk
	1eN0ACf/rTGk3gh+zzWrFuorNtvWzZWnql0w+4whO1pYJfJC/nVGErqBGdWeU6ig1NLENC5XVsvvI
	OgO8FNxYoCCQ3T7CYgrNZth0uo7XliFaQC3tWccr6ABwG7DGgGq79L1SY+7h8Nr+kBpvzRb8y4mSF
	4jVNg4/v1SQRcK6yLygic9+UK8Ht6zDTNqilb48TExNqfdAy7JdAZrg79zqKuAuuYjoDlcU7VVfdm
	gROwRFag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYAJ-00000008vTc-0QZG;
	Mon, 26 May 2025 13:46:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYAG-00000008vSd-121d
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 13:46:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJYAF-0006iV-5g; Mon, 26 May 2025 15:46:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJYAE-000G7a-2i;
	Mon, 26 May 2025 15:46:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJYAE-0030Hj-2V;
	Mon, 26 May 2025 15:46:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250523074419.24899-1-eagle.alexander923@gmail.com>
References: <20250523074419.24899-1-eagle.alexander923@gmail.com>
Message-Id: <174826721077.716038.10261733522488294709.b4-ty@pengutronix.de>
Date: Mon, 26 May 2025 15:46:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_064652_287074_A2A5F94B 
X-CRM114-Status: UNSURE (   6.06  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] at91: xload: Fix MCI instance selection for SAMA5D3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 23 May 2025 10:44:19 +0300, Alexander Shiyan wrote:
> Use the result of sama5_bootsource_instance(r4) instead of raw r4
> to determine the MCI instance index.
> 
> 

Applied, thanks!

[1/1] at91: xload: Fix MCI instance selection for SAMA5D3
      https://git.pengutronix.de/cgit/barebox/commit/?id=50f879245235 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



