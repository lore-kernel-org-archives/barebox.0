Delivery-date: Fri, 28 Nov 2025 11:43:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOvwj-005l01-32
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 11:43:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOvwj-00005v-Di
	for lore@pengutronix.de; Fri, 28 Nov 2025 11:43:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rDvDj/5MCuviymj+JwTAdpMW6CoB7YznvjJwLgXziwY=; b=MsPwiy/colaCQjLPaQ8ZVOu4JP
	n39Naj45PFGa0YePiJ3BdBuz+hZNE9dKW03/z7ufcDPGPFQOdgM+ABm3tF4ch3gn3MLWGFsWkx3Jj
	SByEqBaXkXG2xoLN7SohWOW0oZhacHcE7XMOefjj0FB5ped9oo13+59v5H0+2zGCuG/MGenWjnzc9
	MbL9ing/4AJqn5RTr9rA8hBJu9eIWZKTDXa3gZ/Vi3fpXjmAWKdiwskyMsQu/cK/5c5xbyaA0gYVz
	i6+5v1VjF1fU7RTePkEdwEBIv1PWSat6I+UVgt5WUelFrstp4sfcNNlGr+B2LC4uF+IzrHMMf5ycn
	RfYHJ+Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOvwN-00000000JTd-0lY4;
	Fri, 28 Nov 2025 10:43:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOvwK-00000000JTG-2uFu
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 10:43:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOvwJ-0008Sc-9e
	for barebox@lists.infradead.org; Fri, 28 Nov 2025 11:42:59 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOvwJ-002wL5-0M
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:42:59 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOvwJ-00000007LRX-03Vh
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:42:59 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 28 Nov 2025 11:42:57 +0100
Message-ID: <20251128104258.1748758-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_024300_754451_F6BA4204 
X-CRM114-Status: GOOD (  10.58  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] sandbox: setjmp: avoid conflict with noinline macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

We define noinline as a macro in <linux/compiler_types.h>, which we
don't yet include here, but might in future with the Kbuild update.

Prepare for that by using the double underscore version instead, which
won't conflict.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/sandbox/os/setjmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sandbox/os/setjmp.c b/arch/sandbox/os/setjmp.c
index cbf1182ed591..787675349643 100644
--- a/arch/sandbox/os/setjmp.c
+++ b/arch/sandbox/os/setjmp.c
@@ -39,7 +39,7 @@ static struct {
  * (from the signal handler when it is not signal handling, read ahead
  * for more information).
  */
-static void __attribute__((noinline, noreturn))
+static void __attribute__((__noinline__, noreturn))
 coroutine_bootstrap(void (*entry)(void))
 {
 	for (;;)
-- 
2.47.3



