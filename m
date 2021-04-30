Delivery-date: Fri, 30 Apr 2021 13:57:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcRm8-0004rN-20
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 13:57:40 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcRm7-0004oy-Cm
	for lore@pengutronix.de; Fri, 30 Apr 2021 13:57:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/JaD/GUXmfCMwhgrL0Et9WBiS9YSis2yQ7HL5gqMGzo=; b=VooMkAlVSj4vOBjcGjlXCGgoz+
	UVFr11WOtOQoJjQqpvnNBTy2klKH0YtIndjb7tASwN1xz0kpKmr+6/b15eV3Y5uZ/1TK/BMZMFaUg
	YZcJTySPVb9gTelQgxkESVc6XvGr0MKp6Px+tacGnL5MSM7NxHkc+aGJOeAeVT923IBboEQjqFosk
	9JLZhQT9czQce5eq+AGTfxtZkcYa0OSWKobDORAJfRH2q3fjokvp7wwH8JXqp1zaKqXE4N4sdMjET
	kWcJA1XENW50p5Rbv1GGFueOYgdEuGyMbAru22OD0gSsjgkGkS436+vOiCSXSwGNGDwQR2upuofx7
	/DZZvY5Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcRlN-007laK-4F; Fri, 30 Apr 2021 11:56:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcRlH-007lZq-Tx
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 11:56:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Yl/JTItE1myTZVobQQT7uNCybzwALhWucvs9YdnzNTU=; b=mZLMdQSxC5MjlEhgv2d7mBs5ls
 UEcrvFM9fuZAsyyEmbcniwcxkU4MyakTRBSBBT0ILuhNVwQsqJWQ+lIavc5h3/haKcqRvdCHfO4uK
 gVoNBM0+fBVyRhaoVIuXVT1ZnapCvmBQKndMbyB6YEMmaa1gAtsW33n0FoWOUlN3Jsd9jp4VAnCjN
 IRW66nWpOCCVnAh63wtXJxEIAiURdK4fYN9R8lHgERrf1sbdyYdJSvw1tFaXRAVI9ru851W/KDX0T
 H8nW+3W/cqUc17kcyotBaUVR0cDT6flmDJObFPMm1z7+C8lFDKOsdde++xpPIN9coS6gF0yOE5oaI
 gBdYEPoA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcRlF-001LRN-Hd
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 11:56:46 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <bst@pengutronix.de>)
 id 1lcRlE-0004bu-Al; Fri, 30 Apr 2021 13:56:44 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Bastian Krause <bst@pengutronix.de>
Date: Fri, 30 Apr 2021 13:56:39 +0200
Message-Id: <20210430115640.21011-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_045645_601061_7BADE1DA 
X-CRM114-Status: GOOD (  11.68  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] scripts: imx-usb-loader: print excluded USB device
 message only on verbose
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If a USB device path is specified, it is expected that other devices will
be ignored. So print that message only on verbose > 0.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Changes since (implicit) v1:
- added Ahmad's Reviewed-by
---
 scripts/imx/imx-usb-loader.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index e277d29035..6f9104e816 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -314,7 +314,7 @@ static int device_location_equal(libusb_device *device, const char *location)
 	/* walked the full path, all elements match */
 	if (path_step == path_len)
 		result = 1;
-	else
+	else if (verbose)
 		fprintf(stderr, " excluded by device path option\n");
 
 done:
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

