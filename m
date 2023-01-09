Delivery-date: Mon, 09 Jan 2023 17:02:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEubU-006oQi-OY
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 17:02:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEubT-0003QQ-05
	for lore@pengutronix.de; Mon, 09 Jan 2023 17:02:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Dkl1dFm0qX5zLidFUGh6TepfKeGKJ3MaGGLJs3wUaZI=; b=Hy01zDiLczeX/TaWlyk88FzZB+
	h5ApJV3SOrVQe7rJmV7TeiKBcfjBlC/MVnOL4nXWy8hxd7Ev3l14aZIKM0t8Zw7A5QLZZSVkilvWx
	fJssKZeZnPTrBosqz1tUo3IcHL1/nUA0bNesbPBgRCLbuny6rNxk3/tAhUchOVIjcCkmnNN7hJ5ob
	TEwlhvcRkQRvZdVaIcpzCRe2V0kgfylGcL4CUaD19/GQW3w1XofzaBgKC/CoKXHDUTMRwm3RWLcyu
	UWHjo7VJTy9HsD8KlvFzCdrYl9lQuWpANYSacRdJZA2vt0ckcHBCXrlpU/N3OuA88U4+swZ3dgIXw
	pQaMfcZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEuaG-002SnB-QN; Mon, 09 Jan 2023 16:01:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEua4-002Skv-EO
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 16:01:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pEua3-00039n-6C; Mon, 09 Jan 2023 17:00:59 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEua2-004sle-Il; Mon, 09 Jan 2023 17:00:58 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEua1-009KOv-W9; Mon, 09 Jan 2023 17:00:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 17:00:57 +0100
Message-Id: <20230109160057.2223325-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_080100_501679_8BA3D789 
X-CRM114-Status: GOOD (  10.69  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] include: linux/iopoll.h: silence warning when timeout_us contains *
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We evaluate timeout_us for truthiness to determine whether we are
entering an infinite poll loop. When timeout_us contains a
multiplication, GCC will warn about it and suggest replacing the *
with &&. Silence this warning by comparing directly against 0.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/iopoll.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index 8bf912e173b3..b8c55583f97f 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -32,13 +32,13 @@
 #define read_poll_timeout(op, val, cond, timeout_us, args...)	\
 ({ \
 	uint64_t start; \
-	if (!IN_PBL && timeout_us) \
+	if (!IN_PBL && timeout_us != 0) \
 		start = get_time_ns(); \
 	for (;;) { \
 		(val) = op(args); \
 		if (cond) \
 			break; \
-		if (!IN_PBL && timeout_us && \
+		if (!IN_PBL && timeout_us != 0 && \
 		    is_timeout(start, ((timeout_us) * USECOND))) { \
 			(val) = op(args); \
 			break; \
-- 
2.30.2



