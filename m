Delivery-date: Fri, 05 May 2023 09:54:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puqH5-005dqx-Ai
	for lore@lore.pengutronix.de; Fri, 05 May 2023 09:54:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puqH3-00038E-Dc
	for lore@pengutronix.de; Fri, 05 May 2023 09:54:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mGcqGLTDYzPvECLpeuwxtjBYRKz++4VZGjQNP0EZcMY=; b=rj7Lk7eWF+3M0HkQdZ5oZEqZYT
	J6A2rKrMCJnm1PUVkrqzY9bmEn8oK7YTO+Uj2RrOJzI/1BTcfgFWHPgTzyd1iIWvN5PoIPwE5pFVX
	Q0Tn1xrtUtZqIacSNDFjmJthKyrvnGXQEpnkb/We/KzJyiGzLvsP1CXqitEdvnislxnIHO8RFtBFT
	h9gkS574JM/Ia9R7SxKXNWYln9r0CopIxzKgNgoEl6FnKfPTLwCr1dicSdw5T7cn4nqTJL4dJKjhT
	F6AkPaLZsHpfVsL6EOsmUW24XMORJciytXl+m3cklpXW7x2XX6k2ZtKI/4etxXJV3XL3XanUOIFnH
	ycAwWCOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puqFq-009xhE-3B;
	Fri, 05 May 2023 07:53:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puqFm-009xey-1E
	for barebox@lists.infradead.org;
	Fri, 05 May 2023 07:53:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1puqFh-0002ip-5m; Fri, 05 May 2023 09:53:17 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1puqFg-001FAW-GU; Fri, 05 May 2023 09:53:16 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1puqFf-004GrF-Ra; Fri, 05 May 2023 09:53:15 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: patchwork-jzi@pengutronix.de,
	kernel@pengutronix.de,
	Johannes Zink <j.zink@pengutronix.de>
Date: Fri,  5 May 2023 09:53:07 +0200
Message-Id: <20230505075308.1015157-3-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230505075308.1015157-1-j.zink@pengutronix.de>
References: <20230505075308.1015157-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_005322_426035_F5AAB879 
X-CRM114-Status: GOOD (  10.18  )
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
Subject: [PATCH v1 2/3] imx-usb-loader: use proper return code macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It is considered good practice to use EXIT_SUCCESS and EXIT_FAILURE
instead of hardcoding magic values.

No functional changes.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 17b83b611765..e49c0bea6ca4 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1557,7 +1557,7 @@ int main(int argc, char *argv[])
 			break;
 		case 'h':
 			usage(argv[0]);
-			exit(0);
+			exit(EXIT_SUCCESS);
 		case 'd':
 			devtype = optarg;
 			break;
@@ -1571,13 +1571,13 @@ int main(int argc, char *argv[])
 			w.do_dcd_once = 0;
 			break;
 		default:
-			exit(1);
+			exit(EXIT_FAILURE);
 		}
 	}
 
 	if (devtype && strcmp(devtype, "list") == 0) {
 		list_imx_device_types();
-		exit(0);
+		exit(EXIT_SUCCESS);
 	}
 
 	if (devtype && !devpath) {
@@ -1587,7 +1587,7 @@ int main(int argc, char *argv[])
 	if (optind == argc) {
 		fprintf(stderr, "no filename given\n");
 		usage(argv[0]);
-		exit(1);
+		exit(EXIT_FAILURE);
 	}
 
 	w.plug = 1;
-- 
2.39.2



