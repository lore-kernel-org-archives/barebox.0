Delivery-date: Thu, 20 Mar 2025 13:06:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvEfD-001sXn-0J
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 13:06:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvEfB-00064N-Uj
	for lore@pengutronix.de; Thu, 20 Mar 2025 13:06:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HF1InFagIn4+/v3KVD+li9IvBrH/FWPhzMIYeXeJb4k=; b=p7dUeFTUyxiCH/rMVJQiFt5dPu
	Y3IBBicDd0sJ3VAPuHWueBFPTDzqYP9q08fvnWFh6TU0i4xYVsPPM9qnj0VtdWKuO5QU7Gy5ZLTjG
	HaEFF5Dt63+nzywWMqeqy9AC372RNsW9F/pT7/YTwZxOOcGzIkjoqU0P9an9JSzOIPhWTJqBEGl9I
	iI77g3Hw5mt/xuuJLJlf18inp4RwvZQqRcTncbQwZp8qYH4arl5/4ILwT4e0qFqUUg5/0T/e6eMHx
	zR8frNAhyfeU+nnzGUqRLWoZ/1ikQtFOHvpdbmJmfMsrlxJ0EzuvEyIbK6hnJsKTn+TiyYHFCR+vy
	cQNUsitw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvEef-0000000C33j-3lbh;
	Thu, 20 Mar 2025 12:05:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvEL3-0000000Bz1E-2L0u
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 11:45:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvEL1-0000i8-Mh; Thu, 20 Mar 2025 12:45:27 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvEL0-000kdA-32;
	Thu, 20 Mar 2025 12:45:27 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvEL1-000pH1-0x;
	Thu, 20 Mar 2025 12:45:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250320091419.42095-1-eagle.alexander923@gmail.com>
References: <20250320091419.42095-1-eagle.alexander923@gmail.com>
Message-Id: <174247112729.196870.2122605639739576387.b4-ty@pengutronix.de>
Date: Thu, 20 Mar 2025 12:45:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_044529_607962_6DE33223 
X-CRM114-Status: UNSURE (   7.93  )
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
Subject: Re: [PATCH 1/7] ARM: at91: xload: Unify loader functions to use a
 single xload_instance structure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 20 Mar 2025 12:14:13 +0300, Alexander Shiyan wrote:
> The loader function structures use the same members,
> so they can be rewritten to use a single xload_instance structure.
> 
> 

Applied, thanks!

[1/7] ARM: at91: xload: Unify loader functions to use a single xload_instance structure
      https://git.pengutronix.de/cgit/barebox/commit/?id=de261a15e9e6 (link may not be stable)
[2/7] ARM: at91: xload: Replace magic values with definitions
      https://git.pengutronix.de/cgit/barebox/commit/?id=b0495d1981dd (link may not be stable)
[3/7] ARM: at91: xload: Remove len argument from at91_fat_start_image()
      https://git.pengutronix.de/cgit/barebox/commit/?id=358c761c9943 (link may not be stable)
[4/7] ARM: at91: xload: Use the variable name as described in include/mach/at91/xload.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=6da72bb19dd7 (link may not be stable)
[5/7] ARM: at91: xload: Remove intermediate variable
      https://git.pengutronix.de/cgit/barebox/commit/?id=9dded8d8fb04 (link may not be stable)
[6/7] ARM: at91: xload: Rename the sama5d2 output image names
      https://git.pengutronix.de/cgit/barebox/commit/?id=dca0152f2943 (link may not be stable)
[7/7] ARM: at91: xload: Add QSPI boot support for SAMA5D2
      https://git.pengutronix.de/cgit/barebox/commit/?id=2d47ec01ab52 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



