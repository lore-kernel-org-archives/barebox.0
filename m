Delivery-date: Tue, 13 Aug 2024 09:02:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdlYP-009791-1i
	for lore@lore.pengutronix.de;
	Tue, 13 Aug 2024 09:02:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdlYO-0004R3-U9
	for lore@pengutronix.de; Tue, 13 Aug 2024 09:02:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+eBGmXAT3sZicbqiCb34bE4IOTboV/ezEPAkvMESyME=; b=zoYIAi/whicpc5rZc/h1/s9P9J
	hvYqKwicd6CNarM1E5QEuUGYq0ELEvzY+RCWYXeS066gFxz9GJieIft3YVhJ1c6oVRTomHzv4DgRx
	eE87i3g1XHFBNw51ChT7CzUtKAXYnoQSSyeq34/1gt4sOwyhU7t22mhnCAjXPo5XTNHBDcbny7I4+
	czpjmCPdeu+A5l7CVKCrvnriciJToLoLRehYc2MjbuUUdmzyxumNxUPuwbDn1S/ch8/BqJkmhgwWm
	EnUUbY52m5TnMqxxPhQfM9j2SSBzAcfj510es02b+6qoKOAJj4p8D2v0YYep8V2tuJnpNgZPt+xaK
	FU6YOnrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdlXs-00000002dbV-2wet;
	Tue, 13 Aug 2024 07:02:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdlXg-00000002dYL-0Bvq
	for barebox@lists.infradead.org;
	Tue, 13 Aug 2024 07:02:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdlXe-000483-Km; Tue, 13 Aug 2024 09:02:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdlXe-0004EX-7P; Tue, 13 Aug 2024 09:02:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdlXe-004UK1-0S;
	Tue, 13 Aug 2024 09:02:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Aug 2024 09:01:57 +0200
Message-Id: <20240813070201.1069847-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240813070201.1069847-1-a.fatoum@pengutronix.de>
References: <20240813070201.1069847-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_000204_452572_870BEE0F 
X-CRM114-Status: GOOD (  10.39  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/7] ci: container: update to newest Labgrid release
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This new Labgrid release enables us to run Labgrid tests against the
sandbox architecture and integrates Labgrid pull requests that fix
stuff we have been monkey patching so far.

Let's update in preparation for making use of this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - update to new v24.0 release instead of commit on master
---
 test/Containerfile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/Containerfile b/test/Containerfile
index 2f8c969d824f..23f33dc8d7ff 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -75,7 +75,7 @@ RUN echo barebox ALL=NOPASSWD: ALL > /etc/sudoers.d/barebox
 
 # install labgrid
 RUN cd /tmp && \
-    git clone --depth 1 -b v23.0 https://github.com/labgrid-project/labgrid && \
+    git clone --depth 1 -b v24.0 https://github.com/labgrid-project/labgrid && \
     cd labgrid && \
     pip3 install --break-system-packages . && \
     ln -s $(which pytest) /usr/local/bin/labgrid-pytest;
-- 
2.39.2



