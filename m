Delivery-date: Wed, 13 Mar 2024 11:57:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMIW-004HRz-37
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 11:57:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMIV-00011k-1B
	for lore@pengutronix.de; Wed, 13 Mar 2024 11:57:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w3o52wDsuHqV8/KEqfxksbCBuYAEDuF81A1Pp0LVH30=; b=1kPVQrE3meIiC8CjQegCS4/Hql
	/n/EAIUj+2tQVBfu/aNfjdVtc3+fvQYvQ/9xbWCB1nDGFPngnRFCbviaB/w1OycOxqos3Tec++JpG
	q6kv56r5/mfi0ddtfTjORsMaVVqDOrmlIqiyugMlS3/R/iPl3s3i6Faexe6FK0JCI+bSa0oxoqOAy
	1fdQrRkCIILWFXKVbKgu6BwWDx7HhSFNrPtGDrWhFVlAkEbt5PdXvdyZgbah9jAmI4Gyb0n6ovjjM
	k3rCuWNgHXOYoV7vLWq+OkV548c0HuY/QUE6oxjgOj8GrzIzfiihyEuWf1XnZPerxEsgweSOmDU6Z
	EEzZ2/6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMHp-00000009kQ9-2Wx3;
	Wed, 13 Mar 2024 10:56:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMHi-00000009kKk-0jZu
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 10:56:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-0008P9-W8; Wed, 13 Mar 2024 11:56:33 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-00661C-If; Wed, 13 Mar 2024 11:56:32 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHf-004FrF-3A;
	Wed, 13 Mar 2024 11:56:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 11:56:23 +0100
Message-Id: <20240313105631.686778-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313105631.686778-1-a.fatoum@pengutronix.de>
References: <20240313105631.686778-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_035634_438241_D75AF443 
X-CRM114-Status: GOOD (  10.08  )
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
Subject: [PATCH 04/12] hw_random: add struct hwrng::priv member
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A number of Linux hw_random drivers use container_of to arrive at the
driver private data, but some others use the priv member of struct
hwrng. A unsigned long worth of extra malloc space doesn't hurt, so add
the same member to barebox too.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/hw_random.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/hw_random.h b/include/linux/hw_random.h
index 9143ba1f8d4c..4479428bc743 100644
--- a/include/linux/hw_random.h
+++ b/include/linux/hw_random.h
@@ -33,6 +33,7 @@ struct hwrng {
 	struct cdev cdev;
 	struct device *dev;
 	void *buf;
+	unsigned long priv;
 };
 
 /* Register a new Hardware Random Number Generator driver. */
-- 
2.39.2



