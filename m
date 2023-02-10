Delivery-date: Fri, 10 Feb 2023 17:55:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQWgF-003Hd6-Vw
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 17:55:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQWgC-0000rW-VL
	for lore@pengutronix.de; Fri, 10 Feb 2023 17:55:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOsPEBj93WM6TahZDur7FYUdZAwWvRDCf6vT/FQfcYU=; b=IOSIsdDfNsGdNV
	2UGRXREYxxlcKMr8MzTsO9Dn+8KGydOcwwO49rqyIVaID0mBIHz5cBAcVVYrtFKlaSHnPCET7BSxu
	D3//WdUqGjhyb92iYieqgkcVSMgeWo5RdbH0QKA1vzjCCJEDkmVDB5tlddDY8srfgpuAqf2qjvW6H
	i7MJJZEnc5w1idhqVKwtX20NBEtFA3H9JUlmnXb56+8KVWteaZT234SPLTkejAinAYOM2LtCyfhrb
	XN60Rj+y1J52fBVkO7UrXYIlE34+4IIbBqU4Ry3kZ6TzWeKkEeh5mSmDPf4Q80Yu1voYD9/KtOrSb
	gTgAwbHTzGqFnOYfteKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQWex-006aTv-94; Fri, 10 Feb 2023 16:54:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQWer-006aSO-Uu
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 16:53:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pQWeq-0000Zl-I3; Fri, 10 Feb 2023 17:53:56 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pQWeo-0041oG-O3; Fri, 10 Feb 2023 17:53:55 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pQWep-00F7hj-7C; Fri, 10 Feb 2023 17:53:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 10 Feb 2023 17:53:52 +0100
Message-Id: <20230210165353.3601175-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230210165353.3601175-1-a.fatoum@pengutronix.de>
References: <20230210165353.3601175-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_085358_016156_2F26977C 
X-CRM114-Status: GOOD (  11.37  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] boards: qemu-virt: ensure board driver probe at postcore_initcall level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Qemu board driver fixups should be applied very early to be able to
influence core components, even if they are controlled directly by
initcalls. For this reason, enforce probe of the driver at postcore_initcall
level.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch -- otherwise, probe happens after initcall adding rsa keys
---
 common/boards/qemu-virt/board.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index d0f4412cdea5..ec92ae94aec9 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -65,4 +65,14 @@ static struct driver virt_board_driver = {
 	.of_compatible = virt_of_match,
 };
 
-postcore_platform_driver(virt_board_driver);
+static int virt_board_driver_init(void)
+{
+	int ret;
+
+	ret = platform_driver_register(&virt_board_driver);
+	if (ret)
+		return ret;
+
+	return of_devices_ensure_probed_by_dev_id(virt_of_match);
+}
+postcore_initcall(virt_board_driver_init);
-- 
2.30.2



