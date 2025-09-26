Delivery-date: Fri, 26 Sep 2025 13:39:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v26nU-001JZv-11
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 13:39:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v26nT-0000hh-QY
	for lore@pengutronix.de; Fri, 26 Sep 2025 13:39:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B2+i1/2a9RtAo0O1KKar1IV6AUWYRwnbyueku8MRFFQ=; b=lcfDP5thZNE3vhxy5ityES9yLH
	OIz5plWP3Sd2ymw1veZ5KzbeLYV0QtYOpxj7RBYZPydDl7EFh4rv6si4P/ARghGxQTd3vHPOcnGko
	RbFev9iV11KyXI5rfJDFXAwaSRh1tppPSRoZCe1LG1NXtik7vkTYO2qlld/ZSLAtRTdHYi4iUYnRM
	fgEwbia4YlbvAn5YysH5OkuGGa5tYFy3a2/IxAWFy+qTudX7nUh8lK+8adZgEftm2PIl8JI+TDo0J
	KK7vraqmJB83g4JcSyTavCqvghtym+mQnHR5+As3qSmObWXtRBU06qte2M4MyVVf0xpOWFDF/BjUd
	1k1sbZPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v26n2-00000000r7i-2ptp;
	Fri, 26 Sep 2025 11:39:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v26n0-00000000r5Z-19zh
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 11:39:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v26my-0000Zz-R9; Fri, 26 Sep 2025 13:39:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v26my-000aEX-27;
	Fri, 26 Sep 2025 13:39:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v26my-0000000D10X-2VZ0;
	Fri, 26 Sep 2025 13:39:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>
In-Reply-To: <20250925122603.3345276-1-p.zabel@pengutronix.de>
References: <20250925122603.3345276-1-p.zabel@pengutronix.de>
Message-Id: <175888674059.3102126.17226839274168684851.b4-ty@pengutronix.de>
Date: Fri, 26 Sep 2025 13:39:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_043902_318119_9E223A22 
X-CRM114-Status: UNSURE (   6.44  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX6: configure AIPS registers only if trusted
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 25 Sep 2025 14:26:03 +0200, Philipp Zabel wrote:
> Bail out of AIPS configuration if OP-TEE has cleared the MTW
> ("master trusted for write access") bit for the ARM core master
> to lock down AIPS configuration.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX6: configure AIPS registers only if trusted
      https://git.pengutronix.de/cgit/barebox/commit/?id=525b55afedca (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



