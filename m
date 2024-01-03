Delivery-date: Wed, 03 Jan 2024 19:33:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63V-002Nif-0Z
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:33:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63N-0004He-EQ
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:33:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KyBIKg3YRE4x4pRWSaFLe2dw5Dv+ulSVr7hMgEAgP94=; b=Dt5MENzsJ0hdKHGVLsSmyXELq9
	aIPXRlxzUZ1JtF5yzNpkxglXwh1i1Jq2i6SFXEFpG9QedE97oWJTEfJANQwbKgVp8YQYkrxPpcdJu
	1R0sX9afqQsvvrUt3wnR1OlWmPVp9kaceDScAshksqIjuEO4lnN9RZeanR6eOIgFELBS7Z72XNOky
	nwivTSUpTrsmL1J69X7ONlr2a1pBEHAqMDNDpqQ1/ctd19/jKcJv8mP26H4DOTA7tyK/wQO/F0Zfo
	fTn/pVvTKgheyy4c8qzGOaqRs9KfXaFNMOQA2LxdXUJ0rd2aqvPPXmxWlMVssl8Q+UqDTReX3YTIA
	iZyfiuvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61x-00Bi7L-1E;
	Wed, 03 Jan 2024 18:31:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61D-00BhHY-12
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=KyBIKg3YRE4x4pRWSaFLe2dw5Dv+ulSVr7hMgEAgP94=; b=pE8FsE818g3GUlbclNy31ctAL1
	leDrMrjk9aZw0wzurrSlMgmFgfrmsgXV3mSRQAcSGaTSP2CGZlCMyBImpb/uhOheuzk8Cd/qRuOcr
	udN4dva6djjaSSKvE3i3mEC4/T3qtwi3ZUqlUqwRBFz9ADROndlHRTdGF/CEt5bguUvjZbaoIB6VG
	AuwpxfYWMKG+5UNRt6uBFAhBPSDxYEhuukR9WBJFoVCWdJUYYXI5Dd0cHyUwjEa5H1UtroOAey1d0
	v8bAYGwp2ZTWEVImFZO25079KCUClTzm7+yMkefWraHTW2YHxmp0BvYCaUqeS67GgNA9VRmKo/nIY
	eTzmuajw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL611-005eCU-1K
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-0001Tg-BH; Wed, 03 Jan 2024 19:30:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-000Au6-UV; Wed, 03 Jan 2024 19:30:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-001j4X-2k;
	Wed, 03 Jan 2024 19:13:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:40 +0100
Message-Id: <20240103181312.409668-21-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183055_612813_B42CFBCC 
X-CRM114-Status: UNSURE (   9.25  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 020/112] commands: stat: print DT node for cdevs if available
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It may not be directly apparent, what device a cdev spawned from.
Have stat report this information for debugging purposes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 1e357872f6ae..a7097dd3946e 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -69,6 +69,7 @@ EXPORT_SYMBOL(mkmodestr);
 
 void cdev_print(const struct cdev *cdev)
 {
+	struct device_node *np;
 	int nbytes;
 
 	if (cdev->dev || cdev->master || cdev->partname) {
@@ -118,6 +119,10 @@ void cdev_print(const struct cdev *cdev)
 
 	if (nbytes)
 		printf("\n");
+
+	np = cdev_of_node(cdev);
+	if (np)
+		printf("DT node: %pOF\n", np);
 }
 EXPORT_SYMBOL(cdev_print);
 
-- 
2.39.2



