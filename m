Delivery-date: Mon, 21 Oct 2024 17:43:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2uZV-0077SI-2D
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 17:43:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2uZV-0002VV-62
	for lore@pengutronix.de; Mon, 21 Oct 2024 17:43:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WcjosX/8So3TYy9Shc+lXFX/vxQnCc1LTDj5SgJ2048=; b=p5LT1rkRmTAqUsVPWBhJPvSNpD
	T9QLPzUmgH39CBnn7H/jnNuek5n+fFwogQiRbmRbMZqYvcfQ4KB96COb7rvtb1ai5wQagl/Sw6zNK
	0UBNGTDdbt2GHhHbTlFDlS9oLwnFOuCSU7TYIf2fLaj79hcvwSnZ/Ek5PDJ+P9Az1ar+WA5p87xS3
	f7q5n7JAhvuw/SrKMNx9j9buywfVsLHmY4gW+PW3khF+UdjfMO5i8BqJIo/0k9ERY66j10B86N+Z3
	usLUyGMobXMsaoDQEWuRICCxvqogr8TryrMH4fOupdhFIdOU1m3ONtzrjD7XQSIye+z3vaXmfpteh
	o2wI4s/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2uZ0-00000007ps7-0vr0;
	Mon, 21 Oct 2024 15:43:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2uYw-00000007pqO-1vZ0
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 15:43:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9B0445C5918;
	Mon, 21 Oct 2024 15:43:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F31C4CEC3;
	Mon, 21 Oct 2024 15:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729525396;
	bh=iKu54nD0D1vVk2yXPUa5aWuE/yANGW+wtGndu9dKCqU=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=SxhQkBQuzA3a//usPWLCzt+f0PC2W4KhDpcCH4xCs9cWKNjEDfcmof02qxV2FW5AJ
	 894C3RJlihAGosG7xvDqw/HtiZdQITGr2XN73ynk3ncMXExHbAt85Q2iU7DU21ZjIk
	 v5BFqEEZ3d/VXhCbHjlqinkto2sjbl5x6C6tE+McbK0LxEzaSzV7d8wXp9JQ5y6kQK
	 LJIxEhl6Xwaipb4i0NdW+Rx4rnvO99qEYCTDaeuf5MLMYyR0o77uZdXrY0leDWqCrj
	 bL9v+lnM5G3lMOC5540dLyEjVU4Fo5K+9cDQknjnxQUQBhAMAptO2Nq71xCPR2C3Jg
	 cJt33GgNAFUGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04A1D15D99;
	Mon, 21 Oct 2024 15:43:16 +0000 (UTC)
From: Abdelrahman Youssef via B4 Relay <devnull+abdelrahmanyossef12.gmail.com@kernel.org>
Date: Mon, 21 Oct 2024 18:43:03 +0300
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241021-null_der-v6-1-8dfc261cfc91@gmail.com>
X-B4-Tracking: v=1; b=H4sIAIZ2FmcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyzHQUlJIzE
 vPSU3UzU4B8JSMDIxNDAyND3bzSnJz4lNQiXUNjcwsjQ+M0g5REIyWg8oKi1LTMCrBR0bG1tQA
 njtWrWgAAAA==
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729525395; l=1766;
 i=abdelrahmanyossef12@gmail.com; s=20241017; h=from:subject:message-id;
 bh=kai+Z49hC8e6geQiU2ef8bSL6Qi7IG7gmC3/9g9xYtw=;
 b=+tyf/kjS7Ea0QVO1Axu7HX6xK6t2NTlnziAB0BO+Mr/pHQChdyjtDdIb6ChxZ9/2OCCjSd5nf
 frDn7Ah6QK2C7GjzX0Pdm/uDa5eyj0lUJcSkf72/Muy/e8STrkpCu/q
X-Developer-Key: i=abdelrahmanyossef12@gmail.com; a=ed25519;
 pk=ayjFVDSRo1qKm+PGih8rsNvcMQvJ4ROQWuZWrYU8ujc=
X-Endpoint-Received: by B4 Relay for abdelrahmanyossef12@gmail.com/20241017
 with auth_id=251
X-Original-From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_084319_046500_51B7B97E 
X-CRM114-Status: UNSURE (   7.74  )
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
Reply-To: abdelrahmanyossef12@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-105.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v6] lib: fix dereferencing of a NULL pointer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>

Runtime reported by AddressSanitizer due to time a NULL pointer dereference.

This is the stack trace:
    #0 0x5b2550e70c4b in get_param_by_name /barebox/lib/parameter.c:56:2
    #1 0x5b2550e70c4b in __dev_add_param /barebox/lib/parameter.c:153:6
    #2 0x5b2550e71666 in __dev_add_param_int /barebox/lib/parameter.c:471:8
    #3 0x5b2550daece8 in dev_add_param_uint32 /barebox/include/param.h:266:1
    #4 0x5b2550daece8 in dos_partition /barebox/common/partitions/dos.c:289:2
    #5 0x5b2550dadc62 in fuzz_partition_table_parser /barebox/common/partitions.c:331:10
    #6 0x5b2550dadc62 in fuzz_partition_table_parser_ramdisk /barebox/common/partitions.c:344:1
    #7 0x5b2550ebb94d in fuzz_test_once /barebox/include/fuzz.h:68:2
    #8 0x5b2550ebb94d in fuzz_main /barebox/lib/fuzz.c:38:3
    #9 0x5b2550d8eb41 in start_barebox /barebox/common/startup.c:381:3
    #10 0x5b2550f4ea6d in sandbox_main (/barebox/images/main.elf+0x411a6d) (BuildId: dfdb3401891b94e86545eddb1502f0815ffd0afb)
    #11 0x5b2550f4f2b2 in start_barebox_coop fuzz.c

Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
---
 lib/parameter.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/parameter.c b/lib/parameter.c
index bf9e83152b..21fa9e7e70 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -51,6 +51,9 @@ const char *get_param_type(struct param_d *param)
 
 struct param_d *get_param_by_name(struct device *dev, const char *name)
 {
+	if (!dev)
+		return NULL;
+
 	struct param_d *p;
 
 	list_for_each_entry(p, &dev->parameters, list) {

---
base-commit: 9d47ff66c3892c5a6ddd4704993365a797fbeb68
change-id: 20241021-null_der-1378213f0da2

Best regards,
-- 
Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>




