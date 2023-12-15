Delivery-date: Fri, 15 Dec 2023 14:45:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE8V6-003e1f-1s
	for lore@lore.pengutronix.de;
	Fri, 15 Dec 2023 14:45:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE8V6-0000Sa-SV
	for lore@pengutronix.de; Fri, 15 Dec 2023 14:45:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t7jT70b8v0XZXLYihDIze/wfoQgcmdfjS6fPC8XIL2E=; b=vwm75c/T2xvwPY
	Vju392FBvMGqoJR2SqKpQ4XZoNoJJ9NW4T72BAbn5magcrAs8f+ZdXYzaoEfytsFgAr1HW4vZ3PdB
	nNXg7MOkYH3O8A6qmtXEkH0JoH3kSUU1DO+e9GBkWAV90IqLsO75sAzQxI2QcfyCqf9QKr7WqB8C6
	VQdi9YXNlcXT8mKHuFefhvApucGKNgPMW2yUBOHk+1PX8YeoP1EAN3sgj/JBH4vUypey1dPEiC3o1
	+UoF7mNZB4XDP2yHTC9+60OI8tgAMpbgVJCL+wvenheYjqDGXD9VGX4TpL3atgcZvviK3qOprjsuZ
	n85lpKMlkNcPiEviuv+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE8UA-003PY0-1f;
	Fri, 15 Dec 2023 13:44:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE8U7-003PWx-2a
	for barebox@lists.infradead.org;
	Fri, 15 Dec 2023 13:44:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rE8Tq-00009m-IU; Fri, 15 Dec 2023 14:43:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rE8Tq-00G2Xs-5d; Fri, 15 Dec 2023 14:43:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rE8Tq-000Uur-0Q;
	Fri, 15 Dec 2023 14:43:54 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Fri, 15 Dec 2023 14:43:52 +0100
Message-Id: <20231215-doc-fit-images-for-chainloading-v2-0-2fa359eee535@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABlYfGUC/42NQQ6CMBBFr0Jm7RhaNIgr7mFYlHZaJtGWtEgwp
 He3cgKX7+fnvR0SRaYE92qHSCsnDr6APFWgJ+UdIZvCIGvZCCmuaIJGywvySzlKaEPEcmT/DMq
 wd6hIde2t6aQwEopljmR5OwqPofDEaQnxcwRX8Vv/d68Ca+zGtr5YpY1uxn4m795LDJ63syEYc
 s5fG5KxC9MAAAA=
To: BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_054411_836559_659A924D 
X-CRM114-Status: UNSURE (   6.73  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 0/2] doc: user: barebox: add method for fit image
 chainloading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This small series fixes one small usage of `bootm` and adds a section
for chainloading a Barebox FIT image from U-Boot.

To: open list:BAREBOX <barebox@lists.infradead.org>

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Changes in v2:
- Added missing SOB
- Added Acked-by from Ahmad Fatoum 
- Link to v1: https://lore.kernel.org/r/20231215-doc-fit-images-for-chainloading-v1-0-9b704facdc3b@pengutronix.de

---
Stefan Kerkmann (2):
      doc: user: barebox: bootz instead of bootm
      doc: user: barebox: add chainloading of fit images

 Documentation/user/barebox.rst | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)
---
base-commit: 154884d7c0c9dac4578848849c8dac3afc5da3fc
change-id: 20231215-doc-fit-images-for-chainloading-aea9783921d2

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



