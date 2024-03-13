Delivery-date: Wed, 13 Mar 2024 11:57:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMIX-004HSO-26
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 11:57:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMIU-0000z1-G2
	for lore@pengutronix.de; Wed, 13 Mar 2024 11:57:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u3YOYglfdEku+tLtMnTkUdJFVgmNYBi1WKgyv4x2v8k=; b=nKuuYYS9eod3NTZ8bePHH0856T
	3OeLxszEZiSoBqRGdVp77x4rYgVWtjLwAK+NeArv/O26j8woGFcZhd4Cfl5Jo5yfQaMJ78neEkRAK
	nTL7opG1DWAaT4mOT64eWaU0gbWBnW7Ufv6pBJoXs+PfWp9hJNiraWMQrUxpM6ISUflTkuZvtRnH5
	tETdr18jwakcWqHbRHW9CjatFWW7ue2RsaA6asthcnE9UCNkblJN35KHoBIV0eXuRgtEkBBsOv3cg
	OSosdeQarlVguV6yIOViYaZOfgAnN6yodzPUiIER17IOexEx93P4f7RyxqGJU4TVdpRIYckY3GNo8
	Qg8/3erg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMHq-00000009kRk-2tmi;
	Wed, 13 Mar 2024 10:56:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMHi-00000009kKg-0PEB
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 10:56:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-0008P6-RA; Wed, 13 Mar 2024 11:56:32 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-006613-EY; Wed, 13 Mar 2024 11:56:32 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHf-004FrF-2k;
	Wed, 13 Mar 2024 11:56:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 11:56:20 +0100
Message-Id: <20240313105631.686778-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313105631.686778-1-a.fatoum@pengutronix.de>
References: <20240313105631.686778-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_035634_320243_B8FE6C23 
X-CRM114-Status: GOOD (  13.20  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/12] hw_random: support ctrlc()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's valid for HWRNG drivers to return 0 bytes read, thereby instructing
the caller to try again. We do that for the cdev_read operation, but in
case the driver never returns a non-zero value, barebox will keep
waiting indefinitely. Check ctrlc() in that case and return a short read
if the user interrupts the operation.

We don't need ctrlc() in the general case, as the caller is free to
check for ctrlc() between reads to the device.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hw_random/core.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/hw_random/core.c b/drivers/hw_random/core.c
index 89b979ade8b1..7bc3c33319f9 100644
--- a/drivers/hw_random/core.c
+++ b/drivers/hw_random/core.c
@@ -44,10 +44,10 @@ static ssize_t rng_dev_read(struct cdev *cdev, void *buf, size_t size,
 	while (count) {
 		int max = min(count, (size_t)RNG_BUFFER_SIZE);
 		len = hwrng_get_data(rng, rng->buf, max, true);
-		if (len < 0) {
-			cur = len;
-			break;
-		}
+		if (len < 0)
+			return len;
+		if (!len && ctrlc())
+			return cur;
 
 		memcpy(buf + cur, rng->buf, len);
 
-- 
2.39.2



