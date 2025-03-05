Delivery-date: Wed, 05 Mar 2025 13:14:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpneB-00AB3l-1R
	for lore@lore.pengutronix.de;
	Wed, 05 Mar 2025 13:14:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpneA-0000lE-Ad
	for lore@pengutronix.de; Wed, 05 Mar 2025 13:14:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dZEB+KHcR4xKYwunmnIuDeuOX+zbG+rVeMkxztTo+q4=; b=kUlQmqSydNewfHmmbK66+YZJ+t
	EHCotw4m1K3TlaqM4Nnl8LsAqnZEbLFpBzntHt5tXqpbHpYPep2F5BJi5zjX9rLetA5tW5C45Axcb
	66oiSWijfmg9upD8W45F7PTmnHtTjftRlJWIiVVJ2hLHXGFjQbNSmuaNOYg+CNNdx4s2EnxZ7I2xU
	5W2LUz152rnIC03CYDk3GcSAxawtC6iMOx0syc+/5Thc/N5wXKZ36fx4aC94ROn/+E4gCVVy/EE8C
	/AiyIouCdB31Efgr/Rv00pEygyIxH7MCZHD1hcWoZMoXTDeXAG8tMYDiJz6uiMJ0144zi8S4DH8bm
	W6JSqVfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpndV-00000007yDM-441c;
	Wed, 05 Mar 2025 12:14:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpmmk-00000007pru-3sWp
	for barebox@lists.infradead.org;
	Wed, 05 Mar 2025 11:19:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tpmgV-0001dZ-48; Wed, 05 Mar 2025 12:13:07 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tpmgU-0048NT-30;
	Wed, 05 Mar 2025 12:13:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tpmgU-007hHI-2j;
	Wed, 05 Mar 2025 12:13:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Stefano Manni <stefano.manni@gmail.com>
In-Reply-To: <20250221180109.14129-1-stefano.manni@gmail.com>
References: <20250221180109.14129-1-stefano.manni@gmail.com>
Message-Id: <174117318683.1834643.2938189549054116629.b4-ty@pengutronix.de>
Date: Wed, 05 Mar 2025 12:13:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_031934_969975_C6A71564 
X-CRM114-Status: UNSURE (   6.91  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] imx-bbu-nand-fcb: do not use hardcoded devicefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 21 Feb 2025 19:01:08 +0100, Stefano Manni wrote:
> Device file was hardcoded to "nand0.barebox".
> This patch harmonize the signature of
> 
> imx6_bbu_nand_register_handler()
> imx7_bbu_nand_register_handler()
> imx28_bbu_nand_register_handler()
> 
> [...]

Applied, thanks!

[1/2] imx-bbu-nand-fcb: do not use hardcoded devicefile
      https://git.pengutronix.de/cgit/barebox/commit/?id=e377e1a068db (link may not be stable)
[2/2] ARM: boards: fix nand bbu_handler device paths
      (no commit info)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



