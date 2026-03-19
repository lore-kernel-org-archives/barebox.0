Delivery-date: Thu, 19 Mar 2026 08:03:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w37Q3-002Xsr-1K
	for lore@lore.pengutronix.de;
	Thu, 19 Mar 2026 08:03:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w37Q2-0006TD-Qn
	for lore@pengutronix.de; Thu, 19 Mar 2026 08:03:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wj54wcEs9oz7CdBK1PK/g8SLUsqEnxKjUREqNa3vwQw=; b=oq/0j5em/NOD0g
	8+3CPDehLkVDENHys27RHXqrpLNpVH+9BkSzRZLD68rX3xpdinzLQMEqBFGuC8PLMyO/U/pmGxL9i
	2ualC33yDPuupkNJhaEQhSQd26HHhQW2//PXhyWWUnjSMTJ4bQCrcT1oZcweAX5OmdGYS/oQ/CZaz
	ZyCaNRB5xpMOptlpQJcfWABeHsp7ZM2ZCHkvu5qoFpr2q0ada7R9I4dcjvyIQygdDYUhNysvr9Osq
	MqJerc/tTRObkXcNxUoTzDdzJWbUQCbZlZftr/9z453bU0bOPlee7xUgjPpVfIzz3e/Fd9mpyHFMn
	XX5KdmV7nZeUz0RAFgMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37PW-0000000A66l-1KJt;
	Thu, 19 Mar 2026 07:03:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37PT-0000000A65Q-3IDY
	for barebox@bombadil.infradead.org;
	Thu, 19 Mar 2026 07:03:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=wj54wcEs9oz7CdBK1PK/g8SLUsqEnxKjUREqNa3vwQw=; b=Ko52CQF8iVlq0lg/CLSHF16xR3
	cWMcs/rHnS/XeXC87zOQJTI5PM2/UfQG399gpDPMkWDEETkVpM7IxNJd4Lis3N3iiGtmbhVqIfsdE
	ehx+yFQQauAJt90RIKynclrOyQtgGCMCE6xOYgvetWlGfiU7oKKA5WKLi5BCFp7v5BdAQYQMy5dY1
	khpZLEQHxQeHh0gyTMcEt2fzEFdc7cd7gzm7Lk0kEc29mVkfG7Hi8bq/TEe7yWPn+2jIx4xiWkLVm
	PUnk4yhoJMTzifqiS+ZEUjY4lMRt1FOlxw0XLUgkuPUX0Es5XOl14EjzFV2FjGk7E8hcr9ocEKfZ0
	3/iiQgmg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37PQ-0000000Ct0O-2VRV
	for barebox@lists.infradead.org;
	Thu, 19 Mar 2026 07:03:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37PO-0006FA-6a; Thu, 19 Mar 2026 08:03:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37PN-0012Ae-34;
	Thu, 19 Mar 2026 08:03:05 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37PN-00000008FE7-3b3N;
	Thu, 19 Mar 2026 08:03:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 19 Mar 2026 08:03:04 +0100
Message-ID: <20260319070304.1965024-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260319070304.1965024-1-s.hauer@pengutronix.de>
References: <20260319070304.1965024-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_070308_717474_B4AC571C 
X-CRM114-Status: GOOD (  12.02  )
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
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] optee: skip registration of already known TEE bus devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

optee_enumerate_devices() may be called multiple times, e.g. when a
new RPMB device appears. Check if a device with the same name is
already registered on the TEE bus before registering it again.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/tee/optee/device.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/tee/optee/device.c b/drivers/tee/optee/device.c
index f5e03630b1..ab05a4dfc9 100644
--- a/drivers/tee/optee/device.c
+++ b/drivers/tee/optee/device.c
@@ -57,14 +57,23 @@ static int get_devices(struct tee_context *ctx, u32 session,
 static int optee_register_device(const uuid_t *device_uuid)
 {
 	struct tee_client_device *optee_device = NULL;
+	struct device *dev;
+	char name[39];
 	int rc;
 
+	snprintf(name, sizeof(name), "optee-ta-%pUb", device_uuid);
+
+	dev = bus_find_device_by_name(&tee_bus_type, NULL, name);
+	if (dev)
+		return 0;
+
 	optee_device = kzalloc(sizeof(*optee_device), GFP_KERNEL);
 	if (!optee_device)
 		return -ENOMEM;
 
+	optee_device->dev.id = DEVICE_ID_SINGLE;
 	optee_device->dev.bus = &tee_bus_type;
-	if (dev_set_name(&optee_device->dev, "optee-ta-%pUb", device_uuid)) {
+	if (dev_set_name(&optee_device->dev, "%s", name)) {
 		kfree(optee_device);
 		return -ENOMEM;
 	}
-- 
2.47.3



