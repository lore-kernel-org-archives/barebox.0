Delivery-date: Thu, 09 Jun 2022 15:14:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzHzs-008lX3-J7
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 15:14:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzHzq-0005l4-Pn
	for lore@pengutronix.de; Thu, 09 Jun 2022 15:14:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7uN5znTUuLTe1UlDLjHM7ekQF8zjGtXM/heFLos4mk=; b=mjptxsHiu9mf5h
	cN/s1lxBWpMkKZimXSBQviXXN1a8rCxQIhc93R8Y0CQik/j9CbquRhJMgzEbTphvrpDqfOH1Xb0PL
	M3rPSGjkysQQLe8kTUnR30DBGn7oCs/CUuz8vQTzmB7NMPQNcKTnihL/RscYR/Hr2Dp9H8WS+V5aG
	lGykNCAnyWRYAph8xle+KmW3X3Awe4Si/x3s2k09wbIVkq33CxtbCMLCDW0UjfhTg0fy0Y9yJYePX
	QlXLHrrIDwCG/qL2Xz5NAOFBJtlumG9/afSvn2QKCA08Nl/nBlUj6QlTiZVaIPemKtAWlVW3bEc4+
	hWw+p8EHOAmwdEWb9nkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzHyI-0022VN-4P; Thu, 09 Jun 2022 13:13:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzHuu-0020Uw-QB
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 13:09:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzHut-0004Ny-EH; Thu, 09 Jun 2022 15:09:39 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzHuu-007OMa-36; Thu, 09 Jun 2022 15:09:38 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzHur-00FAqy-RZ; Thu, 09 Jun 2022 15:09:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 15:09:36 +0200
Message-Id: <20220609130936.3616309-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609130936.3616309-1-a.fatoum@pengutronix.de>
References: <20220609130936.3616309-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_060940_927996_1BF796AC 
X-CRM114-Status: GOOD (  11.32  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 2/2] fastboot: bail if update handler couldn't be found for bbu-partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fastboot would fall back to a raw copy even for bbu- partitions if
no barebox_update handler was found. Prevent this by bailing out
with an error code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  - bail out instead of only printing message and falling back
    to raw copy (Sascha)
v1 -> v2:
  - print message in case barebox_update handler is not found
---
 common/fastboot.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 330a06f5a32f..a5cf04b39ecd 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -683,8 +683,13 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 		};
 
 		handler = bbu_find_handler_by_device(data.devicefile);
-		if (!handler)
-			goto copy;
+		if (!handler) {
+			fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
+					  "No barebox update handler registered for %s",
+					  data.devicefile);
+			ret = -ENOENT;
+			goto out;
+		}
 
 		fastboot_tx_print(fb, FASTBOOT_MSG_INFO,
 				  "This is a barebox image...");
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

