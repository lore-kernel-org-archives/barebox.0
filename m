Delivery-date: Fri, 05 May 2023 09:54:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puqH1-005dpg-V5
	for lore@lore.pengutronix.de; Fri, 05 May 2023 09:54:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puqH0-00037G-3E
	for lore@pengutronix.de; Fri, 05 May 2023 09:54:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Cq3/895v8pu+no/fLY4Vnd7x5tORHKR5rxRDWp7zMcI=; b=Z5mvc4PdmCOPQl/tcaIpF6Nojk
	JR3SadLR463PTSOCBlWaNr0og3JhDCU3/tvcugIY6TBm7B9QWH9vFGhAf/3+Itfy6Gvc/FsCknM51
	W2BauckFhxedtzPZLo/IWuX0qim3hgCD7bK42nyAiIuB6O0nJOJ0O1vqfwKTRBV4IMsrZujbwIb8Y
	GQITw1/wa3Ru2Z3XSBm5XkPEhlPlu8G4Z+STtJX+1fthfYHSfg/gGv47rwS/CkFNGSb93QZuIzJ0f
	/csLvvhM6wdcuG1Rr4Nj2BqgXQyu4pOOneGEBHIAEutR6kKpByjIskIAiow7Fpe3Afl2/zX8kdQQp
	2kJx27/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puqFp-009xgt-1m;
	Fri, 05 May 2023 07:53:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puqFm-009xez-1B
	for barebox@lists.infradead.org;
	Fri, 05 May 2023 07:53:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1puqFh-0002iq-Bc; Fri, 05 May 2023 09:53:17 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1puqFg-001FAZ-Ml; Fri, 05 May 2023 09:53:16 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1puqFf-004Gr8-NX; Fri, 05 May 2023 09:53:15 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: patchwork-jzi@pengutronix.de,
	kernel@pengutronix.de
Date: Fri,  5 May 2023 09:53:05 +0200
Message-Id: <20230505075308.1015157-1-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_005322_405445_39BA8C77 
X-CRM114-Status: UNSURE (   9.41  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 0/3] Add displaying a version number in
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series adds displaying a version number in imx-usb-loader for
easier debugging.

The first two patches add minor cleanup, while the third actually adds
the code for displaying the version number.

The result will look like
$./imx-usb-loader --version
./imx-usb-loader 2023.04.0-00210-g057705fb211a-dirty

Happy hacking
Johannes

Johannes Zink (3):
  imx-usb-loader: error with success when displaying help on purpose
  imx-usb-loader: use proper return code macros
  imx-usb-loader: add commandline option for displaying version number

 scripts/imx/Makefile         |  2 +-
 scripts/imx/imx-usb-loader.c | 29 ++++++++++++++++++++++++-----
 2 files changed, 25 insertions(+), 6 deletions(-)

-- 
2.39.2



