Delivery-date: Fri, 05 May 2023 17:54:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puxlR-006IJl-Vb
	for lore@lore.pengutronix.de; Fri, 05 May 2023 17:54:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puxlQ-0002Tq-2v
	for lore@pengutronix.de; Fri, 05 May 2023 17:54:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5Bck52uNtjGY4Q7sNSXKhHgL4duehKCYJbGKWkFqoCw=; b=zWP0awKP8pFMhwrh0k0M9Nhrgw
	GTfN+W1Hy9xKwWQzwx2d0pgAN21I3mWjC2Et/HEWW241daiWU++zkxYBYH4w0+23jICad3hWTRnWS
	i8zMXXobMg7YqgMnaP3GrhTD2eHRxmQw5uFmOlewKiQqtB9BevPwq3Y4IthwGl/12ZxzhRBhmfD8F
	QoEzimBDpGVs5XBXTfjyCf+Bpk6tNcSuF4SVZ9Lhod79uqIn2JUUE9cR5jTfWaOLIYiFH4cSZV8um
	0XdL0BAItI5EeCEq14D/nsB71weWDFyPXDkl7tn67yYn3ofCaED5BldTwEnUACmKBaeDZkg7XDFgM
	8E0LjxRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puxk4-00BFJl-2l;
	Fri, 05 May 2023 15:53:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puxk0-00BFHa-28
	for barebox@lists.infradead.org;
	Fri, 05 May 2023 15:53:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1puxjw-0002Hw-EU; Fri, 05 May 2023 17:53:00 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1puxjv-001KX6-PU; Fri, 05 May 2023 17:52:59 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1puxjv-009Vyj-0l; Fri, 05 May 2023 17:52:59 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: patchwork-jzi@pengutronix.de,
	Johannes Zink <j.zink@pengutronix.de>
Date: Fri,  5 May 2023 17:52:46 +0200
Message-Id: <20230505155248.2261867-2-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230505155248.2261867-1-j.zink@pengutronix.de>
References: <20230505155248.2261867-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_085304_699066_F5E951D2 
X-CRM114-Status: GOOD (  15.92  )
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
Subject: [PATCH v2 1/3] imx-usb-loader: exit with success when displaying help on purpose
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Previously, whenever the usage was displayed, the imx-usb-loader exited
with error code.

When the usage is displayed due to invalid tool invocation, returning an
error code is valid behaviour, but when displaying the usage with the -h
command line option, success should be returned.

The other usage() callsite in the code already has an exit(1) following
it, which is why the exit call can be removed from the usage function
without introducing any behavioural change there.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
Changelog:

 v1 -> v2: - fixed erronous commit subject
           - added comment in commit message why removing the exit()
	     call is from the usage() function is valid, even when not
	     explicitely adding an exit() call at all call sites

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



