Delivery-date: Fri, 13 Mar 2026 14:34:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12en-000DPy-2Q
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:25 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eY-0000L3-Jk
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bVnM5p+2Qo3uheBBWjR7nhvWafqoz6z5JKjWKa5yKyg=; b=IeKJO4IiAUBjvh/i8sKw2sakRd
	22c07k4gdHH1+M9DBaLk3XkIC278tKv7i/rBRgC/TVSYWsyG3zMNDmO1jaepC4c4kdZbW5bAYkMLS
	evj2MvHbzl3Ec3lZlAHnDTCmcGMW/dGgPt4Mi/3f5C1+NIYJZlagKX5RZ7SauagtOhB1iLSQEZHap
	dka8t05zN2UIdRnUlIwpzUMPc5zVs31aFdDPWTFz3sEjrWVvy5NHOLYvOLFulcIua+Y59kian1Vsq
	fbffMpYLeCB3piVxLzbKfZ/7XXTwNKf/A8dw1t1PMa/ZhXwlOJAKU+DIETS6x85e/1XpDVruuFVUK
	bX8AnA1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dH-00000000FoK-41pW;
	Fri, 13 Mar 2026 13:32:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d8-00000000FXo-3Hee
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=bVnM5p+2Qo3uheBBWjR7nhvWafqoz6z5JKjWKa5yKyg=; b=dACA2yZw3mMrHzSPtu95ztOu9t
	ba67IuzHPJb0h9YHE3zHtkQLzxhY4MNwyQPmrwJvOccHoDIHzO8C0S7V6XsCqVHeE1Gfreg1a7Lwc
	/W1SdNLfdJpPfHGut2oYeVnitqCTFoY3+ujjVsf3rFEQPh93TCt1ou4+W47SRhFd4fCQX5m04kIb4
	g5/YyCisUK3feMBL3ZZ//kEZlBTlqIieHp6MkPfijQ+NArg8HWncZ+T4tcTLF90nikt1i3Z/SwneS
	mPqz25JS5ZFnBtUCoQKqsHb/+kuOj6hFWtvxxuDAX8MXlfV2FIr7flkRjE3lUMq47UWnG10l55b7S
	LFsIk5eg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12cy-00000003OSc-3BOc
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0006nw-2N; Fri, 13 Mar 2026 14:32:32 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cx-0005Sn-2l;
	Fri, 13 Mar 2026 14:32:31 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XM-00000009ULB-0C4R;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Fri, 13 Mar 2026 14:25:24 +0100
Message-ID: <20260313132631.2257573-41-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133234_142291_C1A56E8A 
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 40/58] hush: add NULL check for gl_pathv after do_glob_in_argv
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If do_glob_in_argv is called with argc <= 0, the internal loop
never executes and gl_pathv remains NULL from the zero-initialized
globbuf. The subsequent globbuf.gl_pathv[0] dereference would then
crash. Add a NULL check to return early in this case.

(cherry picked from commit 02faac88eb51b0f65d5d05f2a088010959a1ece7)

Reported-by: GCC 14.2 -fanalyzer
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20260216084253.3547270-9-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/hush.c b/common/hush.c
index aada3120ec4b..99e8ee8856ed 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -848,6 +848,9 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 
 	do_glob_in_argv(&globbuf, child->argc - i, &child->argv[i]);
 
+	if (!globbuf.gl_pathv)
+		return -1;
+
 	remove_quotes(globbuf.gl_pathc, globbuf.gl_pathv);
 
 	if (!strcmp(globbuf.gl_pathv[0], "getopt") &&
-- 
2.47.3



