Delivery-date: Tue, 22 Apr 2025 10:38:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7992-003yTu-1O
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:38:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u798z-0001I5-Tl
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:38:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iqaPbcHzO2yVjryuXWXMXvHFtQlbw2beEw3AE1CI0UQ=; b=bC6aWr7K8Iac+u4KQUUVvGoFly
	6WZqTyl4JGrLPPHwjnH62Q4lxKJRSqRglkHvvBX2y+nxxXsWtJmtTaf7CHaheLyrBeD2Sw5gRx+Le
	tSxNkxWmzblHfLCv4pxFSgqp1kmuU4z6BIAsw+uzywW6jlCDfGCEkZOLOwJBbrny80Sku1MGHID5U
	ckmNNgRBRGjrJ9uEC6d3ggKeVdG5hjBcmN+fj2NiNiQieI9AftEOmedrw5Gr01ZGofW2RN5RaGyTe
	V/0f92s84gQuiTskZiAXH/vFoV7Q05ed6fXFFYfY+aBteIVNWFl9gp7BwxPTGM2CbXUt0KDO07AAZ
	bajaTV0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u798X-00000006M1k-3rAJ;
	Tue, 22 Apr 2025 08:37:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78Ss-00000006Byf-293v
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:54:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Sr-0000Qb-39; Tue, 22 Apr 2025 09:54:45 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Sq-001Vv1-2w;
	Tue, 22 Apr 2025 09:54:44 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Sq-000uqL-2e;
	Tue, 22 Apr 2025 09:54:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Apr 2025 09:54:44 +0200
Message-Id: <20250422075444.218493-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005446_545980_570FC30F 
X-CRM114-Status: UNSURE (   8.32  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] stddev: make reads from /dev/null return 0 bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently, /dev/null discards all writes, but returns -ENOSYS on read.
Implement read to return 0 always, so it returns EOF immediately.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/stddev.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/commands/stddev.c b/commands/stddev.c
index e9b7dcc0d2f3..16cf4e30802d 100644
--- a/commands/stddev.c
+++ b/commands/stddev.c
@@ -64,8 +64,14 @@ static ssize_t null_write(struct cdev *cdev, const void *buf, size_t count, loff
 	return count;
 }
 
+static ssize_t null_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
+{
+	return 0;
+}
+
 static struct cdev_operations nullops = {
 	.write = null_write,
+	.read = null_read,
 };
 
 static int null_init(void)
-- 
2.39.5



