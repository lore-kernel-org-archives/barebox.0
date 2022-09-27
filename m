Delivery-date: Tue, 27 Sep 2022 19:32:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odERi-00GiP8-Nx
	for lore@lore.pengutronix.de; Tue, 27 Sep 2022 19:32:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odERh-0002j2-Bx
	for lore@pengutronix.de; Tue, 27 Sep 2022 19:32:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Z+SJ9rRX0hwcawKNVM2ySFuL9qrUOFkMRUX/NsunLmg=; b=LH2iBth3ddsd5ZScN7chE5ho6F
	zIzJnkajU05RQRzeHHFQ6BItyIt4oCS/MzEFAa9/qxx9UCqlQXhguMTmEK2SV71igJOGl2gWtnz03
	0+GrFY1BSusjHBU0/zBWog3pCJ2ZVC4YbkHM6VVHPM3deffw81YQn0rKZd4FJVYHotRtGa2QOVJB4
	OopzOMChir43WQWxm898Yv0gXcM7L235Wx1To7RIyHRfdZtkIhNFpUoouQQyrGUf6Cnensj82Z41q
	WMoPyEw6TghnttRvG3/2yav6XnN7gAR/cdJSDW0u9XYYbYzXWP3dU/Ds2KxS7/XR9lqMoHV/Hvqpp
	7Mf423QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odEQM-00ByiC-0r; Tue, 27 Sep 2022 17:31:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odEQH-00Byha-Tq
	for barebox@lists.infradead.org; Tue, 27 Sep 2022 17:31:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1odEQE-0002RL-5K; Tue, 27 Sep 2022 19:31:06 +0200
Received: from [2a0a:edc0:0:900:1d::51] (helo=birne)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1odEQE-003GZl-FL; Tue, 27 Sep 2022 19:31:05 +0200
Received: from afa by birne with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1odEQB-0077OZ-Vm; Tue, 27 Sep 2022 19:31:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Hans=20Christian=20L=C3=B8nstad?= <hcl@datarespons.no>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 Sep 2022 19:31:01 +0200
Message-Id: <20220927173101.1696673-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_103109_974740_1886660B 
X-CRM114-Status: GOOD (  10.57  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] imx-usb-loader: skip initial SDP_ERROR_STATUS query for SDPS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We do an initial do_status() every time, which fails for i.MX8MP and
i.MX8MN:

  found i.MX8MP USB device [1fc9:0146]
  4 in err=-9, last_trans=0  00 00 00 00
  status failed

If we instead skip it for SDPS (i.e. hid_endpoint), upload works as
expected (tested on i.MX8M Nano).

Reported-by: Hans Christian Lønstad <hcl@datarespons.no>
Fixes: 23e2203150b6 ("imx-usb-loader: Add i.MX8MP support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 1242f2dedda5..a98ab0e33f8a 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1628,10 +1628,12 @@ int main(int argc, char *argv[])
 		goto out;
 	}
 
-	err = do_status();
-	if (err) {
-		printf("status failed\n");
-		goto out;
+	if (!mach_id->hid_endpoint) {
+		err = do_status();
+		if (err) {
+			printf("status failed\n");
+			goto out;
+		}
 	}
 
 	if (initfile) {
-- 
2.30.2



