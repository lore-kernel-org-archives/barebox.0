Delivery-date: Wed, 16 Apr 2025 12:38:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u509s-001QN9-3B
	for lore@lore.pengutronix.de;
	Wed, 16 Apr 2025 12:38:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u509s-0004Qj-AQ
	for lore@pengutronix.de; Wed, 16 Apr 2025 12:38:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f+T0XQWUqTtXb6bTnAI8/xiSemxUqUPGIHgcU1lTgPs=; b=wPFfZnuszUkEX7O+fAXouAcJSP
	hewg9AmcwMbUb8Td/qdwFfBU3fO6+rdq8SbjEVKJdwFcWHgkeywig6aJI1MoZ0Q5xDJOOLOVUeb3M
	xZeXm659iQ3D8ot87mX5MP5/ByTpPVo83mLY5UFvCVJwnpiS0whjwDDQIDsj5uPhF5zrqNasmyEgg
	A8scmxDUa5I3lr1ABhXl/wrBMHtt1ljxIef09/SZUSGZH1bL5bfaQO8ndCbaNSf05FxpodARDkZ/E
	/P1bKVt5c1XAq+rHv1wXg/9jfdwXhC8VRDG0ykjkHLxdFYCNHUuL0s3HevcSYUBS0KXee52/eYvXs
	lM4FYuQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u509S-00000009EUA-3iUi;
	Wed, 16 Apr 2025 10:37:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u509P-00000009ES2-0BPT
	for barebox@lists.infradead.org;
	Wed, 16 Apr 2025 10:37:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u509N-00046t-5B; Wed, 16 Apr 2025 12:37:49 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u509M-000ZV8-2o;
	Wed, 16 Apr 2025 12:37:48 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u509M-00174h-2W;
	Wed, 16 Apr 2025 12:37:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Apr 2025 12:37:46 +0200
Message-Id: <20250416103748.265415-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250416103748.265415-1-a.fatoum@pengutronix.de>
References: <20250416103748.265415-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_033751_108794_EA6B4509 
X-CRM114-Status: UNSURE (   9.77  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] commands: memtester: fix erroneous use of errno
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

kstrtoul does not set errno. Fix it by using the return value instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/memtester/memtester.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/commands/memtester/memtester.c b/commands/memtester/memtester.c
index aacb80d80936..2fd86e17024d 100644
--- a/commands/memtester/memtester.c
+++ b/commands/memtester/memtester.c
@@ -91,9 +91,10 @@ static int do_memtester(int argc, char **argv) {
 
         switch (opt) {
             case 'm':
-                if (kstrtoul(optarg, 0, &testmask)) {
-                    printf("error parsing MEMTESTER_TEST_MASK %s: %s\n",
-                            optarg, strerror(errno));
+                ret = kstrtoul(optarg, 0, &testmask);
+                if (ret) {
+                    printf("error parsing MEMTESTER_TEST_MASK %s: %pe\n",
+                            optarg, ERR_PTR(ret));
                     return COMMAND_ERROR_USAGE;
                 }
                 printf("using testmask 0x%lx\n", testmask);
-- 
2.39.5



