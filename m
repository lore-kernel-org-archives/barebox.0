Delivery-date: Tue, 03 Sep 2024 11:52:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1slQDV-000pQU-08
	for lore@lore.pengutronix.de;
	Tue, 03 Sep 2024 11:52:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1slQDT-0007Uu-UD
	for lore@pengutronix.de; Tue, 03 Sep 2024 11:52:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ulejDGl8/9zr1pfXNF2wV39GkBK0AthSnAP2Flfid98=; b=i5S/SdZGNCky77XTQPFJc7ptUj
	tZ6NYL5vkihJl6P4TmZMqxAsMQsrvVUHOOpq2tZabG71/Y2zaQ2pPYVs5O50ZYAK8BJMu5r19JQyl
	vIuldvlw45EXgiSvypAWKM01Fp+XGIaL0+Y5WMZz53lxrgrUtw3ManHbPW/HGNeH5e0jX1wGnuLlX
	1OapOF6D2pyMrpnsJDmWEY54YXA7Zpo3bAt021gr7QqcFYwzKLAh0HKHlcpk2kKzQZK7JFgwDGCAt
	0sQSP7XRyOVUdW9YVMG6Le9yTS0KgNsBmSknkYf2hoaKvIi2RbyDIlkOPYifwHCqnQSGxu6I3nwuR
	3ygHGdbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slQCn-0000000HFJu-3Yzl;
	Tue, 03 Sep 2024 09:52:09 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPyS-0000000HC3y-04IP
	for barebox@bombadil.infradead.org;
	Tue, 03 Sep 2024 09:37:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=ulejDGl8/9zr1pfXNF2wV39GkBK0AthSnAP2Flfid98=; b=voNdPeeD6zJMsEI8+RayziHsSV
	AdHE34XKM7VXFMysGyRn6PXWcR2Vg7myJHgijINaJWOMFe9CSRVLzlepsg7d+2LZhcMl5G8q/7nfu
	qJ3gUHP0aTZ0QU0QJTkmNVaqRkEYt0KbVLnSMW7Er93YZGZBNqVsP8U6F+YIqkzePkkoxwUZV5lM0
	FumVoTgAn2TmN4seYFJ9hoMCKvmTcDvF3TzjBBsA3VODEFPWg3dG1hF4AlwiafApoGOKiv5ehhsPj
	LIjdkzN0mwkLpXL/ybzkiBXGkgsPem1ByCOWwhMXGba16bpKe9qnJJeNThTIhE00YfmnMRwvLT9u+
	kNrnTxIg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1slPyO-0000000825i-48dz
	for barebox@lists.infradead.org;
	Tue, 03 Sep 2024 09:37:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost)
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1slPyN-0000hU-Qv; Tue, 03 Sep 2024 11:37:15 +0200
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  3 Sep 2024 11:37:12 +0200
Message-ID: <20240903093712.453901-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_103717_048035_9D55E0DE 
X-CRM114-Status: GOOD (  10.78  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] include: linux/iopoll: fix uninitialized warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In gcc 13.3 there is a warning that start may be used unitialized:

  include/linux/iopoll.h:42:21: warning: ‘start’ may be used uninitialized [-Wmaybe-uninitialized]
     42 |                     is_timeout(start, ((timeout_us) * USECOND))) { \
        |                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The warning is bogus since before usage of start !IN_PBL and
timeout_us != 0 are checked for the case where start is used, but in
this case it is also always initialized to get_time_ns().
Initialize it to zero to silence the warning.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 include/linux/iopoll.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index 96b17dee48..c7dcaec382 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -31,7 +31,7 @@
  */
 #define read_poll_timeout(op, val, cond, timeout_us, args...)	\
 ({ \
-	uint64_t start; \
+	uint64_t start = 0; \
 	if (!IN_PBL && (timeout_us) != 0) \
 		start = get_time_ns(); \
 	for (;;) { \
-- 
2.46.0



