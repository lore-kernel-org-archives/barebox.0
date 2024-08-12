Delivery-date: Mon, 12 Aug 2024 11:16:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdR9y-008oVC-1f
	for lore@lore.pengutronix.de;
	Mon, 12 Aug 2024 11:16:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdR9x-0003Bl-31
	for lore@pengutronix.de; Mon, 12 Aug 2024 11:16:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UnQyxG6i2MnUFmhO/2j9NzA/rem+9LUrN0ho/fN9MGk=; b=LXfzfyVvF+O+Jdv097B1TIGME/
	/i0Bgc1eR6bRvBa4SPYAEoaMHGIuQKsq45XleHr06E1hqwjAg1vepHjqjyYglh+J8e4bV4/ryiA2V
	r7EF4boMb913wp0Vu2VOWXsHTxYvK9B4jVTYgJtK8cUdqa0sR9ZmzXD/hjfESd2ZQHa0cHf4R3VqI
	978ULegm+5v5okDeOTT8K4frypYUi8rKBPX157XWStV5yiA69evkbukAbgh0eVwxABoAl8pEI/CB/
	3u33YJzQNx01lao2RxaftPXxcVkTm88VDjn3aTr0AL3JL5wna1VvIV/mWzlizEEmUwurpQ08zEd84
	1ZmElPmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdR9J-0000000HPe6-2Tvd;
	Mon, 12 Aug 2024 09:15:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdR9F-0000000HPb1-3MYd
	for barebox@lists.infradead.org;
	Mon, 12 Aug 2024 09:15:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdR9E-0002sj-FT; Mon, 12 Aug 2024 11:15:28 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdR9E-006KDM-0q; Mon, 12 Aug 2024 11:15:28 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdR9D-00Cjq9-32;
	Mon, 12 Aug 2024 11:15:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Aug 2024 11:15:21 +0200
Message-Id: <20240812091522.3035469-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240812091522.3035469-1-a.fatoum@pengutronix.de>
References: <20240812091522.3035469-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_021529_901229_ADAB56CF 
X-CRM114-Status: UNSURE (   8.30  )
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
Subject: [PATCH 5/6] ci: pytest: test sandbox configuration with labgrid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we updated to a Labgrid version that can test sandbox barebox
and changed our environment YAML to use it, let's test this in CI.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/test-labgrid-pytest.yml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 2e038e371f1e..70bc570f005b 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -47,6 +47,10 @@ jobs:
             lgenv: 'test/riscv/qemu-virt64@rv64i_defconfig.yaml'
             defconfig: rv64i_defconfig
 
+          - ARCH: sandbox
+            lgenv: 'test/sandbox/sandbox_defconfig.yaml'
+            defconfig: sandbox_defconfig
+
     steps:
     - name: Checkout code
       uses: actions/checkout@v4
@@ -68,7 +72,7 @@ jobs:
         export KBUILD_OUTPUT=build-${{matrix.arch}}
 
         for i in ${{matrix.lgenv}}; do
-          grep -wqe QEMUDriver: "$i" || continue
+          grep -wq '\(QEMUDriver\|ExternalConsoleDriver\): "$i" || continue
 
           cfg=$(basename $i .yaml)
           echo "Testing $cfg"
-- 
2.39.2



