Delivery-date: Thu, 13 Mar 2025 08:52:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdMi-00DThM-29
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 08:52:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdMg-0000zq-Gt
	for lore@pengutronix.de; Thu, 13 Mar 2025 08:52:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CN7821sY763zDZr3BwdJ9Y1MRTYeTywhQEgNiQXNo2o=; b=hycWV/6I5/rQ0SDCJzUbyYbXdi
	7iHQ4/S7U33riIW7T17JznQusfTNVhpG+awjzZBCpK0/cIGyTkeDKGn/FkVcVTKqzRtX6sihi2V7O
	hIoeEucakN6+tV/cUp364sC8MJE5SsHOif+ZVBgJp733Yqz4Fqk8VZp56X5V44y6ww5JuIiQGwYMR
	NZyJMikQ40icoztetZCjGmajZg4JVNLAw9ZemrqWyphzYsu/HMVedLE59CDVQv3ER59CIWBBdFjR+
	yLb6QnvGpCssYljsLi+dnzC9O/A+7D73MnveWIcDE/1qRzFpk2KL6dt1XG8D+f/8ihLT9mtOQpCDi
	uJ9Xqtog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsdMG-0000000ARcY-0L3W;
	Thu, 13 Mar 2025 07:52:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsd6g-0000000AOlv-3eyl
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 07:35:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd6f-00060C-MD; Thu, 13 Mar 2025 08:35:53 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd6f-005UwK-1b;
	Thu, 13 Mar 2025 08:35:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-003pwb-2j;
	Thu, 13 Mar 2025 08:34:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 08:34:43 +0100
Message-Id: <20250313073445.764875-21-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313073445.764875-1-a.fatoum@pengutronix.de>
References: <20250313073445.764875-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_003554_912256_D027108E 
X-CRM114-Status: GOOD (  11.19  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 20/22] scripts: omap3-usb-loader: fix clang-analyzer false-positive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

clang-analyzer has a heuristic to determine mismatched allocations.
It flags allocating bufsize of chars and assigned it to a pointer
to uint32, although it's ultimately correct.

Let's silence the warning by using the pointee type instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/omap3-usb-loader.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/scripts/omap3-usb-loader.c b/scripts/omap3-usb-loader.c
index 38cdbfac939e..192e42689bb2 100644
--- a/scripts/omap3-usb-loader.c
+++ b/scripts/omap3-usb-loader.c
@@ -424,15 +424,18 @@ static int transfer_first_stage(libusb_device_handle * handle, struct arg_state
 
 static int transfer_other_files(libusb_device_handle *handle, struct arg_state *args)
 {
-	uint32_t *buffer = NULL;
-	int bufsize = 128 * sizeof (*buffer);
+	uint32_t *buffer;
+	int bufsize;
 	int numfailures = 0;	/* build in some reliablity */
 	int maxfailures = 3;
 	int transLen = 0;
 	int curfile = 1;	/* skip the first file */
 	size_t len;
 
-	buffer = calloc(bufsize, sizeof(unsigned char));
+	buffer = calloc(128, sizeof(*buffer));
+	if (!buffer)
+		goto fail;
+	bufsize = 128 * sizeof (*buffer);
 
 	/* handle the state machine for the X-Loader */
 	while (curfile < args->numfiles) {
-- 
2.39.5



