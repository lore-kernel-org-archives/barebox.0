Delivery-date: Mon, 02 Jun 2025 10:52:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM0u5-002tso-2U
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 10:52:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM0u5-00018j-55
	for lore@pengutronix.de; Mon, 02 Jun 2025 10:52:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kqcgIjZN/1GxcVpPJ9MP69LDUMdRCfy1vTPyC5hUEPE=; b=C5KGnjdf6ay7MdtF130y3eHjs6
	D27ZUvglOznuje5Jm/Mdaht/PIH7WBdnXjiUVgs+Y7gcfOfaX0PsaL4ZVjoRdUwzE399SmuJFUw4B
	rnRpgTMoPS6OnWzHrhlkm28VirmzlCCrnwEtKYnDAjYFzcsdbuaOungeXar6WsafKhI/Y0oH+aJn+
	rYRxwAbEtidr6OGZC/UlhD5pT+Eb05woN7XC5FDNoN2BUi1MG41c6nKaCK7PrjJbhvJ+YadVlHSn7
	F5H+iDL1E238wkmamr7Fa0zO+LGAyTviVajlWLo6l8f3Y8raA95JoSkr5tnn5eDtr16MBXoo0QUTL
	9Q97DSEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM0td-0000000718p-2MWc;
	Mon, 02 Jun 2025 08:51:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM0ta-0000000717n-3S0L
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 08:51:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM0tJ-0000kK-Lb; Mon, 02 Jun 2025 10:51:33 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM0tJ-001QOe-1T;
	Mon, 02 Jun 2025 10:51:33 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM0tJ-003dab-1E;
	Mon, 02 Jun 2025 10:51:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 02 Jun 2025 10:51:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250602-cdev-part-fixes-v1-2-814d9aa195ed@pengutronix.de>
References: <20250602-cdev-part-fixes-v1-0-814d9aa195ed@pengutronix.de>
In-Reply-To: <20250602-cdev-part-fixes-v1-0-814d9aa195ed@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748854293; l=1725;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=vEDJHKz7is3BCPE2yxZdFg260zvegs7FWGvNVWLA0Ag=;
 b=9iytvUBIGVrA8J9UXePsfwPq9Ka7AphLMsUy1J88bPg77eX82Qw0vLvlupYVzBu9axA7L+gqv
 bzfetEsqtHxAbJetmG7FV9eCkq7xgzHV1RBAE0nMNCk98JY3ReIuOE1
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_015150_868113_E23937BC 
X-CRM114-Status: GOOD (  12.46  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] nvmem: Drop now unnecessary partition quirk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The nvmem core uses container_of() on the cdev to retrieve its driver
data. For partitions the nvmem core tried to retrieve the master cdev
first. This is no longer necessary since the devfs-core now passes the
master cdev as context pointer and not the partition cdev.

This also fixes a bug when a partition was partitioned again. In this
case we would have to iterate upwards until we find the master cdev
instead of doing only one level.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/core.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 38dfb2cf2d1f5dcd49be0d24f8c9e16f5963507b..fd3c39fd8e431e8ec392feede933986306e0484a 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -61,10 +61,7 @@ static ssize_t nvmem_cdev_read(struct cdev *cdev, void *buf, size_t count,
 	struct nvmem_device *nvmem;
 	ssize_t retlen;
 
-	if (cdev->master)
-		nvmem = container_of(cdev->master, struct nvmem_device, cdev);
-	else
-		nvmem = container_of(cdev, struct nvmem_device, cdev);
+	nvmem = container_of(cdev, struct nvmem_device, cdev);
 
 	dev_dbg(cdev->dev, "read ofs: 0x%08llx count: 0x%08zx\n",
 		offset, count);
@@ -80,10 +77,7 @@ static ssize_t nvmem_cdev_write(struct cdev *cdev, const void *buf, size_t count
 	struct nvmem_device *nvmem;
 	ssize_t retlen;
 
-	if (cdev->master)
-		nvmem = container_of(cdev->master, struct nvmem_device, cdev);
-	else
-		nvmem = container_of(cdev, struct nvmem_device, cdev);
+	nvmem = container_of(cdev, struct nvmem_device, cdev);
 
 	dev_dbg(cdev->dev, "write ofs: 0x%08llx count: 0x%08zx\n",
 		offset, count);

-- 
2.39.5



