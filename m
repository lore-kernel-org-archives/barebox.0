Delivery-date: Wed, 13 Mar 2024 10:04:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkKXJ-004AAi-2n
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 10:04:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkKXG-0005ze-2K
	for lore@pengutronix.de; Wed, 13 Mar 2024 10:04:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KcTnaYSN7/F6WdPvGBe++SPKEw99mhq8v+MK/xxtTgk=; b=d0QfrlnvJJhbVfUoDgyMe0xplk
	h3NEy512vwQFkYbAihQAiEdhySaPpnK7AUvO2d7r2ZqRLsMnB+s/F2yhxUxKQssn/JQoOt8Nr8Sxh
	6Yw9BdqLur6jGn0+wideDyKiObRo/AkDRHeTTt/WGqtAKaxAepx5Wd/0+HmwtNsNhuO8qhFnfGhf4
	xuVIqqq+NtG9/cRqOKJXbjMPtlf3JruLqbEf2gcAfODTjtldduY18QwqxeQNRahUfOTLiJ/FcqURK
	7MgimnqdyJqzBbwofUJfYBpl+5iBPXtsH5d1MzmPOZT7Hux7qP6JCsC/lXfJsVjrzheAsRSQwzHL/
	iMNDZbsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkKWT-00000009PpX-31lR;
	Wed, 13 Mar 2024 09:03:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkKWQ-00000009PoZ-3F4n
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 09:03:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkKWO-0005P8-EX; Wed, 13 Mar 2024 10:03:36 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkKWO-0064zm-2G; Wed, 13 Mar 2024 10:03:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkKWN-0045ju-36;
	Wed, 13 Mar 2024 10:03:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 13 Mar 2024 10:03:35 +0100
Message-Id: <20240313090335.975366-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_020339_371290_32D422E3 
X-CRM114-Status: GOOD (  12.15  )
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
Subject: [PATCH] nvmem: imx-ocotp-ele: fix fuse types on i.MX93
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Sync the imx93_entries[] with the current kernel as of Linux-6.8. The
first 52 fuse words can be read from shadow registers. I don't know
anymore where I copied the wrong values from, the Kernel had correct
values from the start.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/imx-ocotp-ele.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp-ele.c b/drivers/nvmem/imx-ocotp-ele.c
index b25ab32fea..e4e60ed6af 100644
--- a/drivers/nvmem/imx-ocotp-ele.c
+++ b/drivers/nvmem/imx-ocotp-ele.c
@@ -208,8 +208,7 @@ static int imx_ele_ocotp_probe(struct device *dev)
 }
 
 static struct ocotp_map_entry imx93_entries[] = {
-	{ 12, 40, FUSE_FSB },
-	{ 24, 11, FUSE_ELE },
+	{ 0, 52, FUSE_FSB },
 	{ 63, 1, FUSE_ELE},
 	{ 128, 16, FUSE_ELE },
 	{ 182, 1, FUSE_ELE },
-- 
2.39.2



