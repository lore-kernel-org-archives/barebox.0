Delivery-date: Mon, 12 Aug 2024 11:16:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdR9x-008oUe-1L
	for lore@lore.pengutronix.de;
	Mon, 12 Aug 2024 11:16:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdR9w-0003BV-MM
	for lore@pengutronix.de; Mon, 12 Aug 2024 11:16:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jGOJFU5MT/vra+fmTzyoHtMbix+2KwMvQIT2acs9vD0=; b=HYvQT5SmwiY/kXhozi4LU7C+En
	+vs4JoC3x3MVmRRp9wviU6Hzza+e8uHXZjEnugmAtibjROspehqZWY/VxNhkrH+Yv9qq5PWdKBtIH
	p67fRF7gYlwejbh+VpjGURj5ufm6ISV7Gjqei3gSSmMuaQLoX15isWsFV7siaiZBYo4WkB3rBXxaf
	+gYL/hcBg/ywY0iNQ8vpwawaTi+byJYtNC5JPZiip4NDAHmFYF+G/FGNhTf/qKbxZY76C2M48aYgq
	/m/zjyFGNU3f1K6B8Jy8BXk3rUr5bMj6oiyiHkW0b5btpkYJP2veR5pCn4sGSAYAEXafVXj+g8ZW/
	o1TWEJbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdR9K-0000000HPeK-0VQM;
	Mon, 12 Aug 2024 09:15:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdR9F-0000000HPb0-3MqU
	for barebox@lists.infradead.org;
	Mon, 12 Aug 2024 09:15:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdR9E-0002sg-Co; Mon, 12 Aug 2024 11:15:28 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdR9D-006KDG-UE; Mon, 12 Aug 2024 11:15:27 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdR9D-00Cjq9-2j;
	Mon, 12 Aug 2024 11:15:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Aug 2024 11:15:19 +0200
Message-Id: <20240812091522.3035469-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240812091522.3035469-1-a.fatoum@pengutronix.de>
References: <20240812091522.3035469-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_021529_920177_BC06F5E5 
X-CRM114-Status: UNSURE (   9.52  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/6] ci: container: update to newer Labgrid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The now current release is v23.0.6 from April 2024, but master has
fixes, which enable us to run Labgrid tests against the sandbox
architecture. Therefore point at the newest commit on the master branch.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/test/Containerfile b/test/Containerfile
index 2f8c969d824f..c09051a1505a 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -75,8 +75,9 @@ RUN echo barebox ALL=NOPASSWD: ALL > /etc/sudoers.d/barebox
 
 # install labgrid
 RUN cd /tmp && \
-    git clone --depth 1 -b v23.0 https://github.com/labgrid-project/labgrid && \
+    git clone --depth 1 https://github.com/labgrid-project/labgrid && \
     cd labgrid && \
+    git checkout 16db15a953 && \
     pip3 install --break-system-packages . && \
     ln -s $(which pytest) /usr/local/bin/labgrid-pytest;
 
-- 
2.39.2



