Delivery-date: Thu, 27 Apr 2023 20:48:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ps6fk-002bqO-Rw
	for lore@lore.pengutronix.de; Thu, 27 Apr 2023 20:48:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ps6fk-0005We-Us
	for lore@pengutronix.de; Thu, 27 Apr 2023 20:48:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/A9EPuYsIVmfZ4CXBPol/hQjem8qv4C7Gq16Jgx7xTU=; b=o1g+lfwD1jwgNqgrXl5vCV98GL
	R14s+in93+sHKWVixxHSDeSZeoetfC4hYauvpYMjEFUg6AWHBvaSsW6diamOEeIAmMCRhfUA3jSdL
	XRGxzHI7kYdV6z2leI5HDl+ggndErsjj0dRxmtyq/nhGxJxv7vsjSsEeIIzFZrA53Qnh/M9T0huuN
	uiOAh8DuuuwVJ3odyieUyZcoZbwWC4+rgF7hUwGKhy/0jrUihpsAberN2dKtu6lb135NDGlzRSiJn
	gwOUAnXQZZKviet1iKwWbXhdpJAfaWUPrDsd+rz3Vd2KpXGN0AA7WkEU7tRpN0AHbt6f8PvJh6jWH
	XJ1u4BcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps6eS-007FMs-2S;
	Thu, 27 Apr 2023 18:47:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps6eQ-007FMI-0Q
	for barebox@lists.infradead.org;
	Thu, 27 Apr 2023 18:47:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 61E0D63F21
	for <barebox@lists.infradead.org>; Thu, 27 Apr 2023 18:47:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53C3DC433EF;
	Thu, 27 Apr 2023 18:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682621248;
	bh=0PIdUZb0K3Yb71N0jrXNVs19IH5CFGTITV1Ix5crboI=;
	h=From:To:Cc:Subject:Date:From;
	b=Sm8sHqKHGaiwdkazMYg57y+UKYzYmpahY5veJrH3ly3N+B7G6dh/dMPHPt3CaqcP2
	 lU00t4bMisUYGpJOx7smXurc2k/F78LXkws0jjp8L0S5oHDNExH6PTzbEshXHtRrxj
	 PiMyT//BN3QhZBpcz7uEg6p3jMkddfzAr5rFCkN+CQqwOsSRJ9Qo4LGjWrw0SlLgck
	 80QeYghtX8yCwHvVc7jaR6wswOF3jFYzUqMARdNya5lPCaoQljsISqIk+WPF2LBbPE
	 5XJpIIWib5nTk8CjO7i6w+XYT2Te21ZSEoZJZEsamCTKVl5y+0bhjERkm8CnV3rQWd
	 7GlZVZPC/6BZQ==
From: Wolfram Sang <wsa@kernel.org>
To: barebox@lists.infradead.org
Cc: Wolfram Sang <wsa@kernel.org>
Date: Thu, 27 Apr 2023 20:47:16 +0200
Message-Id: <20230427184718.105393-1-wsa@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_114730_203874_274E2FBA 
X-CRM114-Status: UNSURE (   7.90  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] ARM: at91: usb-a9g20: make it work out of the box again
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Here are the remaining two patches to make a (for me) useable barebox
with the defconfig and no other patches. Comments welcome!

Wolfram Sang (2):
  ARM: at91: usb-a926x: remove nand partitions from config
  defconfigs: usb-a9g20: update to a working version

 .../boards/usb-a926x/defaultenv-usb-a926x/config  |  4 ----
 arch/arm/configs/usb_a9g20_defconfig              | 15 ++++++---------
 2 files changed, 6 insertions(+), 13 deletions(-)

-- 
2.35.1



