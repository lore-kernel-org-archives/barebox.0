Delivery-date: Fri, 03 Mar 2023 10:24:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1ep-007Nd2-EE
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:24:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1ec-0001XX-Sl
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:24:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pBZO7EHTzx74moT8xFpcnyqq/MR9B6xTSvnNjjxVci4=; b=1gVP7ENicRepxXCVM7WocihI7v
	qxNex0Amib658p4CU1g5heKDbA9CIEQ2dk08TPSyxyCtQ9SwNF8qdTEXTRCS9QyxaQ8eEjf1qq0WD
	jajljTzgrzASiBvWgZq4EEGUITU0LdLkoT1gNvqExu9zVwZgkWUu88JxM0eF3RSHQ+GOIp4t48GBo
	IcSfW3qxGD8RC12LqBfKrr5JOAyCjR9X4FkXLFmiexdCrjQ445X+45S+jVeUrip3Vqw/eWS4eOMSo
	QbDrK5j8TjR+r+p7+y0DutSAPvMekzD3uHaoGMy7O6QdsoTtXvkkJYd58qV78cLAkzwM44fIRXBHV
	tYYAid0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1cB-005efU-GO; Fri, 03 Mar 2023 09:22:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bc-005eJS-HC
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bb-00008c-5Y; Fri, 03 Mar 2023 10:21:35 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-001Wgv-CQ; Fri, 03 Mar 2023 10:21:34 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bZ-00F2Xu-EA; Fri, 03 Mar 2023 10:21:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:42 +0100
Message-Id: <20230303092131.3063587-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/50] ARM: i.MX: Move mach header files to include/mach/imx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with #include <mach/xxx.h>.
With upcoming multi-arch support this is no longer possible as there
won't be a single mach anymore.

Move all i.MX specific header files to include/mach/imx/ to prepare for
multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ac-sxb/board.c                |  2 +-
 arch/arm/boards/ac-sxb/lowlevel.c             | 14 ++++-----
 arch/arm/boards/advantech-mx6/board.c         |  2 +-
 arch/arm/boards/advantech-mx6/lowlevel.c      |  6 ++--
 .../boards/boundarydevices-nitrogen6/board.c  |  4 +--
 .../flash-header-nitrogen6dl-1g.imxcfg        |  4 +--
 .../flash-header-nitrogen6dl-2g.imxcfg        |  4 +--
 .../flash-header-nitrogen6q-1g.imxcfg         |  4 +--
 .../flash-header-nitrogen6q-2g.imxcfg         |  4 +--
 .../flash-header-nitrogen6qp-max.imxcfg       |  4 +--
 .../boundarydevices-nitrogen6/lowlevel.c      |  4 +--
 arch/arm/boards/ccxmx51/ccxmx51.c             | 12 ++++----
 arch/arm/boards/ccxmx51/lowlevel.c            | 10 +++----
 arch/arm/boards/ccxmx53/board.c               | 12 ++++----
 arch/arm/boards/ccxmx53/lowlevel.c            |  6 ++--
 arch/arm/boards/cm-fx6/board.c                |  8 ++---
 arch/arm/boards/cm-fx6/lowlevel.c             | 12 ++++----
 arch/arm/boards/datamodul-edm-qmx6/board.c    | 12 ++++----
 arch/arm/boards/datamodul-edm-qmx6/lowlevel.c |  4 +--
 arch/arm/boards/dfi-fs700-m60/board.c         |  6 ++--
 .../flash-header-fs700-m60-6q-micron.imxcfg   |  4 +--
 .../flash-header-fs700-m60-6q-nanya.imxcfg    |  4 +--
 .../flash-header-fs700-m60-6s.imxcfg          |  4 +--
 arch/arm/boards/dfi-fs700-m60/lowlevel.c      |  4 +--
 arch/arm/boards/digi-ccimx6ulsom/board.c      |  4 +--
 arch/arm/boards/digi-ccimx6ulsom/lowlevel.c   |  4 +--
 arch/arm/boards/efika-mx-smartbook/board.c    | 14 ++++-----
 arch/arm/boards/efika-mx-smartbook/lowlevel.c |  6 ++--
 arch/arm/boards/element14-warp7/board.c       |  4 +--
 .../flash-header-mx7-warp.imxcfg              |  2 +-
 arch/arm/boards/element14-warp7/lowlevel.c    |  4 +--
 arch/arm/boards/eltec-hipercam/board.c        |  2 +-
 .../flash-header-eltec-hipercam.imxcfg        |  4 +--
 arch/arm/boards/eltec-hipercam/lowlevel.c     |  2 +-
 arch/arm/boards/embedsky-e9/board.c           | 16 +++++-----
 .../boards/embedsky-e9/flash-header-e9.imxcfg |  4 +--
 arch/arm/boards/embedsky-e9/lowlevel.c        |  2 +-
 arch/arm/boards/embest-marsboard/board.c      |  2 +-
 arch/arm/boards/embest-marsboard/lowlevel.c   |  6 ++--
 arch/arm/boards/embest-riotboard/board.c      |  8 ++---
 .../flash-header-embest-riotboard.imxcfg      |  4 +--
 arch/arm/boards/embest-riotboard/lowlevel.c   |  2 +-
 .../arm/boards/freescale-mx51-babbage/board.c | 18 +++++------
 .../boards/freescale-mx51-babbage/lowlevel.c  |  8 ++---
 .../arm/boards/freescale-mx51-babbage/power.c |  4 +--
 arch/arm/boards/freescale-mx53-qsb/board.c    | 12 ++++----
 arch/arm/boards/freescale-mx53-qsb/lowlevel.c |  6 ++--
 arch/arm/boards/freescale-mx53-vmx53/board.c  |  4 +--
 .../boards/freescale-mx53-vmx53/lowlevel.c    |  4 +--
 .../boards/freescale-mx6-sabrelite/board.c    | 16 +++++-----
 .../flash-header-mx6-sabrelite.imxcfg         |  4 +--
 .../boards/freescale-mx6-sabrelite/lowlevel.c |  8 ++---
 arch/arm/boards/freescale-mx6-sabresd/board.c | 14 ++++-----
 .../boards/freescale-mx6-sabresd/lowlevel.c   |  4 +--
 .../boards/freescale-mx6sx-sabresdb/board.c   | 12 ++++----
 .../freescale-mx6sx-sabresdb/lowlevel.c       |  2 +-
 arch/arm/boards/freescale-mx7-sabresd/board.c |  2 +-
 .../flash-header-mx7-sabresd.imxcfg           |  2 +-
 .../boards/freescale-mx7-sabresd/lowlevel.c   | 10 +++----
 .../flash-header-vf610-twr.imxcfg             | 12 ++++----
 .../arm/boards/freescale-vf610-twr/lowlevel.c | 10 +++----
 arch/arm/boards/gateworks-ventana/board.c     |  4 +--
 .../flash-header-ventana-quad-1gx64.imxcfg    |  4 +--
 arch/arm/boards/gateworks-ventana/lowlevel.c  |  2 +-
 arch/arm/boards/gk802/board.c                 |  6 ++--
 arch/arm/boards/gk802/flash-header.imxcfg     |  4 +--
 arch/arm/boards/gk802/lowlevel.c              |  2 +-
 arch/arm/boards/grinn-liteboard/board.c       |  4 +--
 arch/arm/boards/grinn-liteboard/lowlevel.c    |  4 +--
 arch/arm/boards/guf-santaro/board.c           |  8 ++---
 .../boards/guf-santaro/flash-header.imxcfg    |  4 +--
 arch/arm/boards/guf-santaro/lowlevel.c        |  6 ++--
 arch/arm/boards/guf-vincell/board.c           | 10 +++----
 arch/arm/boards/guf-vincell/lowlevel.c        | 14 ++++-----
 arch/arm/boards/innocomm-imx8mm-wb15/board.c  |  2 +-
 .../boards/innocomm-imx8mm-wb15/lowlevel.c    | 12 ++++----
 .../flash-header-tqma7d.imxcfg                |  2 +-
 .../kamstrup-mx7-concentrator/lowlevel.c      | 10 +++----
 arch/arm/boards/karo-tx25/board.c             | 14 ++++-----
 arch/arm/boards/karo-tx25/lowlevel.c          |  6 ++--
 arch/arm/boards/karo-tx53/board.c             | 16 +++++-----
 arch/arm/boards/karo-tx53/lowlevel.c          |  8 ++---
 arch/arm/boards/karo-tx6x/board.c             |  4 +--
 .../karo-tx6x/flash-header-tx6dl-1g.imxcfg    |  4 +--
 .../karo-tx6x/flash-header-tx6dl-512m.imxcfg  |  4 +--
 .../karo-tx6x/flash-header-tx6q-1g.imxcfg     |  4 +--
 .../karo-tx6x/flash-header-tx6qp-2g.imxcfg    |  4 +--
 arch/arm/boards/karo-tx6x/lowlevel.c          |  4 +--
 arch/arm/boards/kindle-mx50/board.c           |  8 ++---
 arch/arm/boards/kindle-mx50/lowlevel.c        |  4 +--
 arch/arm/boards/kontron-samx6i/board.c        |  4 +--
 arch/arm/boards/kontron-samx6i/lowlevel.c     |  4 +--
 arch/arm/boards/kontron-samx6i/mem.c          |  6 ++--
 arch/arm/boards/meerkat96/lowlevel.c          |  8 ++---
 arch/arm/boards/mnt-reform/board.c            |  2 +-
 .../mnt-reform/flash-header-mnt-reform.imxcfg |  2 +-
 arch/arm/boards/mnt-reform/lowlevel.c         | 16 +++++-----
 arch/arm/boards/novena/lowlevel.c             | 12 ++++----
 arch/arm/boards/nxp-imx6ull-evk/board.c       |  2 +-
 arch/arm/boards/nxp-imx6ull-evk/lowlevel.c    |  6 ++--
 arch/arm/boards/nxp-imx8mm-evk/board.c        |  2 +-
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c     | 12 ++++----
 arch/arm/boards/nxp-imx8mn-evk/board.c        |  2 +-
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c     | 14 ++++-----
 arch/arm/boards/nxp-imx8mp-evk/board.c        |  4 +--
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c     | 14 ++++-----
 arch/arm/boards/nxp-imx8mq-evk/board.c        |  2 +-
 .../flash-header-imx8mq-evk.imxcfg            |  2 +-
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c     | 12 ++++----
 .../boards/phytec-phycard-imx27/lowlevel.c    |  8 ++---
 arch/arm/boards/phytec-phycard-imx27/pca100.c | 12 ++++----
 .../boards/phytec-phycore-imx27/lowlevel.c    |  8 ++---
 arch/arm/boards/phytec-phycore-imx27/pcm038.c | 10 +++----
 arch/arm/boards/phytec-phycore-imx27/pcm970.c |  4 +--
 arch/arm/boards/phytec-phycore-imx7/board.c   |  6 ++--
 .../flash-header-phytec-phycore-imx7.imxcfg   |  2 +-
 .../arm/boards/phytec-phycore-imx7/lowlevel.c |  4 +--
 arch/arm/boards/phytec-som-imx6/board.c       |  6 ++--
 ...sh-header-phytec-pcaaxl3-1gib-1bank.imxcfg |  2 +-
 .../flash-header-phytec-pcaaxl3-1gib.imxcfg   |  2 +-
 .../flash-header-phytec-pcaaxl3-2gib.imxcfg   |  2 +-
 .../flash-header-phytec-pcaaxl3.h             |  4 +--
 .../flash-header-phytec-pcl063ul-512mb.imxcfg |  2 +-
 ...flash-header-phytec-pcl063ull-256mb.imxcfg |  2 +-
 ...flash-header-phytec-pcl063ull-512mb.imxcfg |  2 +-
 .../flash-header-phytec-pcm058-1gib.imxcfg    |  2 +-
 .../flash-header-phytec-pcm058-2gib.imxcfg    |  2 +-
 .../flash-header-phytec-pcm058.h              |  4 +--
 ...h-header-phytec-pcm058dl-1gib-32bit.imxcfg |  2 +-
 .../flash-header-phytec-pcm058dl-1gib.imxcfg  |  2 +-
 .../flash-header-phytec-pcm058dl-256mb.imxcfg |  2 +-
 .../flash-header-phytec-pcm058dl-512mb.imxcfg |  2 +-
 .../flash-header-phytec-pcm058dl.h            |  4 +--
 .../flash-header-phytec-pcm058qp-1gib.imxcfg  |  2 +-
 ...ash-header-phytec-pfla02-1gib-1bank.imxcfg |  2 +-
 .../flash-header-phytec-pfla02-1gib.imxcfg    |  2 +-
 .../flash-header-phytec-pfla02-2gib.imxcfg    |  2 +-
 .../flash-header-phytec-pfla02-4gib.imxcfg    |  2 +-
 ...sh-header-phytec-pfla02-512mb-1bank.imxcfg |  2 +-
 .../flash-header-phytec-pfla02.h              |  4 +--
 ...h-header-phytec-pfla02dl-1gib-1bank.imxcfg |  2 +-
 .../flash-header-phytec-pfla02dl-1gib.imxcfg  |  2 +-
 .../flash-header-phytec-pfla02dl.h            |  4 +--
 ...h-header-phytec-pfla02s-128mb-1bank.imxcfg |  2 +-
 ...h-header-phytec-pfla02s-256mb-1bank.imxcfg |  2 +-
 ...h-header-phytec-pfla02s-512mb-1bank.imxcfg |  2 +-
 arch/arm/boards/phytec-som-imx6/lowlevel.c    |  2 +-
 arch/arm/boards/phytec-som-imx8mq/board.c     |  2 +-
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c  | 12 ++++----
 arch/arm/boards/polyhex-debix/board.c         |  4 +--
 arch/arm/boards/polyhex-debix/lowlevel.c      | 14 ++++-----
 arch/arm/boards/protonic-imx6/board.c         |  6 ++--
 arch/arm/boards/protonic-imx6/lowlevel.c      |  4 +--
 arch/arm/boards/protonic-imx8m/board.c        |  2 +-
 .../boards/protonic-imx8m/lowlevel-prt8mm.c   | 14 ++++-----
 arch/arm/boards/scb9328/lowlevel.c            |  8 ++---
 arch/arm/boards/scb9328/lowlevel_init.S       |  2 +-
 arch/arm/boards/scb9328/scb9328.c             |  8 ++---
 arch/arm/boards/skov-imx6/board.c             |  2 +-
 arch/arm/boards/skov-imx6/lowlevel.c          | 16 +++++-----
 arch/arm/boards/skov-imx6/version.c           |  6 ++--
 arch/arm/boards/solidrun-microsom/board.c     |  8 ++---
 .../flash-header-microsom-i1.imxcfg           |  4 +--
 .../flash-header-microsom-i2.imxcfg           |  4 +--
 .../flash-header-microsom-i2eX.imxcfg         |  4 +--
 .../flash-header-microsom-i4.imxcfg           |  4 +--
 arch/arm/boards/solidrun-microsom/lowlevel.c  |  4 +--
 .../arm/boards/technexion-pico-hobbit/board.c |  8 ++---
 .../boards/technexion-pico-hobbit/lowlevel.c  |  6 ++--
 arch/arm/boards/technexion-wandboard/board.c  |  8 ++---
 .../boards/technexion-wandboard/lowlevel.c    | 12 ++++----
 arch/arm/boards/tqma53/board.c                |  2 +-
 arch/arm/boards/tqma53/lowlevel.c             |  8 ++---
 arch/arm/boards/tqma6ulx/board.c              |  4 +--
 .../flash-header-imx6ul-tqma6ulx.imxcfg       |  2 +-
 arch/arm/boards/tqma6ulx/lowlevel.c           |  6 ++--
 arch/arm/boards/tqma6x/board.c                | 12 ++++----
 .../boards/tqma6x/flash-header-tqma6dl.imxcfg |  4 +--
 .../boards/tqma6x/flash-header-tqma6q.imxcfg  |  4 +--
 arch/arm/boards/tqma6x/lowlevel.c             |  2 +-
 arch/arm/boards/tqma8mpxl/board.c             |  4 +--
 arch/arm/boards/tqma8mpxl/lowlevel.c          | 14 ++++-----
 arch/arm/boards/udoo-neo/board.c              |  4 +--
 arch/arm/boards/udoo-neo/lowlevel.c           |  4 +--
 arch/arm/boards/udoo/board.c                  | 16 +++++-----
 .../boards/udoo/flash-header-mx6-udoo.imxcfg  |  4 +--
 arch/arm/boards/udoo/lowlevel.c               |  2 +-
 .../variscite-dt8mcustomboard-imx8mp/board.c  |  4 +--
 .../lowlevel.c                                | 14 ++++-----
 arch/arm/boards/variscite-mx6/board.c         | 10 +++----
 .../flash-header-variscite.imxcfg             |  4 +--
 arch/arm/boards/variscite-mx6/lowlevel.c      |  2 +-
 arch/arm/boards/webasto-ccbv2/board.c         |  4 +--
 ...ash-header-imx6ul-webasto-ccbv2-256.imxcfg |  2 +-
 ...ash-header-imx6ul-webasto-ccbv2-512.imxcfg |  2 +-
 arch/arm/boards/webasto-ccbv2/lowlevel.c      |  6 ++--
 arch/arm/boards/zii-imx51-rdu1/board.c        |  4 +--
 arch/arm/boards/zii-imx51-rdu1/lowlevel.c     |  8 ++---
 arch/arm/boards/zii-imx6q-rdu2/board.c        |  4 +--
 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c     | 10 +++----
 arch/arm/boards/zii-imx7d-dev/board.c         |  4 +--
 .../flash-header-zii-imx7d-dev.imxcfg         |  2 +-
 arch/arm/boards/zii-imx7d-dev/lowlevel.c      | 10 +++----
 arch/arm/boards/zii-imx8mq-dev/board.c        |  2 +-
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c     | 12 ++++----
 arch/arm/boards/zii-vf610-dev/board.c         |  2 +-
 .../flash-header-zii-vf610-dev.imxcfg         | 12 ++++----
 arch/arm/boards/zii-vf610-dev/lowlevel.c      | 10 +++----
 arch/arm/include/asm/debug_ll.h               |  6 ++--
 arch/arm/mach-imx/atf.c                       |  8 ++---
 arch/arm/mach-imx/boot.c                      | 30 +++++++++----------
 arch/arm/mach-imx/bootrom-cmd.c               |  4 +--
 arch/arm/mach-imx/cpu_init.c                  |  8 ++---
 arch/arm/mach-imx/devices.c                   |  2 +-
 arch/arm/mach-imx/esdctl-v4.c                 |  4 +--
 arch/arm/mach-imx/esdctl.c                    | 30 +++++++++----------
 arch/arm/mach-imx/external-nand-boot.c        | 16 +++++-----
 arch/arm/mach-imx/iim.c                       | 10 +++----
 arch/arm/mach-imx/imx-bbu-external-nand.c     |  4 +--
 arch/arm/mach-imx/imx-bbu-internal.c          |  4 +--
 arch/arm/mach-imx/imx.c                       |  6 ++--
 arch/arm/mach-imx/imx1.c                      | 10 +++----
 arch/arm/mach-imx/imx21.c                     |  8 ++---
 arch/arm/mach-imx/imx25.c                     |  8 ++---
 arch/arm/mach-imx/imx27.c                     | 10 +++----
 arch/arm/mach-imx/imx31.c                     |  6 ++--
 arch/arm/mach-imx/imx35.c                     | 10 +++----
 arch/arm/mach-imx/imx5.c                      |  4 +--
 arch/arm/mach-imx/imx50.c                     | 14 ++++-----
 arch/arm/mach-imx/imx51.c                     | 14 ++++-----
 arch/arm/mach-imx/imx53.c                     | 14 ++++-----
 arch/arm/mach-imx/imx6-mmdc.c                 |  6 ++--
 arch/arm/mach-imx/imx6.c                      | 18 +++++------
 arch/arm/mach-imx/imx7.c                      | 10 +++----
 arch/arm/mach-imx/imx8m.c                     | 16 +++++-----
 arch/arm/mach-imx/nand.c                      | 12 ++++----
 arch/arm/mach-imx/romapi.c                    |  8 ++---
 arch/arm/mach-imx/tzasc.c                     |  4 +--
 arch/arm/mach-imx/vf610.c                     | 10 +++----
 arch/arm/mach-imx/xload-common.c              |  6 ++--
 arch/arm/mach-imx/xload-gpmi-nand.c           |  8 ++---
 arch/arm/mach-imx/xload-imx-nand.c            |  8 ++---
 arch/arm/mach-imx/xload-spi.c                 |  6 ++--
 common/filetype.c                             |  2 +-
 common/imx-bbu-nand-fcb.c                     |  8 +++--
 drivers/ata/sata-imx.c                        |  4 +--
 drivers/clk/imx/clk-imx1.c                    |  2 +-
 drivers/clk/imx/clk-imx21.c                   |  2 +-
 drivers/clk/imx/clk-imx25.c                   |  2 +-
 drivers/clk/imx/clk-imx27.c                   |  6 ++--
 drivers/clk/imx/clk-imx31.c                   |  2 +-
 drivers/clk/imx/clk-imx35.c                   |  2 +-
 drivers/clk/imx/clk-imx5.c                    |  6 ++--
 drivers/clk/imx/clk-imx6.c                    |  6 ++--
 drivers/clk/imx/clk-imx6sl.c                  |  6 ++--
 drivers/clk/imx/clk-imx6sx.c                  |  6 ++--
 drivers/clk/imx/clk-imx6ul.c                  |  6 ++--
 drivers/clk/imx/clk-imx7.c                    |  4 +--
 drivers/clk/imx/clk-vf610.c                   |  4 +--
 drivers/ddr/imx8m/ddr_init.c                  |  6 ++--
 drivers/ddr/imx8m/ddrphy_train.c              |  2 +-
 drivers/ddr/imx8m/ddrphy_utils.c              |  4 +--
 drivers/hab/hab.c                             |  8 ++---
 drivers/hab/habv3.c                           |  2 +-
 drivers/hab/habv4.c                           |  4 +--
 drivers/mci/imx-esdhc-pbl.c                   | 14 ++++-----
 drivers/mtd/nand/nand_imx.c                   |  4 +--
 drivers/mtd/nand/nand_mxs.c                   |  2 +-
 drivers/nvmem/ocotp.c                         |  7 ++++-
 drivers/pinctrl/imx-iomux-v1.c                |  2 +-
 drivers/pinctrl/imx-iomux-v3.c                |  4 +--
 drivers/pinctrl/pinctrl-vf610.c               |  2 +-
 drivers/spi/dspi_spi.c                        |  4 +--
 drivers/spi/imx_spi.c                         |  4 +--
 drivers/usb/gadget/fsl_udc_pbl.c              |  6 ++--
 drivers/usb/imx/imx-usb-misc.c                |  4 +--
 drivers/video/imx-ipu-v3/imx-hdmi.c           |  4 +--
 drivers/video/imx-ipu-v3/imx-ldb.c            |  4 +--
 drivers/video/imx-ipu-v3/ipu-common.c         |  8 ++---
 .../include/mach => include/mach/imx}/atf.h   |  0
 .../include/mach => include/mach/imx}/bbu.h   |  0
 .../include/mach => include/mach/imx}/ccm.h   |  0
 .../mach/imx}/clock-imx51_53.h                |  0
 .../mach => include/mach/imx}/clock-imx6.h    |  0
 .../mach => include/mach/imx}/clock-vf610.h   |  0
 .../mach => include/mach/imx}/debug_ll.h      | 26 ++++++++--------
 .../mach => include/mach/imx}/devices-imx1.h  |  4 +--
 .../mach => include/mach/imx}/devices-imx21.h |  4 +--
 .../mach => include/mach/imx}/devices-imx25.h |  4 +--
 .../mach => include/mach/imx}/devices-imx27.h |  4 +--
 .../mach => include/mach/imx}/devices-imx31.h |  4 +--
 .../mach => include/mach/imx}/devices-imx35.h |  4 +--
 .../mach => include/mach/imx}/devices-imx50.h |  4 +--
 .../mach => include/mach/imx}/devices-imx51.h |  4 +--
 .../mach => include/mach/imx}/devices-imx53.h |  4 +--
 .../mach => include/mach/imx}/devices-imx6.h  |  4 +--
 .../mach => include/mach/imx}/devices.h       |  6 ++--
 .../mach => include/mach/imx}/esdctl-v4.h     |  0
 .../mach => include/mach/imx}/esdctl.h        |  0
 .../flash-header/imx7d-ddr-sabresd.imxcfg     |  2 +-
 .../flash-header/vf610-ddr-cr-default.imxcfg  |  0
 .../flash-header/vf610-ddr-phy-default.imxcfg |  0
 .../flash-header/vf610-ddr-pll2-400mhz.imxcfg |  0
 .../vf610-iomux-ddr-default.imxcfg            |  0
 .../mach => include/mach/imx}/generic.h       |  2 +-
 .../mach/imx}/habv3-imx25-gencsf.h            |  0
 .../mach/imx}/habv4-imx6-gencsf-template.h    |  0
 .../mach/imx}/habv4-imx6-gencsf.h             |  2 +-
 .../mach/imx}/habv4-imx6ull-gencsf.h          |  2 +-
 .../mach/imx}/habv4-imx8-gencsf.h             |  0
 .../include/mach => include/mach/imx}/iim.h   |  0
 .../mach => include/mach/imx}/imx-gpio.h      |  0
 .../mach => include/mach/imx}/imx-header.h    |  0
 .../mach => include/mach/imx}/imx-ipu-fb.h    |  0
 .../mach => include/mach/imx}/imx-nand.h      |  0
 .../mach => include/mach/imx}/imx-pll.h       |  0
 .../mach => include/mach/imx}/imx1-regs.h     |  0
 .../mach => include/mach/imx}/imx21-regs.h    |  0
 .../mach => include/mach/imx}/imx25-fusemap.h |  2 +-
 .../mach => include/mach/imx}/imx25-regs.h    |  0
 .../mach => include/mach/imx}/imx27-regs.h    |  0
 .../mach => include/mach/imx}/imx31-regs.h    |  0
 .../mach => include/mach/imx}/imx35-regs.h    |  0
 .../include/mach => include/mach/imx}/imx5.h  |  0
 .../mach => include/mach/imx}/imx50-regs.h    |  0
 .../mach => include/mach/imx}/imx51-regs.h    |  0
 .../mach => include/mach/imx}/imx53-regs.h    |  0
 .../mach => include/mach/imx}/imx6-anadig.h   |  0
 .../mach => include/mach/imx}/imx6-ddr-regs.h |  0
 .../mach => include/mach/imx}/imx6-fusemap.h  |  2 +-
 .../mach => include/mach/imx}/imx6-mmdc.h     |  2 +-
 .../mach => include/mach/imx}/imx6-regs.h     |  0
 .../include/mach => include/mach/imx}/imx6.h  |  6 ++--
 .../mach/imx}/imx6dl-ddr-regs.h               |  0
 .../mach/imx}/imx6q-ddr-regs.h                |  0
 .../mach => include/mach/imx}/imx7-ccm-regs.h |  0
 .../mach => include/mach/imx}/imx7-ddr-regs.h |  0
 .../mach => include/mach/imx}/imx7-regs.h     |  0
 .../include/mach => include/mach/imx}/imx7.h  |  6 ++--
 .../mach/imx}/imx8m-ccm-regs.h                |  2 +-
 .../mach => include/mach/imx}/imx8m-regs.h    |  0
 .../mach => include/mach/imx}/imx8mm-regs.h   |  2 +-
 .../mach => include/mach/imx}/imx8mn-regs.h   |  2 +-
 .../mach => include/mach/imx}/imx8mp-regs.h   |  2 +-
 .../mach => include/mach/imx}/imx8mq-regs.h   |  2 +-
 .../mach => include/mach/imx}/imx8mq.h        | 12 ++++----
 .../mach => include/mach/imx}/imx_cpu_types.h |  0
 .../mach => include/mach/imx}/iomux-mx1.h     |  2 +-
 .../mach => include/mach/imx}/iomux-mx21.h    |  4 +--
 .../mach => include/mach/imx}/iomux-mx25.h    |  2 +-
 .../mach => include/mach/imx}/iomux-mx27.h    |  4 +--
 .../mach => include/mach/imx}/iomux-mx2x.h    |  0
 .../mach => include/mach/imx}/iomux-mx31.h    |  0
 .../mach => include/mach/imx}/iomux-mx35.h    |  2 +-
 .../mach => include/mach/imx}/iomux-mx50.h    |  2 +-
 .../mach => include/mach/imx}/iomux-mx51.h    |  2 +-
 .../mach => include/mach/imx}/iomux-mx53.h    |  2 +-
 .../mach => include/mach/imx}/iomux-mx6.h     |  2 +-
 .../mach => include/mach/imx}/iomux-mx6ul.h   |  2 +-
 .../mach => include/mach/imx}/iomux-mx7.h     |  4 +--
 .../mach => include/mach/imx}/iomux-mx8m.h    |  2 +-
 .../mach => include/mach/imx}/iomux-mx8mm.h   |  6 ++--
 .../mach => include/mach/imx}/iomux-mx8mn.h   |  6 ++--
 .../mach => include/mach/imx}/iomux-mx8mp.h   |  6 ++--
 .../mach => include/mach/imx}/iomux-mx8mq.h   |  6 ++--
 .../mach => include/mach/imx}/iomux-v1.h      |  6 ++--
 .../mach => include/mach/imx}/iomux-v3.h      |  0
 .../mach => include/mach/imx}/iomux-vf610.h   |  2 +-
 .../mach => include/mach/imx}/ocotp-fusemap.h |  2 +-
 .../include/mach => include/mach/imx}/ocotp.h |  0
 .../mach => include/mach/imx}/reset-reason.h  |  0
 .../mach => include/mach/imx}/revision.h      |  0
 .../mach => include/mach/imx}/romapi.h        |  2 +-
 .../include/mach => include/mach/imx}/spi.h   |  0
 .../include/mach => include/mach/imx}/tzasc.h |  0
 .../include/mach => include/mach/imx}/usb.h   |  0
 .../mach/imx}/vf610-ddrmc-regs.h              |  0
 .../mach => include/mach/imx}/vf610-ddrmc.h   |  2 +-
 .../mach => include/mach/imx}/vf610-fusemap.h |  2 +-
 .../mach/imx}/vf610-iomux-regs.h              |  0
 .../mach => include/mach/imx}/vf610-regs.h    |  0
 .../include/mach => include/mach/imx}/vf610.h |  6 ++--
 .../include/mach => include/mach/imx}/weim.h  |  0
 .../include/mach => include/mach/imx}/xload.h |  0
 scripts/imx/Makefile                          | 10 +++----
 scripts/imx/imx.h                             |  4 +--
 386 files changed, 965 insertions(+), 956 deletions(-)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/atf.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/bbu.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/ccm.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/clock-imx51_53.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/clock-imx6.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/clock-vf610.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/debug_ll.h (89%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx1.h (81%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx21.h (92%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx25.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx27.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx31.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx35.h (96%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx50.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx51.h (98%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx53.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx6.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices.h (94%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/esdctl-v4.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/esdctl.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/flash-header/imx7d-ddr-sabresd.imxcfg (98%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/flash-header/vf610-ddr-cr-default.imxcfg (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/flash-header/vf610-ddr-phy-default.imxcfg (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/flash-header/vf610-ddr-pll2-400mhz.imxcfg (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/flash-header/vf610-iomux-ddr-default.imxcfg (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/generic.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/habv3-imx25-gencsf.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/habv4-imx6-gencsf-template.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/habv4-imx6-gencsf.h (70%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/habv4-imx6ull-gencsf.h (60%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/habv4-imx8-gencsf.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iim.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx-gpio.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx-header.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx-ipu-fb.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx-nand.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx-pll.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx1-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx21-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx25-fusemap.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx25-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx27-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx31-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx35-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx5.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx50-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx51-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx53-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx6-anadig.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx6-ddr-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx6-fusemap.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx6-mmdc.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx6-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx6.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx6dl-ddr-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx6q-ddr-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx7-ccm-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx7-ddr-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx7-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx7.h (92%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx8m-ccm-regs.h (98%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx8m-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx8mm-regs.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx8mn-regs.h (96%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx8mp-regs.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx8mq-regs.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx8mq.h (91%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx_cpu_types.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx1.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx21.h (98%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx25.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx27.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx2x.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx31.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx35.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx50.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx51.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx53.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx6.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx6ul.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx7.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx8m.h (95%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx8mm.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx8mn.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx8mp.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx8mq.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-v1.h (95%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-v3.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-vf610.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/ocotp-fusemap.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/ocotp.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/reset-reason.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/revision.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/romapi.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/spi.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/tzasc.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/usb.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/vf610-ddrmc-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/vf610-ddrmc.h (93%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/vf610-fusemap.h (95%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/vf610-iomux-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/vf610-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/vf610.h (92%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/weim.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/xload.h (100%)

diff --git a/arch/arm/boards/ac-sxb/board.c b/arch/arm/boards/ac-sxb/board.c
index 3ea40dfb7d..d631bb543a 100644
--- a/arch/arm/boards/ac-sxb/board.c
+++ b/arch/arm/boards/ac-sxb/board.c
@@ -6,7 +6,7 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 
 static int sxb_coredevices_init(void)
 {
diff --git a/arch/arm/boards/ac-sxb/lowlevel.c b/arch/arm/boards/ac-sxb/lowlevel.c
index a264549683..b7d24399b4 100644
--- a/arch/arm/boards/ac-sxb/lowlevel.c
+++ b/arch/arm/boards/ac-sxb/lowlevel.c
@@ -8,16 +8,16 @@
 #include <io.h>
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx7-ccm-regs.h>
-#include <mach/iomux-mx7.h>
-#include <mach/debug_ll.h>
+#include <mach/imx/imx7-ccm-regs.h>
+#include <mach/imx/iomux-mx7.h>
+#include <mach/imx/debug_ll.h>
 #include <asm/cache.h>
-#include <mach/esdctl.h>
-#include <mach/xload.h>
-#include <mach/imx7-ddr-regs.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/xload.h>
+#include <mach/imx/imx7-ddr-regs.h>
 
 struct reginit {
 	u32 address;
diff --git a/arch/arm/boards/advantech-mx6/board.c b/arch/arm/boards/advantech-mx6/board.c
index 67149d8994..8261875d63 100644
--- a/arch/arm/boards/advantech-mx6/board.c
+++ b/arch/arm/boards/advantech-mx6/board.c
@@ -5,7 +5,7 @@
 #include <init.h>
 #include <platform_data/eth-fec.h>
 #include <bootsource.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 
 static int ar8035_phy_fixup(struct phy_device *dev)
 {
diff --git a/arch/arm/boards/advantech-mx6/lowlevel.c b/arch/arm/boards/advantech-mx6/lowlevel.c
index d762f0e9a7..ea77af8a31 100644
--- a/arch/arm/boards/advantech-mx6/lowlevel.c
+++ b/arch/arm/boards/advantech-mx6/lowlevel.c
@@ -6,9 +6,9 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <image-metadata.h>
-#include <mach/generic.h>
-#include <mach/esdctl.h>
-#include <mach/iomux-mx6.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/iomux-mx6.h>
 #include <linux/sizes.h>
 
 static inline void setup_uart(void)
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/board.c b/arch/arm/boards/boundarydevices-nitrogen6/board.c
index dc2d5aa41c..a57cef4fbe 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/board.c
+++ b/arch/arm/boards/boundarydevices-nitrogen6/board.c
@@ -4,10 +4,10 @@
 #include <common.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 #include <linux/phy.h>
 #include <linux/micrel_phy.h>
-#include <mach/imx6.h>
+#include <mach/imx/imx6.h>
 
 static int nitrogen6x_devices_init(void)
 {
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
index 8282d4140c..8aa14f3080 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6dl-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6dl-ddr-regs.h>
 
 #include "ram-base.imxcfg"
 #include "800mhz_4x128mx16.imxcfg"
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
index 9ef9b5789f..5544c25e36 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6dl-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6dl-ddr-regs.h>
 
 #include "ram-base.imxcfg"
 #include "800mhz_4x256mx16.imxcfg"
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
index 5c5af546a7..4cde5c0818 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 #include "ram-base.imxcfg"
 #include "1066mhz_4x128mx16.imxcfg"
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
index 58b9dc7468..4b38b1bfc9 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 #include "ram-base.imxcfg"
 #include "1066mhz_4x256mx16.imxcfg"
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
index 4ab0a653bd..2d43222530 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 #include "ram-base.imxcfg"
 #include "1066mhz_4x512mx16-qp.imxcfg"
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c b/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c
index 9312a1d4aa..8ab5116d8e 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c
+++ b/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c
@@ -1,8 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
-#include <mach/generic.h>
-#include <mach/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/esdctl.h>
 #include <asm/barebox-arm.h>
 
 extern char __dtb_imx6q_nitrogen6x_start[];
diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index 4288efe2e0..4ea71fe26b 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -16,12 +16,12 @@
 #include <mfd/mc13xxx.h>
 #include <mfd/mc13892.h>
 
-#include <mach/bbu.h>
-#include <mach/esdctl.h>
-#include <mach/iim.h>
-#include <mach/imx5.h>
-#include <mach/imx51-regs.h>
-#include <mach/revision.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/iim.h>
+#include <mach/imx/imx5.h>
+#include <mach/imx/imx51-regs.h>
+#include <mach/imx/revision.h>
 
 static const struct ccxmx_ident {
 	char		*id_string;
diff --git a/arch/arm/boards/ccxmx51/lowlevel.c b/arch/arm/boards/ccxmx51/lowlevel.c
index 49bc7bfe32..1fa55346eb 100644
--- a/arch/arm/boards/ccxmx51/lowlevel.c
+++ b/arch/arm/boards/ccxmx51/lowlevel.c
@@ -3,13 +3,13 @@
 
 #include <common.h>
 #include <debug_ll.h>
-#include <mach/clock-imx51_53.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
-#include <mach/iomux-mx51.h>
+#include <mach/imx/clock-imx51_53.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/iomux-mx51.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
-#include <mach/imx51-regs.h>
+#include <mach/imx/imx51-regs.h>
 
 static inline void setup_uart(void)
 {
diff --git a/arch/arm/boards/ccxmx53/board.c b/arch/arm/boards/ccxmx53/board.c
index b0faf8d280..06fc3d715f 100644
--- a/arch/arm/boards/ccxmx53/board.c
+++ b/arch/arm/boards/ccxmx53/board.c
@@ -10,13 +10,13 @@
 #include <gpio.h>
 
 #include <generated/mach-types.h>
-#include <mach/imx5.h>
-#include <mach/generic.h>
-#include <mach/imx53-regs.h>
-#include <mach/esdctl.h>
+#include <mach/imx/imx5.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx53-regs.h>
+#include <mach/imx/esdctl.h>
 #include <asm/armlinux.h>
-#include <mach/bbu.h>
-#include <mach/iim.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/iim.h>
 
 
 struct ccwmx53_ident {
diff --git a/arch/arm/boards/ccxmx53/lowlevel.c b/arch/arm/boards/ccxmx53/lowlevel.c
index 5833ad4739..74fde99337 100644
--- a/arch/arm/boards/ccxmx53/lowlevel.c
+++ b/arch/arm/boards/ccxmx53/lowlevel.c
@@ -5,9 +5,9 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <io.h>
-#include <mach/imx53-regs.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
+#include <mach/imx/imx53-regs.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
 #include <image-metadata.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
diff --git a/arch/arm/boards/cm-fx6/board.c b/arch/arm/boards/cm-fx6/board.c
index 5a1110860f..c70989476b 100644
--- a/arch/arm/boards/cm-fx6/board.c
+++ b/arch/arm/boards/cm-fx6/board.c
@@ -4,13 +4,13 @@
 #include <common.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx6-regs.h>
-#include <mach/bbu.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/bbu.h>
 #include <asm/armlinux.h>
 #include <linux/phy.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <linux/sizes.h>
-#include <mach/imx6.h>
+#include <mach/imx/imx6.h>
 #include <net.h>
 
 static int phy_fixup(struct phy_device *phydev)
diff --git a/arch/arm/boards/cm-fx6/lowlevel.c b/arch/arm/boards/cm-fx6/lowlevel.c
index 27c15f5412..137ae3e107 100644
--- a/arch/arm/boards/cm-fx6/lowlevel.c
+++ b/arch/arm/boards/cm-fx6/lowlevel.c
@@ -4,16 +4,16 @@
 
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <debug_ll.h>
 #include <io.h>
-#include <mach/imx6-mmdc.h>
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6.h>
-#include <mach/xload.h>
-#include <mach/esdctl.h>
+#include <mach/imx/imx6-mmdc.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/xload.h>
+#include <mach/imx/esdctl.h>
 #include <serial/imx-uart.h>
 
 enum ddr_config {
diff --git a/arch/arm/boards/datamodul-edm-qmx6/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
index 76fb17b4bd..9adb3ee0f8 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/board.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/board.c
@@ -17,12 +17,12 @@
 #include <asm/armlinux.h>
 #include <asm/io.h>
 
-#include <mach/devices-imx6.h>
-#include <mach/imx6-regs.h>
-#include <mach/iomux-mx6.h>
-#include <mach/generic.h>
-#include <mach/imx6.h>
-#include <mach/bbu.h>
+#include <mach/imx/devices-imx6.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/iomux-mx6.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/bbu.h>
 
 #define RQ7_GPIO_ENET_PHYADD2	IMX_GPIO_NR(6, 30)
 #define RQ7_GPIO_ENET_MODE0	IMX_GPIO_NR(6, 25)
diff --git a/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
index 8ac9317cb0..9566e492e3 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
@@ -9,8 +9,8 @@
 #include <asm/mmu.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx6-mmdc.h>
-#include <mach/generic.h>
+#include <mach/imx/imx6-mmdc.h>
+#include <mach/imx/generic.h>
 
 static void sdram_init(void)
 {
diff --git a/arch/arm/boards/dfi-fs700-m60/board.c b/arch/arm/boards/dfi-fs700-m60/board.c
index 99e36da2ec..6d8494d086 100644
--- a/arch/arm/boards/dfi-fs700-m60/board.c
+++ b/arch/arm/boards/dfi-fs700-m60/board.c
@@ -20,9 +20,9 @@
 #include <asm/mmu.h>
 #include <asm/io.h>
 
-#include <mach/imx6-regs.h>
-#include <mach/generic.h>
-#include <mach/bbu.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/bbu.h>
 
 /*
  * This board can have 512MiB, 1GiB or 2GiB of SDRAM. The actual amount of SDRAM
diff --git a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
index 9f82165066..8eec14b014 100644
--- a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
+++ b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
@@ -4,8 +4,8 @@ loadaddr 0x27800000
 soc imx6
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 wm 32 MX6_IOM_DRAM_SDQS5 0x00000030
 wm 32 MX6_IOM_DRAM_DQM5 0x00020030
diff --git a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
index ccb3e68487..9573459bd5 100644
--- a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
+++ b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
@@ -4,8 +4,8 @@ loadaddr 0x27800000
 soc imx6
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 wm 32 MX6_IOM_GRP_DDR_TYPE 0x000C0000
 wm 32 MX6_IOM_GRP_DDRPKE 0x00000000
diff --git a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
index 5b8bc26257..b6318e8812 100644
--- a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
+++ b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
@@ -4,8 +4,8 @@ loadaddr 0x17800000
 soc imx6
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6dl-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6dl-ddr-regs.h>
 
 wm 32 MX6_IOM_GRP_DDR_TYPE 0x000c0000
 wm 32 MX6_IOM_GRP_DDRPKE 0x00000000
diff --git a/arch/arm/boards/dfi-fs700-m60/lowlevel.c b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
index d898cb5c1e..1ca0d6f090 100644
--- a/arch/arm/boards/dfi-fs700-m60/lowlevel.c
+++ b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
@@ -8,8 +8,8 @@
 #include <asm/mmu.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx6-regs.h>
-#include <mach/generic.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/generic.h>
 
 #include <debug_ll.h>
 
diff --git a/arch/arm/boards/digi-ccimx6ulsom/board.c b/arch/arm/boards/digi-ccimx6ulsom/board.c
index b4fcc17e09..ef6828c02c 100644
--- a/arch/arm/boards/digi-ccimx6ulsom/board.c
+++ b/arch/arm/boards/digi-ccimx6ulsom/board.c
@@ -3,8 +3,8 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/generic.h>
-#include <mach/bbu.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/bbu.h>
 
 static int digi_ccimx6ulsbcpro_device_init(void)
 {
diff --git a/arch/arm/boards/digi-ccimx6ulsom/lowlevel.c b/arch/arm/boards/digi-ccimx6ulsom/lowlevel.c
index ba562a501f..08651f0779 100644
--- a/arch/arm/boards/digi-ccimx6ulsom/lowlevel.c
+++ b/arch/arm/boards/digi-ccimx6ulsom/lowlevel.c
@@ -1,9 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm.h>
-#include <mach/esdctl.h>
+#include <mach/imx/esdctl.h>
 #include <asm/cache.h>
 
 
diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index 0d979876a5..f5a3f3cec4 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -19,13 +19,13 @@
 
 #include <asm/armlinux.h>
 
-#include <mach/devices-imx51.h>
-#include <mach/imx51-regs.h>
-#include <mach/iomux-mx51.h>
-#include <mach/revision.h>
-#include <mach/generic.h>
-#include <mach/imx5.h>
-#include <mach/bbu.h>
+#include <mach/imx/devices-imx51.h>
+#include <mach/imx/imx51-regs.h>
+#include <mach/imx/iomux-mx51.h>
+#include <mach/imx/revision.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx5.h>
+#include <mach/imx/bbu.h>
 
 #define GPIO_BACKLIGHT_POWER	IMX_GPIO_NR(4, 12)
 #define GPIO_BACKLIGHT_PWM	IMX_GPIO_NR(1, 2)
diff --git a/arch/arm/boards/efika-mx-smartbook/lowlevel.c b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
index 5375578c94..cf2f145e74 100644
--- a/arch/arm/boards/efika-mx-smartbook/lowlevel.c
+++ b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
@@ -1,11 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx5.h>
+#include <mach/imx/imx5.h>
 
 extern char __dtb_imx51_genesi_efika_sb_start[];
 
diff --git a/arch/arm/boards/element14-warp7/board.c b/arch/arm/boards/element14-warp7/board.c
index 50b628ba58..ec967d1c4c 100644
--- a/arch/arm/boards/element14-warp7/board.c
+++ b/arch/arm/boards/element14-warp7/board.c
@@ -4,10 +4,10 @@
 #include <common.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <linux/sizes.h>
 
 static int warp7_devices_init(void)
diff --git a/arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg b/arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg
index 798f2cbcb0..c17321ad3a 100644
--- a/arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg
+++ b/arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg
@@ -13,7 +13,7 @@ soc imx7
 loadaddr 0x80000000
 ivtofs 0x400
 
-#include <mach/imx7-ddr-regs.h>
+#include <mach/imx/imx7-ddr-regs.h>
 
 wm 32 0x30340004 0x4F400005
 
diff --git a/arch/arm/boards/element14-warp7/lowlevel.c b/arch/arm/boards/element14-warp7/lowlevel.c
index 94b7eb598b..5581b958c7 100644
--- a/arch/arm/boards/element14-warp7/lowlevel.c
+++ b/arch/arm/boards/element14-warp7/lowlevel.c
@@ -4,10 +4,10 @@
 #include <io.h>
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <asm/cache.h>
 
 extern char __dtb_imx7s_warp_start[];
diff --git a/arch/arm/boards/eltec-hipercam/board.c b/arch/arm/boards/eltec-hipercam/board.c
index e192c4c2f5..b8ad17992c 100644
--- a/arch/arm/boards/eltec-hipercam/board.c
+++ b/arch/arm/boards/eltec-hipercam/board.c
@@ -4,7 +4,7 @@
 #include <common.h>
 #include <init.h>
 #include <bbu.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 
 static int hipercam_init(void)
 {
diff --git a/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg b/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
index e53f1c107f..3a96910708 100644
--- a/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
+++ b/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6dl-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6dl-ddr-regs.h>
 
 wm 32 MX6_IOM_DRAM_SDQS0 0x00000030
 wm 32 MX6_IOM_DRAM_SDQS1 0x00000030
diff --git a/arch/arm/boards/eltec-hipercam/lowlevel.c b/arch/arm/boards/eltec-hipercam/lowlevel.c
index 7baed55706..8e1eb1c4d3 100644
--- a/arch/arm/boards/eltec-hipercam/lowlevel.c
+++ b/arch/arm/boards/eltec-hipercam/lowlevel.c
@@ -9,7 +9,7 @@
 #include <asm/mmu.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 
 static void setup_uart(void)
 {
diff --git a/arch/arm/boards/embedsky-e9/board.c b/arch/arm/boards/embedsky-e9/board.c
index bca714f977..f7a3f1bdb8 100644
--- a/arch/arm/boards/embedsky-e9/board.c
+++ b/arch/arm/boards/embedsky-e9/board.c
@@ -13,25 +13,25 @@
 #include <common.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx6-regs.h>
+#include <mach/imx/imx6-regs.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <linux/phy.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <linux/sizes.h>
 #include <net.h>
-#include <mach/imx6.h>
-#include <mach/devices-imx6.h>
-#include <mach/iomux-mx6.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/devices-imx6.h>
+#include <mach/imx/iomux-mx6.h>
 #include <spi/spi.h>
-#include <mach/spi.h>
-#include <mach/usb.h>
+#include <mach/imx/spi.h>
+#include <mach/imx/usb.h>
 #include <envfs.h>
 #include <bootsource.h>
 #include <bbu.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 
 #define PHY_ID_RTL8211E	0x001cc915
 #define PHY_ID_MASK	0xffffffff
diff --git a/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg b/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg
index 474ad3a159..19e0039980 100644
--- a/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg
+++ b/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg
@@ -4,8 +4,8 @@ loadaddr 0x27800000
 soc imx6
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 wm 32 MX6_IOM_GRP_DDR_TYPE 0x000c0000
 wm 32 MX6_IOM_GRP_DDRPKE 0x00000000
diff --git a/arch/arm/boards/embedsky-e9/lowlevel.c b/arch/arm/boards/embedsky-e9/lowlevel.c
index 1cda6e07e2..fddc88df52 100644
--- a/arch/arm/boards/embedsky-e9/lowlevel.c
+++ b/arch/arm/boards/embedsky-e9/lowlevel.c
@@ -2,7 +2,7 @@
 
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
diff --git a/arch/arm/boards/embest-marsboard/board.c b/arch/arm/boards/embest-marsboard/board.c
index 028e1d7bb1..7835a9265a 100644
--- a/arch/arm/boards/embest-marsboard/board.c
+++ b/arch/arm/boards/embest-marsboard/board.c
@@ -8,7 +8,7 @@
 #include <common.h>
 #include <init.h>
 #include <envfs.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 #include <linux/phy.h>
 #include <deep-probe.h>
 
diff --git a/arch/arm/boards/embest-marsboard/lowlevel.c b/arch/arm/boards/embest-marsboard/lowlevel.c
index 9e20a2ec06..d1af90ba44 100644
--- a/arch/arm/boards/embest-marsboard/lowlevel.c
+++ b/arch/arm/boards/embest-marsboard/lowlevel.c
@@ -6,9 +6,9 @@
 #include <common.h>
 #include <io.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx6.h>
-#include <mach/esdctl.h>
-#include <mach/iomux-mx6.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/iomux-mx6.h>
 #include <debug_ll.h>
 
 static inline void setup_uart(void)
diff --git a/arch/arm/boards/embest-riotboard/board.c b/arch/arm/boards/embest-riotboard/board.c
index cd912f79e5..ebaff48388 100644
--- a/arch/arm/boards/embest-riotboard/board.c
+++ b/arch/arm/boards/embest-riotboard/board.c
@@ -10,10 +10,10 @@
 #include <envfs.h>
 #include <gpio.h>
 #include <init.h>
-#include <mach/generic.h>
-#include <mach/imx6-regs.h>
-#include <mach/imx6.h>
-#include <mach/bbu.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/bbu.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
 #include <linux/sizes.h>
 #include <linux/phy.h>
diff --git a/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg b/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
index a005b500de..5464e2461d 100644
--- a/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
+++ b/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
@@ -4,8 +4,8 @@ loadaddr 0x20000000
 soc imx6
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6dl-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6dl-ddr-regs.h>
 
 wm 32 MX6_IOM_GRP_DDR_TYPE 0x000c0000
 wm 32 MX6_IOM_GRP_DDRPKE 0x00000000
diff --git a/arch/arm/boards/embest-riotboard/lowlevel.c b/arch/arm/boards/embest-riotboard/lowlevel.c
index 4093bf3bba..b8a7983aa8 100644
--- a/arch/arm/boards/embest-riotboard/lowlevel.c
+++ b/arch/arm/boards/embest-riotboard/lowlevel.c
@@ -9,7 +9,7 @@
 #include <asm/sections.h>
 #include <asm/cache.h>
 #include <asm/mmu.h>
-#include <mach/imx6.h>
+#include <mach/imx/imx6.h>
 
 extern char __dtb_imx6s_riotboard_start[];
 
diff --git a/arch/arm/boards/freescale-mx51-babbage/board.c b/arch/arm/boards/freescale-mx51-babbage/board.c
index c0c3e88039..be313c2b69 100644
--- a/arch/arm/boards/freescale-mx51-babbage/board.c
+++ b/arch/arm/boards/freescale-mx51-babbage/board.c
@@ -6,26 +6,26 @@
 #include <common.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx51-regs.h>
+#include <mach/imx/imx51-regs.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <fs.h>
 #include <of.h>
 #include <fcntl.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 #include <nand.h>
 #include <notifier.h>
 #include <spi/spi.h>
 #include <io.h>
 #include <asm/mmu.h>
-#include <mach/imx5.h>
-#include <mach/imx-nand.h>
-#include <mach/spi.h>
-#include <mach/generic.h>
-#include <mach/iomux-mx51.h>
-#include <mach/devices-imx51.h>
-#include <mach/revision.h>
+#include <mach/imx/imx5.h>
+#include <mach/imx/imx-nand.h>
+#include <mach/imx/spi.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/iomux-mx51.h>
+#include <mach/imx/devices-imx51.h>
+#include <mach/imx/revision.h>
 
 #define MX51_CCM_CACRR 0x10
 
diff --git a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
index e95324e645..5d41f34fd8 100644
--- a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
+++ b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
@@ -1,11 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <debug_ll.h>
-#include <mach/clock-imx51_53.h>
-#include <mach/iomux-mx51.h>
+#include <mach/imx/clock-imx51_53.h>
+#include <mach/imx/iomux-mx51.h>
 #include <common.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
diff --git a/arch/arm/boards/freescale-mx51-babbage/power.c b/arch/arm/boards/freescale-mx51-babbage/power.c
index ce44f3ae42..48dc74dd77 100644
--- a/arch/arm/boards/freescale-mx51-babbage/power.c
+++ b/arch/arm/boards/freescale-mx51-babbage/power.c
@@ -5,8 +5,8 @@
 #include <common.h>
 #include <init.h>
 #include <notifier.h>
-#include <mach/revision.h>
-#include <mach/imx5.h>
+#include <mach/imx/revision.h>
+#include <mach/imx/imx5.h>
 #include <mfd/mc13xxx.h>
 
 static void babbage_power_init(struct mc13xxx *mc13xxx)
diff --git a/arch/arm/boards/freescale-mx53-qsb/board.c b/arch/arm/boards/freescale-mx53-qsb/board.c
index ee2277cfc7..92dd164d3c 100644
--- a/arch/arm/boards/freescale-mx53-qsb/board.c
+++ b/arch/arm/boards/freescale-mx53-qsb/board.c
@@ -19,12 +19,12 @@
 
 #include <generated/mach-types.h>
 
-#include <mach/imx53-regs.h>
-#include <mach/revision.h>
-#include <mach/generic.h>
-#include <mach/imx5.h>
-#include <mach/bbu.h>
-#include <mach/iim.h>
+#include <mach/imx/imx53-regs.h>
+#include <mach/imx/revision.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx5.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/iim.h>
 
 /*
  * Revision to be passed to kernel. The kernel provided
diff --git a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
index e845fa4a3e..5870f266d2 100644
--- a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
@@ -1,9 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
-#include <mach/imx53-regs.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
+#include <mach/imx/imx53-regs.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <image-metadata.h>
diff --git a/arch/arm/boards/freescale-mx53-vmx53/board.c b/arch/arm/boards/freescale-mx53-vmx53/board.c
index aa93336ca2..785776b5cc 100644
--- a/arch/arm/boards/freescale-mx53-vmx53/board.c
+++ b/arch/arm/boards/freescale-mx53-vmx53/board.c
@@ -11,9 +11,9 @@
 #include <linux/sizes.h>
 
 #include <generated/mach-types.h>
-#include <mach/imx5.h>
+#include <mach/imx/imx5.h>
 #include <asm/armlinux.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 
 static int vmx53_late_init(void)
 {
diff --git a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
index 58eca49455..4543171ec2 100644
--- a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
@@ -1,8 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 8700c9faf4..1595bf1c86 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -8,9 +8,9 @@
 #include <common.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx6-regs.h>
+#include <mach/imx/imx6-regs.h>
 #include <gpio.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <of.h>
@@ -18,16 +18,16 @@
 #include <linux/phy.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <linux/sizes.h>
 #include <net.h>
 #include <linux/micrel_phy.h>
-#include <mach/imx6.h>
-#include <mach/devices-imx6.h>
-#include <mach/iomux-mx6.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/devices-imx6.h>
+#include <mach/imx/iomux-mx6.h>
 #include <spi/spi.h>
-#include <mach/spi.h>
-#include <mach/usb.h>
+#include <mach/imx/spi.h>
+#include <mach/imx/usb.h>
 
 static iomux_v3_cfg_t sabrelite_enet_gpio_pads[] = {
 	/* Ethernet */
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg b/arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
index af2807134e..7dcaefd697 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
+++ b/arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 wm 32 MX6_IOM_DRAM_SDQS0 0x00000030
 wm 32 MX6_IOM_DRAM_SDQS1 0x00000030
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
index 0d8c51242a..f1ed31ccad 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
@@ -2,13 +2,13 @@
 
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx6-regs.h>
+#include <mach/imx/imx6-regs.h>
 #include <io.h>
-#include <mach/debug_ll.h>
-#include <mach/esdctl.h>
+#include <mach/imx/debug_ll.h>
+#include <mach/imx/esdctl.h>
 #include <asm/cache.h>
 
 extern char __dtb_imx6q_sabrelite_start[];
diff --git a/arch/arm/boards/freescale-mx6-sabresd/board.c b/arch/arm/boards/freescale-mx6-sabresd/board.c
index 04df051882..97300ebbe0 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/board.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/board.c
@@ -10,21 +10,21 @@
 #include <common.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx6-regs.h>
+#include <mach/imx/imx6-regs.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <linux/phy.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <linux/sizes.h>
 #include <net.h>
-#include <mach/imx6.h>
-#include <mach/devices-imx6.h>
-#include <mach/iomux-mx6.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/devices-imx6.h>
+#include <mach/imx/iomux-mx6.h>
 #include <spi/spi.h>
-#include <mach/spi.h>
-#include <mach/usb.h>
+#include <mach/imx/spi.h>
+#include <mach/imx/usb.h>
 
 #define PHY_ID_AR8031	0x004dd074
 #define AR_PHY_ID_MASK	0xffffffff
diff --git a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
index d902dbeafb..a6e5e92896 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
@@ -3,8 +3,8 @@
 #include <debug_ll.h>
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
-#include <mach/iomux-mx6.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/iomux-mx6.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/board.c b/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
index 8718e5a752..9ae1ab6661 100644
--- a/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
@@ -15,12 +15,12 @@
 
 #include <asm/armlinux.h>
 
-#include <mach/devices-imx6.h>
-#include <mach/imx6-regs.h>
-#include <mach/iomux-mx6.h>
-#include <mach/generic.h>
-#include <mach/imx6.h>
-#include <mach/bbu.h>
+#include <mach/imx/devices-imx6.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/iomux-mx6.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/bbu.h>
 
 #define PFUZE100_DEVICEID	0x0
 #define PFUZE100_REVID		0x3
diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c b/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
index d3b58ac1be..3d4e6917af 100644
--- a/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
@@ -4,7 +4,7 @@
 #include <debug_ll.h>
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
diff --git a/arch/arm/boards/freescale-mx7-sabresd/board.c b/arch/arm/boards/freescale-mx7-sabresd/board.c
index e41d67017f..03658ddc7c 100644
--- a/arch/arm/boards/freescale-mx7-sabresd/board.c
+++ b/arch/arm/boards/freescale-mx7-sabresd/board.c
@@ -6,7 +6,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <mach/imx7-regs.h>
+#include <mach/imx/imx7-regs.h>
 #include <linux/phy.h>
 #include <mfd/imx7-iomuxc-gpr.h>
 
diff --git a/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg b/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
index 9194b19fe4..0b0780ed9b 100644
--- a/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
+++ b/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
@@ -4,4 +4,4 @@ soc imx7
 loadaddr 0x80000000
 ivtofs 0x400
 
-#include <mach/flash-header/imx7d-ddr-sabresd.imxcfg>
+#include <mach/imx/flash-header/imx7d-ddr-sabresd.imxcfg>
diff --git a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
index 6d393bf2b1..ebaea9daf3 100644
--- a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
@@ -4,14 +4,14 @@
 #include <io.h>
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx7-ccm-regs.h>
-#include <mach/iomux-mx7.h>
-#include <mach/debug_ll.h>
+#include <mach/imx/imx7-ccm-regs.h>
+#include <mach/imx/iomux-mx7.h>
+#include <mach/imx/debug_ll.h>
 #include <asm/cache.h>
-#include <mach/esdctl.h>
+#include <mach/imx/esdctl.h>
 
 extern char __dtb_imx7d_sdb_start[];
 
diff --git a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
index 06d5a40a69..bad742831a 100644
--- a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
+++ b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
@@ -4,13 +4,13 @@ soc vf610
 loadaddr 0x80000000
 ivtofs 0x400
 
-#include <mach/vf610-iomux-regs.h>
-#include <mach/vf610-ddrmc-regs.h>
+#include <mach/imx/vf610-iomux-regs.h>
+#include <mach/imx/vf610-ddrmc-regs.h>
 
-#include <mach/flash-header/vf610-ddr-pll2-400mhz.imxcfg>
-#include <mach/flash-header/vf610-iomux-ddr-default.imxcfg>
-#include <mach/flash-header/vf610-ddr-cr-default.imxcfg>
-#include <mach/flash-header/vf610-ddr-phy-default.imxcfg>
+#include <mach/imx/flash-header/vf610-ddr-pll2-400mhz.imxcfg>
+#include <mach/imx/flash-header/vf610-iomux-ddr-default.imxcfg>
+#include <mach/imx/flash-header/vf610-ddr-cr-default.imxcfg>
+#include <mach/imx/flash-header/vf610-ddr-phy-default.imxcfg>
 
 wm 32 DDRMC_CR00 DDRMC_CR00_DRAM_CLASS_DDR3_START
 
diff --git a/arch/arm/boards/freescale-vf610-twr/lowlevel.c b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
index 9c7fafe4d6..b2968b8d95 100644
--- a/arch/arm/boards/freescale-vf610-twr/lowlevel.c
+++ b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
@@ -2,13 +2,13 @@
 
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/esdctl.h>
-#include <mach/vf610-regs.h>
-#include <mach/clock-vf610.h>
-#include <mach/iomux-vf610.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/vf610-regs.h>
+#include <mach/imx/clock-vf610.h>
+#include <mach/imx/iomux-vf610.h>
 #include <debug_ll.h>
 
 static inline void setup_uart(void)
diff --git a/arch/arm/boards/gateworks-ventana/board.c b/arch/arm/boards/gateworks-ventana/board.c
index 07a21b6d60..aa2137a971 100644
--- a/arch/arm/boards/gateworks-ventana/board.c
+++ b/arch/arm/boards/gateworks-ventana/board.c
@@ -8,8 +8,8 @@
 #include <linux/marvell_phy.h>
 #include <linux/pci.h>
 #include <linux/phy.h>
-#include <mach/bbu.h>
-#include <mach/imx6.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/imx6.h>
 #include <net.h>
 
 #include "gsc.h"
diff --git a/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg b/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
index 8f155a88dd..cde49ef029 100644
--- a/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
+++ b/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 #include "ram-base.imxcfg"
 #include "quad_128x64.imxcfg"
diff --git a/arch/arm/boards/gateworks-ventana/lowlevel.c b/arch/arm/boards/gateworks-ventana/lowlevel.c
index 50386d8aed..db18b53139 100644
--- a/arch/arm/boards/gateworks-ventana/lowlevel.c
+++ b/arch/arm/boards/gateworks-ventana/lowlevel.c
@@ -2,7 +2,7 @@
 
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
diff --git a/arch/arm/boards/gk802/board.c b/arch/arm/boards/gk802/board.c
index 2713d6e756..c4a90306e8 100644
--- a/arch/arm/boards/gk802/board.c
+++ b/arch/arm/boards/gk802/board.c
@@ -9,9 +9,9 @@
 #include <envfs.h>
 #include <gpio.h>
 #include <init.h>
-#include <mach/generic.h>
-#include <mach/imx6-regs.h>
-#include <mach/imx6.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx6.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
 #include <linux/sizes.h>
 #include <of.h>
diff --git a/arch/arm/boards/gk802/flash-header.imxcfg b/arch/arm/boards/gk802/flash-header.imxcfg
index aa5aef554f..e77f4601cb 100644
--- a/arch/arm/boards/gk802/flash-header.imxcfg
+++ b/arch/arm/boards/gk802/flash-header.imxcfg
@@ -4,8 +4,8 @@ loadaddr 0x10000000
 soc imx6
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 wm 32 MX6_IOM_DRAM_SDQS0 0x00000030
 wm 32 MX6_IOM_DRAM_SDQS1 0x00000030
diff --git a/arch/arm/boards/gk802/lowlevel.c b/arch/arm/boards/gk802/lowlevel.c
index 385ec3e737..7c56a6a1a6 100644
--- a/arch/arm/boards/gk802/lowlevel.c
+++ b/arch/arm/boards/gk802/lowlevel.c
@@ -2,7 +2,7 @@
 
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
diff --git a/arch/arm/boards/grinn-liteboard/board.c b/arch/arm/boards/grinn-liteboard/board.c
index 5b52c8de18..6d390a5287 100644
--- a/arch/arm/boards/grinn-liteboard/board.c
+++ b/arch/arm/boards/grinn-liteboard/board.c
@@ -9,8 +9,8 @@
 #include <common.h>
 #include <envfs.h>
 #include <init.h>
-#include <mach/bbu.h>
-#include <mach/imx6.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/imx6.h>
 #include <malloc.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
 #include <of.h>
diff --git a/arch/arm/boards/grinn-liteboard/lowlevel.c b/arch/arm/boards/grinn-liteboard/lowlevel.c
index d3ee212ca9..0fa7ae93f8 100644
--- a/arch/arm/boards/grinn-liteboard/lowlevel.c
+++ b/arch/arm/boards/grinn-liteboard/lowlevel.c
@@ -13,8 +13,8 @@
 #include <asm/sections.h>
 #include <asm/cache.h>
 #include <asm/mmu.h>
-#include <mach/esdctl.h>
-#include <mach/imx6.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/imx6.h>
 
 static inline void setup_uart(void)
 {
diff --git a/arch/arm/boards/guf-santaro/board.c b/arch/arm/boards/guf-santaro/board.c
index cfc85af59e..acc3fc7f07 100644
--- a/arch/arm/boards/guf-santaro/board.c
+++ b/arch/arm/boards/guf-santaro/board.c
@@ -6,16 +6,16 @@
 #include <common.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx6-regs.h>
+#include <mach/imx/imx6-regs.h>
 #include <asm/armlinux.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <linux/sizes.h>
 #include <bootsource.h>
 #include <bbu.h>
-#include <mach/bbu.h>
-#include <mach/imx6.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/imx6.h>
 #include <i2c/i2c.h>
 #include <gpio.h>
 
diff --git a/arch/arm/boards/guf-santaro/flash-header.imxcfg b/arch/arm/boards/guf-santaro/flash-header.imxcfg
index eff9f66f94..6d5bbae5d8 100644
--- a/arch/arm/boards/guf-santaro/flash-header.imxcfg
+++ b/arch/arm/boards/guf-santaro/flash-header.imxcfg
@@ -4,8 +4,8 @@ loadaddr 0x10000000
 soc imx6
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 wm 32 MX6_IOM_GRP_DDR_TYPE 0x000c0000
 wm 32 MX6_IOM_GRP_DDRPKE 0x00000000
diff --git a/arch/arm/boards/guf-santaro/lowlevel.c b/arch/arm/boards/guf-santaro/lowlevel.c
index ee39903c80..8badce5da9 100644
--- a/arch/arm/boards/guf-santaro/lowlevel.c
+++ b/arch/arm/boards/guf-santaro/lowlevel.c
@@ -6,11 +6,11 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <asm/cache.h>
-#include <mach/generic.h>
-#include <mach/imx6-regs.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx6-regs.h>
 #include <debug_ll.h>
 #include <console.h>
-#include <mach/esdctl.h>
+#include <mach/imx/esdctl.h>
 
 static inline void setup_uart(void)
 {
diff --git a/arch/arm/boards/guf-vincell/board.c b/arch/arm/boards/guf-vincell/board.c
index c0bb9d9e74..00a343ef99 100644
--- a/arch/arm/boards/guf-vincell/board.c
+++ b/arch/arm/boards/guf-vincell/board.c
@@ -11,11 +11,11 @@
 #include <io.h>
 #include <linux/clk.h>
 
-#include <mach/devices-imx53.h>
-#include <mach/generic.h>
-#include <mach/iim.h>
-#include <mach/bbu.h>
-#include <mach/imx5.h>
+#include <mach/imx/devices-imx53.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/iim.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/imx5.h>
 
 static int vincell_devices_init(void)
 {
diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
index 97f1ffc3a9..2479d17799 100644
--- a/arch/arm/boards/guf-vincell/lowlevel.c
+++ b/arch/arm/boards/guf-vincell/lowlevel.c
@@ -4,13 +4,13 @@
 #include <debug_ll.h>
 #include <io.h>
 #include <init.h>
-#include <mach/imx53-regs.h>
-#include <mach/clock-imx51_53.h>
-#include <mach/imx5.h>
-#include <mach/iomux-v3.h>
-#include <mach/esdctl-v4.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
+#include <mach/imx/imx53-regs.h>
+#include <mach/imx/clock-imx51_53.h>
+#include <mach/imx/imx5.h>
+#include <mach/imx/iomux-v3.h>
+#include <mach/imx/esdctl-v4.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/cache.h>
diff --git a/arch/arm/boards/innocomm-imx8mm-wb15/board.c b/arch/arm/boards/innocomm-imx8mm-wb15/board.c
index e647200b83..5bb285b189 100644
--- a/arch/arm/boards/innocomm-imx8mm-wb15/board.c
+++ b/arch/arm/boards/innocomm-imx8mm-wb15/board.c
@@ -5,7 +5,7 @@
 #include <common.h>
 #include <deep-probe.h>
 #include <init.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 
 static int innocomm_wb15_evk_probe(struct device *dev)
 {
diff --git a/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c b/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
index f7753bd326..b180de5715 100644
--- a/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
+++ b/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
@@ -5,13 +5,13 @@
 #include <asm/barebox-arm.h>
 #include <pbl/i2c.h>
 #include <pbl/pmic.h>
-#include <mach/esdctl.h>
-#include <mach/atf.h>
-#include <mach/generic.h>
-#include <mach/iomux-mx8mm.h>
-#include <mach/imx8m-ccm-regs.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/atf.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/iomux-mx8mm.h>
+#include <mach/imx/imx8m-ccm-regs.h>
 #include <mfd/bd71837.h>
-#include <mach/xload.h>
+#include <mach/imx/xload.h>
 #include <soc/imx8m/ddr.h>
 #include <image-metadata.h>
 
diff --git a/arch/arm/boards/kamstrup-mx7-concentrator/flash-header-tqma7d.imxcfg b/arch/arm/boards/kamstrup-mx7-concentrator/flash-header-tqma7d.imxcfg
index 564fa62b91..12e0754912 100644
--- a/arch/arm/boards/kamstrup-mx7-concentrator/flash-header-tqma7d.imxcfg
+++ b/arch/arm/boards/kamstrup-mx7-concentrator/flash-header-tqma7d.imxcfg
@@ -4,7 +4,7 @@ soc imx7
 loadaddr 0xbfbff000
 ivtofs 0x400
 
-#include <mach/imx7-ddr-regs.h>
+#include <mach/imx/imx7-ddr-regs.h>
 
 wm 32 0x30340004 0x4F400005 /* IOMUXC_GPR_GPR1 */
 /* Clear then set bit30 to ensure exit from DDR retention */
diff --git a/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c b/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
index 58240d22f7..89b8c89864 100644
--- a/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
+++ b/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
@@ -4,14 +4,14 @@
 #include <io.h>
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx7-ccm-regs.h>
-#include <mach/iomux-mx7.h>
-#include <mach/debug_ll.h>
+#include <mach/imx/imx7-ccm-regs.h>
+#include <mach/imx/iomux-mx7.h>
+#include <mach/imx/debug_ll.h>
 #include <asm/cache.h>
-#include <mach/esdctl.h>
+#include <mach/imx/esdctl.h>
 
 extern char __dtb_z_imx7d_flex_concentrator_mfg_start[];
 
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index bbcc32227c..0ed2a6868f 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -9,19 +9,19 @@
 #include <linux/sizes.h>
 #include <gpio.h>
 #include <environment.h>
-#include <mach/imx25-regs.h>
+#include <mach/imx/imx25-regs.h>
 #include <asm/armlinux.h>
 #include <asm/sections.h>
 #include <asm/barebox-arm.h>
 #include <io.h>
 #include <generated/mach-types.h>
-#include <mach/imx-nand.h>
-#include <mach/iomux-mx25.h>
-#include <mach/generic.h>
-#include <mach/iim.h>
+#include <mach/imx/imx-nand.h>
+#include <mach/imx/iomux-mx25.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/iim.h>
 #include <linux/err.h>
-#include <mach/devices-imx25.h>
-#include <mach/bbu.h>
+#include <mach/imx/devices-imx25.h>
+#include <mach/imx/bbu.h>
 #include <asm/mmu.h>
 
 #define TX25_FEC_PWR_GPIO	IMX_GPIO_NR(4, 9)
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index f20c659d5d..d6658b535f 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -3,11 +3,11 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/imx25-regs.h>
-#include <mach/esdctl.h>
+#include <mach/imx/imx25-regs.h>
+#include <mach/imx/esdctl.h>
 #include <io.h>
 #include <linux/sizes.h>
-#include <mach/imx-nand.h>
+#include <mach/imx/imx-nand.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/system.h>
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index 92a44a893d..57e891acd3 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -16,14 +16,14 @@
 
 #include <generated/mach-types.h>
 
-#include <mach/imx53-regs.h>
-#include <mach/iomux-mx53.h>
-#include <mach/devices-imx53.h>
-#include <mach/generic.h>
-#include <mach/imx-nand.h>
-#include <mach/iim.h>
-#include <mach/imx5.h>
-#include <mach/bbu.h>
+#include <mach/imx/imx53-regs.h>
+#include <mach/imx/iomux-mx53.h>
+#include <mach/imx/devices-imx53.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx-nand.h>
+#include <mach/imx/iim.h>
+#include <mach/imx/imx5.h>
+#include <mach/imx/bbu.h>
 
 #include <asm/armlinux.h>
 #include <io.h>
diff --git a/arch/arm/boards/karo-tx53/lowlevel.c b/arch/arm/boards/karo-tx53/lowlevel.c
index e1bce4d329..b51846b543 100644
--- a/arch/arm/boards/karo-tx53/lowlevel.c
+++ b/arch/arm/boards/karo-tx53/lowlevel.c
@@ -4,10 +4,10 @@
 #include <debug_ll.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx5.h>
-#include <mach/imx53-regs.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
+#include <mach/imx/imx5.h>
+#include <mach/imx/imx53-regs.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
 #include <asm/cache.h>
 
 extern char __dtb_imx53_tx53_xx30_start[];
diff --git a/arch/arm/boards/karo-tx6x/board.c b/arch/arm/boards/karo-tx6x/board.c
index ec66749558..f964ddefd1 100644
--- a/arch/arm/boards/karo-tx6x/board.c
+++ b/arch/arm/boards/karo-tx6x/board.c
@@ -16,8 +16,8 @@
 #include <linux/clk.h>
 #include <linux/kernel.h>
 #include <environment.h>
-#include <mach/bbu.h>
-#include <mach/imx6.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/imx6.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
 #include "pmic.h"
 
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg
index d860a5e2af..3d15238c20 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6dl-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6dl-ddr-regs.h>
 
 #include "ram-base.imxcfg"
 #include "1600mhz_4x128mx16.imxcfg"
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg
index 51f600d490..bfc9a80a3e 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6dl-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6dl-ddr-regs.h>
 
 wm 32 0x020e0158 0x00000016
 wm 32 0x020e0174 0x00000011
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
index 697ce45480..b05c4a186b 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 wm 32 0x020e00a4 0x00000016
 wm 32 0x020e00c4 0x00000011
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg
index 8756e8dfb5..bbb9e01022 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 wm 32 0x020e00a4 0x00000016
 wm 32 0x020e00c4 0x00000011
diff --git a/arch/arm/boards/karo-tx6x/lowlevel.c b/arch/arm/boards/karo-tx6x/lowlevel.c
index a80862025a..84ba40b86b 100644
--- a/arch/arm/boards/karo-tx6x/lowlevel.c
+++ b/arch/arm/boards/karo-tx6x/lowlevel.c
@@ -6,8 +6,8 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <image-metadata.h>
-#include <mach/generic.h>
-#include <mach/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/esdctl.h>
 #include <linux/sizes.h>
 
 static inline void setup_uart(void)
diff --git a/arch/arm/boards/kindle-mx50/board.c b/arch/arm/boards/kindle-mx50/board.c
index 7366047582..b7b51d6209 100644
--- a/arch/arm/boards/kindle-mx50/board.c
+++ b/arch/arm/boards/kindle-mx50/board.c
@@ -16,10 +16,10 @@
 #include <generated/mach-types.h>
 #include <linux/sizes.h>
 #include <usb/fsl_usb2.h>
-#include <mach/generic.h>
-#include <mach/imx50-regs.h>
-#include <mach/imx5.h>
-#include <mach/revision.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx50-regs.h>
+#include <mach/imx/imx5.h>
+#include <mach/imx/revision.h>
 
 /* 16 byte id for serial number */
 #define ATAG_SERIAL16   0x5441000a
diff --git a/arch/arm/boards/kindle-mx50/lowlevel.c b/arch/arm/boards/kindle-mx50/lowlevel.c
index fce23ec6e0..61d2b037fe 100644
--- a/arch/arm/boards/kindle-mx50/lowlevel.c
+++ b/arch/arm/boards/kindle-mx50/lowlevel.c
@@ -8,8 +8,8 @@
 #include <asm/sections.h>
 #include <asm/cache.h>
 #include <asm/mmu.h>
-#include <mach/imx50-regs.h>
-#include <mach/generic.h>
+#include <mach/imx/imx50-regs.h>
+#include <mach/imx/generic.h>
 
 extern char __dtb_imx50_kindle_d01100_start[];
 extern char __dtb_imx50_kindle_d01200_start[];
diff --git a/arch/arm/boards/kontron-samx6i/board.c b/arch/arm/boards/kontron-samx6i/board.c
index b4b0eac824..376548f549 100644
--- a/arch/arm/boards/kontron-samx6i/board.c
+++ b/arch/arm/boards/kontron-samx6i/board.c
@@ -18,8 +18,8 @@
 #include <common.h>
 #include <init.h>
 #include <of.h>
-#include <mach/bbu.h>
-#include <mach/esdctl.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/esdctl.h>
 
 #include <asm/armlinux.h>
 
diff --git a/arch/arm/boards/kontron-samx6i/lowlevel.c b/arch/arm/boards/kontron-samx6i/lowlevel.c
index afb7372323..beab190334 100644
--- a/arch/arm/boards/kontron-samx6i/lowlevel.c
+++ b/arch/arm/boards/kontron-samx6i/lowlevel.c
@@ -17,8 +17,8 @@
 #include <asm/sections.h>
 #include <asm/cache.h>
 #include <asm/mmu.h>
-#include <mach/imx6.h>
-#include <mach/esdctl.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/esdctl.h>
 
 #include "mem.h"
 
diff --git a/arch/arm/boards/kontron-samx6i/mem.c b/arch/arm/boards/kontron-samx6i/mem.c
index 08dceb55c0..19e2ac2dd8 100644
--- a/arch/arm/boards/kontron-samx6i/mem.c
+++ b/arch/arm/boards/kontron-samx6i/mem.c
@@ -11,9 +11,9 @@
 
 #include <linux/sizes.h>
 #include <common.h>
-#include <mach/iomux-mx6.h>
-#include <mach/imx-gpio.h>
-#include <mach/imx6.h>
+#include <mach/imx/iomux-mx6.h>
+#include <mach/imx/imx-gpio.h>
+#include <mach/imx/imx6.h>
 
 #include "mem.h"
 
diff --git a/arch/arm/boards/meerkat96/lowlevel.c b/arch/arm/boards/meerkat96/lowlevel.c
index e65726ef1c..03a1a11466 100644
--- a/arch/arm/boards/meerkat96/lowlevel.c
+++ b/arch/arm/boards/meerkat96/lowlevel.c
@@ -3,10 +3,10 @@
 #include <debug_ll.h>
 #include <io.h>
 #include <linux/sizes.h>
-#include <mach/debug_ll.h>
-#include <mach/iomux-mx7.h>
-#include <mach/imx7-ccm-regs.h>
-#include <mach/generic.h>
+#include <mach/imx/debug_ll.h>
+#include <mach/imx/iomux-mx7.h>
+#include <mach/imx/imx7-ccm-regs.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <asm/cache.h>
diff --git a/arch/arm/boards/mnt-reform/board.c b/arch/arm/boards/mnt-reform/board.c
index e8a406f777..8b56d108e6 100644
--- a/arch/arm/boards/mnt-reform/board.c
+++ b/arch/arm/boards/mnt-reform/board.c
@@ -7,7 +7,7 @@
 #include <common.h>
 #include <deep-probe.h>
 #include <init.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 
 static int mnt_reform_probe(struct device *dev)
 {
diff --git a/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg b/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg
index 180a44fda3..0f68c25b91 100644
--- a/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg
+++ b/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg
@@ -5,4 +5,4 @@ soc imx8mq
 loadaddr 0x007E1000
 max_load_size 0x3F000
 ivtofs 0x400
-#include <mach/habv4-imx8-gencsf.h>
+#include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/mnt-reform/lowlevel.c b/arch/arm/boards/mnt-reform/lowlevel.c
index d22c8b8a74..c76037c36d 100644
--- a/arch/arm/boards/mnt-reform/lowlevel.c
+++ b/arch/arm/boards/mnt-reform/lowlevel.c
@@ -9,14 +9,14 @@
 #include <firmware.h>
 #include <pbl/i2c.h>
 #include <pbl/pmic.h>
-#include <mach/atf.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
-#include <mach/imx-gpio.h>
-#include <mach/imx8m-ccm-regs.h>
-#include <mach/imx8mq-regs.h>
-#include <mach/iomux-mx8mq.h>
-#include <mach/xload.h>
+#include <mach/imx/atf.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx-gpio.h>
+#include <mach/imx/imx8m-ccm-regs.h>
+#include <mach/imx/imx8mq-regs.h>
+#include <mach/imx/iomux-mx8mq.h>
+#include <mach/imx/xload.h>
 #include <soc/imx8m/ddr.h>
 
 extern char __dtb_z_imx8mq_mnt_reform2_start[];
diff --git a/arch/arm/boards/novena/lowlevel.c b/arch/arm/boards/novena/lowlevel.c
index 178c874892..5b358ef0a3 100644
--- a/arch/arm/boards/novena/lowlevel.c
+++ b/arch/arm/boards/novena/lowlevel.c
@@ -6,12 +6,12 @@
 #include <ddr_dimms.h>
 #include <ddr_spd.h>
 #include <debug_ll.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
-#include <mach/imx6.h>
-#include <mach/imx6-mmdc.h>
-#include <mach/iomux-mx6.h>
-#include <mach/xload.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/imx6-mmdc.h>
+#include <mach/imx/iomux-mx6.h>
+#include <mach/imx/xload.h>
 #include <pbl/i2c.h>
 #include <soc/fsl/fsl_udc.h>
 #include "ddr_regs.h"
diff --git a/arch/arm/boards/nxp-imx6ull-evk/board.c b/arch/arm/boards/nxp-imx6ull-evk/board.c
index 5959501a26..fb168662b9 100644
--- a/arch/arm/boards/nxp-imx6ull-evk/board.c
+++ b/arch/arm/boards/nxp-imx6ull-evk/board.c
@@ -3,7 +3,7 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 #include <linux/phy.h>
 
 #include <linux/micrel_phy.h>
diff --git a/arch/arm/boards/nxp-imx6ull-evk/lowlevel.c b/arch/arm/boards/nxp-imx6ull-evk/lowlevel.c
index afef4c4498..ff72763f54 100644
--- a/arch/arm/boards/nxp-imx6ull-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx6ull-evk/lowlevel.c
@@ -2,13 +2,13 @@
 
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx6-regs.h>
+#include <mach/imx/imx6-regs.h>
 #include <io.h>
 #include <debug_ll.h>
-#include <mach/esdctl.h>
+#include <mach/imx/esdctl.h>
 #include <asm/cache.h>
 #include <asm/sections.h>
 #include <image-metadata.h>
diff --git a/arch/arm/boards/nxp-imx8mm-evk/board.c b/arch/arm/boards/nxp-imx8mm-evk/board.c
index d726160e1d..fd748262f7 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/board.c
@@ -7,7 +7,7 @@
 #include <init.h>
 #include <linux/phy.h>
 #include <linux/sizes.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 #include <deep-probe.h>
 
 #include <envfs.h>
diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index 5861d8d8be..038dd9d659 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -10,14 +10,14 @@
 #include <pbl/i2c.h>
 #include <pbl/pmic.h>
 #include <linux/sizes.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
-#include <mach/imx8mm-regs.h>
-#include <mach/iomux-mx8mm.h>
-#include <mach/imx8m-ccm-regs.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx8mm-regs.h>
+#include <mach/imx/iomux-mx8mm.h>
+#include <mach/imx/imx8m-ccm-regs.h>
 #include <mfd/bd71837.h>
 #include <mfd/pca9450.h>
-#include <mach/xload.h>
+#include <mach/imx/xload.h>
 #include <soc/imx8m/ddr.h>
 #include <image-metadata.h>
 
diff --git a/arch/arm/boards/nxp-imx8mn-evk/board.c b/arch/arm/boards/nxp-imx8mn-evk/board.c
index 7d928f0b30..13efc62a58 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/board.c
@@ -9,7 +9,7 @@
 #include <init.h>
 #include <linux/phy.h>
 #include <linux/sizes.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 #include <envfs.h>
 
 #define PHY_ID_AR8031	0x004dd074
diff --git a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
index 7da9c33565..a1fb577224 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
@@ -12,13 +12,13 @@
 #include <pbl/i2c.h>
 #include <pbl/pmic.h>
 #include <linux/sizes.h>
-#include <mach/atf.h>
-#include <mach/xload.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
-#include <mach/imx8mn-regs.h>
-#include <mach/iomux-mx8mn.h>
-#include <mach/imx8m-ccm-regs.h>
+#include <mach/imx/atf.h>
+#include <mach/imx/xload.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx8mn-regs.h>
+#include <mach/imx/iomux-mx8mn.h>
+#include <mach/imx/imx8m-ccm-regs.h>
 #include <mfd/pca9450.h>
 #include <mfd/bd71837.h>
 #include <soc/imx8m/ddr.h>
diff --git a/arch/arm/boards/nxp-imx8mp-evk/board.c b/arch/arm/boards/nxp-imx8mp-evk/board.c
index d557d17004..0c9fe7835b 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/board.c
@@ -10,8 +10,8 @@
 #include <init.h>
 #include <linux/phy.h>
 #include <linux/sizes.h>
-#include <mach/bbu.h>
-#include <mach/iomux-mx8mp.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/iomux-mx8mp.h>
 #include <gpio.h>
 #include <envfs.h>
 
diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index d6fc32e65b..9d17e6d1ab 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -13,13 +13,13 @@
 #include <pbl/i2c.h>
 #include <pbl/pmic.h>
 #include <linux/sizes.h>
-#include <mach/atf.h>
-#include <mach/xload.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
-#include <mach/imx8mp-regs.h>
-#include <mach/iomux-mx8mp.h>
-#include <mach/imx8m-ccm-regs.h>
+#include <mach/imx/atf.h>
+#include <mach/imx/xload.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx8mp-regs.h>
+#include <mach/imx/iomux-mx8mp.h>
+#include <mach/imx/imx8m-ccm-regs.h>
 #include <mfd/pca9450.h>
 #include <soc/imx8m/ddr.h>
 #include <soc/fsl/fsl_udc.h>
diff --git a/arch/arm/boards/nxp-imx8mq-evk/board.c b/arch/arm/boards/nxp-imx8mq-evk/board.c
index 8d88bfe8c2..d86666958a 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/board.c
@@ -7,7 +7,7 @@
 #include <init.h>
 #include <linux/phy.h>
 #include <linux/sizes.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 
 #include <envfs.h>
 
diff --git a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
index 180a44fda3..0f68c25b91 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
@@ -5,4 +5,4 @@ soc imx8mq
 loadaddr 0x007E1000
 max_load_size 0x3F000
 ivtofs 0x400
-#include <mach/habv4-imx8-gencsf.h>
+#include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 0c9f6345ff..61aaab0287 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -4,20 +4,20 @@
 #include <firmware.h>
 #include <image-metadata.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx8m-ccm-regs.h>
-#include <mach/iomux-mx8mq.h>
+#include <mach/imx/imx8m-ccm-regs.h>
+#include <mach/imx/iomux-mx8mq.h>
 #include <soc/imx8m/ddr.h>
-#include <mach/xload.h>
+#include <mach/imx/xload.h>
 #include <io.h>
 #include <debug_ll.h>
 #include <asm/cache.h>
 #include <asm/sections.h>
 #include <asm/mmu.h>
-#include <mach/atf.h>
-#include <mach/esdctl.h>
+#include <mach/imx/atf.h>
+#include <mach/imx/esdctl.h>
 
 #include "ddr.h"
 
diff --git a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
index 8ab682b9db..a43406e1a2 100644
--- a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
@@ -12,10 +12,10 @@
 #include <config.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
-#include <mach/imx27-regs.h>
-#include <mach/imx-pll.h>
-#include <mach/esdctl.h>
-#include <mach/imx-nand.h>
+#include <mach/imx/imx27-regs.h>
+#include <mach/imx/imx-pll.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/imx-nand.h>
 
 enum {
 	PHYCARD_MICRON_64MB,
diff --git a/arch/arm/boards/phytec-phycard-imx27/pca100.c b/arch/arm/boards/phytec-phycard-imx27/pca100.c
index fa285f3d16..e64ef72026 100644
--- a/arch/arm/boards/phytec-phycard-imx27/pca100.c
+++ b/arch/arm/boards/phytec-phycard-imx27/pca100.c
@@ -5,7 +5,7 @@
 #include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx27-regs.h>
+#include <mach/imx/imx27-regs.h>
 #include <gpio.h>
 #include <linux/sizes.h>
 #include <asm/armlinux.h>
@@ -16,14 +16,14 @@
 #include <nand.h>
 #include <spi/spi.h>
 #include <io.h>
-#include <mach/imx-nand.h>
-#include <mach/imx-pll.h>
+#include <mach/imx/imx-nand.h>
+#include <mach/imx/imx-pll.h>
 #include <platform_data/imxfb.h>
 #include <asm/mmu.h>
 #include <usb/ulpi.h>
-#include <mach/bbu.h>
-#include <mach/iomux-mx27.h>
-#include <mach/devices-imx27.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/iomux-mx27.h>
+#include <mach/imx/devices-imx27.h>
 
 #if defined(CONFIG_USB) && defined(CONFIG_USB_ULPI)
 static void pca100_usb_register(void)
diff --git a/arch/arm/boards/phytec-phycore-imx27/lowlevel.c b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
index 4e2f44d216..a42b30a7bb 100644
--- a/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
@@ -3,11 +3,11 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/imx27-regs.h>
-#include <mach/imx-pll.h>
-#include <mach/esdctl.h>
+#include <mach/imx/imx27-regs.h>
+#include <mach/imx/imx-pll.h>
+#include <mach/imx/esdctl.h>
 #include <io.h>
-#include <mach/imx-nand.h>
+#include <mach/imx/imx-nand.h>
 #include <asm/barebox-arm.h>
 #include <asm/system.h>
 #include <asm-generic/memory_layout.h>
diff --git a/arch/arm/boards/phytec-phycore-imx27/pcm038.c b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
index 183b64094b..69a0458f05 100644
--- a/arch/arm/boards/phytec-phycore-imx27/pcm038.c
+++ b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
@@ -11,13 +11,13 @@
 #include <notifier.h>
 #include <linux/sizes.h>
 #include <envfs.h>
-#include <mach/devices-imx27.h>
-#include <mach/imx-pll.h>
-#include <mach/imx27-regs.h>
+#include <mach/imx/devices-imx27.h>
+#include <mach/imx/imx-pll.h>
+#include <mach/imx/imx27-regs.h>
 #include <platform_data/imxfb.h>
-#include <mach/iomux-mx27.h>
+#include <mach/imx/iomux-mx27.h>
 #include <mfd/mc13xxx.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 
 #include "pll.h"
 
diff --git a/arch/arm/boards/phytec-phycore-imx27/pcm970.c b/arch/arm/boards/phytec-phycore-imx27/pcm970.c
index 479e5566a0..1e466e0ec8 100644
--- a/arch/arm/boards/phytec-phycore-imx27/pcm970.c
+++ b/arch/arm/boards/phytec-phycore-imx27/pcm970.c
@@ -6,8 +6,8 @@
 #include <io.h>
 #include <platform_data/ide.h>
 #include <linux/sizes.h>
-#include <mach/imx27-regs.h>
-#include <mach/iomux-mx27.h>
+#include <mach/imx/imx27-regs.h>
+#include <mach/imx/iomux-mx27.h>
 
 #define GPIO_IDE_POWER	(GPIO_PORTE + 18)
 #define GPIO_IDE_PCOE	(GPIO_PORTF + 7)
diff --git a/arch/arm/boards/phytec-phycore-imx7/board.c b/arch/arm/boards/phytec-phycore-imx7/board.c
index f603ef3c2e..f400e07e86 100644
--- a/arch/arm/boards/phytec-phycore-imx7/board.c
+++ b/arch/arm/boards/phytec-phycore-imx7/board.c
@@ -4,14 +4,14 @@
 #include <common.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <linux/sizes.h>
 #include <asm/psci.h>
 #include <io.h>
-#include <mach/imx7-regs.h>
+#include <mach/imx/imx7-regs.h>
 #include <serial/imx-uart.h>
 #include <asm/secure.h>
 
diff --git a/arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg b/arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
index a18f3dbed1..03cdbe8bc8 100644
--- a/arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
+++ b/arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
@@ -13,7 +13,7 @@ soc imx7
 loadaddr 0x80000000
 ivtofs 0x400
 
-#include <mach/imx7-ddr-regs.h>
+#include <mach/imx/imx7-ddr-regs.h>
 
 wm 32 0x30340004 0x4F400005
 /* Clear then set bit30 to ensure exit from DDR retention */
diff --git a/arch/arm/boards/phytec-phycore-imx7/lowlevel.c b/arch/arm/boards/phytec-phycore-imx7/lowlevel.c
index f8dcb3ce54..1f3c08ac62 100644
--- a/arch/arm/boards/phytec-phycore-imx7/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx7/lowlevel.c
@@ -4,10 +4,10 @@
 #include <io.h>
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/debug_ll.h>
+#include <mach/imx/debug_ll.h>
 #include <asm/cache.h>
 
 extern char __dtb_imx7d_phyboard_zeta_start[];
diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index b3a74c7dee..bff95221ab 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -16,15 +16,15 @@
 #include <of.h>
 #include <deep-probe.h>
 #include <i2c/i2c.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 #include <platform_data/eth-fec.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
 #include <linux/micrel_phy.h>
 
 #include <globalvar.h>
 
-#include <mach/iomux-mx6.h>
-#include <mach/imx6.h>
+#include <mach/imx/iomux-mx6.h>
+#include <mach/imx/imx6.h>
 
 #define PHYFLEX_MODULE_REV_1	0x1
 #define PHYFLEX_MODULE_REV_2	0x2
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
index d124518930..3b3e290fbe 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
@@ -9,4 +9,4 @@
 	wm 32 0x021b0000 0x831a0000
 
 #include "flash-header-phytec-pcaaxl3.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
index 4c3e5b06c9..4c8c527043 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
@@ -9,4 +9,4 @@
 	wm 32 0x021b0000 0xc21a0000
 
 #include "flash-header-phytec-pcaaxl3.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
index bb858e874d..a2f932e12a 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
@@ -9,4 +9,4 @@
 	wm 32 0x021b0000 0xc31a0000
 
 #include "flash-header-phytec-pcaaxl3.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h
index 3d1952fb99..c6cd180176 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 wm 32 MX6_IOM_DRAM_SDQS0 0x00000028
 wm 32 MX6_IOM_DRAM_SDQS1 0x00000028
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ul-512mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ul-512mb.imxcfg
index 225f8a32aa..1a987c2c1f 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ul-512mb.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ul-512mb.imxcfg
@@ -1,4 +1,4 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
 #include "flash-header-phytec-pcl063-512mb.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-256mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-256mb.imxcfg
index 44f1036032..f519abf1a0 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-256mb.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-256mb.imxcfg
@@ -8,4 +8,4 @@
 	wm 32 0x021B0000 0x83180000
 
 #include "flash-header-phytec-pcl063.h"
-#include <mach/habv4-imx6ull-gencsf.h>
+#include <mach/imx/habv4-imx6ull-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg
index e976979118..6935bd2ef3 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg
@@ -1,4 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 #include "flash-header-phytec-pcl063-512mb.h"
-#include <mach/habv4-imx6ull-gencsf.h>
+#include <mach/imx/habv4-imx6ull-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
index b2ea8ee0e8..131e08cf4b 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
@@ -8,4 +8,4 @@
 	wm 32 0x021b0000 0x831A0000
 
 #include "flash-header-phytec-pcm058.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg
index f6895a0587..be638ab1c1 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg
@@ -8,4 +8,4 @@
 	wm 32 0x021b0000 0x841A0000
 
 #include "flash-header-phytec-pcm058.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058.h
index d213403467..eaa2a3da6e 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058.h
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 wm 32 MX6_IOM_GRP_DDR_TYPE 0x000C0000
 wm 32 MX6_IOM_GRP_DDRPKE 0x00000000
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg
index ec5beb937c..83f8480bfe 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg
@@ -8,4 +8,4 @@
 	wm 32 0x021b0000 0x84190000
 
 #include "flash-header-phytec-pcm058dl.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
index a5b3cdc633..708e5bb21d 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
@@ -8,4 +8,4 @@
 	wm 32 0x021b0000 0x831A0000
 
 #include "flash-header-phytec-pcm058dl.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
index 26755f946a..be3cd5a20d 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
@@ -8,5 +8,5 @@
 	wm 32 0x021b0000 0x82190000
 
 #include "flash-header-phytec-pcm058dl.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
 
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-512mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-512mb.imxcfg
index cd1d2d185e..4fcf36990d 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-512mb.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-512mb.imxcfg
@@ -8,4 +8,4 @@
 	wm 32 0x021b0000 0x83190000
 
 #include "flash-header-phytec-pcm058dl.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h
index 94ca4bcc0e..2d90faad4c 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl.h
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6dl-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6dl-ddr-regs.h>
 
 wm 32 MX6_IOM_GRP_DDR_TYPE 0x000C0000
 wm 32 MX6_IOM_GRP_DDRPKE 0x00000000
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
index 0d2d245fc2..e15d220428 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
@@ -8,4 +8,4 @@
 	wm 32 0x021b0000 0x831A0000
 
 #include "flash-header-phytec-pcm058qp.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
index 77ef6358ec..48b1321b51 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
@@ -8,4 +8,4 @@
 	wm 32 0x021b0000 0x831a0000
 
 #include "flash-header-phytec-pfla02.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
index dd222ed7a1..8bd6a83786 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
@@ -8,4 +8,4 @@
 	wm 32 0x021b0000 0xc21a0000
 
 #include "flash-header-phytec-pfla02.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg
index de5aab6242..fe2fa2c637 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg
@@ -8,4 +8,4 @@
 	wm 32 0x021b0000 0xC31A0000
 
 #include "flash-header-phytec-pfla02.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg
index c3819e958f..6f8645c4e6 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg
@@ -8,4 +8,4 @@
 	wm 32 0x021b0000 0xC41A0000
 
 #include "flash-header-phytec-pfla02.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg
index 08d579241e..edafe2d47c 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg
@@ -8,4 +8,4 @@
 	wm 32 0x021b0000 0x821a0000
 
 #include "flash-header-phytec-pfla02.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h
index 9984117844..26a9341dda 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 wm 32 MX6_IOM_GRP_DDR_TYPE 0x000C0000
 wm 32 MX6_IOM_GRP_DDRPKE 0x00000000
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg
index c851cc2844..553ba8d40a 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg
@@ -8,4 +8,4 @@
 	wm 32 0x021b0000 0x831a0000
 
 #include "flash-header-phytec-pfla02dl.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
index 7276adad60..5c37061853 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
@@ -8,4 +8,4 @@
 	wm 32 0x021b0000 0xc21a0000
 
 #include "flash-header-phytec-pfla02dl.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h
index 48d2001fb2..537a93eda9 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x10000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6dl-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6dl-ddr-regs.h>
 
 wm 32 MX6_IOM_GRP_DDR_TYPE 0x000C0000
 wm 32 MX6_IOM_GRP_DDRPKE 0x00000000
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
index d450ec1efd..331692af49 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
@@ -8,4 +8,4 @@
         wm 32 0x021b0000 0x82180000
 
 #include "flash-header-phytec-pfla02dl.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
index 7f1535d0e0..bd830865ec 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
@@ -8,4 +8,4 @@
         wm 32 0x021b0000 0x82190000
 
 #include "flash-header-phytec-pfla02dl.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
index b6fd2db254..7e57e7cd9e 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
@@ -8,4 +8,4 @@
 	wm 32 0x021b0000 0x83190000
 
 #include "flash-header-phytec-pfla02dl.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 62a1c8de73..a783bcb477 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -15,7 +15,7 @@
 #include <asm/sections.h>
 #include <asm/cache.h>
 #include <asm/mmu.h>
-#include <mach/imx6.h>
+#include <mach/imx/imx6.h>
 
 static inline void setup_uart(void)
 {
diff --git a/arch/arm/boards/phytec-som-imx8mq/board.c b/arch/arm/boards/phytec-som-imx8mq/board.c
index 6d331281e6..5dbfaf13db 100644
--- a/arch/arm/boards/phytec-som-imx8mq/board.c
+++ b/arch/arm/boards/phytec-som-imx8mq/board.c
@@ -9,7 +9,7 @@
 #include <common.h>
 #include <init.h>
 #include <linux/sizes.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 #include <mfd/pfuze.h>
 
 #include <envfs.h>
diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
index d35f9b0d39..559afa4e15 100644
--- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
@@ -6,20 +6,20 @@
 #include <common.h>
 #include <firmware.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx8m-ccm-regs.h>
-#include <mach/iomux-mx8mq.h>
+#include <mach/imx/imx8m-ccm-regs.h>
+#include <mach/imx/iomux-mx8mq.h>
 #include <soc/imx8m/ddr.h>
-#include <mach/xload.h>
+#include <mach/imx/xload.h>
 #include <io.h>
 #include <debug_ll.h>
 #include <asm/cache.h>
 #include <asm/sections.h>
 #include <asm/mmu.h>
-#include <mach/atf.h>
-#include <mach/esdctl.h>
+#include <mach/imx/atf.h>
+#include <mach/imx/esdctl.h>
 
 #include "ddr.h"
 
diff --git a/arch/arm/boards/polyhex-debix/board.c b/arch/arm/boards/polyhex-debix/board.c
index 8a8f286ea5..d668dd1816 100644
--- a/arch/arm/boards/polyhex-debix/board.c
+++ b/arch/arm/boards/polyhex-debix/board.c
@@ -6,8 +6,8 @@
 #include <envfs.h>
 #include <init.h>
 #include <io.h>
-#include <mach/bbu.h>
-#include <mach/iomux-mx8mp.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/iomux-mx8mp.h>
 
 static int polyhex_debix_probe(struct device *dev)
 {
diff --git a/arch/arm/boards/polyhex-debix/lowlevel.c b/arch/arm/boards/polyhex-debix/lowlevel.c
index 3f1911f3b4..bef0bace98 100644
--- a/arch/arm/boards/polyhex-debix/lowlevel.c
+++ b/arch/arm/boards/polyhex-debix/lowlevel.c
@@ -4,13 +4,13 @@
 #include <asm/barebox-arm-head.h>
 #include <common.h>
 #include <debug_ll.h>
-#include <mach/atf.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
-#include <mach/imx8m-ccm-regs.h>
-#include <mach/imx8mp-regs.h>
-#include <mach/iomux-mx8mp.h>
-#include <mach/xload.h>
+#include <mach/imx/atf.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx8m-ccm-regs.h>
+#include <mach/imx/imx8mp-regs.h>
+#include <mach/imx/iomux-mx8mp.h>
+#include <mach/imx/xload.h>
 #include <mfd/pca9450.h>
 #include <pbl/i2c.h>
 #include <pbl/pmic.h>
diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 2db66189e0..d35d97209b 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -13,9 +13,9 @@
 #include <globalvar.h>
 #include <gpio.h>
 #include <i2c/i2c.h>
-#include <mach/bbu.h>
-#include <mach/imx6.h>
-#include <mach/ocotp-fusemap.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/ocotp-fusemap.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
 #include <mfd/syscon.h>
 #include <net.h>
diff --git a/arch/arm/boards/protonic-imx6/lowlevel.c b/arch/arm/boards/protonic-imx6/lowlevel.c
index ef8e7016d1..38e65037e6 100644
--- a/arch/arm/boards/protonic-imx6/lowlevel.c
+++ b/arch/arm/boards/protonic-imx6/lowlevel.c
@@ -6,8 +6,8 @@
 
 #include <asm/barebox-arm.h>
 #include <common.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
 
 extern char __dtb_z_imx6q_prti6q_start[];
 extern char __dtb_z_imx6q_prtwd2_start[];
diff --git a/arch/arm/boards/protonic-imx8m/board.c b/arch/arm/boards/protonic-imx8m/board.c
index 69b3e22d22..438cef412d 100644
--- a/arch/arm/boards/protonic-imx8m/board.c
+++ b/arch/arm/boards/protonic-imx8m/board.c
@@ -7,7 +7,7 @@
 #include <environment.h>
 #include <i2c/i2c.h>
 #include <init.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 
 static int prt_prt8mm_init_power(void)
 {
diff --git a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
index bfae39ea52..40fab934aa 100644
--- a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
+++ b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
@@ -5,13 +5,13 @@
 #include <image-metadata.h>
 #include <debug_ll.h>
 #include <firmware.h>
-#include <mach/atf.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
-#include <mach/imx8m-ccm-regs.h>
-#include <mach/imx8mm-regs.h>
-#include <mach/iomux-mx8mm.h>
-#include <mach/xload.h>
+#include <mach/imx/atf.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx8m-ccm-regs.h>
+#include <mach/imx/imx8mm-regs.h>
+#include <mach/imx/iomux-mx8mm.h>
+#include <mach/imx/xload.h>
 #include <soc/fsl/fsl_udc.h>
 #include <soc/imx8m/ddr.h>
 
diff --git a/arch/arm/boards/scb9328/lowlevel.c b/arch/arm/boards/scb9328/lowlevel.c
index a2057f0c6b..d8b0d1cf18 100644
--- a/arch/arm/boards/scb9328/lowlevel.c
+++ b/arch/arm/boards/scb9328/lowlevel.c
@@ -1,10 +1,10 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <common.h>
-#include <mach/imx1-regs.h>
-#include <mach/iomux-v1.h>
-#include <mach/iomux-mx1.h>
+#include <mach/imx/imx1-regs.h>
+#include <mach/imx/iomux-v1.h>
+#include <mach/imx/iomux-mx1.h>
 #include <asm/barebox-arm.h>
-#include <mach/esdctl.h>
+#include <mach/imx/esdctl.h>
 
 extern char __dtb_imx1_scb9328_start[];
 
diff --git a/arch/arm/boards/scb9328/lowlevel_init.S b/arch/arm/boards/scb9328/lowlevel_init.S
index eff5a5088f..6c23d2cfea 100644
--- a/arch/arm/boards/scb9328/lowlevel_init.S
+++ b/arch/arm/boards/scb9328/lowlevel_init.S
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 // SPDX-FileCopyrightText: 2004 Sascha Hauer, Synertronixx GmbH
 
-#include <mach/imx1-regs.h>
+#include <mach/imx/imx1-regs.h>
 #include <asm/barebox-arm-head.h>
 
 #define CFG_MPCTL0_VAL 0x00321431
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 759fa8afa4..2f5e73e662 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -6,14 +6,14 @@
 #include <init.h>
 #include <environment.h>
 #include <generated/mach-types.h>
-#include <mach/imx1-regs.h>
+#include <mach/imx/imx1-regs.h>
 #include <asm/armlinux.h>
-#include <mach/weim.h>
+#include <mach/imx/weim.h>
 #include <io.h>
 #include <fs.h>
 #include <envfs.h>
-#include <mach/iomux-mx1.h>
-#include <mach/devices-imx1.h>
+#include <mach/imx/iomux-mx1.h>
+#include <mach/imx/devices-imx1.h>
 
 static int scb9328_devices_init(void)
 {
diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index 8f4d7efe42..8f941623cb 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -11,7 +11,7 @@
 #include <gpio.h>
 #include <init.h>
 #include <linux/micrel_phy.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 #include <net.h>
 #include <of_gpio.h>
 
diff --git a/arch/arm/boards/skov-imx6/lowlevel.c b/arch/arm/boards/skov-imx6/lowlevel.c
index ea6de36a36..c12a7123f0 100644
--- a/arch/arm/boards/skov-imx6/lowlevel.c
+++ b/arch/arm/boards/skov-imx6/lowlevel.c
@@ -3,19 +3,19 @@
 #define pr_fmt(fmt) "skov-imx6: " fmt
 
 #include <common.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <debug_ll.h>
 #include <io.h>
-#include <mach/imx6-mmdc.h>
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6.h>
-#include <mach/xload.h>
-#include <mach/esdctl.h>
+#include <mach/imx/imx6-mmdc.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/xload.h>
+#include <mach/imx/esdctl.h>
 #include <serial/imx-uart.h>
-#include <mach/iomux-mx6.h>
-#include <mach/imx-gpio.h>
+#include <mach/imx/iomux-mx6.h>
+#include <mach/imx/imx-gpio.h>
 #include "version.h"
 
 static void __udelay(int us)
diff --git a/arch/arm/boards/skov-imx6/version.c b/arch/arm/boards/skov-imx6/version.c
index 5a6a0625ca..503a60366f 100644
--- a/arch/arm/boards/skov-imx6/version.c
+++ b/arch/arm/boards/skov-imx6/version.c
@@ -3,9 +3,9 @@
 #define pr_fmt(fmt) "skov-imx6: " fmt
 
 #include <common.h>
-#include <mach/iomux-mx6.h>
-#include <mach/imx-gpio.h>
-#include <mach/imx6.h>
+#include <mach/imx/iomux-mx6.h>
+#include <mach/imx/imx-gpio.h>
+#include <mach/imx/imx6.h>
 
 #include "version.h"
 
diff --git a/arch/arm/boards/solidrun-microsom/board.c b/arch/arm/boards/solidrun-microsom/board.c
index 85e1ab4250..c55dcdd74f 100644
--- a/arch/arm/boards/solidrun-microsom/board.c
+++ b/arch/arm/boards/solidrun-microsom/board.c
@@ -9,10 +9,10 @@
 #include <envfs.h>
 #include <gpio.h>
 #include <init.h>
-#include <mach/bbu.h>
-#include <mach/generic.h>
-#include <mach/imx6-regs.h>
-#include <mach/imx6.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx6.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
 #include <linux/clk.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i1.imxcfg b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i1.imxcfg
index 374ea2e8a2..b049cfc746 100644
--- a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i1.imxcfg
+++ b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i1.imxcfg
@@ -4,8 +4,8 @@ loadaddr 0x10000000
 soc imx6
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6dl-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6dl-ddr-regs.h>
 
 #include "800mhz-32b.imxcfg"
 #include "800mhz-2x128mx16.imxcfg"
diff --git a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2.imxcfg b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2.imxcfg
index 7c1b17f6f2..b6634446f3 100644
--- a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2.imxcfg
+++ b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2.imxcfg
@@ -4,8 +4,8 @@ loadaddr 0x10000000
 soc imx6
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6dl-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6dl-ddr-regs.h>
 
 #include "800mhz-64b.imxcfg"
 #include "800mhz-4x128mx16.imxcfg"
diff --git a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2eX.imxcfg b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
index f777784e44..e1447b9d5a 100644
--- a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
+++ b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
@@ -4,8 +4,8 @@ loadaddr 0x10000000
 soc imx6
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 #include "1066mhz-64b.imxcfg"
 #include "1066mhz-4x128mx16.imxcfg"
diff --git a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i4.imxcfg b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i4.imxcfg
index 2a12b05340..ec9c3e385e 100644
--- a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i4.imxcfg
+++ b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i4.imxcfg
@@ -4,8 +4,8 @@ loadaddr 0x10000000
 soc imx6
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 #include "1066mhz-64b.imxcfg"
 #include "1066mhz-4x256mx16.imxcfg"
diff --git a/arch/arm/boards/solidrun-microsom/lowlevel.c b/arch/arm/boards/solidrun-microsom/lowlevel.c
index b8f68fa22c..801678e777 100644
--- a/arch/arm/boards/solidrun-microsom/lowlevel.c
+++ b/arch/arm/boards/solidrun-microsom/lowlevel.c
@@ -2,8 +2,8 @@
 
 #include <asm/barebox-arm.h>
 #include <common.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
 
 extern char __dtb_imx6dl_hummingboard_start[];
 extern char __dtb_imx6q_hummingboard_start[];
diff --git a/arch/arm/boards/technexion-pico-hobbit/board.c b/arch/arm/boards/technexion-pico-hobbit/board.c
index a190959d0a..202b76bc8e 100644
--- a/arch/arm/boards/technexion-pico-hobbit/board.c
+++ b/arch/arm/boards/technexion-pico-hobbit/board.c
@@ -9,10 +9,10 @@
 #include <envfs.h>
 #include <gpio.h>
 #include <init.h>
-#include <mach/generic.h>
-#include <mach/imx6-regs.h>
-#include <mach/imx6.h>
-#include <mach/bbu.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/bbu.h>
 #include <linux/sizes.h>
 #include <linux/phy.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
diff --git a/arch/arm/boards/technexion-pico-hobbit/lowlevel.c b/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
index 43259675b0..2e81862993 100644
--- a/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
+++ b/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
@@ -2,13 +2,13 @@
 
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx6-regs.h>
+#include <mach/imx/imx6-regs.h>
 #include <io.h>
 #include <debug_ll.h>
-#include <mach/esdctl.h>
+#include <mach/imx/esdctl.h>
 #include <asm/cache.h>
 #include <asm/sections.h>
 #include <image-metadata.h>
diff --git a/arch/arm/boards/technexion-wandboard/board.c b/arch/arm/boards/technexion-wandboard/board.c
index 8d63b9fff7..a594adb411 100644
--- a/arch/arm/boards/technexion-wandboard/board.c
+++ b/arch/arm/boards/technexion-wandboard/board.c
@@ -8,10 +8,10 @@
 #include <envfs.h>
 #include <gpio.h>
 #include <init.h>
-#include <mach/bbu.h>
-#include <mach/generic.h>
-#include <mach/imx6-regs.h>
-#include <mach/imx6.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx6.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
 #include <linux/sizes.h>
 #include <linux/phy.h>
diff --git a/arch/arm/boards/technexion-wandboard/lowlevel.c b/arch/arm/boards/technexion-wandboard/lowlevel.c
index 33babbbb2f..448e81a61c 100644
--- a/arch/arm/boards/technexion-wandboard/lowlevel.c
+++ b/arch/arm/boards/technexion-wandboard/lowlevel.c
@@ -3,14 +3,14 @@
 #include <debug_ll.h>
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx6-mmdc.h>
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6.h>
-#include <mach/xload.h>
-#include <mach/esdctl.h>
+#include <mach/imx/imx6-mmdc.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/xload.h>
+#include <mach/imx/esdctl.h>
 #include <serial/imx-uart.h>
 
 static void __udelay(int us)
diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index 14e514ee78..54e661c395 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -8,7 +8,7 @@
 
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 
 static int tqma53_devices_init(void)
 {
diff --git a/arch/arm/boards/tqma53/lowlevel.c b/arch/arm/boards/tqma53/lowlevel.c
index 37a0984161..898b251d66 100644
--- a/arch/arm/boards/tqma53/lowlevel.c
+++ b/arch/arm/boards/tqma53/lowlevel.c
@@ -3,12 +3,12 @@
 #include <common.h>
 #include <debug_ll.h>
 #include <io.h>
-#include <mach/esdctl.h>
+#include <mach/imx/esdctl.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx5.h>
-#include <mach/imx53-regs.h>
-#include <mach/generic.h>
+#include <mach/imx/imx5.h>
+#include <mach/imx/imx53-regs.h>
+#include <mach/imx/generic.h>
 #include <image-metadata.h>
 
 extern char __dtb_imx53_mba53_start[];
diff --git a/arch/arm/boards/tqma6ulx/board.c b/arch/arm/boards/tqma6ulx/board.c
index c25b0ce2e3..fd9a299511 100644
--- a/arch/arm/boards/tqma6ulx/board.c
+++ b/arch/arm/boards/tqma6ulx/board.c
@@ -6,8 +6,8 @@
 #include <common.h>
 #include <bootsource.h>
 #include <init.h>
-#include <mach/generic.h>
-#include <mach/bbu.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/bbu.h>
 #include <of.h>
 #include <string.h>
 
diff --git a/arch/arm/boards/tqma6ulx/flash-header-imx6ul-tqma6ulx.imxcfg b/arch/arm/boards/tqma6ulx/flash-header-imx6ul-tqma6ulx.imxcfg
index 4f71136149..9c9fb33743 100644
--- a/arch/arm/boards/tqma6ulx/flash-header-imx6ul-tqma6ulx.imxcfg
+++ b/arch/arm/boards/tqma6ulx/flash-header-imx6ul-tqma6ulx.imxcfg
@@ -99,4 +99,4 @@ wm 32 0x021B0004 0x0002552D	/* MMDC0_MDPDC now SDCTL power down enabled */
 wm 32 0x021B0404 0x00011006	/* MMDC0_MAPSR ADOPT power down enabled */
 wm 32 0x021B001C 0x00000000	/* MMDC0_MDSCR, clear this register (especially the configuration bit as initialization is complete) */
 
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/tqma6ulx/lowlevel.c b/arch/arm/boards/tqma6ulx/lowlevel.c
index db77d1f532..104a998566 100644
--- a/arch/arm/boards/tqma6ulx/lowlevel.c
+++ b/arch/arm/boards/tqma6ulx/lowlevel.c
@@ -6,10 +6,10 @@
 #include <common.h>
 #include <debug_ll.h>
 #include <firmware.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm.h>
-#include <mach/esdctl.h>
-#include <mach/iomux-mx6ul.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/iomux-mx6ul.h>
 #include <asm/cache.h>
 
 extern char __dtb_z_imx6ul_mba6ulx_start[];
diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
index 7a770bd3c3..5f59a259e6 100644
--- a/arch/arm/boards/tqma6x/board.c
+++ b/arch/arm/boards/tqma6x/board.c
@@ -17,12 +17,12 @@
 #include <asm/armlinux.h>
 #include <asm/io.h>
 
-#include <mach/devices-imx6.h>
-#include <mach/imx6-regs.h>
-#include <mach/iomux-mx6.h>
-#include <mach/generic.h>
-#include <mach/imx6.h>
-#include <mach/bbu.h>
+#include <mach/imx/devices-imx6.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/iomux-mx6.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/bbu.h>
 
 #define RQ7_GPIO_ENET_PHYADD2	IMX_GPIO_NR(6, 30)
 #define RQ7_GPIO_ENET_MODE0	IMX_GPIO_NR(6, 25)
diff --git a/arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg b/arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg
index 9f8d9c0d26..e93d53ed79 100644
--- a/arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg
+++ b/arch/arm/boards/tqma6x/flash-header-tqma6dl.imxcfg
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6dl-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6dl-ddr-regs.h>
 
 wm 32 MX6_IOM_DRAM_SDQS0 0x00000030
 wm 32 MX6_IOM_DRAM_SDQS1 0x00000030
diff --git a/arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg b/arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg
index b0923e77f9..ec682e0109 100644
--- a/arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg
+++ b/arch/arm/boards/tqma6x/flash-header-tqma6q.imxcfg
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 wm 32 MX6_IOM_DRAM_SDQS0 0x00000030
 wm 32 MX6_IOM_DRAM_SDQS1 0x00000030
diff --git a/arch/arm/boards/tqma6x/lowlevel.c b/arch/arm/boards/tqma6x/lowlevel.c
index 845390642b..8af644d2a1 100644
--- a/arch/arm/boards/tqma6x/lowlevel.c
+++ b/arch/arm/boards/tqma6x/lowlevel.c
@@ -10,7 +10,7 @@
 #include <asm/sections.h>
 #include <asm/cache.h>
 #include <asm/mmu.h>
-#include <mach/imx6.h>
+#include <mach/imx/imx6.h>
 
 extern char __dtb_imx6q_mba6x_start[];
 extern char __dtb_imx6dl_mba6x_start[];
diff --git a/arch/arm/boards/tqma8mpxl/board.c b/arch/arm/boards/tqma8mpxl/board.c
index 18c3d413ff..39d1bd24d4 100644
--- a/arch/arm/boards/tqma8mpxl/board.c
+++ b/arch/arm/boards/tqma8mpxl/board.c
@@ -10,8 +10,8 @@
 #include <init.h>
 #include <linux/phy.h>
 #include <linux/sizes.h>
-#include <mach/bbu.h>
-#include <mach/iomux-mx8mp.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/iomux-mx8mp.h>
 #include <gpio.h>
 #include <envfs.h>
 
diff --git a/arch/arm/boards/tqma8mpxl/lowlevel.c b/arch/arm/boards/tqma8mpxl/lowlevel.c
index 037c7abf4b..9a17cd2514 100644
--- a/arch/arm/boards/tqma8mpxl/lowlevel.c
+++ b/arch/arm/boards/tqma8mpxl/lowlevel.c
@@ -9,13 +9,13 @@
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <linux/sizes.h>
-#include <mach/atf.h>
-#include <mach/xload.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
-#include <mach/imx8mp-regs.h>
-#include <mach/iomux-mx8mp.h>
-#include <mach/imx8m-ccm-regs.h>
+#include <mach/imx/atf.h>
+#include <mach/imx/xload.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx8mp-regs.h>
+#include <mach/imx/iomux-mx8mp.h>
+#include <mach/imx/imx8m-ccm-regs.h>
 #include <mfd/pca9450.h>
 #include <pbl/i2c.h>
 #include <pbl/pmic.h>
diff --git a/arch/arm/boards/udoo-neo/board.c b/arch/arm/boards/udoo-neo/board.c
index 075423099b..d9b9517fc1 100644
--- a/arch/arm/boards/udoo-neo/board.c
+++ b/arch/arm/boards/udoo-neo/board.c
@@ -4,8 +4,8 @@
 #include <common.h>
 #include <deep-probe.h>
 #include <gpio.h>
-#include <mach/bbu.h>
-#include <mach/imx6.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/imx6.h>
 
 /**
  * Detects the board model by checking the R184 and R185 resistors.
diff --git a/arch/arm/boards/udoo-neo/lowlevel.c b/arch/arm/boards/udoo-neo/lowlevel.c
index 83530fb190..269fda04dc 100644
--- a/arch/arm/boards/udoo-neo/lowlevel.c
+++ b/arch/arm/boards/udoo-neo/lowlevel.c
@@ -3,10 +3,10 @@
 #include <debug_ll.h>
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/esdctl.h>
+#include <mach/imx/esdctl.h>
 
 static inline void setup_uart(void)
 {
diff --git a/arch/arm/boards/udoo/board.c b/arch/arm/boards/udoo/board.c
index ae65ba41a5..2705b48e46 100644
--- a/arch/arm/boards/udoo/board.c
+++ b/arch/arm/boards/udoo/board.c
@@ -7,24 +7,24 @@
 #include <common.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/imx6-regs.h>
+#include <mach/imx/imx6-regs.h>
 #include <gpio.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <linux/phy.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <linux/sizes.h>
 #include <net.h>
 #include <linux/micrel_phy.h>
-#include <mach/imx6.h>
-#include <mach/devices-imx6.h>
-#include <mach/iomux-mx6.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/devices-imx6.h>
+#include <mach/imx/iomux-mx6.h>
 #include <spi/spi.h>
-#include <mach/spi.h>
-#include <mach/usb.h>
+#include <mach/imx/spi.h>
+#include <mach/imx/usb.h>
 
 static iomux_v3_cfg_t udoo_enet_gpio_pads_1[] = {
 	/* RGMII reset */
diff --git a/arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg b/arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg
index 0d364bf8ce..95ba1ddc41 100644
--- a/arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg
+++ b/arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg
@@ -4,8 +4,8 @@ soc imx6
 loadaddr 0x20000000
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 /* MX6_IOM_DRAM_SDQS0 -> MX6_IOM_DRAM_SDQS7 */
 wm 32 MX6_IOM_DRAM_SDQS0 0x00000030
diff --git a/arch/arm/boards/udoo/lowlevel.c b/arch/arm/boards/udoo/lowlevel.c
index 0f9e2d69a4..2570239b96 100644
--- a/arch/arm/boards/udoo/lowlevel.c
+++ b/arch/arm/boards/udoo/lowlevel.c
@@ -2,7 +2,7 @@
 
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
diff --git a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/board.c b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/board.c
index 35d78ea5e1..154931d534 100644
--- a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/board.c
+++ b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/board.c
@@ -10,8 +10,8 @@
 #include <init.h>
 #include <linux/phy.h>
 #include <linux/sizes.h>
-#include <mach/bbu.h>
-#include <mach/iomux-mx8mp.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/iomux-mx8mp.h>
 #include <gpio.h>
 #include <envfs.h>
 
diff --git a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
index 3eebb9e646..e8c3dd0c49 100644
--- a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
+++ b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
@@ -13,13 +13,13 @@
 #include <pbl/i2c.h>
 #include <pbl/pmic.h>
 #include <linux/sizes.h>
-#include <mach/atf.h>
-#include <mach/xload.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
-#include <mach/imx8mp-regs.h>
-#include <mach/iomux-mx8mp.h>
-#include <mach/imx8m-ccm-regs.h>
+#include <mach/imx/atf.h>
+#include <mach/imx/xload.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx8mp-regs.h>
+#include <mach/imx/iomux-mx8mp.h>
+#include <mach/imx/imx8m-ccm-regs.h>
 #include <mfd/pca9450.h>
 #include <soc/imx8m/ddr.h>
 #include <soc/fsl/fsl_udc.h>
diff --git a/arch/arm/boards/variscite-mx6/board.c b/arch/arm/boards/variscite-mx6/board.c
index 6dd89e6f7b..a0c1dde84e 100644
--- a/arch/arm/boards/variscite-mx6/board.c
+++ b/arch/arm/boards/variscite-mx6/board.c
@@ -19,13 +19,13 @@
 #include <generated/mach-types.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <linux/sizes.h>
-#include <mach/imx6.h>
-#include <mach/devices-imx6.h>
-#include <mach/iomux-mx6.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/devices-imx6.h>
+#include <mach/imx/iomux-mx6.h>
 #include <spi/spi.h>
-#include <mach/spi.h>
+#include <mach/imx/spi.h>
 #include <i2c/i2c.h>
 
 #define ETH_PHY_RST	IMX_GPIO_NR(1, 25)
diff --git a/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg b/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg
index b0a31a0b96..34790120ac 100644
--- a/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg
+++ b/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg
@@ -4,8 +4,8 @@ loadaddr 0x10000000
 soc imx6
 ivtofs 0x400
 
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx/imx6-ddr-regs.h>
+#include <mach/imx/imx6q-ddr-regs.h>
 
 wm 32 MX6_IOM_GRP_DDR_TYPE 0x000C0000
 wm 32 MX6_IOM_GRP_DDRPKE 0x00000000
diff --git a/arch/arm/boards/variscite-mx6/lowlevel.c b/arch/arm/boards/variscite-mx6/lowlevel.c
index 99455b2a45..d2dabd091b 100644
--- a/arch/arm/boards/variscite-mx6/lowlevel.c
+++ b/arch/arm/boards/variscite-mx6/lowlevel.c
@@ -14,7 +14,7 @@
 #include <asm/sections.h>
 #include <asm/cache.h>
 #include <asm/mmu.h>
-#include <mach/imx6.h>
+#include <mach/imx/imx6.h>
 
 static inline void setup_uart(void)
 {
diff --git a/arch/arm/boards/webasto-ccbv2/board.c b/arch/arm/boards/webasto-ccbv2/board.c
index 71e35e0970..13f3ed129f 100644
--- a/arch/arm/boards/webasto-ccbv2/board.c
+++ b/arch/arm/boards/webasto-ccbv2/board.c
@@ -5,8 +5,8 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/generic.h>
-#include <mach/bbu.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/bbu.h>
 #include <of.h>
 #include <string.h>
 
diff --git a/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-256.imxcfg b/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-256.imxcfg
index ea327b2630..ef73ec71db 100644
--- a/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-256.imxcfg
+++ b/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-256.imxcfg
@@ -85,4 +85,4 @@ wm 32 0x021B001C 0x00000000
 /* Disable TZASC bypass */
 wm 32 0x020E4024 0x00000001
 
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512.imxcfg b/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512.imxcfg
index d438a665f1..56ca917d10 100644
--- a/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512.imxcfg
+++ b/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512.imxcfg
@@ -85,4 +85,4 @@ wm 32 0x021B001C 0x00000000
 /* Disable TZASC bypass */
 wm 32 0x020E4024 0x00000001
 
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/imx/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/webasto-ccbv2/lowlevel.c b/arch/arm/boards/webasto-ccbv2/lowlevel.c
index 2bf0c3636f..7e0bfe1ee0 100644
--- a/arch/arm/boards/webasto-ccbv2/lowlevel.c
+++ b/arch/arm/boards/webasto-ccbv2/lowlevel.c
@@ -6,10 +6,10 @@
 #include <common.h>
 #include <debug_ll.h>
 #include <firmware.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm.h>
-#include <mach/esdctl.h>
-#include <mach/iomux-mx6ul.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/iomux-mx6ul.h>
 #include <asm/cache.h>
 #include <tee/optee.h>
 
diff --git a/arch/arm/boards/zii-imx51-rdu1/board.c b/arch/arm/boards/zii-imx51-rdu1/board.c
index 0b5271b8de..b72219b4bc 100644
--- a/arch/arm/boards/zii-imx51-rdu1/board.c
+++ b/arch/arm/boards/zii-imx51-rdu1/board.c
@@ -19,9 +19,9 @@
 #include <envfs.h>
 #include <init.h>
 #include <environment.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 #include <libfile.h>
-#include <mach/imx5.h>
+#include <mach/imx/imx5.h>
 #include <net.h>
 #include <linux/crc8.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/zii-imx51-rdu1/lowlevel.c b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
index 14136358dd..38588d43f9 100644
--- a/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
+++ b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
@@ -1,11 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <debug_ll.h>
-#include <mach/clock-imx51_53.h>
-#include <mach/iomux-mx51.h>
+#include <mach/imx/clock-imx51_53.h>
+#include <mach/imx/iomux-mx51.h>
 #include <common.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index f57827cd13..88912a5108 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -9,8 +9,8 @@
 #include <gpio.h>
 #include <i2c/i2c.h>
 #include <init.h>
-#include <mach/bbu.h>
-#include <mach/imx6.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/imx6.h>
 #include <net.h>
 #include <linux/nvmem-consumer.h>
 #include "../zii-common/pn-fixup.h"
diff --git a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
index a80ce0afc5..3ab2da17f0 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
@@ -5,11 +5,11 @@
 
 #include <debug_ll.h>
 #include <common.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
-#include <mach/imx6.h>
-#include <mach/xload.h>
-#include <mach/iomux-mx6.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/xload.h>
+#include <mach/imx/iomux-mx6.h>
 #include <asm/barebox-arm.h>
 
 struct reginit {
diff --git a/arch/arm/boards/zii-imx7d-dev/board.c b/arch/arm/boards/zii-imx7d-dev/board.c
index 5f7314b0b8..2d7b589908 100644
--- a/arch/arm/boards/zii-imx7d-dev/board.c
+++ b/arch/arm/boards/zii-imx7d-dev/board.c
@@ -9,11 +9,11 @@
 #include <init.h>
 #include <io.h>
 #include <gpio.h>
-#include <mach/imx7-regs.h>
+#include <mach/imx/imx7-regs.h>
 #include <mfd/imx7-iomuxc-gpr.h>
 #include <environment.h>
 #include <envfs.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 
 static void zii_imx7d_rpu2_init_fec(void)
 {
diff --git a/arch/arm/boards/zii-imx7d-dev/flash-header-zii-imx7d-dev.imxcfg b/arch/arm/boards/zii-imx7d-dev/flash-header-zii-imx7d-dev.imxcfg
index 05f95bbed1..053680f76d 100644
--- a/arch/arm/boards/zii-imx7d-dev/flash-header-zii-imx7d-dev.imxcfg
+++ b/arch/arm/boards/zii-imx7d-dev/flash-header-zii-imx7d-dev.imxcfg
@@ -4,5 +4,5 @@ soc imx7
 loadaddr 0x80000000
 ivtofs 0x400
 
-#include <mach/flash-header/imx7d-ddr-sabresd.imxcfg>
+#include <mach/imx/flash-header/imx7d-ddr-sabresd.imxcfg>
 
diff --git a/arch/arm/boards/zii-imx7d-dev/lowlevel.c b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
index 0e316b6024..2b2ad6aa84 100644
--- a/arch/arm/boards/zii-imx7d-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
@@ -9,14 +9,14 @@
 #include <io.h>
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx7-ccm-regs.h>
-#include <mach/iomux-mx7.h>
-#include <mach/debug_ll.h>
+#include <mach/imx/imx7-ccm-regs.h>
+#include <mach/imx/iomux-mx7.h>
+#include <mach/imx/debug_ll.h>
 #include <asm/cache.h>
-#include <mach/esdctl.h>
+#include <mach/imx/esdctl.h>
 
 extern char __dtb_z_imx7d_zii_rpu2_start[];
 extern char __dtb_z_imx7d_zii_rmu2_start[];
diff --git a/arch/arm/boards/zii-imx8mq-dev/board.c b/arch/arm/boards/zii-imx8mq-dev/board.c
index a56ebbc669..3581c7251d 100644
--- a/arch/arm/boards/zii-imx8mq-dev/board.c
+++ b/arch/arm/boards/zii-imx8mq-dev/board.c
@@ -10,7 +10,7 @@
 #include <init.h>
 #include <asm/memory.h>
 #include <linux/sizes.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 #include "../zii-common/pn-fixup.h"
 
 #define LRU_FLAG_EGALAX		BIT(0)
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index cf53fb2def..8e755955d5 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -8,20 +8,20 @@
 #include <firmware.h>
 #include <image-metadata.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx8m-ccm-regs.h>
-#include <mach/iomux-mx8mq.h>
+#include <mach/imx/imx8m-ccm-regs.h>
+#include <mach/imx/iomux-mx8mq.h>
 #include <soc/imx8m/ddr.h>
-#include <mach/xload.h>
+#include <mach/imx/xload.h>
 #include <io.h>
 #include <debug_ll.h>
 #include <asm/cache.h>
 #include <asm/sections.h>
 #include <asm/mmu.h>
-#include <mach/atf.h>
-#include <mach/esdctl.h>
+#include <mach/imx/atf.h>
+#include <mach/imx/esdctl.h>
 
 #include "ddr.h"
 
diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
index 3a3ba2d58c..675f13b882 100644
--- a/arch/arm/boards/zii-vf610-dev/board.c
+++ b/arch/arm/boards/zii-vf610-dev/board.c
@@ -10,7 +10,7 @@
 #include <linux/clk.h>
 #include <dt-bindings/clock/vf610-clock.h>
 #include <envfs.h>
-#include <mach/bbu.h>
+#include <mach/imx/bbu.h>
 
 
 static int expose_signals(const struct gpio *signals,
diff --git a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
index 617245b2d3..aace9e9226 100644
--- a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
+++ b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
@@ -4,12 +4,12 @@ soc vf610
 loadaddr 0x80000000
 ivtofs 0x400
 
-#include <mach/vf610-iomux-regs.h>
-#include <mach/vf610-ddrmc-regs.h>
+#include <mach/imx/vf610-iomux-regs.h>
+#include <mach/imx/vf610-ddrmc-regs.h>
 
-#include <mach/flash-header/vf610-ddr-pll2-400mhz.imxcfg>
-#include <mach/flash-header/vf610-iomux-ddr-default.imxcfg>
-#include <mach/flash-header/vf610-ddr-cr-default.imxcfg>
+#include <mach/imx/flash-header/vf610-ddr-pll2-400mhz.imxcfg>
+#include <mach/imx/flash-header/vf610-iomux-ddr-default.imxcfg>
+#include <mach/imx/flash-header/vf610-ddr-cr-default.imxcfg>
 
 wm 32 DDRMC_CR26 0x0c300068
 wm 32 DDRMC_CR31 0x006c0200
@@ -21,7 +21,7 @@ wm 32 DDRMC_CR73 0x0a010100
  */
 wm 32 DDRMC_CR73 0x0a010100
 
-#include <mach/flash-header/vf610-ddr-phy-default.imxcfg>
+#include <mach/imx/flash-header/vf610-ddr-phy-default.imxcfg>
 
 wm 32 DDRMC_CR00 DDRMC_CR00_DRAM_CLASS_DDR3_START
 
diff --git a/arch/arm/boards/zii-vf610-dev/lowlevel.c b/arch/arm/boards/zii-vf610-dev/lowlevel.c
index a05515db16..8fe779c9e5 100644
--- a/arch/arm/boards/zii-vf610-dev/lowlevel.c
+++ b/arch/arm/boards/zii-vf610-dev/lowlevel.c
@@ -5,13 +5,13 @@
 
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/esdctl.h>
-#include <mach/vf610-regs.h>
-#include <mach/clock-vf610.h>
-#include <mach/iomux-vf610.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/vf610-regs.h>
+#include <mach/imx/clock-vf610.h>
+#include <mach/imx/iomux-vf610.h>
 #include <debug_ll.h>
 
 static inline void setup_uart(void)
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index b0f690118b..ea4407b6fa 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -6,10 +6,12 @@
 #ifdef CONFIG_DEBUG_QEMU_ARM64_VIRT
 #define DEBUG_LL_UART_ADDR		0x9000000
 #include <debug_ll/pl011.h>
-#endif
-
+#elif defined CONFIG_ARCH_IMX
+#include <mach/imx/debug_ll.h>
+#else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
 #endif
+#endif
 
 #endif
diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 2a3e3f53b8..39bc1e8bac 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -3,10 +3,10 @@
 #include <asm/sections.h>
 #include <common.h>
 #include <firmware.h>
-#include <mach/atf.h>
-#include <mach/generic.h>
-#include <mach/xload.h>
-#include <mach/romapi.h>
+#include <mach/imx/atf.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/xload.h>
+#include <mach/imx/romapi.h>
 #include <soc/fsl/fsl_udc.h>
 #include <soc/fsl/caam.h>
 
diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index c0193cfa43..a6322e4850 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -8,21 +8,21 @@
 #include <magicvar.h>
 
 #include <io.h>
-#include <mach/clock-imx6.h>
-#include <mach/generic.h>
-#include <mach/imx25-regs.h>
-#include <mach/imx27-regs.h>
-#include <mach/imx35-regs.h>
-#include <mach/imx51-regs.h>
-#include <mach/imx53-regs.h>
-#include <mach/imx6-regs.h>
-#include <mach/imx7-regs.h>
-#include <mach/imx8mm-regs.h>
-#include <mach/imx8mp-regs.h>
-#include <mach/imx8mq-regs.h>
-#include <mach/vf610-regs.h>
-#include <mach/imx8mq.h>
-#include <mach/imx6.h>
+#include <mach/imx/clock-imx6.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx25-regs.h>
+#include <mach/imx/imx27-regs.h>
+#include <mach/imx/imx35-regs.h>
+#include <mach/imx/imx51-regs.h>
+#include <mach/imx/imx53-regs.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx7-regs.h>
+#include <mach/imx/imx8mm-regs.h>
+#include <mach/imx/imx8mp-regs.h>
+#include <mach/imx/imx8mq-regs.h>
+#include <mach/imx/vf610-regs.h>
+#include <mach/imx/imx8mq.h>
+#include <mach/imx/imx6.h>
 
 #include <soc/fsl/fsl_udc.h>
 
diff --git a/arch/arm/mach-imx/bootrom-cmd.c b/arch/arm/mach-imx/bootrom-cmd.c
index 35e52b0f92..08e393b01a 100644
--- a/arch/arm/mach-imx/bootrom-cmd.c
+++ b/arch/arm/mach-imx/bootrom-cmd.c
@@ -6,8 +6,8 @@
 #include <printk.h>
 #include <linux/bitops.h>
 #include <linux/bitfield.h>
-#include <mach/imx8m-regs.h>
-#include <mach/romapi.h>
+#include <mach/imx/imx8m-regs.h>
+#include <mach/imx/romapi.h>
 
 /* i.MX7 and later ID field is swapped compared to i.MX6 */
 #define ROM_EVENT_FORMAT_V0_RES	GENMASK(31, 24)
diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index 3f16ca70ce..4e55d72857 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -6,10 +6,10 @@
 #include <asm/errata.h>
 #include <linux/types.h>
 #include <linux/bitops.h>
-#include <mach/generic.h>
-#include <mach/imx7-regs.h>
-#include <mach/imx8mq-regs.h>
-#include <mach/imx8m-ccm-regs.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx7-regs.h>
+#include <mach/imx/imx8mq-regs.h>
+#include <mach/imx/imx8m-ccm-regs.h>
 #include <io.h>
 #include <asm/syscounter.h>
 #include <asm/system.h>
diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
index ae2769d259..7572738d0e 100644
--- a/arch/arm/mach-imx/devices.c
+++ b/arch/arm/mach-imx/devices.c
@@ -2,7 +2,7 @@
 
 #include <common.h>
 #include <driver.h>
-#include <mach/devices.h>
+#include <mach/imx/devices.h>
 
 static inline struct device *imx_add_device(char *name, int id, void *base, int size, void *pdata)
 {
diff --git a/arch/arm/mach-imx/esdctl-v4.c b/arch/arm/mach-imx/esdctl-v4.c
index 14a967d521..26f476f0f5 100644
--- a/arch/arm/mach-imx/esdctl-v4.c
+++ b/arch/arm/mach-imx/esdctl-v4.c
@@ -5,8 +5,8 @@
 
 #include <common.h>
 #include <io.h>
-#include <mach/esdctl-v4.h>
-#include <mach/imx53-regs.h>
+#include <mach/imx/esdctl-v4.h>
+#include <mach/imx/imx53-regs.h>
 #include <asm/system.h>
 
 void imx_esdctlv4_do_write_leveling(void)
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 29e9929334..bbf8163e93 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -13,21 +13,21 @@
 #include <linux/bitfield.h>
 #include <asm/barebox-arm.h>
 #include <asm/memory.h>
-#include <mach/esdctl.h>
-#include <mach/esdctl-v4.h>
-#include <mach/imx6-mmdc.h>
-#include <mach/imx1-regs.h>
-#include <mach/imx21-regs.h>
-#include <mach/imx25-regs.h>
-#include <mach/imx27-regs.h>
-#include <mach/imx31-regs.h>
-#include <mach/imx35-regs.h>
-#include <mach/imx51-regs.h>
-#include <mach/imx53-regs.h>
-#include <mach/imx6-regs.h>
-#include <mach/vf610-ddrmc.h>
-#include <mach/imx8m-regs.h>
-#include <mach/imx7-regs.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/esdctl-v4.h>
+#include <mach/imx/imx6-mmdc.h>
+#include <mach/imx/imx1-regs.h>
+#include <mach/imx/imx21-regs.h>
+#include <mach/imx/imx25-regs.h>
+#include <mach/imx/imx27-regs.h>
+#include <mach/imx/imx31-regs.h>
+#include <mach/imx/imx35-regs.h>
+#include <mach/imx/imx51-regs.h>
+#include <mach/imx/imx53-regs.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/vf610-ddrmc.h>
+#include <mach/imx/imx8m-regs.h>
+#include <mach/imx/imx7-regs.h>
 
 struct imx_esdctl_data {
 	unsigned long base0;
diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 92dcaeaaf8..79cedbd68a 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -9,14 +9,14 @@
 #include <asm/sections.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
-#include <mach/imx-nand.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
-#include <mach/imx21-regs.h>
-#include <mach/imx25-regs.h>
-#include <mach/imx27-regs.h>
-#include <mach/imx31-regs.h>
-#include <mach/imx35-regs.h>
+#include <mach/imx/imx-nand.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx21-regs.h>
+#include <mach/imx/imx25-regs.h>
+#include <mach/imx/imx27-regs.h>
+#include <mach/imx/imx31-regs.h>
+#include <mach/imx/imx35-regs.h>
 
 #define BARE_INIT_FUNCTION(name)  \
 	__section(.text_bare_init_##name) \
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index f5190ef3c7..d403fa9f86 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -23,11 +23,11 @@
 #include <regulator.h>
 #include <linux/err.h>
 
-#include <mach/iim.h>
-#include <mach/imx51-regs.h>
-#include <mach/imx53-regs.h>
-#include <mach/clock-imx51_53.h>
-#include <mach/imx25-fusemap.h>
+#include <mach/imx/iim.h>
+#include <mach/imx/imx51-regs.h>
+#include <mach/imx/imx53-regs.h>
+#include <mach/imx/clock-imx51_53.h>
+#include <mach/imx/imx25-fusemap.h>
 
 #define DRIVERNAME	"imx_iim"
 #define IIM_NUM_BANKS	8
diff --git a/arch/arm/mach-imx/imx-bbu-external-nand.c b/arch/arm/mach-imx/imx-bbu-external-nand.c
index 40dbaabdc7..7523008cdb 100644
--- a/arch/arm/mach-imx/imx-bbu-external-nand.c
+++ b/arch/arm/mach-imx/imx-bbu-external-nand.c
@@ -17,8 +17,8 @@
 #include <linux/mtd/mtd-abi.h>
 #include <linux/stat.h>
 #include <ioctl.h>
-#include <mach/bbu.h>
-#include <mach/imx-nand.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/imx-nand.h>
 #include <asm/barebox-arm-head.h>
 
 static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_data *data)
diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 3b0c587cc5..a86bd75253 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -17,8 +17,8 @@
 #include <linux/stat.h>
 #include <ioctl.h>
 #include <environment.h>
-#include <mach/bbu.h>
-#include <mach/generic.h>
+#include <mach/imx/bbu.h>
+#include <mach/imx/generic.h>
 #include <libfile.h>
 
 #define IMX_INTERNAL_FLAG_ERASE		BIT(30)
diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index 489cef6d86..eb34036a71 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -4,9 +4,9 @@
 #include <of.h>
 #include <init.h>
 #include <io.h>
-#include <mach/revision.h>
-#include <mach/generic.h>
-#include <mach/reset-reason.h>
+#include <mach/imx/revision.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/reset-reason.h>
 
 static int __imx_silicon_revision = IMX_CHIP_REV_UNKNOWN;
 
diff --git a/arch/arm/mach-imx/imx1.c b/arch/arm/mach-imx/imx1.c
index 6cf95667c9..817095da82 100644
--- a/arch/arm/mach-imx/imx1.c
+++ b/arch/arm/mach-imx/imx1.c
@@ -3,10 +3,10 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <mach/imx1-regs.h>
-#include <mach/weim.h>
-#include <mach/iomux-v1.h>
-#include <mach/generic.h>
+#include <mach/imx/imx1-regs.h>
+#include <mach/imx/weim.h>
+#include <mach/imx/iomux-v1.h>
+#include <mach/imx/generic.h>
 #include <reset_source.h>
 
 #define MX1_RSR MX1_SCM_BASE_ADDR
@@ -39,7 +39,7 @@ void imx1_setup_eimcs(size_t cs, unsigned upper, unsigned lower)
 	writel(lower, MX1_EIM_BASE_ADDR + 4 + cs * 8);
 }
 
-#include <mach/esdctl.h>
+#include <mach/imx/esdctl.h>
 
 int imx1_init(void)
 {
diff --git a/arch/arm/mach-imx/imx21.c b/arch/arm/mach-imx/imx21.c
index 223a390c9c..4271fb92d7 100644
--- a/arch/arm/mach-imx/imx21.c
+++ b/arch/arm/mach-imx/imx21.c
@@ -3,10 +3,10 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <mach/imx21-regs.h>
-#include <mach/weim.h>
-#include <mach/iomux-v1.h>
-#include <mach/generic.h>
+#include <mach/imx/imx21-regs.h>
+#include <mach/imx/weim.h>
+#include <mach/imx/iomux-v1.h>
+#include <mach/imx/generic.h>
 
 void imx21_setup_eimcs(size_t cs, unsigned upper, unsigned lower)
 {
diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index a855ff0714..2f6d6f0523 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -2,11 +2,11 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/imx25-regs.h>
-#include <mach/iim.h>
+#include <mach/imx/imx25-regs.h>
+#include <mach/imx/iim.h>
 #include <io.h>
-#include <mach/weim.h>
-#include <mach/generic.h>
+#include <mach/imx/weim.h>
+#include <mach/imx/generic.h>
 #include <linux/sizes.h>
 
 #define MX25_BOOTROM_HAB_MAGIC		0x3c95cac6
diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index 97e6792d87..4dcc2e028e 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -1,12 +1,12 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 
 #include <common.h>
-#include <mach/imx27-regs.h>
-#include <mach/weim.h>
-#include <mach/iomux-v1.h>
+#include <mach/imx/imx27-regs.h>
+#include <mach/imx/weim.h>
+#include <mach/imx/iomux-v1.h>
 #include <linux/sizes.h>
-#include <mach/revision.h>
-#include <mach/generic.h>
+#include <mach/imx/revision.h>
+#include <mach/imx/generic.h>
 #include <init.h>
 #include <io.h>
 
diff --git a/arch/arm/mach-imx/imx31.c b/arch/arm/mach-imx/imx31.c
index b524d0105e..20ca9299f1 100644
--- a/arch/arm/mach-imx/imx31.c
+++ b/arch/arm/mach-imx/imx31.c
@@ -4,9 +4,9 @@
 #include <init.h>
 #include <linux/sizes.h>
 #include <io.h>
-#include <mach/imx31-regs.h>
-#include <mach/weim.h>
-#include <mach/generic.h>
+#include <mach/imx/imx31-regs.h>
+#include <mach/imx/weim.h>
+#include <mach/imx/generic.h>
 
 void imx31_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
 		unsigned additional)
diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index c6ded7407d..29b77b42c2 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -4,11 +4,11 @@
 #include <linux/sizes.h>
 #include <init.h>
 #include <io.h>
-#include <mach/weim.h>
-#include <mach/imx35-regs.h>
-#include <mach/iim.h>
-#include <mach/revision.h>
-#include <mach/generic.h>
+#include <mach/imx/weim.h>
+#include <mach/imx/imx35-regs.h>
+#include <mach/imx/iim.h>
+#include <mach/imx/revision.h>
+#include <mach/imx/generic.h>
 
 void imx35_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
 		unsigned additional)
diff --git a/arch/arm/mach-imx/imx5.c b/arch/arm/mach-imx/imx5.c
index 072e960e53..10a3ae7bca 100644
--- a/arch/arm/mach-imx/imx5.c
+++ b/arch/arm/mach-imx/imx5.c
@@ -3,8 +3,8 @@
 #include <common.h>
 #include <io.h>
 #include <linux/sizes.h>
-#include <mach/imx5.h>
-#include <mach/clock-imx51_53.h>
+#include <mach/imx/imx5.h>
+#include <mach/imx/clock-imx51_53.h>
 
 void imx5_setup_pll(void __iomem *base, int freq, u32 op, u32 mfd, u32 mfn)
 {
diff --git a/arch/arm/mach-imx/imx50.c b/arch/arm/mach-imx/imx50.c
index e1a743f403..de82ce2ae7 100644
--- a/arch/arm/mach-imx/imx50.c
+++ b/arch/arm/mach-imx/imx50.c
@@ -5,13 +5,13 @@
 #include <io.h>
 #include <notifier.h>
 #include <linux/sizes.h>
-#include <mach/imx5.h>
-#include <mach/imx50-regs.h>
-#include <mach/revision.h>
-#include <mach/clock-imx51_53.h>
-#include <mach/generic.h>
-#include <mach/reset-reason.h>
-#include <mach/usb.h>
+#include <mach/imx/imx5.h>
+#include <mach/imx/imx50-regs.h>
+#include <mach/imx/revision.h>
+#include <mach/imx/clock-imx51_53.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/reset-reason.h>
+#include <mach/imx/usb.h>
 
 #define SI_REV 0x48
 
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 214a4031ec..69b892b01a 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -5,13 +5,13 @@
 #include <linux/sizes.h>
 #include <environment.h>
 #include <io.h>
-#include <mach/imx5.h>
-#include <mach/imx51-regs.h>
-#include <mach/revision.h>
-#include <mach/clock-imx51_53.h>
-#include <mach/generic.h>
-#include <mach/reset-reason.h>
-#include <mach/usb.h>
+#include <mach/imx/imx5.h>
+#include <mach/imx/imx51-regs.h>
+#include <mach/imx/revision.h>
+#include <mach/imx/clock-imx51_53.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/reset-reason.h>
+#include <mach/imx/usb.h>
 
 #define IIM_SREV 0x24
 
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index e5da326a7f..e7eb3ea796 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -5,13 +5,13 @@
 #include <io.h>
 #include <notifier.h>
 #include <linux/sizes.h>
-#include <mach/imx5.h>
-#include <mach/imx53-regs.h>
-#include <mach/revision.h>
-#include <mach/clock-imx51_53.h>
-#include <mach/generic.h>
-#include <mach/reset-reason.h>
-#include <mach/usb.h>
+#include <mach/imx/imx5.h>
+#include <mach/imx/imx53-regs.h>
+#include <mach/imx/revision.h>
+#include <mach/imx/clock-imx51_53.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/reset-reason.h>
+#include <mach/imx/usb.h>
 
 #define SI_REV 0x48
 
diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
index e0497071d1..134a41bad5 100644
--- a/arch/arm/mach-imx/imx6-mmdc.c
+++ b/arch/arm/mach-imx/imx6-mmdc.c
@@ -7,9 +7,9 @@
  */
 #include <common.h>
 #include <io.h>
-#include <mach/imx6-mmdc.h>
-#include <mach/imx6-regs.h>
-#include <mach/imx6.h>
+#include <mach/imx/imx6-mmdc.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx6.h>
 
 static bool wlcalib_failed(void __iomem *ips)
 {
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 697a8a21fa..b0d3d8ef2f 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -6,15 +6,15 @@
 #include <io.h>
 #include <linux/sizes.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
-#include <mach/clock-imx6.h>
-#include <mach/imx6.h>
-#include <mach/generic.h>
-#include <mach/revision.h>
-#include <mach/reset-reason.h>
-#include <mach/imx6-anadig.h>
-#include <mach/imx6-regs.h>
-#include <mach/imx6-fusemap.h>
-#include <mach/usb.h>
+#include <mach/imx/clock-imx6.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/revision.h>
+#include <mach/imx/reset-reason.h>
+#include <mach/imx/imx6-anadig.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx6-fusemap.h>
+#include <mach/imx/usb.h>
 #include <asm/mmu.h>
 #include <asm/cache-l2x0.h>
 #include <mfd/pfuze.h>
diff --git a/arch/arm/mach-imx/imx7.c b/arch/arm/mach-imx/imx7.c
index 8f9d5034ab..31d49c35e7 100644
--- a/arch/arm/mach-imx/imx7.c
+++ b/arch/arm/mach-imx/imx7.c
@@ -5,11 +5,11 @@
 #include <io.h>
 #include <linux/sizes.h>
 #include <asm/psci.h>
-#include <mach/imx7.h>
-#include <mach/generic.h>
-#include <mach/revision.h>
-#include <mach/reset-reason.h>
-#include <mach/imx7-regs.h>
+#include <mach/imx/imx7.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/revision.h>
+#include <mach/imx/reset-reason.h>
+#include <mach/imx/imx7-regs.h>
 
 void imx7_init_lowlevel(void)
 {
diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 7f3856e545..37ef17bc8e 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -5,14 +5,14 @@
 #include <io.h>
 #include <asm/syscounter.h>
 #include <asm/system.h>
-#include <mach/generic.h>
-#include <mach/revision.h>
-#include <mach/imx8mq.h>
-#include <mach/imx8m-ccm-regs.h>
-#include <mach/reset-reason.h>
-#include <mach/ocotp.h>
-#include <mach/imx8mp-regs.h>
-#include <mach/imx8mq-regs.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/revision.h>
+#include <mach/imx/imx8mq.h>
+#include <mach/imx/imx8m-ccm-regs.h>
+#include <mach/imx/reset-reason.h>
+#include <mach/imx/ocotp.h>
+#include <mach/imx/imx8mp-regs.h>
+#include <mach/imx/imx8mq-regs.h>
 #include <soc/imx8m/clk-early.h>
 
 #include <linux/iopoll.h>
diff --git a/arch/arm/mach-imx/nand.c b/arch/arm/mach-imx/nand.c
index 718cada052..bbfcfac457 100644
--- a/arch/arm/mach-imx/nand.c
+++ b/arch/arm/mach-imx/nand.c
@@ -1,12 +1,12 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 
 #include <common.h>
-#include <mach/generic.h>
-#include <mach/imx21-regs.h>
-#include <mach/imx25-regs.h>
-#include <mach/imx27-regs.h>
-#include <mach/imx35-regs.h>
-#include <mach/imx-nand.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx21-regs.h>
+#include <mach/imx/imx25-regs.h>
+#include <mach/imx/imx27-regs.h>
+#include <mach/imx/imx35-regs.h>
+#include <mach/imx/imx-nand.h>
 #include <io.h>
 
 #define RCSR_NFC_FMS		(1 << 8)
diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index 0936c855fd..c39ccdfba8 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -4,10 +4,10 @@
 
 #include <common.h>
 #include <asm/sections.h>
-#include <mach/romapi.h>
-#include <mach/atf.h>
-#include <mach/imx8m-regs.h>
-#include <mach/xload.h>
+#include <mach/imx/romapi.h>
+#include <mach/imx/atf.h>
+#include <mach/imx/imx8m-regs.h>
+#include <mach/imx/xload.h>
 #include <asm/barebox-arm.h>
 #include <zero_page.h>
 #include <pbl.h>
diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
index 9af0b7ef65..9c71108c99 100644
--- a/arch/arm/mach-imx/tzasc.c
+++ b/arch/arm/mach-imx/tzasc.c
@@ -1,8 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
-#include <mach/tzasc.h>
+#include <mach/imx/tzasc.h>
 #include <linux/bitops.h>
-#include <mach/imx8m-regs.h>
+#include <mach/imx/imx8m-regs.h>
 #include <io.h>
 
 #define GPR_TZASC_EN		BIT(0)
diff --git a/arch/arm/mach-imx/vf610.c b/arch/arm/mach-imx/vf610.c
index ccef9d48d9..74d190d7bc 100644
--- a/arch/arm/mach-imx/vf610.c
+++ b/arch/arm/mach-imx/vf610.c
@@ -4,11 +4,11 @@
 #include <common.h>
 #include <io.h>
 #include <linux/sizes.h>
-#include <mach/generic.h>
-#include <mach/revision.h>
-#include <mach/vf610.h>
-#include <mach/reset-reason.h>
-#include <mach/ocotp.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/revision.h>
+#include <mach/imx/vf610.h>
+#include <mach/imx/reset-reason.h>
+#include <mach/imx/ocotp.h>
 
 static const struct imx_reset_reason vf610_reset_reasons[] = {
 	{ VF610_SRC_SRSR_POR_RST,       RESET_POR,   0 },
diff --git a/arch/arm/mach-imx/xload-common.c b/arch/arm/mach-imx/xload-common.c
index 710dcc1ed9..5a437b185d 100644
--- a/arch/arm/mach-imx/xload-common.c
+++ b/arch/arm/mach-imx/xload-common.c
@@ -3,9 +3,9 @@
 #include <common.h>
 #include <asm/sections.h>
 #include <linux/sizes.h>
-#include <mach/xload.h>
-#include <mach/esdctl.h>
-#include <mach/imx8m-regs.h>
+#include <mach/imx/xload.h>
+#include <mach/imx/esdctl.h>
+#include <mach/imx/imx8m-regs.h>
 #include <asm/barebox-arm.h>
 
 int imx_image_size(void)
diff --git a/arch/arm/mach-imx/xload-gpmi-nand.c b/arch/arm/mach-imx/xload-gpmi-nand.c
index dcef8cda48..8221e1ace0 100644
--- a/arch/arm/mach-imx/xload-gpmi-nand.c
+++ b/arch/arm/mach-imx/xload-gpmi-nand.c
@@ -9,13 +9,13 @@
 #include <linux/mtd/nand.h>
 #include <linux/bitfield.h>
 #include <asm/cache.h>
-#include <mach/xload.h>
+#include <mach/imx/xload.h>
 #include <soc/imx/imx-nand-bcb.h>
 #include <linux/mtd/rawnand.h>
 #include <soc/imx/gpmi-nand.h>
-#include <mach/imx6-regs.h>
-#include <mach/imx7-regs.h>
-#include <mach/clock-imx6.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx7-regs.h>
+#include <mach/imx/clock-imx6.h>
 #include <dma/apbh-dma.h>
 
 struct apbh_dma {
diff --git a/arch/arm/mach-imx/xload-imx-nand.c b/arch/arm/mach-imx/xload-imx-nand.c
index 3838d9164d..e80f99eb99 100644
--- a/arch/arm/mach-imx/xload-imx-nand.c
+++ b/arch/arm/mach-imx/xload-imx-nand.c
@@ -7,10 +7,10 @@
 #include <io.h>
 #include <linux/mtd/rawnand.h>
 #include <linux/mtd/nand.h>
-#include <mach/imx-nand.h>
-#include <mach/generic.h>
-#include <mach/imx53-regs.h>
-#include <mach/xload.h>
+#include <mach/imx/imx-nand.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx53-regs.h>
+#include <mach/imx/xload.h>
 
 struct imx_nand {
 	void __iomem *base;
diff --git a/arch/arm/mach-imx/xload-spi.c b/arch/arm/mach-imx/xload-spi.c
index 2a01b0d806..621e9557be 100644
--- a/arch/arm/mach-imx/xload-spi.c
+++ b/arch/arm/mach-imx/xload-spi.c
@@ -3,12 +3,12 @@
 #include <common.h>
 #include <io.h>
 #include <spi/imx-spi.h>
-#include <mach/imx6-regs.h>
-#include <mach/generic.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/generic.h>
 #include <bootsource.h>
 #include <asm/sections.h>
 #include <linux/sizes.h>
-#include <mach/xload.h>
+#include <mach/imx/xload.h>
 
 static int cspi_2_3_read_data(void __iomem *base, u32 *data)
 {
diff --git a/common/filetype.c b/common/filetype.c
index 8f79f48bc1..68ea45861d 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -18,7 +18,7 @@
 #include <image-sparse.h>
 #include <elf.h>
 
-#include <arm/mach-imx/include/mach/imx-header.h>
+#include <mach/imx/imx-header.h>
 
 struct filetype_str {
 	const char *name;	/* human readable filetype */
diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 24b0e7592e..f154f6705d 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -25,11 +25,13 @@
 #include <linux/bitops.h>
 #include <io.h>
 #include <crc.h>
-#include <mach/generic.h>
 #include <mtd/mtd-peb.h>
 #include <soc/imx/imx-nand-bcb.h>
 #ifdef CONFIG_ARCH_IMX
-#include <mach/imx6.h>
+#include <mach/imx/imx6.h>
+#include <mach/imx/generic.h>
+#else
+#include <mach/generic.h>
 #endif
 
 static inline int fcb_is_bch_encoded(void)
@@ -1566,7 +1568,7 @@ static int imx7_fcb_read(struct mtd_info *mtd, int block, struct fcb_block **ret
 }
 
 #ifdef CONFIG_ARCH_IMX7
-#include <mach/imx7-regs.h>
+#include <mach/imx/imx7-regs.h>
 
 static void imx7_fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
 		struct fcb_block *fcb, struct mtd_info *mtd)
diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
index fce72987bb..dc3a5c5fd5 100644
--- a/drivers/ata/sata-imx.c
+++ b/drivers/ata/sata-imx.c
@@ -10,8 +10,8 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <malloc.h>
-#include <mach/imx53-regs.h>
-#include <mach/imx6-regs.h>
+#include <mach/imx/imx53-regs.h>
+#include <mach/imx/imx6-regs.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
 #include "ahci.h"
 
diff --git a/drivers/clk/imx/clk-imx1.c b/drivers/clk/imx/clk-imx1.c
index 7c6e09316e..e44f71ffcc 100644
--- a/drivers/clk/imx/clk-imx1.c
+++ b/drivers/clk/imx/clk-imx1.c
@@ -10,7 +10,7 @@
 #include <io.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/imx1-regs.h>
+#include <mach/imx/imx1-regs.h>
 
 #include "clk.h"
 
diff --git a/drivers/clk/imx/clk-imx21.c b/drivers/clk/imx/clk-imx21.c
index 57ad1b466b..bdbd1c7983 100644
--- a/drivers/clk/imx/clk-imx21.c
+++ b/drivers/clk/imx/clk-imx21.c
@@ -12,7 +12,7 @@
 #include <io.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/imx21-regs.h>
+#include <mach/imx/imx21-regs.h>
 
 #include "clk.h"
 
diff --git a/drivers/clk/imx/clk-imx25.c b/drivers/clk/imx/clk-imx25.c
index 285a1b5a05..d0ab4008d0 100644
--- a/drivers/clk/imx/clk-imx25.c
+++ b/drivers/clk/imx/clk-imx25.c
@@ -10,7 +10,7 @@
 #include <io.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/imx25-regs.h>
+#include <mach/imx/imx25-regs.h>
 
 #include "clk.h"
 
diff --git a/drivers/clk/imx/clk-imx27.c b/drivers/clk/imx/clk-imx27.c
index 3a4be36d2a..1489fd1be7 100644
--- a/drivers/clk/imx/clk-imx27.c
+++ b/drivers/clk/imx/clk-imx27.c
@@ -6,9 +6,9 @@
 #include <io.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/imx27-regs.h>
-#include <mach/generic.h>
-#include <mach/revision.h>
+#include <mach/imx/imx27-regs.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/revision.h>
 
 #include "clk.h"
 
diff --git a/drivers/clk/imx/clk-imx31.c b/drivers/clk/imx/clk-imx31.c
index adee9b83b6..349e4d20b4 100644
--- a/drivers/clk/imx/clk-imx31.c
+++ b/drivers/clk/imx/clk-imx31.c
@@ -10,7 +10,7 @@
 #include <io.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/imx31-regs.h>
+#include <mach/imx/imx31-regs.h>
 
 #include "clk.h"
 
diff --git a/drivers/clk/imx/clk-imx35.c b/drivers/clk/imx/clk-imx35.c
index f8f503cb99..cd67d67b16 100644
--- a/drivers/clk/imx/clk-imx35.c
+++ b/drivers/clk/imx/clk-imx35.c
@@ -9,7 +9,7 @@
 #include <io.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/imx35-regs.h>
+#include <mach/imx/imx35-regs.h>
 #include <reset_source.h>
 
 #include "clk.h"
diff --git a/drivers/clk/imx/clk-imx5.c b/drivers/clk/imx/clk-imx5.c
index 68df361fb4..b6cb645ac1 100644
--- a/drivers/clk/imx/clk-imx5.c
+++ b/drivers/clk/imx/clk-imx5.c
@@ -10,9 +10,9 @@
 #include <of.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/imx50-regs.h>
-#include <mach/imx51-regs.h>
-#include <mach/imx53-regs.h>
+#include <mach/imx/imx50-regs.h>
+#include <mach/imx/imx51-regs.h>
+#include <mach/imx/imx53-regs.h>
 #include <dt-bindings/clock/imx5-clock.h>
 
 #include "clk.h"
diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index 6d2d5329cf..f03696fbbc 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -12,9 +12,9 @@
 #include <of.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/imx6-regs.h>
-#include <mach/revision.h>
-#include <mach/imx6.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/revision.h>
+#include <mach/imx/imx6.h>
 #include <dt-bindings/clock/imx6qdl-clock.h>
 
 #include "clk.h"
diff --git a/drivers/clk/imx/clk-imx6sl.c b/drivers/clk/imx/clk-imx6sl.c
index ca184b4a44..7159ffb8d9 100644
--- a/drivers/clk/imx/clk-imx6sl.c
+++ b/drivers/clk/imx/clk-imx6sl.c
@@ -12,9 +12,9 @@
 #include <linux/clkdev.h>
 #include <linux/err.h>
 #include <linux/clk.h>
-#include <mach/imx6-regs.h>
-#include <mach/revision.h>
-#include <mach/imx6.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/revision.h>
+#include <mach/imx/imx6.h>
 
 #include "clk.h"
 #include "common.h"
diff --git a/drivers/clk/imx/clk-imx6sx.c b/drivers/clk/imx/clk-imx6sx.c
index 57840b4c3c..21b40a73a2 100644
--- a/drivers/clk/imx/clk-imx6sx.c
+++ b/drivers/clk/imx/clk-imx6sx.c
@@ -12,9 +12,9 @@
 #include <linux/clkdev.h>
 #include <linux/err.h>
 #include <linux/clk.h>
-#include <mach/imx6-regs.h>
-#include <mach/revision.h>
-#include <mach/imx6.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/revision.h>
+#include <mach/imx/imx6.h>
 
 #include "clk.h"
 #include "common.h"
diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
index 08546009b3..f3ee60794d 100644
--- a/drivers/clk/imx/clk-imx6ul.c
+++ b/drivers/clk/imx/clk-imx6ul.c
@@ -11,9 +11,9 @@
 #include <of.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/imx6-regs.h>
-#include <mach/revision.h>
-#include <mach/imx6.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/revision.h>
+#include <mach/imx/imx6.h>
 #include <dt-bindings/clock/imx6ul-clock.h>
 
 #include "clk.h"
diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
index 15254d10df..0b8e96b87d 100644
--- a/drivers/clk/imx/clk-imx7.c
+++ b/drivers/clk/imx/clk-imx7.c
@@ -12,8 +12,8 @@
 #include <of.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/imx7-regs.h>
-#include <mach/revision.h>
+#include <mach/imx/imx7-regs.h>
+#include <mach/imx/revision.h>
 #include <dt-bindings/clock/imx7d-clock.h>
 
 #include "clk.h"
diff --git a/drivers/clk/imx/clk-vf610.c b/drivers/clk/imx/clk-vf610.c
index 1bd1fe5c44..89899e0dc9 100644
--- a/drivers/clk/imx/clk-vf610.c
+++ b/drivers/clk/imx/clk-vf610.c
@@ -13,8 +13,8 @@
 #include <linux/clk.h>
 #include <notifier.h>
 #include <dt-bindings/clock/vf610-clock.h>
-#include <mach/vf610-regs.h>
-#include <mach/vf610-fusemap.h>
+#include <mach/imx/vf610-regs.h>
+#include <mach/imx/vf610-fusemap.h>
 
 #include "clk.h"
 
diff --git a/drivers/ddr/imx8m/ddr_init.c b/drivers/ddr/imx8m/ddr_init.c
index 18969ddb53..1645368006 100644
--- a/drivers/ddr/imx8m/ddr_init.c
+++ b/drivers/ddr/imx8m/ddr_init.c
@@ -9,9 +9,9 @@
 #include <errno.h>
 #include <io.h>
 #include <soc/imx8m/ddr.h>
-#include <mach/generic.h>
-#include <mach/imx8m-regs.h>
-#include <mach/imx8m-ccm-regs.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx8m-regs.h>
+#include <mach/imx/imx8m-ccm-regs.h>
 
 bool imx8m_ddr_old_spreadsheet = true;
 
diff --git a/drivers/ddr/imx8m/ddrphy_train.c b/drivers/ddr/imx8m/ddrphy_train.c
index e9d35afdfb..6a98fa0545 100644
--- a/drivers/ddr/imx8m/ddrphy_train.c
+++ b/drivers/ddr/imx8m/ddrphy_train.c
@@ -9,7 +9,7 @@
 #include <linux/kernel.h>
 #include <soc/imx8m/ddr.h>
 #include <firmware.h>
-#include <mach/imx8m-regs.h>
+#include <mach/imx/imx8m-regs.h>
 
 static const u16 *lpddr4_imem_1d;
 static size_t lpddr4_imem_1d_size;
diff --git a/drivers/ddr/imx8m/ddrphy_utils.c b/drivers/ddr/imx8m/ddrphy_utils.c
index 7f863a1736..353a265136 100644
--- a/drivers/ddr/imx8m/ddrphy_utils.c
+++ b/drivers/ddr/imx8m/ddrphy_utils.c
@@ -10,8 +10,8 @@
 #include <io.h>
 #include <linux/iopoll.h>
 #include <soc/imx8m/ddr.h>
-#include <mach/imx8m-regs.h>
-#include <mach/imx8m-ccm-regs.h>
+#include <mach/imx/imx8m-regs.h>
+#include <mach/imx/imx8m-ccm-regs.h>
 
 /* DDR Transfer rate, bus clock is transfer rate / 2, and the DDRC runs at bus
  * clock / 2, which is therefor transfer rate / 4.  */
diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 2746f27a1e..65384a6c10 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -9,10 +9,10 @@
 #include <hab.h>
 #include <regmap.h>
 #include <fs.h>
-#include <mach/iim.h>
-#include <mach/imx25-fusemap.h>
-#include <mach/ocotp.h>
-#include <mach/imx6-fusemap.h>
+#include <mach/imx/iim.h>
+#include <mach/imx/imx25-fusemap.h>
+#include <mach/imx/ocotp.h>
+#include <mach/imx/imx6-fusemap.h>
 
 bool imx_hab_srk_hash_valid(const void *buf)
 {
diff --git a/drivers/hab/habv3.c b/drivers/hab/habv3.c
index 235db78c10..4818dae7d1 100644
--- a/drivers/hab/habv3.c
+++ b/drivers/hab/habv3.c
@@ -5,7 +5,7 @@
 #include <common.h>
 #include <hab.h>
 #include <io.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 
 struct hab_status {
 	u8 value;
diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 9101fc1cae..252e38f655 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -14,8 +14,8 @@
 #include <linux/arm-smccc.h>
 #include <asm/cache.h>
 
-#include <mach/generic.h>
-#include <mach/imx8mq.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx8mq.h>
 
 #define HABV4_RVT_IMX28 0xffff8af8
 #define HABV4_RVT_IMX6_OLD 0x00000094
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index ea0b395bef..40c2882dc4 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -8,14 +8,14 @@
 #include <linux/sizes.h>
 #include <asm/sections.h>
 #include <asm/cache.h>
-#include <mach/xload.h>
+#include <mach/imx/xload.h>
 #ifdef CONFIG_ARCH_IMX
-#include <mach/atf.h>
-#include <mach/imx6-regs.h>
-#include <mach/imx7-regs.h>
-#include <mach/imx8mq-regs.h>
-#include <mach/imx8mm-regs.h>
-#include <mach/imx-header.h>
+#include <mach/imx/atf.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx7-regs.h>
+#include <mach/imx/imx8mq-regs.h>
+#include <mach/imx/imx8mm-regs.h>
+#include <mach/imx/imx-header.h>
 #endif
 #ifdef CONFIG_ARCH_LS1046
 #include <mach/layerscape/xload.h>
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 3438e9fc79..39cb2787f4 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -18,8 +18,8 @@
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
 #include <linux/clk.h>
-#include <mach/generic.h>
-#include <mach/imx-nand.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx-nand.h>
 #include <io.h>
 #include <of_mtd.h>
 #include <errno.h>
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 213e0d25d4..17099f7db2 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -32,7 +32,7 @@
 #include <io.h>
 #include <dma/apbh-dma.h>
 #include <stmp-device.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <soc/imx/gpmi-nand.h>
 
 #include "internals.h"
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index b478ece306..ff1e815c6b 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -25,9 +25,14 @@
 #include <clock.h>
 #include <regmap.h>
 #include <linux/clk.h>
-#include <mach/ocotp.h>
 #include <machine_id.h>
+#ifdef CONFIG_ARCH_IMX
+#include <mach/imx/ocotp.h>
+#include <mach/imx/ocotp-fusemap.h>
+#else
+#include <mach/ocotp.h>
 #include <mach/ocotp-fusemap.h>
+#endif
 #include <soc/imx8m/featctrl.h>
 #include <linux/nvmem-provider.h>
 
diff --git a/drivers/pinctrl/imx-iomux-v1.c b/drivers/pinctrl/imx-iomux-v1.c
index ccbacebab9..6fe0286a6a 100644
--- a/drivers/pinctrl/imx-iomux-v1.c
+++ b/drivers/pinctrl/imx-iomux-v1.c
@@ -4,7 +4,7 @@
 #include <init.h>
 #include <malloc.h>
 #include <pinctrl.h>
-#include <mach/iomux-v1.h>
+#include <mach/imx/iomux-v1.h>
 #include <linux/err.h>
 
 /*
diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index aacab2ad51..7952c65a50 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -11,8 +11,8 @@
 #include <of.h>
 #include <pinctrl.h>
 #include <malloc.h>
-#include <mach/iomux-v3.h>
-#include <mach/generic.h>
+#include <mach/imx/iomux-v3.h>
+#include <mach/imx/generic.h>
 
 struct imx_iomux_v3 {
 	void __iomem *base;
diff --git a/drivers/pinctrl/pinctrl-vf610.c b/drivers/pinctrl/pinctrl-vf610.c
index 73194e9efa..9f150cd89d 100644
--- a/drivers/pinctrl/pinctrl-vf610.c
+++ b/drivers/pinctrl/pinctrl-vf610.c
@@ -12,7 +12,7 @@
 #include <malloc.h>
 #include <gpio.h>
 
-#include <mach/iomux-vf610.h>
+#include <mach/imx/iomux-vf610.h>
 
 enum {
 	PINCTRL_VF610_MUX_LINE_SIZE = 20,
diff --git a/drivers/spi/dspi_spi.c b/drivers/spi/dspi_spi.c
index 5ad9bd0179..8d6687cda4 100644
--- a/drivers/spi/dspi_spi.c
+++ b/drivers/spi/dspi_spi.c
@@ -21,8 +21,8 @@
 #include <gpio.h>
 #include <of_gpio.h>
 #include <of_device.h>
-#include <mach/spi.h>
-#include <mach/generic.h>
+#include <mach/imx/spi.h>
+#include <mach/imx/generic.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <clock.h>
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index f81d9e851f..f45b429699 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -15,8 +15,8 @@
 #include <malloc.h>
 #include <gpio.h>
 #include <of_gpio.h>
-#include <mach/spi.h>
-#include <mach/generic.h>
+#include <mach/imx/spi.h>
+#include <mach/imx/generic.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <clock.h>
diff --git a/drivers/usb/gadget/fsl_udc_pbl.c b/drivers/usb/gadget/fsl_udc_pbl.c
index d2f2b9e195..218d61db3c 100644
--- a/drivers/usb/gadget/fsl_udc_pbl.c
+++ b/drivers/usb/gadget/fsl_udc_pbl.c
@@ -3,9 +3,9 @@
 #include <common.h>
 #include <usb/ch9.h>
 #include <soc/fsl/fsl_udc.h>
-#include <mach/imx8mm-regs.h>
-#include <mach/imx6-regs.h>
-#include <mach/imx7-regs.h>
+#include <mach/imx/imx8mm-regs.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx7-regs.h>
 
 static void fsl_queue_td(struct usb_dr_device *dr, struct ep_td_struct *dtd,
 			 int ep_is_in)
diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index ec3ad81cdd..bd91ac2e57 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -10,8 +10,8 @@
 #include <of.h>
 #include <errno.h>
 #include <usb/chipidea-imx.h>
-#include <mach/imx6-regs.h>
-#include <mach/iomux-mx6.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/iomux-mx6.h>
 
 #define MX25_OTG_SIC_SHIFT	29
 #define MX25_OTG_SIC_MASK	(0x3 << MX25_OTG_SIC_SHIFT)
diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.c b/drivers/video/imx-ipu-v3/imx-hdmi.c
index 84b5d92fa6..06fa929352 100644
--- a/drivers/video/imx-ipu-v3/imx-hdmi.c
+++ b/drivers/video/imx-ipu-v3/imx-hdmi.c
@@ -18,8 +18,8 @@
 #include <i2c/i2c.h>
 #include <video/media-bus-format.h>
 #include <video/vpl.h>
-#include <mach/imx6-regs.h>
-#include <mach/imx53-regs.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx53-regs.h>
 
 #include "imx-ipu-v3.h"
 #include "ipuv3-plane.h"
diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index 36e7f7a80a..4a24a3479a 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -19,8 +19,8 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <linux/math64.h>
-#include <mach/imx6-regs.h>
-#include <mach/imx53-regs.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx53-regs.h>
 
 #include "imx-ipu-v3.h"
 #include "ipuv3-plane.h"
diff --git a/drivers/video/imx-ipu-v3/ipu-common.c b/drivers/video/imx-ipu-v3/ipu-common.c
index 4da027c584..576387dab3 100644
--- a/drivers/video/imx-ipu-v3/ipu-common.c
+++ b/drivers/video/imx-ipu-v3/ipu-common.c
@@ -11,10 +11,10 @@
 #include <driver.h>
 #include <init.h>
 #include <linux/mutex.h>
-#include <mach/generic.h>
-#include <mach/imx6-regs.h>
-#include <mach/imx53-regs.h>
-#include <mach/imx51-regs.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx53-regs.h>
+#include <mach/imx/imx51-regs.h>
 
 #include "imx-ipu-v3.h"
 #include "ipu-prv.h"
diff --git a/arch/arm/mach-imx/include/mach/atf.h b/include/mach/imx/atf.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/atf.h
rename to include/mach/imx/atf.h
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/include/mach/imx/bbu.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/bbu.h
rename to include/mach/imx/bbu.h
diff --git a/arch/arm/mach-imx/include/mach/ccm.h b/include/mach/imx/ccm.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/ccm.h
rename to include/mach/imx/ccm.h
diff --git a/arch/arm/mach-imx/include/mach/clock-imx51_53.h b/include/mach/imx/clock-imx51_53.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/clock-imx51_53.h
rename to include/mach/imx/clock-imx51_53.h
diff --git a/arch/arm/mach-imx/include/mach/clock-imx6.h b/include/mach/imx/clock-imx6.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/clock-imx6.h
rename to include/mach/imx/clock-imx6.h
diff --git a/arch/arm/mach-imx/include/mach/clock-vf610.h b/include/mach/imx/clock-vf610.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/clock-vf610.h
rename to include/mach/imx/clock-vf610.h
diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/include/mach/imx/debug_ll.h
similarity index 89%
rename from arch/arm/mach-imx/include/mach/debug_ll.h
rename to include/mach/imx/debug_ll.h
index 98aec5198f..1b554b2d22 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/include/mach/imx/debug_ll.h
@@ -6,19 +6,19 @@
 #include <io.h>
 #include <config.h>
 #include <common.h>
-#include <mach/imx1-regs.h>
-#include <mach/imx21-regs.h>
-#include <mach/imx25-regs.h>
-#include <mach/imx27-regs.h>
-#include <mach/imx31-regs.h>
-#include <mach/imx35-regs.h>
-#include <mach/imx50-regs.h>
-#include <mach/imx51-regs.h>
-#include <mach/imx53-regs.h>
-#include <mach/imx6-regs.h>
-#include <mach/imx7-regs.h>
-#include <mach/imx8m-regs.h>
-#include <mach/vf610-regs.h>
+#include <mach/imx/imx1-regs.h>
+#include <mach/imx/imx21-regs.h>
+#include <mach/imx/imx25-regs.h>
+#include <mach/imx/imx27-regs.h>
+#include <mach/imx/imx31-regs.h>
+#include <mach/imx/imx35-regs.h>
+#include <mach/imx/imx50-regs.h>
+#include <mach/imx/imx51-regs.h>
+#include <mach/imx/imx53-regs.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx7-regs.h>
+#include <mach/imx/imx8m-regs.h>
+#include <mach/imx/vf610-regs.h>
 
 #include <serial/imx-uart.h>
 #include <serial/lpuart.h>
diff --git a/arch/arm/mach-imx/include/mach/devices-imx1.h b/include/mach/imx/devices-imx1.h
similarity index 81%
rename from arch/arm/mach-imx/include/mach/devices-imx1.h
rename to include/mach/imx/devices-imx1.h
index 795149c92f..64c917d714 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx1.h
+++ b/include/mach/imx/devices-imx1.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#include <mach/devices.h>
-#include <mach/imx1-regs.h>
+#include <mach/imx/devices.h>
+#include <mach/imx/imx1-regs.h>
 
 static inline struct device *imx1_add_uart0(void)
 {
diff --git a/arch/arm/mach-imx/include/mach/devices-imx21.h b/include/mach/imx/devices-imx21.h
similarity index 92%
rename from arch/arm/mach-imx/include/mach/devices-imx21.h
rename to include/mach/imx/devices-imx21.h
index c4951f7fd9..bcc91276f4 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx21.h
+++ b/include/mach/imx/devices-imx21.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#include <mach/devices.h>
-#include <mach/imx21-regs.h>
+#include <mach/imx/devices.h>
+#include <mach/imx/imx21-regs.h>
 
 static inline struct device *imx21_add_uart0(void)
 {
diff --git a/arch/arm/mach-imx/include/mach/devices-imx25.h b/include/mach/imx/devices-imx25.h
similarity index 97%
rename from arch/arm/mach-imx/include/mach/devices-imx25.h
rename to include/mach/imx/devices-imx25.h
index 6c768218c4..058f2a89a1 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx25.h
+++ b/include/mach/imx/devices-imx25.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#include <mach/devices.h>
-#include <mach/imx25-regs.h>
+#include <mach/imx/devices.h>
+#include <mach/imx/imx25-regs.h>
 
 static inline struct device *imx25_add_i2c0(struct i2c_platform_data *pdata)
 {
diff --git a/arch/arm/mach-imx/include/mach/devices-imx27.h b/include/mach/imx/devices-imx27.h
similarity index 97%
rename from arch/arm/mach-imx/include/mach/devices-imx27.h
rename to include/mach/imx/devices-imx27.h
index 0e1c90e697..28013e3bf5 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx27.h
+++ b/include/mach/imx/devices-imx27.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#include <mach/devices.h>
-#include <mach/imx27-regs.h>
+#include <mach/imx/devices.h>
+#include <mach/imx/imx27-regs.h>
 
 static inline struct device *imx27_add_spi0(struct spi_imx_master *pdata)
 {
diff --git a/arch/arm/mach-imx/include/mach/devices-imx31.h b/include/mach/imx/devices-imx31.h
similarity index 97%
rename from arch/arm/mach-imx/include/mach/devices-imx31.h
rename to include/mach/imx/devices-imx31.h
index b926a6ac33..8be3e0d582 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx31.h
+++ b/include/mach/imx/devices-imx31.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#include <mach/imx31-regs.h>
-#include <mach/devices.h>
+#include <mach/imx/imx31-regs.h>
+#include <mach/imx/devices.h>
 
 static inline struct device *imx31_add_i2c0(void *pdata)
 {
diff --git a/arch/arm/mach-imx/include/mach/devices-imx35.h b/include/mach/imx/devices-imx35.h
similarity index 96%
rename from arch/arm/mach-imx/include/mach/devices-imx35.h
rename to include/mach/imx/devices-imx35.h
index a48641bdbb..68d6671592 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx35.h
+++ b/include/mach/imx/devices-imx35.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#include <mach/devices.h>
-#include <mach/imx35-regs.h>
+#include <mach/imx/devices.h>
+#include <mach/imx/imx35-regs.h>
 
 static inline struct device *imx35_add_i2c0(struct i2c_platform_data *pdata)
 {
diff --git a/arch/arm/mach-imx/include/mach/devices-imx50.h b/include/mach/imx/devices-imx50.h
similarity index 97%
rename from arch/arm/mach-imx/include/mach/devices-imx50.h
rename to include/mach/imx/devices-imx50.h
index ebfc9c07c1..ee577d99ec 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx50.h
+++ b/include/mach/imx/devices-imx50.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#include <mach/devices.h>
-#include <mach/imx50-regs.h>
+#include <mach/imx/devices.h>
+#include <mach/imx/imx50-regs.h>
 
 static inline struct device *imx50_add_spi0(struct spi_imx_master *pdata)
 {
diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/include/mach/imx/devices-imx51.h
similarity index 98%
rename from arch/arm/mach-imx/include/mach/devices-imx51.h
rename to include/mach/imx/devices-imx51.h
index 453ae9a0aa..34e550d3c8 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/include/mach/imx/devices-imx51.h
@@ -1,8 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
 #include <linux/sizes.h>
-#include <mach/devices.h>
-#include <mach/imx51-regs.h>
+#include <mach/imx/devices.h>
+#include <mach/imx/imx51-regs.h>
 
 static inline struct device *imx51_add_spi0(struct spi_imx_master *pdata)
 {
diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/include/mach/imx/devices-imx53.h
similarity index 97%
rename from arch/arm/mach-imx/include/mach/devices-imx53.h
rename to include/mach/imx/devices-imx53.h
index 392687a191..080573dfd4 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/include/mach/imx/devices-imx53.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#include <mach/devices.h>
-#include <mach/imx53-regs.h>
+#include <mach/imx/devices.h>
+#include <mach/imx/imx53-regs.h>
 
 static inline struct device *imx53_add_cspi(struct spi_imx_master *pdata)
 {
diff --git a/arch/arm/mach-imx/include/mach/devices-imx6.h b/include/mach/imx/devices-imx6.h
similarity index 97%
rename from arch/arm/mach-imx/include/mach/devices-imx6.h
rename to include/mach/imx/devices-imx6.h
index 38a940391e..9c9c788e51 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx6.h
+++ b/include/mach/imx/devices-imx6.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#include <mach/devices.h>
-#include <mach/imx6-regs.h>
+#include <mach/imx/devices.h>
+#include <mach/imx/imx6-regs.h>
 
 static inline struct device *imx6_add_uart0(void)
 {
diff --git a/arch/arm/mach-imx/include/mach/devices.h b/include/mach/imx/devices.h
similarity index 94%
rename from arch/arm/mach-imx/include/mach/devices.h
rename to include/mach/imx/devices.h
index 0e68125f26..3d1f8eb237 100644
--- a/arch/arm/mach-imx/include/mach/devices.h
+++ b/include/mach/imx/devices.h
@@ -3,10 +3,10 @@
 #include <platform_data/eth-fec.h>
 #include <input/matrix_keypad.h>
 #include <i2c/i2c.h>
-#include <mach/spi.h>
-#include <mach/imx-nand.h>
+#include <mach/imx/spi.h>
+#include <mach/imx/imx-nand.h>
 #include <platform_data/imxfb.h>
-#include <mach/imx-ipu-fb.h>
+#include <mach/imx/imx-ipu-fb.h>
 #include <platform_data/mmc-esdhc-imx.h>
 #include <usb/chipidea-imx.h>
 
diff --git a/arch/arm/mach-imx/include/mach/esdctl-v4.h b/include/mach/imx/esdctl-v4.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/esdctl-v4.h
rename to include/mach/imx/esdctl-v4.h
diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/include/mach/imx/esdctl.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/esdctl.h
rename to include/mach/imx/esdctl.h
diff --git a/arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-sabresd.imxcfg b/include/mach/imx/flash-header/imx7d-ddr-sabresd.imxcfg
similarity index 98%
rename from arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-sabresd.imxcfg
rename to include/mach/imx/flash-header/imx7d-ddr-sabresd.imxcfg
index e98f055eea..3bcff8d8b0 100644
--- a/arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-sabresd.imxcfg
+++ b/include/mach/imx/flash-header/imx7d-ddr-sabresd.imxcfg
@@ -12,7 +12,7 @@
  * 1a8150d4b16fbafa6f1d207ddb85eda7dc399e2d
  */
 
-#include <mach/imx7-ddr-regs.h>
+#include <mach/imx/imx7-ddr-regs.h>
 
 wm 32 0x30340004 0x4F400005
 
diff --git a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg b/include/mach/imx/flash-header/vf610-ddr-cr-default.imxcfg
similarity index 100%
rename from arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
rename to include/mach/imx/flash-header/vf610-ddr-cr-default.imxcfg
diff --git a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-phy-default.imxcfg b/include/mach/imx/flash-header/vf610-ddr-phy-default.imxcfg
similarity index 100%
rename from arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-phy-default.imxcfg
rename to include/mach/imx/flash-header/vf610-ddr-phy-default.imxcfg
diff --git a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-pll2-400mhz.imxcfg b/include/mach/imx/flash-header/vf610-ddr-pll2-400mhz.imxcfg
similarity index 100%
rename from arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-pll2-400mhz.imxcfg
rename to include/mach/imx/flash-header/vf610-ddr-pll2-400mhz.imxcfg
diff --git a/arch/arm/mach-imx/include/mach/flash-header/vf610-iomux-ddr-default.imxcfg b/include/mach/imx/flash-header/vf610-iomux-ddr-default.imxcfg
similarity index 100%
rename from arch/arm/mach-imx/include/mach/flash-header/vf610-iomux-ddr-default.imxcfg
rename to include/mach/imx/flash-header/vf610-iomux-ddr-default.imxcfg
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/include/mach/imx/generic.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/generic.h
rename to include/mach/imx/generic.h
index 12a7c208b7..f674e28697 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/include/mach/imx/generic.h
@@ -6,7 +6,7 @@
 #include <linux/compiler.h>
 #include <linux/types.h>
 #include <bootsource.h>
-#include <mach/imx_cpu_types.h>
+#include <mach/imx/imx_cpu_types.h>
 
 u64 imx_uid(void);
 
diff --git a/arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h b/include/mach/imx/habv3-imx25-gencsf.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h
rename to include/mach/imx/habv3-imx25-gencsf.h
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h b/include/mach/imx/habv4-imx6-gencsf-template.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
rename to include/mach/imx/habv4-imx6-gencsf-template.h
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h b/include/mach/imx/habv4-imx6-gencsf.h
similarity index 70%
rename from arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
rename to include/mach/imx/habv4-imx6-gencsf.h
index 2044f23c7a..fcf6c8aedc 100644
--- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
+++ b/include/mach/imx/habv4-imx6-gencsf.h
@@ -3,4 +3,4 @@
 #define SETUP_HABV4_ENGINE CAAM
 #define SETUP_HABV4_FEATURES  RNG, MID
 
-#include <mach/habv4-imx6-gencsf-template.h>
+#include <mach/imx/habv4-imx6-gencsf-template.h>
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h b/include/mach/imx/habv4-imx6ull-gencsf.h
similarity index 60%
rename from arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h
rename to include/mach/imx/habv4-imx6ull-gencsf.h
index 0efd09888f..c36f473d8e 100644
--- a/arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h
+++ b/include/mach/imx/habv4-imx6ull-gencsf.h
@@ -2,4 +2,4 @@
 
 #define SETUP_HABV4_ENGINE SW
 
-#include <mach/habv4-imx6-gencsf-template.h>
+#include <mach/imx/habv4-imx6-gencsf-template.h>
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h b/include/mach/imx/habv4-imx8-gencsf.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h
rename to include/mach/imx/habv4-imx8-gencsf.h
diff --git a/arch/arm/mach-imx/include/mach/iim.h b/include/mach/imx/iim.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/iim.h
rename to include/mach/imx/iim.h
diff --git a/arch/arm/mach-imx/include/mach/imx-gpio.h b/include/mach/imx/imx-gpio.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx-gpio.h
rename to include/mach/imx/imx-gpio.h
diff --git a/arch/arm/mach-imx/include/mach/imx-header.h b/include/mach/imx/imx-header.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx-header.h
rename to include/mach/imx/imx-header.h
diff --git a/arch/arm/mach-imx/include/mach/imx-ipu-fb.h b/include/mach/imx/imx-ipu-fb.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx-ipu-fb.h
rename to include/mach/imx/imx-ipu-fb.h
diff --git a/arch/arm/mach-imx/include/mach/imx-nand.h b/include/mach/imx/imx-nand.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx-nand.h
rename to include/mach/imx/imx-nand.h
diff --git a/arch/arm/mach-imx/include/mach/imx-pll.h b/include/mach/imx/imx-pll.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx-pll.h
rename to include/mach/imx/imx-pll.h
diff --git a/arch/arm/mach-imx/include/mach/imx1-regs.h b/include/mach/imx/imx1-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx1-regs.h
rename to include/mach/imx/imx1-regs.h
diff --git a/arch/arm/mach-imx/include/mach/imx21-regs.h b/include/mach/imx/imx21-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx21-regs.h
rename to include/mach/imx/imx21-regs.h
diff --git a/arch/arm/mach-imx/include/mach/imx25-fusemap.h b/include/mach/imx/imx25-fusemap.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/imx25-fusemap.h
rename to include/mach/imx/imx25-fusemap.h
index f21e3d9505..0b674fb580 100644
--- a/arch/arm/mach-imx/include/mach/imx25-fusemap.h
+++ b/include/mach/imx/imx25-fusemap.h
@@ -3,7 +3,7 @@
 #ifndef __MACH_IMX25_FUSEMAP_H
 #define __MACH_IMX25_FUSEMAP_H
 
-#include <mach/iim.h>
+#include <mach/imx/iim.h>
 
 /* Fuse bank write protect */
 #define IMX25_IIM_FBWP(bank)		(IIM_BANK(bank) | IIM_BYTE(0) | IIM_BIT(7))
diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/include/mach/imx/imx25-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx25-regs.h
rename to include/mach/imx/imx25-regs.h
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/include/mach/imx/imx27-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx27-regs.h
rename to include/mach/imx/imx27-regs.h
diff --git a/arch/arm/mach-imx/include/mach/imx31-regs.h b/include/mach/imx/imx31-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx31-regs.h
rename to include/mach/imx/imx31-regs.h
diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/include/mach/imx/imx35-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx35-regs.h
rename to include/mach/imx/imx35-regs.h
diff --git a/arch/arm/mach-imx/include/mach/imx5.h b/include/mach/imx/imx5.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx5.h
rename to include/mach/imx/imx5.h
diff --git a/arch/arm/mach-imx/include/mach/imx50-regs.h b/include/mach/imx/imx50-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx50-regs.h
rename to include/mach/imx/imx50-regs.h
diff --git a/arch/arm/mach-imx/include/mach/imx51-regs.h b/include/mach/imx/imx51-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx51-regs.h
rename to include/mach/imx/imx51-regs.h
diff --git a/arch/arm/mach-imx/include/mach/imx53-regs.h b/include/mach/imx/imx53-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx53-regs.h
rename to include/mach/imx/imx53-regs.h
diff --git a/arch/arm/mach-imx/include/mach/imx6-anadig.h b/include/mach/imx/imx6-anadig.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx6-anadig.h
rename to include/mach/imx/imx6-anadig.h
diff --git a/arch/arm/mach-imx/include/mach/imx6-ddr-regs.h b/include/mach/imx/imx6-ddr-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx6-ddr-regs.h
rename to include/mach/imx/imx6-ddr-regs.h
diff --git a/arch/arm/mach-imx/include/mach/imx6-fusemap.h b/include/mach/imx/imx6-fusemap.h
similarity index 97%
rename from arch/arm/mach-imx/include/mach/imx6-fusemap.h
rename to include/mach/imx/imx6-fusemap.h
index de5eb51e5d..42abcd1dfd 100644
--- a/arch/arm/mach-imx/include/mach/imx6-fusemap.h
+++ b/include/mach/imx/imx6-fusemap.h
@@ -3,7 +3,7 @@
 #ifndef __MACH_IMX_IMX6_OCOTP_H
 #define __MACH_IMX_IMX6_OCOTP_H
 
-#include <mach/ocotp-fusemap.h>
+#include <mach/imx/ocotp-fusemap.h>
 
 #define IMX6_OCOTP_SI_REV		(OCOTP_WORD(0x430) | OCOTP_BIT(16) | OCOTP_WIDTH(4))
 #define IMX6_OCOTP_SATA_RST_SRC		(OCOTP_WORD(0x430) | OCOTP_BIT(24) | OCOTP_WIDTH(1))
diff --git a/arch/arm/mach-imx/include/mach/imx6-mmdc.h b/include/mach/imx/imx6-mmdc.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/imx6-mmdc.h
rename to include/mach/imx/imx6-mmdc.h
index 098ba4f5bf..bf8d41fe58 100644
--- a/arch/arm/mach-imx/include/mach/imx6-mmdc.h
+++ b/include/mach/imx/imx6-mmdc.h
@@ -3,7 +3,7 @@
 #ifndef __MACH_MMDC_H
 #define __MACH_MMDC_H
 
-#include <mach/imx6-regs.h>
+#include <mach/imx/imx6-regs.h>
 
 #define P0_IPS (void __iomem *)MX6_MMDC_P0_BASE_ADDR
 #define P1_IPS (void __iomem *)MX6_MMDC_P1_BASE_ADDR
diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/include/mach/imx/imx6-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx6-regs.h
rename to include/mach/imx/imx6-regs.h
diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/include/mach/imx/imx6.h
similarity index 97%
rename from arch/arm/mach-imx/include/mach/imx6.h
rename to include/mach/imx/imx6.h
index 0f3397006a..a67cc9df96 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/include/mach/imx/imx6.h
@@ -4,9 +4,9 @@
 #define __MACH_IMX6_H
 
 #include <io.h>
-#include <mach/generic.h>
-#include <mach/imx6-regs.h>
-#include <mach/revision.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/revision.h>
 
 #include <poweroff.h>
 
diff --git a/arch/arm/mach-imx/include/mach/imx6dl-ddr-regs.h b/include/mach/imx/imx6dl-ddr-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx6dl-ddr-regs.h
rename to include/mach/imx/imx6dl-ddr-regs.h
diff --git a/arch/arm/mach-imx/include/mach/imx6q-ddr-regs.h b/include/mach/imx/imx6q-ddr-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx6q-ddr-regs.h
rename to include/mach/imx/imx6q-ddr-regs.h
diff --git a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h b/include/mach/imx/imx7-ccm-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
rename to include/mach/imx/imx7-ccm-regs.h
diff --git a/arch/arm/mach-imx/include/mach/imx7-ddr-regs.h b/include/mach/imx/imx7-ddr-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx7-ddr-regs.h
rename to include/mach/imx/imx7-ddr-regs.h
diff --git a/arch/arm/mach-imx/include/mach/imx7-regs.h b/include/mach/imx/imx7-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx7-regs.h
rename to include/mach/imx/imx7-regs.h
diff --git a/arch/arm/mach-imx/include/mach/imx7.h b/include/mach/imx/imx7.h
similarity index 92%
rename from arch/arm/mach-imx/include/mach/imx7.h
rename to include/mach/imx/imx7.h
index bc131805af..f2db486b48 100644
--- a/arch/arm/mach-imx/include/mach/imx7.h
+++ b/include/mach/imx/imx7.h
@@ -4,9 +4,9 @@
 #define __MACH_IMX7_H
 
 #include <io.h>
-#include <mach/generic.h>
-#include <mach/imx7-regs.h>
-#include <mach/revision.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx7-regs.h>
+#include <mach/imx/revision.h>
 
 void imx7_init_lowlevel(void);
 
diff --git a/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h b/include/mach/imx/imx8m-ccm-regs.h
similarity index 98%
rename from arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
rename to include/mach/imx/imx8m-ccm-regs.h
index 659615e1cc..29186eb8a7 100644
--- a/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
+++ b/include/mach/imx/imx8m-ccm-regs.h
@@ -3,7 +3,7 @@
 #ifndef __MACH_IMX8_CCM_REGS_H__
 #define __MACH_IMX8_CCM_REGS_H__
 
-#include <mach/imx8mq-regs.h>
+#include <mach/imx/imx8mq-regs.h>
 
 #define IMX8M_CCM_CCGR_DDR1	5
 #define IMX8M_CCM_CCGR_I2C1	23
diff --git a/arch/arm/mach-imx/include/mach/imx8m-regs.h b/include/mach/imx/imx8m-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx8m-regs.h
rename to include/mach/imx/imx8m-regs.h
diff --git a/arch/arm/mach-imx/include/mach/imx8mm-regs.h b/include/mach/imx/imx8mm-regs.h
similarity index 97%
rename from arch/arm/mach-imx/include/mach/imx8mm-regs.h
rename to include/mach/imx/imx8mm-regs.h
index 4c6cabe5af..dae062854c 100644
--- a/arch/arm/mach-imx/include/mach/imx8mm-regs.h
+++ b/include/mach/imx/imx8mm-regs.h
@@ -3,7 +3,7 @@
 #ifndef __MACH_IMX8MM_REGS_H
 #define __MACH_IMX8MM_REGS_H
 
-#include <mach/imx8m-regs.h>
+#include <mach/imx/imx8m-regs.h>
 
 #define MX8MM_M4_BOOTROM_BASE_ADDR	0x007e0000
 
diff --git a/arch/arm/mach-imx/include/mach/imx8mn-regs.h b/include/mach/imx/imx8mn-regs.h
similarity index 96%
rename from arch/arm/mach-imx/include/mach/imx8mn-regs.h
rename to include/mach/imx/imx8mn-regs.h
index 9d0ec513c2..387686b426 100644
--- a/arch/arm/mach-imx/include/mach/imx8mn-regs.h
+++ b/include/mach/imx/imx8mn-regs.h
@@ -2,7 +2,7 @@
 #ifndef __MACH_IMX8MN_REGS_H
 #define __MACH_IMX8MN_REGS_H
 
-#include <mach/imx8m-regs.h>
+#include <mach/imx/imx8m-regs.h>
 
 #define MX8MN_GPIO1_BASE_ADDR		0x30200000
 #define MX8MN_GPIO2_BASE_ADDR		0x30210000
diff --git a/arch/arm/mach-imx/include/mach/imx8mp-regs.h b/include/mach/imx/imx8mp-regs.h
similarity index 97%
rename from arch/arm/mach-imx/include/mach/imx8mp-regs.h
rename to include/mach/imx/imx8mp-regs.h
index 08f662bcde..ac15a316b8 100644
--- a/arch/arm/mach-imx/include/mach/imx8mp-regs.h
+++ b/include/mach/imx/imx8mp-regs.h
@@ -3,7 +3,7 @@
 #ifndef __MACH_IMX8MP_REGS_H
 #define __MACH_IMX8MP_REGS_H
 
-#include <mach/imx8m-regs.h>
+#include <mach/imx/imx8m-regs.h>
 
 #define MX8MP_M4_BOOTROM_BASE_ADDR	0x007e0000
 
diff --git a/arch/arm/mach-imx/include/mach/imx8mq-regs.h b/include/mach/imx/imx8mq-regs.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/imx8mq-regs.h
rename to include/mach/imx/imx8mq-regs.h
index e2fde2ba0c..64b988e064 100644
--- a/arch/arm/mach-imx/include/mach/imx8mq-regs.h
+++ b/include/mach/imx/imx8mq-regs.h
@@ -3,7 +3,7 @@
 #ifndef __MACH_IMX8MQ_REGS_H
 #define __MACH_IMX8MQ_REGS_H
 
-#include <mach/imx8m-regs.h>
+#include <mach/imx/imx8m-regs.h>
 
 #define MX8MQ_M4_BOOTROM_BASE_ADDR	0x007E0000
 
diff --git a/arch/arm/mach-imx/include/mach/imx8mq.h b/include/mach/imx/imx8mq.h
similarity index 91%
rename from arch/arm/mach-imx/include/mach/imx8mq.h
rename to include/mach/imx/imx8mq.h
index e58a3935f7..df28b2a22c 100644
--- a/arch/arm/mach-imx/include/mach/imx8mq.h
+++ b/include/mach/imx/imx8mq.h
@@ -4,12 +4,12 @@
 #define __MACH_IMX8MQ_H
 
 #include <io.h>
-#include <mach/generic.h>
-#include <mach/imx8mq-regs.h>
-#include <mach/imx8mm-regs.h>
-#include <mach/imx8mn-regs.h>
-#include <mach/imx8mp-regs.h>
-#include <mach/revision.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx8mq-regs.h>
+#include <mach/imx/imx8mm-regs.h>
+#include <mach/imx/imx8mn-regs.h>
+#include <mach/imx/imx8mp-regs.h>
+#include <mach/imx/revision.h>
 #include <linux/bitfield.h>
 
 #define IMX8MQ_ROM_VERSION_A0	0x800
diff --git a/arch/arm/mach-imx/include/mach/imx_cpu_types.h b/include/mach/imx/imx_cpu_types.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx_cpu_types.h
rename to include/mach/imx/imx_cpu_types.h
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx1.h b/include/mach/imx/iomux-mx1.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/iomux-mx1.h
rename to include/mach/imx/iomux-mx1.h
index 000b2055ee..95b20a88dd 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx1.h
+++ b/include/mach/imx/iomux-mx1.h
@@ -3,7 +3,7 @@
 #ifndef __MACH_IOMUX_MX1_H
 #define __MACH_IOMUX_MX1_H
 
-#include <mach/iomux-v1.h>
+#include <mach/imx/iomux-v1.h>
 
 /*
  * FIXME: This list is not completed. The correct directions are
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx21.h b/include/mach/imx/iomux-mx21.h
similarity index 98%
rename from arch/arm/mach-imx/include/mach/iomux-mx21.h
rename to include/mach/imx/iomux-mx21.h
index 308bfac99b..5eb31411b9 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx21.h
+++ b/include/mach/imx/iomux-mx21.h
@@ -4,8 +4,8 @@
 #ifndef __MACH_IOMUX_MX21_H__
 #define __MACH_IOMUX_MX21_H__
 
-#include <mach/iomux-v1.h>
-#include <mach/iomux-mx2x.h>
+#include <mach/imx/iomux-v1.h>
+#include <mach/imx/iomux-mx2x.h>
 
 /* Primary GPIO pin functions */
 
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx25.h b/include/mach/imx/iomux-mx25.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/iomux-mx25.h
rename to include/mach/imx/iomux-mx25.h
index 58761b5e77..2b7fb4014b 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx25.h
+++ b/include/mach/imx/iomux-mx25.h
@@ -19,7 +19,7 @@
 #ifndef __MACH_IOMUX_MX25_H__
 #define __MACH_IOMUX_MX25_H__
 
-#include <mach/iomux-v3.h>
+#include <mach/imx/iomux-v3.h>
 
 /*
  * IOMUX/PAD Bit field definitions
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx27.h b/include/mach/imx/iomux-mx27.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/iomux-mx27.h
rename to include/mach/imx/iomux-mx27.h
index 5f8a3826f6..6aa8aae4f0 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx27.h
+++ b/include/mach/imx/iomux-mx27.h
@@ -5,8 +5,8 @@
 #ifndef __MACH_IOMUX_MX27_H__
 #define __MACH_IOMUX_MX27_H__
 
-#include <mach/iomux-v1.h>
-#include <mach/iomux-mx2x.h>
+#include <mach/imx/iomux-v1.h>
+#include <mach/imx/iomux-mx2x.h>
 
 /* Primary GPIO pin functions */
 
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx2x.h b/include/mach/imx/iomux-mx2x.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/iomux-mx2x.h
rename to include/mach/imx/iomux-mx2x.h
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx31.h b/include/mach/imx/iomux-mx31.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/iomux-mx31.h
rename to include/mach/imx/iomux-mx31.h
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx35.h b/include/mach/imx/iomux-mx35.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/iomux-mx35.h
rename to include/mach/imx/iomux-mx35.h
index 18f9a11171..51f1975102 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx35.h
+++ b/include/mach/imx/iomux-mx35.h
@@ -4,7 +4,7 @@
 #ifndef __MACH_IOMUX_MX35_H__
 #define __MACH_IOMUX_MX35_H__
 
-#include <mach/iomux-v3.h>
+#include <mach/imx/iomux-v3.h>
 
 /*
  * The naming convention for the pad modes is MX35_PAD_<padname>__<padmode>
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx50.h b/include/mach/imx/iomux-mx50.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/iomux-mx50.h
rename to include/mach/imx/iomux-mx50.h
index aeb47092df..a03e907e67 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx50.h
+++ b/include/mach/imx/iomux-mx50.h
@@ -7,7 +7,7 @@
 #ifndef __MACH_IOMUX_MX50_H__
 #define __MACH_IOMUX_MX50_H__
 
-#include <mach/iomux-v3.h>
+#include <mach/imx/iomux-v3.h>
 
 /* These 2 defines are for pins that may not have a mux register, but could
  * have a pad setting register, and vice-versa. */
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx51.h b/include/mach/imx/iomux-mx51.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/iomux-mx51.h
rename to include/mach/imx/iomux-mx51.h
index 2623e7a2e1..a2d8575087 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx51.h
+++ b/include/mach/imx/iomux-mx51.h
@@ -13,7 +13,7 @@
 #ifndef __MACH_IOMUX_MX51_H__
 #define __MACH_IOMUX_MX51_H__
 
-#include <mach/iomux-v3.h>
+#include <mach/imx/iomux-v3.h>
 #define __NA_	0x000
 
 
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx53.h b/include/mach/imx/iomux-mx53.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/iomux-mx53.h
rename to include/mach/imx/iomux-mx53.h
index 010fb6e5cc..f11e38f091 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx53.h
+++ b/include/mach/imx/iomux-mx53.h
@@ -4,7 +4,7 @@
 #ifndef __MACH_IOMUX_MX53_H__
 #define __MACH_IOMUX_MX53_H__
 
-#include <mach/iomux-v3.h>
+#include <mach/imx/iomux-v3.h>
 
 /* These 2 defines are for pins that may not have a mux register, but could
  * have a pad setting register, and vice-versa. */
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx6.h b/include/mach/imx/iomux-mx6.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/iomux-mx6.h
rename to include/mach/imx/iomux-mx6.h
index 36e31e0657..9913000600 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx6.h
+++ b/include/mach/imx/iomux-mx6.h
@@ -6,7 +6,7 @@
 #ifndef __MACH_IOMUX_MX6Q_H__
 #define __MACH_IOMUX_MX6Q_H__
 
-#include <mach/iomux-v3.h>
+#include <mach/imx/iomux-v3.h>
 
 #define NON_MUX_I       0x3FF
 #define NON_PAD_I       0x7FF
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx6ul.h b/include/mach/imx/iomux-mx6ul.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/iomux-mx6ul.h
rename to include/mach/imx/iomux-mx6ul.h
index b7727191c2..6eafe69a8d 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx6ul.h
+++ b/include/mach/imx/iomux-mx6ul.h
@@ -6,7 +6,7 @@
 #ifndef __ASM_ARCH_IMX6UL_PINS_H__
 #define __ASM_ARCH_IMX6UL_PINS_H__
 
-#include <mach/iomux-v3.h>
+#include <mach/imx/iomux-v3.h>
 
 enum {
 
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx7.h b/include/mach/imx/iomux-mx7.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/iomux-mx7.h
rename to include/mach/imx/iomux-mx7.h
index def9cf4d44..b37c3bb2a8 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx7.h
+++ b/include/mach/imx/iomux-mx7.h
@@ -7,8 +7,8 @@
 #ifndef __MACH_IOMUX_IMX7D_H__
 #define __MACH_IOMUX_IMX7D_H__
 
-#include <mach/iomux-v3.h>
-#include <mach/imx7-regs.h>
+#include <mach/imx/iomux-v3.h>
+#include <mach/imx/imx7-regs.h>
 
 enum {
 	MX7D_PAD_GPIO1_IO00__GPIO1_IO0                           = IOMUX_PAD(0x0030, 0x0000, IOMUX_CONFIG_LPSR | 0, 0x0000, 0, 0),
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx8m.h b/include/mach/imx/iomux-mx8m.h
similarity index 95%
rename from arch/arm/mach-imx/include/mach/iomux-mx8m.h
rename to include/mach/imx/iomux-mx8m.h
index 68f2765609..35d194252c 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx8m.h
+++ b/include/mach/imx/iomux-mx8m.h
@@ -3,7 +3,7 @@
 #ifndef __MACH_IOMUX_IMX8M_H__
 #define __MACH_IOMUX_IMX8M_H__
 
-#include <mach/iomux-v3.h>
+#include <mach/imx/iomux-v3.h>
 
 #define PAD_CTL_DSE_3P3V_45_OHM	0b110
 
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx8mm.h b/include/mach/imx/iomux-mx8mm.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/iomux-mx8mm.h
rename to include/mach/imx/iomux-mx8mm.h
index f91671865d..f2ebde3d3b 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx8mm.h
+++ b/include/mach/imx/iomux-mx8mm.h
@@ -6,9 +6,9 @@
 #ifndef __ASM_ARCH_IMX8MM_PINS_H__
 #define __ASM_ARCH_IMX8MM_PINS_H__
 
-#include <mach/iomux-v3.h>
-#include <mach/imx8mm-regs.h>
-#include <mach/iomux-mx8m.h>
+#include <mach/imx/iomux-v3.h>
+#include <mach/imx/imx8mm-regs.h>
+#include <mach/imx/iomux-mx8m.h>
 
 enum {
 	IMX8MM_PAD_GPIO1_IO00_GPIO1_IO0                               =  IOMUX_PAD(0x0290, 0x0028, 0, 0x0000, 0, 0),
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx8mn.h b/include/mach/imx/iomux-mx8mn.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/iomux-mx8mn.h
rename to include/mach/imx/iomux-mx8mn.h
index 3c3e0ecba3..981c0465d9 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx8mn.h
+++ b/include/mach/imx/iomux-mx8mn.h
@@ -6,9 +6,9 @@
 #ifndef __ASM_ARCH_IMX8MN_PINS_H__
 #define __ASM_ARCH_IMX8MN_PINS_H__
 
-#include <mach/iomux-v3.h>
-#include <mach/imx8mn-regs.h>
-#include <mach/iomux-mx8m.h>
+#include <mach/imx/iomux-v3.h>
+#include <mach/imx/imx8mn-regs.h>
+#include <mach/imx/iomux-mx8m.h>
 
 enum {
 	IMX8MN_PAD_BOOT_MODE2__CCMSRCGPCMIX_BOOT_MODE2                          = IOMUX_PAD(0x025C, 0x0020, 0, 0x0000, 0, 0),
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx8mp.h b/include/mach/imx/iomux-mx8mp.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/iomux-mx8mp.h
rename to include/mach/imx/iomux-mx8mp.h
index 2607ba21f6..b410eaebc8 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx8mp.h
+++ b/include/mach/imx/iomux-mx8mp.h
@@ -6,9 +6,9 @@
 #ifndef __ASM_ARCH_IMX8MP_PINS_H__
 #define __ASM_ARCH_IMX8MP_PINS_H__
 
-#include <mach/iomux-v3.h>
-#include <mach/imx8mp-regs.h>
-#include <mach/iomux-mx8m.h>
+#include <mach/imx/iomux-v3.h>
+#include <mach/imx/imx8mp-regs.h>
+#include <mach/imx/iomux-mx8m.h>
 
 enum {
 	MX8MP_PAD_GPIO1_IO00__GPIO1_IO00                         = IOMUX_PAD(0x0274, 0x0014, 0, 0x0000, 0, 0),
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx8mq.h b/include/mach/imx/iomux-mx8mq.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/iomux-mx8mq.h
rename to include/mach/imx/iomux-mx8mq.h
index b6efdda4ff..e6a00e3462 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx8mq.h
+++ b/include/mach/imx/iomux-mx8mq.h
@@ -7,9 +7,9 @@
 #ifndef __MACH_IOMUX_IMX8MQ_H__
 #define __MACH_IOMUX_IMX8MQ_H__
 
-#include <mach/iomux-v3.h>
-#include <mach/iomux-mx8m.h>
-#include <mach/imx8mq-regs.h>
+#include <mach/imx/iomux-v3.h>
+#include <mach/imx/iomux-mx8m.h>
+#include <mach/imx/imx8mq-regs.h>
 
 enum {
 	IMX8MQ_PAD_GPIO1_IO00__GPIO1_IO0			= IOMUX_PAD(0x0290, 0x0028, 0, 0x0000, 0, 0),
diff --git a/arch/arm/mach-imx/include/mach/iomux-v1.h b/include/mach/imx/iomux-v1.h
similarity index 95%
rename from arch/arm/mach-imx/include/mach/iomux-v1.h
rename to include/mach/imx/iomux-v1.h
index 132b129767..def028cdc5 100644
--- a/arch/arm/mach-imx/include/mach/iomux-v1.h
+++ b/include/mach/imx/iomux-v1.h
@@ -50,9 +50,9 @@
 void imx_iomuxv1_init(void __iomem *base);
 void imx_gpio_mode(void __iomem *base, int gpio_mode);
 
-#include <mach/imx1-regs.h>
-#include <mach/imx21-regs.h>
-#include <mach/imx27-regs.h>
+#include <mach/imx/imx1-regs.h>
+#include <mach/imx/imx21-regs.h>
+#include <mach/imx/imx27-regs.h>
 
 static inline void imx1_gpio_mode(int gpio_mode)
 {
diff --git a/arch/arm/mach-imx/include/mach/iomux-v3.h b/include/mach/imx/iomux-v3.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/iomux-v3.h
rename to include/mach/imx/iomux-v3.h
diff --git a/arch/arm/mach-imx/include/mach/iomux-vf610.h b/include/mach/imx/iomux-vf610.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/iomux-vf610.h
rename to include/mach/imx/iomux-vf610.h
index b9e509b396..3595d78280 100644
--- a/arch/arm/mach-imx/include/mach/iomux-vf610.h
+++ b/include/mach/imx/iomux-vf610.h
@@ -7,7 +7,7 @@
 #ifndef __MACH_IOMUX_VF610_H__
 #define __MACH_IOMUX_VF610_H__
 
-#include <mach/iomux-v3.h>
+#include <mach/imx/iomux-v3.h>
 
 #undef PAD_CTL_ODE
 #undef PAD_CTL_PKE
diff --git a/arch/arm/mach-imx/include/mach/ocotp-fusemap.h b/include/mach/imx/ocotp-fusemap.h
similarity index 99%
rename from arch/arm/mach-imx/include/mach/ocotp-fusemap.h
rename to include/mach/imx/ocotp-fusemap.h
index 603bec49fd..6ba794c166 100644
--- a/arch/arm/mach-imx/include/mach/ocotp-fusemap.h
+++ b/include/mach/imx/ocotp-fusemap.h
@@ -3,7 +3,7 @@
 #ifndef __MACH_IMX_OCOTP_FUSEMAP_H
 #define __MACH_IMX_OCOTP_FUSEMAP_H
 
-#include <mach/ocotp.h>
+#include <mach/imx/ocotp.h>
 
 #define OCOTP_TESTER_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(0) | OCOTP_WIDTH(2))
 #define OCOTP_BOOT_CFG_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(2) | OCOTP_WIDTH(2))
diff --git a/arch/arm/mach-imx/include/mach/ocotp.h b/include/mach/imx/ocotp.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/ocotp.h
rename to include/mach/imx/ocotp.h
diff --git a/arch/arm/mach-imx/include/mach/reset-reason.h b/include/mach/imx/reset-reason.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/reset-reason.h
rename to include/mach/imx/reset-reason.h
diff --git a/arch/arm/mach-imx/include/mach/revision.h b/include/mach/imx/revision.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/revision.h
rename to include/mach/imx/revision.h
diff --git a/arch/arm/mach-imx/include/mach/romapi.h b/include/mach/imx/romapi.h
similarity index 97%
rename from arch/arm/mach-imx/include/mach/romapi.h
rename to include/mach/imx/romapi.h
index 2cb8e37ce9..2243fdcf6d 100644
--- a/arch/arm/mach-imx/include/mach/romapi.h
+++ b/include/mach/imx/romapi.h
@@ -2,7 +2,7 @@
 #ifndef __MACH_IMX_ROMAPI_H
 #define __MACH_IMX_ROMAPI_H
 
-#include <mach/xload.h>
+#include <mach/imx/xload.h>
 #include <linux/types.h>
 
 struct rom_api {
diff --git a/arch/arm/mach-imx/include/mach/spi.h b/include/mach/imx/spi.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/spi.h
rename to include/mach/imx/spi.h
diff --git a/arch/arm/mach-imx/include/mach/tzasc.h b/include/mach/imx/tzasc.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/tzasc.h
rename to include/mach/imx/tzasc.h
diff --git a/arch/arm/mach-imx/include/mach/usb.h b/include/mach/imx/usb.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/usb.h
rename to include/mach/imx/usb.h
diff --git a/arch/arm/mach-imx/include/mach/vf610-ddrmc-regs.h b/include/mach/imx/vf610-ddrmc-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/vf610-ddrmc-regs.h
rename to include/mach/imx/vf610-ddrmc-regs.h
diff --git a/arch/arm/mach-imx/include/mach/vf610-ddrmc.h b/include/mach/imx/vf610-ddrmc.h
similarity index 93%
rename from arch/arm/mach-imx/include/mach/vf610-ddrmc.h
rename to include/mach/imx/vf610-ddrmc.h
index 79b88e19fd..bc99d27efe 100644
--- a/arch/arm/mach-imx/include/mach/vf610-ddrmc.h
+++ b/include/mach/imx/vf610-ddrmc.h
@@ -3,7 +3,7 @@
 #ifndef __MACH_DDRMC_H
 #define __MACH_DDRMC_H
 
-#include <mach/vf610-regs.h>
+#include <mach/imx/vf610-regs.h>
 
 
 #define DDRMC_CR(x)	((x) * 4)
diff --git a/arch/arm/mach-imx/include/mach/vf610-fusemap.h b/include/mach/imx/vf610-fusemap.h
similarity index 95%
rename from arch/arm/mach-imx/include/mach/vf610-fusemap.h
rename to include/mach/imx/vf610-fusemap.h
index c222a8f27f..f3db1ba259 100644
--- a/arch/arm/mach-imx/include/mach/vf610-fusemap.h
+++ b/include/mach/imx/vf610-fusemap.h
@@ -3,7 +3,7 @@
 #ifndef __MACH_VF610_OCOTP_H
 #define __MACH_VF610_OCOTP_H
 
-#include <mach/ocotp-fusemap.h>
+#include <mach/imx/ocotp-fusemap.h>
 
 #define VF610_OCOTP_CPU_BUS_FRQ		OCOTP_WORD(0x430) | OCOTP_BIT(22) | OCOTP_WIDTH(1)
 #define VF610_OCOTP_OVG_DISABLE		OCOTP_WORD(0x430) | OCOTP_BIT(30) | OCOTP_WIDTH(1)
diff --git a/arch/arm/mach-imx/include/mach/vf610-iomux-regs.h b/include/mach/imx/vf610-iomux-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/vf610-iomux-regs.h
rename to include/mach/imx/vf610-iomux-regs.h
diff --git a/arch/arm/mach-imx/include/mach/vf610-regs.h b/include/mach/imx/vf610-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/vf610-regs.h
rename to include/mach/imx/vf610-regs.h
diff --git a/arch/arm/mach-imx/include/mach/vf610.h b/include/mach/imx/vf610.h
similarity index 92%
rename from arch/arm/mach-imx/include/mach/vf610.h
rename to include/mach/imx/vf610.h
index 505aab0211..9c4fc5eb61 100644
--- a/arch/arm/mach-imx/include/mach/vf610.h
+++ b/include/mach/imx/vf610.h
@@ -4,9 +4,9 @@
 #define __MACH_VF610_H
 
 #include <io.h>
-#include <mach/generic.h>
-#include <mach/vf610-regs.h>
-#include <mach/revision.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/vf610-regs.h>
+#include <mach/imx/revision.h>
 
 #define VF610_CPUTYPE_VFx10	0x010
 
diff --git a/arch/arm/mach-imx/include/mach/weim.h b/include/mach/imx/weim.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/weim.h
rename to include/mach/imx/weim.h
diff --git a/arch/arm/mach-imx/include/mach/xload.h b/include/mach/imx/xload.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/xload.h
rename to include/mach/imx/xload.h
diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
index d62277bb54..dbfa82910a 100644
--- a/scripts/imx/Makefile
+++ b/scripts/imx/Makefile
@@ -9,11 +9,11 @@ HOSTLDLIBS_imx-usb-loader  = `pkg-config --libs libusb-1.0`
 imx-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0`
 imx-usb-loader-target-userldlibs += `$(CROSS_PKG_CONFIG) --libs libusb-1.0`
 
-HOSTCFLAGS_imx.o = -I$(srctree)/arch/arm/mach-imx/include
-imx-target-userccflags += -I$(srctree)/arch/arm/mach-imx/include
-HOSTCFLAGS_imx-image.o = -I$(srctree) -I$(srctree)/arch/arm/mach-imx/include
-HOSTCFLAGS_imx-usb-loader.o += -I$(srctree) -I$(srctree)/arch/arm/mach-imx/include
-imx-usb-loader-target-userccflags += -I$(srctree) -I$(srctree)/arch/arm/mach-imx/include
+HOSTCFLAGS_imx.o = -I$(srctree)/include/mach
+imx-target-userccflags += -I$(srctree)/include/mach
+HOSTCFLAGS_imx-image.o = -I$(srctree) -I$(srctree)/include/mach
+HOSTCFLAGS_imx-usb-loader.o += -I$(srctree) -I$(srctree)/include/mach
+imx-usb-loader-target-userccflags += -I$(srctree) -I$(srctree)/include/mach
 ifdef CONFIG_ARCH_IMX_IMXIMAGE_SSL_SUPPORT
 HOSTCFLAGS_imx-image.o += -DIMXIMAGE_SSL_SUPPORT
 HOSTLDLIBS_imx-image  = `pkg-config --libs openssl`
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index 77dea7c54a..08cdf8321a 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -1,6 +1,6 @@
 
-#include <mach/imx-header.h>
-#include <mach/imx_cpu_types.h>
+#include <imx/imx-header.h>
+#include <imx/imx_cpu_types.h>
 
 static inline int cpu_is_mx8m(const struct config_data *data)
 {
-- 
2.30.2



