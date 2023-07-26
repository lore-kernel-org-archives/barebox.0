Delivery-date: Wed, 26 Jul 2023 21:28:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOkBf-00BBpF-NL
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 21:28:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOkBd-0001YE-8F
	for lore@pengutronix.de; Wed, 26 Jul 2023 21:28:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nNtHmSiWXjr8uGdD54nqsZHUycua3v/yQWXWMKh7TtQ=; b=H9nfFEhq8OGftlT5hWaGMga9HX
	kChsaPSgZPYOx5n/YEGQbWnjOKV/26zPfCucRSuzE17oloPbe1pU4xKEv8HuCbE8LHknNDFO8ziFp
	PzzTToblyMRvjnvG+jMeeZ1Llsf/ctWgxCiOfGoYMHedUTj2kqvbDeOIjtPYYOM2FXaJhD2S8J/fE
	QHM1oLtysncm6rb0P2p5WN3gqnBjRvn+TatdsABhtDgX6m953NgmVAZRU53y6JrDtCQ/VFZBpYLqH
	32ss9l0CjSKaDnQbsl+WCPJ1LOtQ5B9cgm/CV0dZ4tN8rlAx5wS8mMQt9jJabqGMMjgxiE2w52sJs
	rr0GTc/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOkAS-00BNvf-37;
	Wed, 26 Jul 2023 19:27:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOkAO-00BNuO-2F
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 19:27:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qOkAM-0001Mj-8L; Wed, 26 Jul 2023 21:27:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qOkAK-002JSa-QO; Wed, 26 Jul 2023 21:27:20 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qOkAK-003pBl-0N;
	Wed, 26 Jul 2023 21:27:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Jul 2023 21:27:15 +0200
Message-Id: <20230726192718.911735-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_122724_785120_A565672C 
X-CRM114-Status: GOOD (  10.72  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/4] commands: hab: check for error in imx_hab_device_locked_down
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

imx_hab_device_locked_down() reads efuses and that operation can fail.
Instead of assuming a failure means the efuses are non-zero, have the
hab command explicitly check for negative error codes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/hab.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/commands/hab.c b/commands/hab.c
index 97a1701fa551..8ae943a4c880 100644
--- a/commands/hab.c
+++ b/commands/hab.c
@@ -58,7 +58,13 @@ static int do_hab(int argc, char *argv[])
 			printf("%02x", srk[i]);
 		printf("\n");
 
-		if (imx_hab_device_locked_down())
+		ret = imx_hab_device_locked_down();
+		if (ret < 0) {
+			printf("failed to determine lockdown mode: '%pe'\n", ERR_PTR(ret));
+			return ret;
+		}
+
+		if (ret)
 			printf("secure mode\n");
 		else
 			printf("devel mode\n");
-- 
2.39.2



