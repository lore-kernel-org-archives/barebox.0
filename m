Delivery-date: Thu, 11 May 2023 10:59:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1px29B-00DkbN-GL
	for lore@lore.pengutronix.de; Thu, 11 May 2023 10:59:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1px299-0002Rk-F3
	for lore@pengutronix.de; Thu, 11 May 2023 10:59:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ivoUGU/M1sc1yCBq27cKeSvfQMDT5ric+ANlmTF7Awo=; b=ylnSjbx1qM4jEfwstwa1qXxYyi
	BNhHc8v11lGX1OcU9maAZEYTI8uCCtQVvGuxuXF9ZGFm/5JIm9WPGmqgELh1hD/cKRizOAE9ZVGDr
	h4x/h7naVi0pzK4pFzmaqPzBYnJ8AzINV9nAeIsljA9P6+NmzcIlVMv0ASih9+bf/P3nFx89wWaOE
	ywBJNOBIeL3wyV9IGNzpKzQGBFpgjk0iRUZ7NKEaRm0rGI2it2ZVONkQ9y8aXCXdihT1B0OoKQ77o
	qacnjVMzN8EEWQi3K2bgnfwUVPqIGgNGgYUYVcGVtKATm6GjiSGPCCjExUJk6WwNlnyBtgOCmgDFs
	NMrPe6/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1px27u-008HRG-1X;
	Thu, 11 May 2023 08:58:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1px27o-008HOs-0y
	for barebox@lists.infradead.org;
	Thu, 11 May 2023 08:58:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1px27i-0002BL-DO; Thu, 11 May 2023 10:58:06 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1px27h-002gWx-Nv; Thu, 11 May 2023 10:58:05 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1px27g-001SBv-St; Thu, 11 May 2023 10:58:04 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Thu, 11 May 2023 10:58:00 +0200
Message-Id: <20230511085803.335993-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230511_015812_401774_3FE52592 
X-CRM114-Status: UNSURE (   6.97  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFT][PATCH 0/3] TQMa6x cleanup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

I came across this when working on a similar board, but I don't have a TQ MBa6x
to test these changes, so if someone has one and could try these patches, that
would be great!

 - Roland

Roland Hieber (3):
  ARM: i.MX6: tqma6x: make use of ENTRY_FUNCTION_WITHSTACK
  ARM: i.MX: TQMa6x: migrate flash partitions to device tree
  ARM: i.MX6: TQMa6x: make tqma6x_env_init reusable

 arch/arm/boards/tqma6x/board.c    | 25 +++++++++++++++----------
 arch/arm/boards/tqma6x/lowlevel.c |  8 ++------
 arch/arm/dts/imx6dl-mba6x.dts     | 13 +++++++++++++
 arch/arm/dts/imx6q-mba6x.dts      | 13 +++++++++++++
 4 files changed, 43 insertions(+), 16 deletions(-)

-- 
2.39.2



