Delivery-date: Fri, 05 May 2023 09:54:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puqH3-005dqS-QE
	for lore@lore.pengutronix.de; Fri, 05 May 2023 09:54:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puqH1-00037s-Sj
	for lore@pengutronix.de; Fri, 05 May 2023 09:54:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mP2CIwSBO22FhAWxtNe8RejoZqx3O1EZwd85QHb9CLA=; b=bJ66LC5kJsvl/YfwahOkYp8s7j
	EBCTuGnTBSsbXOY3PV0h1QYqip+IpWLbRIG2jmRJTXXYRx2Dla5DfOBDvWzY4lnfHakf1kPov8VL/
	KU2Dfadacdl9ulw0W386Ea+2SgJuLUlpwc9ZURDVjz7YtP1Ldf2DGbACDb06CPJ73r+z8ZOcHA7oG
	Pmq8lynY+ePdlygQAX+wEqM33ycbEXHvB8s5kHBAGgCWxYhf+fCfZOdjma6UEpl54ylpG/p6RrM+/
	5+4vKKMwl68OidormheeqjvSrXMfsgHf0elBdrwXIBE0Nf/mb5kEvu3eInDpDwK8HbOHiMkOy+mcr
	fyh0QuCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puqFq-009xh4-0q;
	Fri, 05 May 2023 07:53:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puqFm-009xf5-1D
	for barebox@lists.infradead.org;
	Fri, 05 May 2023 07:53:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1puqFh-0002is-Db; Fri, 05 May 2023 09:53:17 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1puqFg-001FAf-PW; Fri, 05 May 2023 09:53:16 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1puqFf-004GrB-Qm; Fri, 05 May 2023 09:53:15 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: patchwork-jzi@pengutronix.de,
	kernel@pengutronix.de,
	Johannes Zink <j.zink@pengutronix.de>
Date: Fri,  5 May 2023 09:53:06 +0200
Message-Id: <20230505075308.1015157-2-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230505075308.1015157-1-j.zink@pengutronix.de>
References: <20230505075308.1015157-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_005322_411442_54C176FC 
X-CRM114-Status: GOOD (  12.76  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 1/3] imx-usb-loader: error with success when displaying help on purpose
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Previously, whenever the usage was displayed, the imx-usb-loader exited
with error code.

When the usage is displayed due to invalid tool invocation, returning an
error code is valid behaviour, but when displaying the usage with the -h
command line option, success should be returned.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 41d57906c752..17b83b611765 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1527,7 +1527,6 @@ static void usage(const char *prgname)
 		"-s           skip DCD included in image\n"
 		"-v           verbose (give multiple times to increase)\n"
 		"-h           this help\n", prgname);
-	exit(1);
 }
 
 int main(int argc, char *argv[])
@@ -1558,6 +1557,7 @@ int main(int argc, char *argv[])
 			break;
 		case 'h':
 			usage(argv[0]);
+			exit(0);
 		case 'd':
 			devtype = optarg;
 			break;
-- 
2.39.2



