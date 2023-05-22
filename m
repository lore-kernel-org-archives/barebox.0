Delivery-date: Mon, 22 May 2023 07:23:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y1J-009Is1-W0
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:23:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y1H-0001TL-E8
	for lore@pengutronix.de; Mon, 22 May 2023 07:23:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cSNk5g4S/wdCZdwi3xqtPsgCgq51ySti47m4d9IBoK8=; b=2NLEOunekXA5FdraYbOFoFi12S
	1rwlYPSR1TQsPANsW/tq9b9fI9JQbrnt7sOP9gkJY1QuPPYkadacXHpj8fw8+d2XIOfqGixhI4cDD
	DIFcxjjKXKVxDRayqAXdUVmFCzv3Zi61lyivai99+ZqE0bd5mZv4VAt8oMa8wRqTVCf7pDfrXBLgg
	jr7wcoK/NIfdQug8MQMcVElgQVqtG8tQfLImErOtCaP22luU+ptm7Y5gvpeioerskOeb5kBWZHJ0k
	hb6Lxrnk5qLEVqjYGJIC4ERS5Tjr7OsiDgxCXULlwOf01Qhi+k5+cGkTEm/Caufogc10LWIRrUP6F
	NXVwa2Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y08-005NCB-3A;
	Mon, 22 May 2023 05:22:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y02-005N78-16
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:22:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y01-00017C-5H; Mon, 22 May 2023 07:22:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y00-001vuV-HB; Mon, 22 May 2023 07:22:24 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0xzz-004M1Y-2k; Mon, 22 May 2023 07:22:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 May 2023 07:22:21 +0200
Message-Id: <20230522052222.1037931-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522052222.1037931-1-a.fatoum@pengutronix.de>
References: <20230522052222.1037931-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222226_375093_9E1D0185 
X-CRM114-Status: GOOD (  10.74  )
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
Subject: [PATCH master 6/7] meminfo: avoid out-of-bounds compiler warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

GCC warns about _etext and __bss_stop being arrays whose starting address
is subtracted by one. The arrays are linker defined and subtracting them
is fine, so silence the warning by casting the pointer to an equally
sized integer with no limitations on arithmetic.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/meminfo.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/meminfo.c b/common/meminfo.c
index f4994959b6ae..3ceb0ba4cf25 100644
--- a/common/meminfo.c
+++ b/common/meminfo.c
@@ -13,8 +13,8 @@ static int display_meminfo(void)
 	ulong msize  = mend - mstart + 1;
 
 	if (!IS_ENABLED(CONFIG_SANDBOX)) {
-		pr_debug("barebox code: 0x%p -> 0x%p\n", _stext, _etext - 1);
-		pr_debug("bss segment:  0x%p -> 0x%p\n", __bss_start, __bss_stop - 1);
+		pr_debug("barebox code: 0x%lx -> 0x%lx\n", (ulong)_stext, (ulong)_etext - 1);
+		pr_debug("bss segment:  0x%lx -> 0x%lx\n", (ulong)__bss_start, (ulong)__bss_stop - 1);
 	}
 	pr_info("malloc space: 0x%08lx -> 0x%08lx (size %s)\n",
 		mstart, mend, size_human_readable(msize));
-- 
2.39.2



