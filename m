Delivery-date: Mon, 08 Aug 2022 08:21:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oKw9F-00FpzK-Jm
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 08:21:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oKw9G-0004w6-28
	for lore@pengutronix.de; Mon, 08 Aug 2022 08:21:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vB8TPFnSdFg74huvDe+J1FHAAoeSlxdOl06xAvjo4J8=; b=n13+WvX8oezFxPoE13+9VSijbR
	v4pP7F24bsNGgk56y3Ac21cfumG3bnJlw4j2RFlMoRiAKHdkc0HXegLhAJMB/5p65eSfxqWsAgUkq
	hM+UKPNHFiBcxTjfwYTFKi8i1bNxUERMBWowiieXWxtynue4Nh1TG1yj50vYBFk/y59aw95hqNmH5
	73BAe8VoHJfQbbKBe2GVCsQrjtp7/kTYygaQNKZLpSJuGTnYZjzQ7rnWAWET396ebELZNxKlluxJQ
	HYQWvOpaumrLSXn2MrS5C2AlAXMqiOkOJDRwukz4dSSjKJjxF0tequ5E3k2v9/gojeDvv3v7dqVXN
	5l4vaTVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKw7i-00BgS0-It; Mon, 08 Aug 2022 06:20:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKw7c-00BgI9-3k
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 06:20:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oKw7Z-0004Qh-0e; Mon, 08 Aug 2022 08:20:13 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oKw7V-002RhQ-UN; Mon, 08 Aug 2022 08:20:12 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oKw7X-001day-Ef; Mon, 08 Aug 2022 08:20:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Aug 2022 08:20:09 +0200
Message-Id: <20220808062010.390394-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220808062010.390394-1-a.fatoum@pengutronix.de>
References: <20220808062010.390394-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220807_232016_169346_29ABA809 
X-CRM114-Status: GOOD (  11.70  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 2/3] common: machine_id: guard against digest algo being unavailable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

All callsites of digest_alloc(_by_algo) check for NULL pointer before
proceeding except for machine_id_set_globalvar(). Fix this to fail
more gracefully instead of the crash I ran into.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/machine_id.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/common/machine_id.c b/common/machine_id.c
index a530fdeb1da8..189e74bd6796 100644
--- a/common/machine_id.c
+++ b/common/machine_id.c
@@ -30,14 +30,15 @@ static int machine_id_set_globalvar(void)
 	unsigned char machine_id[SHA1_DIGEST_SIZE];
 	char hex_machine_id[MACHINE_ID_LENGTH];
 	char *env_machine_id;
-	int ret;
+	int ret = -EOPNOTSUPP;
 
 	/* nothing to do if no hashable information provided */
 	if (!__machine_id_hashable)
 		return 0;
 
 	digest = digest_alloc_by_algo(HASH_ALGO_SHA1);
-	ret = digest_init(digest);
+	if (digest)
+		ret = digest_init(digest);
 	if (ret)
 		goto out;
 
-- 
2.30.2



