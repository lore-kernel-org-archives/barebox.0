Delivery-date: Thu, 14 Jul 2022 18:43:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oC1vu-007twS-Ev
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 18:43:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oC1vs-00087f-Mc
	for lore@pengutronix.de; Thu, 14 Jul 2022 18:43:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=p2MeGXNdqwdOnElo2YIsBp3R6g2+9UxUSpC0hdf0fTg=; b=NiLdjyG5e/HWNdcH84EFOcMrD5
	ykgDE+y1gf4hyz7P+DHisz8CB+wLhlw+JbU7qdcRZvKVzOfFphK4w1xLvNXmuLONTU+CnPoM9QsTq
	xySEK7aBCMd2uEJT7Gtge3rNAeH0vFQZGexpZdHe9KYaERJTPLqNUG9Tk2K7VGwjOdVwg44Ug2S+A
	QnN+GZraYMFo3g2sm/Lq8PLDZPMqYYh6oukGLjU1N2SGoQZSQYmx7/Q4PTv7gyaB1tlm+RwSR0yHy
	rAX/vk82zGHimVemiu7m6jCoQ4F8XpozWO8Spuo+7uzVQ4ad7sIBAut+oqz67/kp7vkWomrepoBQJ
	C5XqbF1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oC1uB-00GMEK-Nq; Thu, 14 Jul 2022 16:41:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oC1u6-00GMAH-F6
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 16:41:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oC1u2-0007l3-1w; Thu, 14 Jul 2022 18:41:26 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oC1u1-000woZ-Bx; Thu, 14 Jul 2022 18:41:25 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oC1u0-005BAA-Nb; Thu, 14 Jul 2022 18:41:24 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 14 Jul 2022 18:41:18 +0200
Message-Id: <20220714164118.56761-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=863; h=from:subject; bh=Ordy7+7+SwydgcTGJhR3o6MZQTyXM+PBU5X8Ice2W7I=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBi0EcfHWFJJXroDqZg2CyLV61miAbltOn7+OxIqgm/ rf6Uc66JATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYtBHHwAKCRDB/BR4rcrsCfdYB/ 9a9hWk5viYXsylJa5LHLgCrSOe+/5+Otz4OZtBy143rVXKuwQKVX7zLLMf/igioFc1eZyxBwc1Hu8w /Wn7GNeL83+OAoAyCRJnmhwGPCvt0CnZv6y2Wlu/pNot6MDbNjKqL5+O9txQslD1N+O+aUwdUC1pn9 pntcXXES64Jbe6wXxXH5c3hLLr+9uo9xJv03S/DwjtdUTQwvKfq0BiSozyMI0Am+5ndR8Q/bLXWnYv rtTkUbw4fbFUFRgiAkkGk7LTrpH8CD82oQfAV1xgbCkvFadvYXueUDYZCXc+YSPoeAkAt4+AdlFWRP gO7ClqEvmfYtcolA/ZTZHlM3kZUWlC
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_094130_520767_05812E81 
X-CRM114-Status: UNSURE (   9.61  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] hush: Fix a memory leak in run_command()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

parse_string_outer() calls initialize_context(), too. As the latter
allocates memory make sure to only call it once.

This fixes

	automount -d /mnt/foo true
	ls -l /mnt/foo

dying with a failure to allocate memory. Now it results in an endless loop,
which admittedly is only a little bit better :-)

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 common/hush.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 6a089fabf11d..117b273ea4e2 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1887,8 +1887,6 @@ int run_command(const char *cmd)
 	struct p_context ctx = {};
 	int ret;
 
-	initialize_context(&ctx);
-
 	ret = parse_string_outer(&ctx, cmd, FLAG_PARSE_SEMICOLON);
 	release_context(&ctx);
 

base-commit: 298727bc7931fe878fd72a1fa6f35c18bd7c593c
-- 
2.36.1



