Delivery-date: Thu, 29 Feb 2024 09:37:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfbvA-00F7Eg-0e
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 09:37:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfbv9-0000p2-Mi
	for lore@pengutronix.de; Thu, 29 Feb 2024 09:37:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vh9PjaegYZI2cQuWJoRUgnN68S2Nn2uhhvdD5qPHMRQ=; b=SqqqlKfKNfKc3IL7LRbaLNXlt4
	nks+5hLNHYueHT6xi0UPRMMb0xdhsyGa6+DP+P9XRs6YRAUyfmNC84MsL3kVYTKzX/+b/QVmS6n7W
	gKPPZXWcLxQilDaWFWyG9uuiyUhCoshZS/Ag4SUYhetiZNimuQs16Bnk0VNCfP37KON7Y09TOWo/O
	FVszqEu4nwiD5E3MSkvrO4qXR02EoGrbxB2aMOragxSwcAIAOk/f9BqL1yTOskHhUTX6TX+XEUh27
	RTgDyngrixnt1MpiETeIm0ptOkNU9CF7c8SHnC9BEQcboldG2oqpJ4wWwiW5S1V/83VUAJ36QwkXL
	uX9xYPiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfbuc-0000000CgoU-1Dla;
	Thu, 29 Feb 2024 08:37:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfbuW-0000000CglY-3eX1
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 08:37:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfbuV-0000eb-Ip; Thu, 29 Feb 2024 09:36:59 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfbuU-003YKW-Vl; Thu, 29 Feb 2024 09:36:58 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfbuU-008Ntp-2z;
	Thu, 29 Feb 2024 09:36:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Antony Pavlov <antonynpavlov@gmail.com>
In-Reply-To: <20240227073923.148943-1-antonynpavlov@gmail.com>
References: <20240227073923.148943-1-antonynpavlov@gmail.com>
Message-Id: <170919581892.1998464.13188386201449044395.b4-ty@pengutronix.de>
Date: Thu, 29 Feb 2024 09:36:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_003701_160297_C914A61A 
X-CRM114-Status: UNSURE (   4.77  )
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
Subject: Re: [PATCH] net: drop unused rarp.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 27 Feb 2024 10:39:23 +0300, Antony Pavlov wrote:
> 


Applied, thanks!

[1/1] net: drop unused rarp.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=3b38db4c3219 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



