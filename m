Delivery-date: Fri, 13 Dec 2024 16:10:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tM7JU-007d4x-2I
	for lore@lore.pengutronix.de;
	Fri, 13 Dec 2024 16:10:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tM7JU-0002gc-Ac
	for lore@pengutronix.de; Fri, 13 Dec 2024 16:10:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CubBGSfJ62jEje4dAMpKF0zIL8V8enKMoflDbafWE9w=; b=kIZWhWGwoaO3asWC94N4ClmoH9
	eVVe5ewOjHA4hVRNAVpzYwTjqThAHDCeDyJ+pKQoJZ/3If6XwmRc71wQvy2ZmMTA0TosgGy9pJaAD
	oAFcrQnqZuYpqw+pNYla4t8+/FxqEKL48d9hvL8Zl93/YDhpbFu9GNy4O0iEfq3ewmpc5Q4T64rEf
	LqQMShMuOkfCmU6PNccrAjJ8sBlNRwCmBQ24D/aZX1Z0fuK9ehEtQQzAjARA9u4YPc9/QFa99wpei
	KgIrNZkDrqcyMYMpL7YqjTiX8I5q6yIQhSY0LOzaqsNXtiNSz2AeFk7z367BifJFoNI8JG3DwvES4
	f2Rytw6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM7Ix-00000004E7L-0wvH;
	Fri, 13 Dec 2024 15:10:11 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM7IK-00000004DyM-2Dk3
	for barebox@lists.infradead.org;
	Fri, 13 Dec 2024 15:09:34 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id D1401E74071; Fri, 13 Dec 2024 16:08:58 +0100 (CET)
Received: from astat.fritz.box (a89-182-99-197.net-htp.de [89.182.99.197])
	by lynxeye.de (Postfix) with ESMTPA id 02B2BE74012
	for <barebox@lists.infradead.org>; Fri, 13 Dec 2024 16:08:57 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Dec 2024 16:08:55 +0100
Message-ID: <20241213150855.263388-1-dev@lynxeye.de>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_070932_710158_4A39A95D 
X-CRM114-Status: GOOD (  12.09  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] environment: don't return raw device when file-path is specified
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Environment nodes that specify the file-path property expect the
environment to be stored in a file system.

Returning the raw device path when CONFIG_OF_BAREBOX_ENV_IN_FS is
disabled in such a case is not a good idea, as saving the env may
then unexpectedly overwrite unrelated device content. Bail out in
case a file-path is specified, but we have no env in FS support.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/of/barebox.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index dc90c0cb3ada..9b8da679e2cd 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -42,13 +42,14 @@ static char *environment_probe_2node_binding(struct device *dev)
 	if (ret)
 		goto out;
 
-	if (!IS_ENABLED(CONFIG_OF_BAREBOX_ENV_IN_FS))
+	if (!of_property_present(dev->of_node, "file-path"))
 		return devpath;
 
+	if (!IS_ENABLED(CONFIG_OF_BAREBOX_ENV_IN_FS))
+		return ERR_PTR(-ENOENT);
+
 	ret = of_property_read_string(dev->of_node, "file-path", &filepath);
-	if (ret == -EINVAL) {
-		return devpath;
-	} else if (ret) {
+	if (ret) {
 		/* file-path property exists, but has error */
 		dev_err(dev, "Problem with file-path property\n");
 		goto out;
-- 
2.47.1



