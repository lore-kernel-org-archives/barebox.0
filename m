Delivery-date: Thu, 02 Mar 2023 11:41:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgNU-006TQv-8z
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 11:41:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgNU-0003Ft-3L
	for lore@pengutronix.de; Thu, 02 Mar 2023 11:41:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZfhG2+NmfYagEBXHLvhgHO0cdUIB9Its3vcXjRlhF5Y=; b=VLn9UYdBH/GY+mFqMgBDnqNbiK
	S+U0JDl7ALQqYeP+PK5BkPiK/4HLYJ6TfF/KFw0jzct1ZTRfZ2dLq1NAgoV/0A0fskx0/YaqWs9G2
	esWNgEJHwR2nY+KU813CkquOdbUomOxkTFWbliGW00cm0faJ4HL4/W6x+wrHRftV9loqeD9PaNFkz
	XwDj8HmhRIAIU9/g0QfdNNghKcaBhSANxIjDQfXbjGXxMlwn0WnrE2ppmWzR1avTLfbrI4febL1pj
	icN5LaMRN5NYv0QKKrwbsHtFdhuWwcPkwJ2jZHDnQP9+YFbw5Qwhqy39O1BNX3yJ2LZMAmB33FxFc
	ZszwDtkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgM5-001hIP-59; Thu, 02 Mar 2023 10:40:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgLt-001hF6-IP
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 10:39:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLk-0002W5-9G; Thu, 02 Mar 2023 11:39:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLi-001J5U-98; Thu, 02 Mar 2023 11:39:46 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLg-003wYv-Fa; Thu, 02 Mar 2023 11:39:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 11:39:35 +0100
Message-Id: <20230302103943.939422-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_023957_683698_6FBC38FE 
X-CRM114-Status: UNSURE (   9.88  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/8] Fix/avoid dtc warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series fixes some dtc warnings. Also we disable some warnings that
are also not enabled in the Kernel where we get the upstream device
trees from.

Sascha Hauer (8):
  scripts: dtc: disable interrupt_provider warnings
  ARM: dts: digic4: Fix dtc warnings
  ARM: dts: ep7212-clep7212: Fix dtc warnings
  ARM: dts: Fix dtc warnings in state nodes
  ARM: dts: Fix dtc warnings in barebox,environment nodes
  ARM: dts: imx7d-peb-av-02: Fix dtc warning
  ARM: dts: imx7d-peb-eval-02: Fix dtc warnings
  ARM: dts: imx6ull-jozacp: Move regulators out of subnode

 arch/arm/dts/digic4.dtsi               |  4 +-
 arch/arm/dts/ep7212-clep7212.dts       |  2 +-
 arch/arm/dts/imx6dl-prtvt7.dts         |  4 +-
 arch/arm/dts/imx6qdl-prti6q-emmc.dtsi  | 16 +++---
 arch/arm/dts/imx6qdl-skov-imx6.dtsi    |  2 +-
 arch/arm/dts/imx6ul-phytec-state.dtsi  | 16 +++---
 arch/arm/dts/imx6ul-prti6g.dts         |  2 +-
 arch/arm/dts/imx6ul-webasto-ccbv2.dts  |  2 -
 arch/arm/dts/imx6ul-webasto-marvel.dts |  2 -
 arch/arm/dts/imx6ull-jozacp.dts        |  2 +-
 arch/arm/dts/imx6ull-jozacp.dtsi       | 72 ++++++++++++--------------
 arch/arm/dts/imx7d-peb-av-02.dtsi      |  2 +-
 arch/arm/dts/imx7d-peb-eval-02.dtsi    | 12 ++---
 scripts/Makefile.lib                   |  4 +-
 14 files changed, 65 insertions(+), 77 deletions(-)

-- 
2.30.2



