Delivery-date: Fri, 13 Jan 2023 12:38:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pGIOM-00AjKA-W5
	for lore@lore.pengutronix.de; Fri, 13 Jan 2023 12:38:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pGIOK-0006UE-72
	for lore@pengutronix.de; Fri, 13 Jan 2023 12:38:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RVdLbi62kobvUlDpjdOtGFyz4mG79H598N3YU1pP9uQ=; b=MMhOF5ers4flP+EcRyYDHmQml+
	UghJRT6q8bsdSIEnkJjTbNheWwpBzr9yzloUSTe27lymSOjI8fuIZp/aNe8dhncjNfLrSy0dAdJjQ
	WB8ImsWUBrJRnUsHtu8HMBsPOcLOBMVu3Y30zFIpsJXGUkAwg8fiOCY5ZVMo8l+yIZplInB3Rgy2x
	s/QVNeyS1Dy4keX0TIK/INPUSkz9rWelpuGmAAZ0yf84MQEK6KFvZdnLcFkLzEKuKR1lzS0Lg13xz
	d8JtTZucec+ZBDVMiTzhGVUpVCY9573Pi0c8Qk4RZIkxjizJgumhmqNClgM+hUgO+DDoOKN/eoo3g
	Re3qqHlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGIMi-002EdD-0L; Fri, 13 Jan 2023 11:36:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGIK9-002DQI-2A
	for barebox@lists.infradead.org; Fri, 13 Jan 2023 11:34:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1pGIK4-0005Yk-5a; Fri, 13 Jan 2023 12:34:12 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pGIK3-005kpy-HA; Fri, 13 Jan 2023 12:34:11 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pGIK2-00BGRZ-Eh; Fri, 13 Jan 2023 12:34:10 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 13 Jan 2023 12:34:05 +0100
Message-Id: <20230113113407.2684725-6-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230113113407.2684725-1-o.rempel@pengutronix.de>
References: <20230113113407.2684725-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_033417_133630_E95B2B88 
X-CRM114-Status: GOOD (  10.50  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 6/8] ARM: imx6sx: udoo-neo: enable memory size auto detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Not all udoo-neo board have same memory size. So, remove memory node
to allow memory size auto detection.

Potentially we can use different DTs for different board in the barebox.
But we are able to auto detect board version, better we keep udoo-neo-full
as the basis version and disable not supported parts by the board code
if needed.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx6sx-udoo-neo-full.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/dts/imx6sx-udoo-neo-full.dts b/arch/arm/dts/imx6sx-udoo-neo-full.dts
index 2e5e1a9ed4..be023b4289 100644
--- a/arch/arm/dts/imx6sx-udoo-neo-full.dts
+++ b/arch/arm/dts/imx6sx-udoo-neo-full.dts
@@ -1,6 +1,9 @@
 #include <arm/imx6sx-udoo-neo-full.dts>
 
 / {
+
+	/delete-node/ memory@80000000;
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
-- 
2.30.2



