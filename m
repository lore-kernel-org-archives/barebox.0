Delivery-date: Mon, 26 Feb 2024 15:41:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1recAf-0088jL-1F
	for lore@lore.pengutronix.de;
	Mon, 26 Feb 2024 15:41:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1recAZ-0004hV-Qs
	for lore@pengutronix.de; Mon, 26 Feb 2024 15:41:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1Q9dnX3RhKYytcv9oA9HZo2kPemKaPLFN5nspJo+FFU=; b=GzTHJuANv4r0I0
	iTyH5rlu7rNU+CkRPbdO1DcRS7vdM7qckiLK9gA4xgjf4eDiD6NgAmWJM5owe6JhhWnBv32QPkxrX
	0e10ym/YVY9Z52/9Z4z1i95PxM9FbtEyaPy/ZygRIs8yf82be6dSg56HRN4wWwMhE1tzTiQsvPbSq
	kEZ6oGBIV5Gcple0ZrTjru7vRI6xAGye6mHrYEE+gvvRWMEv7Y4q3ozrmsDsn5B/2zbIxieZWlExh
	Lcqm6neDcGHvruyLsn4q58EahpCrXPZ+vs+725igAiRhUR31rvCfstJY/gsFoVZ5X44zEAy2OpPnx
	9yw16eS8vmOtkSt6VLOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rec9q-00000001CfS-1Lq6;
	Mon, 26 Feb 2024 14:40:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rec9m-00000001Ccy-2PTn
	for barebox@lists.infradead.org;
	Mon, 26 Feb 2024 14:40:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rec9k-0004OZ-0x; Mon, 26 Feb 2024 15:40:36 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rec9j-0030wX-GS; Mon, 26 Feb 2024 15:40:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rec9i-002vPy-31;
	Mon, 26 Feb 2024 15:40:35 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 26 Feb 2024 15:40:20 +0100
Message-Id: <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-0-2df2430da984@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANWi3GUC/x2NwQrCMBAFf6Xs2QebtUrxV8RDWFfdQ9OQlFJa+
 u9GbzOXmZ2qFbdKt26nYotXn1KTcOpIPzG9Df5sTsLSs8gVy4/AAsY8ZVf4uA4jEjLmLSr6gTW
 Es0a+CLVKLvby9X+4P47jC7/lOB5xAAAA
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>, 
 Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_064038_675783_A98864D6 
X-CRM114-Status: UNSURE (   7.44  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/3] arm: mach-imx: tzasc: port lock id_swap_bypass bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series ports the U-Boot commit 1289ff7bd7e4 ("imx8m: lock
id_swap_bypass bit in tzc380 enable") to barebox and refactors the tzasc
driver for the imx platform to use the `cpu_is_mx8xyz` macros.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Stefan Kerkmann (3):
      arm: mach-imx: tzasc: lock id_swap_bypass bit
      arm: mach-imx: set cpu type in pbl
      arm: mach-imx: tzasc: convert to cpu_is_mx8xyz macros

 arch/arm/mach-imx/Makefile |  2 +-
 arch/arm/mach-imx/atf.c    | 13 +++++++++----
 arch/arm/mach-imx/imx8m.c  |  2 +-
 arch/arm/mach-imx/tzasc.c  | 47 ++++++++++++++++++++++++++--------------------
 include/mach/imx/generic.h |  5 +++++
 include/mach/imx/tzasc.h   |  8 ++------
 6 files changed, 45 insertions(+), 32 deletions(-)
---
base-commit: ed7c14536d521793199abf0597164a46ba68e8e5
change-id: 20240226-v2024-02-0-topic-imx8m-n-p-tzac-480c113ca052

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



