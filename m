Delivery-date: Fri, 13 Jan 2023 12:38:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pGIOR-00AjKt-1u
	for lore@lore.pengutronix.de; Fri, 13 Jan 2023 12:38:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pGIOO-0006V8-RK
	for lore@pengutronix.de; Fri, 13 Jan 2023 12:38:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LSK6sz7O+6ExSyHPHC8KJAOhtMVttyJz1FMftE7aYbs=; b=bEXvIZJ05GGyiFYisLliZd7i8S
	DHOKQqIa0CRjdCLW3N8OpcP8xHKaeTQtSF8k2DeJucEmwQXGFK2nlMKaM8wMxhDuM/Z2QzR3u9c5e
	wSUBS3VUdG1AC8VnSGssX6vIHDd2MpOyylaCjPFd8AJXLtGVEIxoTsYb2gsHN/oz0dTuTCeM123Ne
	7egBeBEfKiexZWRbpGbNFd4ovY5gQB09jdK0azmYyPOsx7t3Iv+dhU2C0jsFkbJLkMRVRLkbBhDrU
	BtLhyKmRtAlV5T0ytqBjFLAv+xdXBpsMvN/X5yqJFKhGcAa/YiuPw6k9WNG8b2Ujq8A7Hmi8dIQD4
	QaEIT9Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGIMv-002Ejc-9U; Fri, 13 Jan 2023 11:37:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGIK9-002DRE-6G
	for barebox@lists.infradead.org; Fri, 13 Jan 2023 11:34:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1pGIK5-0005Zw-9b; Fri, 13 Jan 2023 12:34:13 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pGIK4-005kqK-Lq; Fri, 13 Jan 2023 12:34:12 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pGIK2-00BGRf-HV; Fri, 13 Jan 2023 12:34:10 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 13 Jan 2023 12:34:07 +0100
Message-Id: <20230113113407.2684725-8-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230113113407.2684725-1-o.rempel@pengutronix.de>
References: <20230113113407.2684725-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_033417_321822_186D4BE1 
X-CRM114-Status: UNSURE (   9.57  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 8/8] ARM: imx6sx: udoo-neo: add barebox update handler support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make this board properly updatable by bbu support.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/udoo-neo/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/udoo-neo/board.c b/arch/arm/boards/udoo-neo/board.c
index ffdb70dfae..075423099b 100644
--- a/arch/arm/boards/udoo-neo/board.c
+++ b/arch/arm/boards/udoo-neo/board.c
@@ -97,6 +97,9 @@ static int imx6sx_udoneo_probe(struct device *dev)
 	barebox_set_model(model);
 	barebox_set_hostname("mx6sx-udooneo");
 
+	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc1.barebox",
+			BBU_HANDLER_FLAG_DEFAULT);
+
 	return 0;
 }
 
-- 
2.30.2



