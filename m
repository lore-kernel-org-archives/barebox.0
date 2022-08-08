Delivery-date: Mon, 08 Aug 2022 08:22:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oKw9H-00Fpzv-5x
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 08:22:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oKw9I-0004xM-0G
	for lore@pengutronix.de; Mon, 08 Aug 2022 08:22:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sKIWF+BzxKTN5pTdlUUBzDXkAW2LQhmDVUWa0CXI0k4=; b=0VPRE8VI6fj692gyqs+pFR2xwH
	aU6lCBumkSVmeWUstpldotZROhuprWnY8Z+P1tqB4JvZPlvJyGSLAaor8Cz8/GdrOEoWoVaH1zNfl
	HPUIRRPF6gcT9VM/LIGKYuXcdperHKC39fgy7roBHdFkVL1hwr4bpRl3Wy3zH2cXOJB1d4MJyMNJ4
	0xlFlM7F7mcHNjO0qGxs5XF0w1JPMa4AkhRwFSfH+SuLli9uy40O6Qi9Nw5ZjSizQvewIE2jJU+zm
	tWpGCD+32RBa/Afmqvj5OEGBkGAxm+Dc0I9k0QoB/moIyWra53GE6DMpUTID0uI4PBSy+dC9JGNLv
	+UOp1VNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKw7g-00BgPT-6y; Mon, 08 Aug 2022 06:20:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKw7c-00BgH4-20
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 06:20:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oKw7Y-0004Qe-SI; Mon, 08 Aug 2022 08:20:12 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oKw7V-002RhN-Pn; Mon, 08 Aug 2022 08:20:12 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oKw7X-001daw-EF; Mon, 08 Aug 2022 08:20:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Aug 2022 08:20:08 +0200
Message-Id: <20220808062010.390394-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220807_232016_119651_FB3C4D34 
X-CRM114-Status: GOOD (  11.80  )
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
Subject: [PATCH master 1/3] common: machine_id: simplify early exit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We don't need the goto if we haven't done anything to clean up anyway.
also globalvar_add_simple("machine_id", NULL) is a no-op when we have
just called globalvar_add_simple above with an actual argument.
It doesn't clean the parameter, nor should it, because the code is
executed for the successful code as well and there is nothing that can
fail that late.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/machine_id.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/common/machine_id.c b/common/machine_id.c
index 6480806cd287..a530fdeb1da8 100644
--- a/common/machine_id.c
+++ b/common/machine_id.c
@@ -30,11 +30,11 @@ static int machine_id_set_globalvar(void)
 	unsigned char machine_id[SHA1_DIGEST_SIZE];
 	char hex_machine_id[MACHINE_ID_LENGTH];
 	char *env_machine_id;
-	int ret = 0;
+	int ret;
 
 	/* nothing to do if no hashable information provided */
 	if (!__machine_id_hashable)
-		goto out;
+		return 0;
 
 	digest = digest_alloc_by_algo(HASH_ALGO_SHA1);
 	ret = digest_init(digest);
@@ -58,8 +58,6 @@ static int machine_id_set_globalvar(void)
 	free(env_machine_id);
 
 out:
-	globalvar_add_simple("machine_id", NULL);
-
 	digest_free(digest);
 	return ret;
 
-- 
2.30.2



