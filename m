Delivery-date: Mon, 16 Feb 2026 09:43:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruCN-002G7r-0E
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:43:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruCN-0001NK-2N
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:43:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HyD2/Yzzmy5cvefkf5rLJ95+f4LeE7DnWAUcE3CiIvI=; b=YOObbq35H4Qk3RUzMEcbDEYoNs
	055YA4F1ae3yMjle99lHshktxxm/ki0NWwwtqXFEfNdkBj29nkZ0ERKTVdHBF64vkXmHGKSYiaHbv
	RfL3ruapULH/4BiSRrRTTJlFCa7pebhGYtLlFAVtyYR4H04BYBE8A8tQkTuhJEw2wEz/bUhgp+LNl
	SY9qGM0ByKRRLHTa5HA7d3BM8aRlRHG3Jeip1rNww8nQEEaLiOuf260vZweH7n/6JpGDZXVVoWAxG
	O5H8cUUJrpsbHofr20qAHepWsX1/xa3uY8qBVIdmpH3139S1XigSjweJdgJpjGehNsW0x0JlWhabW
	PyKyyMUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruC3-00000006AnC-2Ikg;
	Mon, 16 Feb 2026 08:42:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruC0-00000006Ajn-0hyE
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:42:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruBy-00012C-MI; Mon, 16 Feb 2026 09:42:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruBx-0012CC-00;
	Mon, 16 Feb 2026 09:42:54 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruBy-0000000Esrv-103X;
	Mon, 16 Feb 2026 09:42:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:42:25 +0100
Message-ID: <20260216084253.3547270-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084253.3547270-1-a.fatoum@pengutronix.de>
References: <20260216084253.3547270-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_004256_211577_A4C30EB6 
X-CRM114-Status: UNSURE (   9.37  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 09/12] hush: add NULL check for gl_pathv after do_glob_in_argv
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If do_glob_in_argv is called with argc <= 0, the internal loop
never executes and gl_pathv remains NULL from the zero-initialized
globbuf. The subsequent globbuf.gl_pathv[0] dereference would then
crash. Add a NULL check to return early in this case.

Reported-by: GCC 14.2 -fanalyzer
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/hush.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/hush.c b/common/hush.c
index 2e0cc4229d35..972ddfede6da 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -851,6 +851,9 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 
 	do_glob_in_argv(&globbuf, child->argc - i, &child->argv[i]);
 
+	if (!globbuf.gl_pathv)
+		return -1;
+
 	remove_quotes(globbuf.gl_pathc, globbuf.gl_pathv);
 
 	if (!strcmp(globbuf.gl_pathv[0], "getopt") &&
-- 
2.47.3



