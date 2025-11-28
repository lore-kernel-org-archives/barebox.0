Delivery-date: Fri, 28 Nov 2025 18:21:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2AH-005rDb-1X
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 18:21:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2AG-0001Cq-T1
	for lore@pengutronix.de; Fri, 28 Nov 2025 18:21:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DW7eskQNU35/a5y+Nlf9NsDxeAJJOJ15RJ9flXZeg38=; b=xV7/Leq7vi+PumZLZ2t1MMu+Yo
	fL9U0IKM8Uflzt0MvMQ3Fb194h0kCZXrzdoHSIju+GdwXTjOBoiX5m3JZoB9V++nvCe2NIeOV7bpW
	XUMrXPz7I9bXWgSvd2VaYx0QejTfuskzezQpon8kFtD/PPb8nDxCvoSKAl5w8wmb0qqSQqqTzJgo+
	KMF+71knOmZCGkPTJDN75SaRTqkY5BBRKA+3rPCh0To0Nwr3juxzIYci9nzCVwRJIruv8Llu3bT+r
	19lQ95k2cnzkn+5Cveqhi8e53BxB+Jq74LKFa+ZMeX0nPtBtImieXIpbiTIhEZAVK2K5tKxoky7sJ
	4bqrVrBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP29j-00000000ig0-2Fxv;
	Fri, 28 Nov 2025 17:21:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP29f-00000000iep-0BSz
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 17:21:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP29c-0000yR-RM; Fri, 28 Nov 2025 18:21:08 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP29c-002zUp-27;
	Fri, 28 Nov 2025 18:21:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP29c-000000009CN-2Km6;
	Fri, 28 Nov 2025 18:21:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 18:21:02 +0100
Message-ID: <20251128172107.35323-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128172107.35323-1-a.fatoum@pengutronix.de>
References: <20251128172107.35323-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_092111_084590_AD54BE4D 
X-CRM114-Status: UNSURE (   9.89  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] test: arm: qemu-sabrelite: drop -nographic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

-nographic is inserted by conftest.py, unless --graphic was passed to
pytest, so it should be dropped from individual YAML configs to allow
graphical operation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/arm/qemu-sabrelite@multi_v7_defconfig.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/arm/qemu-sabrelite@multi_v7_defconfig.yaml b/test/arm/qemu-sabrelite@multi_v7_defconfig.yaml
index ee146018f29c..541272e8b12c 100644
--- a/test/arm/qemu-sabrelite@multi_v7_defconfig.yaml
+++ b/test/arm/qemu-sabrelite@multi_v7_defconfig.yaml
@@ -9,7 +9,7 @@ targets:
         kernel: barebox-dt-2nd.img
         dtb: imx6q-sabreliste.dtb
         display: qemu-default
-        extra_args: '-nographic -serial null'
+        extra_args: '-serial null'
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
-- 
2.47.3



