Delivery-date: Mon, 06 Jan 2025 15:52:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUoSd-00HWtw-18
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 15:52:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUoSd-0002QO-69
	for lore@pengutronix.de; Mon, 06 Jan 2025 15:52:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4YqM8pBkizgTvYIoYoMvrKZLsd+D5MegjNiMBqZcZvw=; b=yNJ3obZsLAm4WTdhDB3J8l6FZI
	1BNdQOdpuST8JF6KEIj4Y1QOX1dKejU29Yt9OTQfO3kGPbzLEyfk7714wdtuw8mRS1O33No/qA++p
	dXl0KIxeeT6gkvTGJ3UWVEFx704FMYGwIAHdpVBaVB5G18Z51wnQjSh1Y3DwPLval+unYzTfW7BOM
	/gkYcwa67hEqj5gogCOvtSN4706c80C+aXUZM8k52CjUS1VlsbERcbdV9EElhJCcO+d0cpUGKlZX4
	l28/jBPcWANDC7UR+avus2A3TE4sretcH8e2sffQMSnL7ouTO8IFEX3C3HXJymvFVqDpqL95Jea0t
	UL9a9FHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUoSU-00000001ejB-1go0;
	Mon, 06 Jan 2025 14:51:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUnRn-00000001S6z-0foL
	for barebox@bombadil.infradead.org;
	Mon, 06 Jan 2025 13:47:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=4YqM8pBkizgTvYIoYoMvrKZLsd+D5MegjNiMBqZcZvw=; b=Twqu7yZ2NhxDgSg8u6ucq4i9SX
	KOcNRw4ZspMNQOUQaBdfkCi7q6w8Nuky3pbh2zIAP0VAg7zy4jSshrAVqVLAfi3e/bfScQPt3Zou8
	3L5N76+mSRxWImkvivzE66xfaH6pJNGncQdeLb8CBuhCEbW1LstJY8DXQPPeoRh3MWvn4Zw9kl++l
	oB8NXpOlDRjXtJEdUAVsTPVFfXH8MEMkrMcGfvSHCAex9pwKMFkulVdS+jPwkMNaRvZ/ufY9x+2vE
	KDq+tCVENOagJRhgCn0uJcvTYUk/iOtGRf6eV52sewrpoTK0qHHLawvrncvfTiDWG1U4EaOVLI7Ji
	BfY8vLzQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUnRi-00000008vvU-3tBu
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 13:47:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRd-0005l9-Oe; Mon, 06 Jan 2025 14:47:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRc-007B3j-2S;
	Mon, 06 Jan 2025 14:47:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRd-00CsVv-1V;
	Mon, 06 Jan 2025 14:47:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 06 Jan 2025 14:46:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-k3-r5-v2-2-9de6270089ef@pengutronix.de>
References: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
In-Reply-To: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736171218; l=533;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=lS8VQCgPL7Ogq16+eYjZPpZT/eVrWtgS4IZxRp1vHZ4=;
 b=ue4+MPPYxjVQcfcL7fL/BHg5acgIqFDm6FMhfa3bUkZD6Z3eC7P7C1uVCjmVfV4vcdgH1JNUj
 1/IG5OCa4YIDya6Ksh/YW1B+sdndBZ/Tcx8pFsu8JLAoBaeDPFm7R8t
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_134707_262121_48B7AD07 
X-CRM114-Status: GOOD (  10.21  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/22] lib/rationale: compile for pbl
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Upcoming K3 PLL support needs rational_best_approximation() in PBL, so
enable it for PBL.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/math/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/math/Makefile b/lib/math/Makefile
index 197f92a097..3a31567c58 100644
--- a/lib/math/Makefile
+++ b/lib/math/Makefile
@@ -2,6 +2,6 @@
 
 obj-y += div64.o
 pbl-y += div64.o
-obj-y += rational.o
+obj-pbl-y += rational.o
 obj-y += int_pow.o
 obj-y += int_sqrt.o

-- 
2.39.5



