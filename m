Delivery-date: Wed, 09 Apr 2025 10:32:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2QrI-00ALCI-1X
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 10:32:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2QrH-0003m1-UR
	for lore@pengutronix.de; Wed, 09 Apr 2025 10:32:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0rtt7hrW6fhbWZjETprddwJ2gUy9hd2P+rjPrY3yneY=; b=2blqmm6mSm/u05sk4cIh/KIM5H
	Doiaal6+8QucFOJcza8VbRUU4FPGqgkb5av948zKt+QTPJstpaPPYQnTgQ5mtpc9RD3Uh13eLCbWO
	ixfG+MSG4RkZYzri7iZQFMi8LAe71Av1NfzfpXFZgfYV3hCvwCdxQw5u1Iplbf9XgLrOktWnxp5RF
	m5xXQ409MMVXWpu/8B8VJBj55y3N0E2IwcDFwMVGfJiZcLRcixpP2EUDEL4AaIvSXchwPycb8Bz9m
	mcaodjAn3F2GZWN+MJ6s0kzBo6JfaJ8+gJzQYTwawboAY7ymOQlHWwY7LzDDbk44p52LL4/SoVcJw
	2MpK9QjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Qqi-00000006ae4-1O9q;
	Wed, 09 Apr 2025 08:31:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2QpG-00000006aOL-0B3e
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 08:30:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2QpE-0002ud-0Z; Wed, 09 Apr 2025 10:30:24 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2QpD-0044a3-2f;
	Wed, 09 Apr 2025 10:30:23 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2QpD-008seP-2K;
	Wed, 09 Apr 2025 10:30:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Apr 2025 10:30:23 +0200
Message-Id: <20250409083023.2116661-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_013026_094534_8A86AF5A 
X-CRM114-Status: GOOD (  10.75  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] bootm: have bootm_open_fit return -ENOSYS if support missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Otherwise, os_type will be determined unconditionally for the FIT image
buffer. As the buffer has zero size, this leads to an os_type of
filetype_unknown. The ARM32 support has an "ARM raw image" that matches
against filetype_unknown leading eventually to a crash trying to execute
the FIT image's FDT header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 739be02fe571..a26ea82684a6 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -618,7 +618,7 @@ static int bootm_open_fit(struct image_data *data)
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_FITIMAGE))
-		return 0;
+		return -ENOSYS;
 
 	header = (struct fdt_header *)data->os_header;
 	flen = bootm_get_os_size(data);
-- 
2.39.5



