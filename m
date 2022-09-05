Delivery-date: Mon, 05 Sep 2022 12:58:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9nt-007PQQ-TT
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 12:58:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9nt-0000SW-4B
	for lore@pengutronix.de; Mon, 05 Sep 2022 12:58:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HjbhgjWJ9cZzvOQBBnTxsWaHeGWJxpIWDlWVNYgn7zM=; b=phkB4TyVB03KFoBf9vLIq19MT0
	jrvr+J1pu+rF2UQv1XkZ/CYPpNTC8T0jDXBFcrLszfC/GpsLXMqxf5QRgaXX7PSKYQHKQTqoT7pH/
	t5OCzZoinOwsxPE6w0gZLhfZwJtIQKQINiM0uBXvHwFzOXFN7IA9kxzDhaFOInf1/Q3lslQU+e9ff
	p66d2pxCNH5S2qCsTBiRiKDXnDpubN63m2aSM1Ekn5Pj5sTkSXkauyZzOvb3aCGD3sXDl5BgB8GHD
	v+fir+RC3YuELOzLezdjEkM/XsGNhThPt8aehV4OixsjnGEsb7VX8qC3dxum42C/B3SvR9Jf585Cd
	1/mJ7Y6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9h6-000fdd-EY; Mon, 05 Sep 2022 10:51:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8qH-00H4KJ-7M
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=HjbhgjWJ9cZzvOQBBnTxsWaHeGWJxpIWDlWVNYgn7zM=; b=NtFXtgVVxsqkTIVYtYeUWT+G5j
	Mx3XgEHf/oxm6v7vnCDknRgNmi5ZLIWLb2ztOF/D0jW9qIKO4DPm2o/8pEWylRxH7RJdl9vpEA9aU
	dHFNuWg54OXYPk0utsF5+XQU+cZSgn4AdEdXfhWQNUPOb9+P7epFwE8E1Unmbjv8M1MfM3mguHpSP
	MPnLz4t1GYgCFRhmT59qWwcTMCynNh/9oC3Y86rnpwj8WofltuR3U9jaIOX9J8L8ZCXauES7lYMFr
	/E1vbF5iBq510W5Jg7r1ubIIc+/Dy4DLW35ZUMykk+mcjR++gQbsW7XfK4g0MfpUqhhhvzImEtc/Q
	psKT6QWw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q2-009UjI-Ka
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pr-0008Gm-81; Mon, 05 Sep 2022 11:56:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8po-0042GY-FL; Mon, 05 Sep 2022 11:56:06 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-002Wej-30; Mon, 05 Sep 2022 11:56:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:48 +0200
Message-Id: <20220905095557.596891-24-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105619_429911_D885CD11 
X-CRM114-Status: UNSURE (   9.60  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 23/32] of: overlay: drop unused variable of_overlay_apply_dir()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This seems to be a copy-paste left-over from of_overlay_filter_filename,
which has some actual use for both p and path. We don't though and just
end up leaking the buffer, so drop these variables.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/overlay.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 20a43f5170c8..fff1d6ea028e 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -418,7 +418,6 @@ void of_overlay_set_basedir(const char *path)
 static int of_overlay_apply_dir(struct device_node *root, const char *dirname,
 				bool filter)
 {
-	char *p, *path;
 	int ret = 0;
 	DIR *dir;
 
@@ -431,8 +430,6 @@ static int of_overlay_apply_dir(struct device_node *root, const char *dirname,
 	if (!dir)
 		return -errno;
 
-	p = path = strdup(of_overlay_filepattern);
-
 	while (1) {
 		struct dirent *ent;
 		char *filename;
-- 
2.30.2



