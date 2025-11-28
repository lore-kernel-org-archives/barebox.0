Delivery-date: Fri, 28 Nov 2025 15:11:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOzCX-005nwm-05
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 15:11:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOzCW-000436-JA
	for lore@pengutronix.de; Fri, 28 Nov 2025 15:11:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=F9i7eRuivHaYJiKtQKyZyRpC7c3FLwNu6Je6Am5jNI4=; b=EdcckDk6CZg/AxzcPCVfSs1TDZ
	s8cnKvKCW8idiBmnm4BoBvAq4nuRAqqGvAgtwV5U9LTYZUbO2C8CbGCNYVmEt8QlD9YvnnG2gcnLJ
	gw3rNIbKsJGwsv1f+dzYjpSfo5jgOv7dfY5mkVHalKyrc389aox8CROPxoqXEWFdQz2UO5yyKGxo7
	ZA34Pp14tOt85COtPYS+vCyT7ZR0vFZ6wWxTrIR9f8ICLrzIpplOJcVsy5yJaCTSyaMsEhNG77wHv
	k7gW+yEVqfp4TaszIiwzzAgZjEQTGIgmvDS3Mx0r1oDzeAhbzycWwflmQ5psEbkpxr280SsSvSuc7
	YZivYXWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOzC3-00000000WVM-02YV;
	Fri, 28 Nov 2025 14:11:27 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOzBy-00000000WU6-2l0t
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 14:11:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2FC1A417AE;
	Fri, 28 Nov 2025 14:11:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DE83C4CEFB;
	Fri, 28 Nov 2025 14:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764339081;
	bh=FOkEnvEJmefM83hRliyO6otJ/MBuDcMphB3DLrN2qCY=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=ElJ/DKW0fJgc62JypIxi4e/HIthBj4kn3HsLAateE7tB0mxOhJtFclvAwkKhQteAy
	 C26+73Is5esttj+Pwvpv0iHvcRp+0NrkH7ai65Z6JtVSVDeYvU+Ja4Q7pQSHE8hq2N
	 oqKVh0Pe1wMTRTw35SjIfKbTMmzAt/eT8rt9qyPqCIjhJod+mBxlJTK0mY5Cou/uP1
	 GsTEXU8NhUqCPZS7dg/lLoDeSaKkTyWLptTtMGPu2FvF6u+JMUM5ZP9p60heHs/Uqs
	 MMGFPqRagDW2TrlpZyqB0yvVqPlECRfEX/tkP9shYlqaaQc6QmDUmTg0Vz2SsCRq1s
	 yWDvjMFX2bZqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1E3ED116E2;
	Fri, 28 Nov 2025 14:11:20 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maudspierings.gocontroll.com@kernel.org>
Date: Fri, 28 Nov 2025 15:08:51 +0100
Message-Id: <20251128-imx_usb-v1-0-bb6a5180b38e@gocontroll.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPOsKWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQyML3czcivjS4iRdE0ODpKQkU/NUAzMLJaDqgqLUtMwKsEnRsbW1ACn
 nNCpZAAAA
X-Change-ID: 20251128-imx_usb-410bbb57e068
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maudspierings@gocontroll.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764339080; l=643;
 i=maudspierings@gocontroll.com; s=20250214; h=from:subject:message-id;
 bh=FOkEnvEJmefM83hRliyO6otJ/MBuDcMphB3DLrN2qCY=;
 b=wZqAQmzlJbsqEIfRfPMPMP/qFLRJPFU8VdB4WgBy+FdDL+u3QXOwoE8townA1qVNs02gDqS/W
 EGcq/WiInfpBiGGMUHdqrnWu+Li0902aCnj9Cz4P3a5D138PYFtxLxs
X-Developer-Key: i=maudspierings@gocontroll.com; a=ed25519;
 pk=7chUb8XpaTQDvWhzTdHC0YPMkTDloELEC7q94tOUyPg=
X-Endpoint-Received: by B4 Relay for maudspierings@gocontroll.com/20250214
 with auth_id=341
X-Original-From: Maud Spierings <maudspierings@gocontroll.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_061122_721498_E6EC44C7 
X-CRM114-Status: UNSURE (   5.64  )
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
Reply-To: maudspierings@gocontroll.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/3] scripts: imx: imx-usb-loader: fix mingw compilation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Compiling imx-usb-loader for windows targets had become broken, fix it.

Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
---
Maud Spierings (3):
      scripts: common: fix pread_full() for windows
      scripts: imx: Makefile.mingw64: add _GNU_SOURCE
      gitignore: ignore *.exe

 .gitignore                   | 1 +
 scripts/common.c             | 6 +++++-
 scripts/imx/Makefile.mingw64 | 2 +-
 3 files changed, 7 insertions(+), 2 deletions(-)
---
base-commit: 3e01efb6c6527ca72a1213000006be1902db7be9
change-id: 20251128-imx_usb-410bbb57e068

Best regards,
-- 
Maud Spierings <maudspierings@gocontroll.com>




