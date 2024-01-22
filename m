Delivery-date: Mon, 22 Jan 2024 13:53:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRtoE-00BTnj-1k
	for lore@lore.pengutronix.de;
	Mon, 22 Jan 2024 13:53:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRtoF-0003oy-8M
	for lore@pengutronix.de; Mon, 22 Jan 2024 13:53:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=M3Xmyvz8QMSpygyjIyydyCoAm41gNY4tI2oIoFXmKXM=; b=wiupRGQP0GQhsQNBJGMefsPn0Z
	2WH6AkjZ20eBAyhfeefSwmgIYk4PCHRqfbVzX5OwHkOFo1Vc0VOECA8G8SxRTOL0bpzmeS+TJ2e/u
	dhMJKSWmBP2bQ4BPJHwS6k6mjKKuOjqQ34bHYFjCxZtjGJueKrzIz8lvSBs4sYNhE8cbXWXH/PzWV
	zRV04NPjgtpj7vvbXMJiO/DhgqGJqExFrfBlUTrpMVVE9Q02P21PjxTYTpZIOOxN8GAEOsbWShjxr
	6yyDjqbR1Ah8iAs1nnfmJnQUkHHi+lG9hwbB4Dc3jR1DAjdL9shB3nwflDTxE4GJS/oBizrsp/cYy
	eYpdc0cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRtnC-00CBKo-1o;
	Mon, 22 Jan 2024 12:52:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRtnA-00CBJt-1R
	for barebox@lists.infradead.org;
	Mon, 22 Jan 2024 12:52:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rRtn7-0003kj-QJ; Mon, 22 Jan 2024 13:52:41 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rRtn7-001bFI-Db; Mon, 22 Jan 2024 13:52:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rRtn7-00CHXd-14;
	Mon, 22 Jan 2024 13:52:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Jan 2024 13:52:39 +0100
Message-Id: <20240122125239.2927330-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_045244_488658_6C40F4A7 
X-CRM114-Status: UNSURE (   9.17  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! pmdomain: implement pm_genpd_remove/of_genpd_del_provider for cleanup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

pmdomain: fix pm_genpd_remove stub definition when !CONFIG_PM_GENERIC_DOMAINS

A stray semicolon breaks CI build when built without generic power
domain support. Remove it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/pm_domain.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/pm_domain.h b/include/pm_domain.h
index f637eb1afa9d..4b7b07b0e43d 100644
--- a/include/pm_domain.h
+++ b/include/pm_domain.h
@@ -69,7 +69,7 @@ static inline int pm_genpd_init(struct generic_pm_domain *genpd,
 	return -ENOSYS;
 }
 
-static inline int pm_genpd_remove(struct generic_pm_domain *genpd);
+static inline int pm_genpd_remove(struct generic_pm_domain *genpd)
 {
 	return -EOPNOTSUPP;
 }
-- 
2.39.2



