Delivery-date: Mon, 05 Sep 2022 19:39:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVG4X-007ktM-68
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 19:39:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVG4W-0002Yn-Rv
	for lore@pengutronix.de; Mon, 05 Sep 2022 19:39:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fjD6bCwFYepIZg9Y2hCMOIVJMqpW0Z3tgF9EqSHqb9M=; b=zDo1Pz7ngV/NXkEuPcJknuMJjr
	A6nMGKYiA6l/WazgSxLHgk2ZtyyC0KodtvMUIUMR9LLijguec9Nh18A5YS6pSBbCfcmk4UFnkx3B2
	OMeK/vZRa9rDSIAREc0vKzNP27nwmqoboOdiQkHbVgI5u7/Xm+VzX5Lcfwifl5pCx4M6Ne7VQJ4T/
	WKGS7AmItzjTL9cu116aBHA+nmU4L4jTpl9EtU+OBO/7yXs2lxT4OVtvOxLD4fADSiO5jRa8vf+Ru
	Eeyf2sgvnuwk0GuAyvzcF+TXIDwSKda/CPUErg+Pwrr0TMHOPx02Kd2VTcud9LlvszKKbl4hNOOsA
	fKboL76w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVG2k-007gCZ-QU; Mon, 05 Sep 2022 17:37:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8pq-00H3fV-Ea
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8po-0008EJ-De; Mon, 05 Sep 2022 11:56:04 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pl-0042Fi-HZ; Mon, 05 Sep 2022 11:56:03 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pl-002Wdl-UH; Mon, 05 Sep 2022 11:56:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:28 +0200
Message-Id: <20220905095557.596891-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_025606_642407_DD4FA789 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 03/32] meminfo: support SANDBOX build with DEBUG log level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We don't necessarily have _[se]text, __bss_(start|stop) symbols on
sandbox, so we shouldn't reference these there in the debug prints.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/meminfo.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/meminfo.c b/common/meminfo.c
index e6b251e5bfee..f4994959b6ae 100644
--- a/common/meminfo.c
+++ b/common/meminfo.c
@@ -12,8 +12,10 @@ static int display_meminfo(void)
 	ulong mend   = mem_malloc_end();
 	ulong msize  = mend - mstart + 1;
 
-	pr_debug("barebox code: 0x%p -> 0x%p\n", _stext, _etext - 1);
-	pr_debug("bss segment:  0x%p -> 0x%p\n", __bss_start, __bss_stop - 1);
+	if (!IS_ENABLED(CONFIG_SANDBOX)) {
+		pr_debug("barebox code: 0x%p -> 0x%p\n", _stext, _etext - 1);
+		pr_debug("bss segment:  0x%p -> 0x%p\n", __bss_start, __bss_stop - 1);
+	}
 	pr_info("malloc space: 0x%08lx -> 0x%08lx (size %s)\n",
 		mstart, mend, size_human_readable(msize));
 	return 0;
-- 
2.30.2



