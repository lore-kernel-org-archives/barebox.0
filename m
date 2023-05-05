Delivery-date: Fri, 05 May 2023 17:54:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puxlS-006IJm-6A
	for lore@lore.pengutronix.de; Fri, 05 May 2023 17:54:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puxlQ-0002UA-BX
	for lore@pengutronix.de; Fri, 05 May 2023 17:54:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mGcqGLTDYzPvECLpeuwxtjBYRKz++4VZGjQNP0EZcMY=; b=utnWx72YE5Ic5Y/815KY3+PWFA
	Q7vjf4CrNw9WewRPv1Brnf+p+hHcLveRwkVUPdLFHz0zbVcPUsApKZp8ifRi4aJDpOs97ahxuBNog
	1jmxQs/WVgWFE9dStn5h6b24b566YsoLmCxKNlfbHGJMoITmC5IpoBSTmVl7EXpkFobFiNzKsNydH
	8b8+EKNkQEL15kQO76ves70Oos2V4/vehcW67i81F13j175mpRJmnsi+MnpQc7SuYVCuNwRJCQJX2
	dGzjoxgB9KL9Dc3G1NTJvOuj8x+RAM7k/Gs4HYFNC6gcgUtiiGS7A1GEA/srOlfst5zFfBLKJo0PU
	NfZqt4ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puxk3-00BFJR-32;
	Fri, 05 May 2023 15:53:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puxk0-00BFHZ-28
	for barebox@lists.infradead.org;
	Fri, 05 May 2023 15:53:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1puxjw-0002Hv-Ch; Fri, 05 May 2023 17:53:00 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1puxjv-001KX3-Nc; Fri, 05 May 2023 17:52:59 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1puxjv-009Vyn-1S; Fri, 05 May 2023 17:52:59 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: patchwork-jzi@pengutronix.de,
	Johannes Zink <j.zink@pengutronix.de>
Date: Fri,  5 May 2023 17:52:47 +0200
Message-Id: <20230505155248.2261867-3-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230505155248.2261867-1-j.zink@pengutronix.de>
References: <20230505155248.2261867-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_085304_700765_D185FBF9 
X-CRM114-Status: GOOD (  10.19  )
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
Subject: [PATCH v2 2/3] imx-usb-loader: use proper return code macros
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



