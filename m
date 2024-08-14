Delivery-date: Wed, 14 Aug 2024 11:45:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seAZm-009Uj2-1A
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 11:45:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seAZl-0001KG-K8
	for lore@pengutronix.de; Wed, 14 Aug 2024 11:45:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xAD7p9yvY37bKGOmCdbWaeLgbbOQim57pEUDHTnEqBM=; b=oP1uk2XPQ3l39pfaEZAUaJZQDl
	g2qJ++eOKCdCBdFkAXcbVuNWRPqp+O6XiRfGkETSsx2G3cmZhHfUFdCvrloju9odD3z4kCQKhPZ7g
	p7PMt7yzQk4XHMnz4EWF6W4fxWw7Nv/dKl6xKWb3evuArJSWLH+BirPR7K2hTYgwzfpZPrB3jbA3s
	gscHS5FunkM/ArSEWcIHZDc5wmb05W7/9ZyVD9W1bbtzdysdnnEF1HQ7h3ji8q+Nlprxwc0t/AUtQ
	T8hj+xGqUi4cISMfsAVGDjk9Ou/FLIzz4IkeP+9UtLD99KjiCObydSyaMLz+kLSOItfej645PYdHN
	tAoBPjrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAZZ-00000006Rxl-36Z3;
	Wed, 14 Aug 2024 09:45:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se9SB-00000006Ffk-1RpO
	for barebox@bombadil.infradead.org;
	Wed, 14 Aug 2024 08:33:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=xAD7p9yvY37bKGOmCdbWaeLgbbOQim57pEUDHTnEqBM=; b=OAvVajcfQdpVJsBoBidB6LBp8P
	UldIExblqvnxoFKH0ATaL0dFa7DPtTkcDJf6QJCl9yXXYiRO3tSDtLgN8iN53uhiihN560CFJ/5jE
	Kdy0yS08BNpbfy7NsAGwNloHeuHNAMDD73Fao17rqC7j30uqDjk1ivi1CQQNFdmIQvJnYJM4Pp7kr
	EqFipBjGqhfuOXIURL27Fu3w2+d6M2oszvy+VOQwbS2ne9TfJoE47TzAHvf6kJLv9V3bWxVzl9hDA
	BNA6XYApMxu1+bHpW/iJUykc0ePgILamAQfog/vfGBSEuUbKfM1mFE9WMIxlVHFC7WD30G+eAJHoe
	Ie72SdIw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se9S6-00000007xtm-27zr
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 08:33:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1se9S2-0002Px-BD; Wed, 14 Aug 2024 10:33:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1se9S1-000JmG-Tx; Wed, 14 Aug 2024 10:33:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1se9S1-00HBxv-2g;
	Wed, 14 Aug 2024 10:33:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Aug 2024 10:33:48 +0200
Message-Id: <20240814083348.4097559-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_093354_851033_72B59306 
X-CRM114-Status: UNSURE (   9.57  )
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
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! ci: pytest: test sandbox configuration with labgrid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ci: pytest: add missing single quote for argument

The argument needs to be quoted, so the backslashes aren't interpreted
by the shell. Somehow I ended up sending the version with a missing
second single quote...

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/test-labgrid-pytest.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 70bc570f005b..7d51a4d84d3a 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -72,7 +72,7 @@ jobs:
         export KBUILD_OUTPUT=build-${{matrix.arch}}
 
         for i in ${{matrix.lgenv}}; do
-          grep -wq '\(QEMUDriver\|ExternalConsoleDriver\): "$i" || continue
+          grep -wq '\(QEMUDriver\|ExternalConsoleDriver\):' "$i" || continue
 
           cfg=$(basename $i .yaml)
           echo "Testing $cfg"
-- 
2.39.2



