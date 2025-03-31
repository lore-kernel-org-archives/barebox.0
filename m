Delivery-date: Mon, 31 Mar 2025 19:41:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzJ8o-006eq1-0a
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 19:41:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzJ8n-0000x6-LU
	for lore@pengutronix.de; Mon, 31 Mar 2025 19:41:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cOcOgFS1YZ+IQAhiyrTg7oIngQMftjM6KEPD9KXI55E=; b=GqttktpeycAnCZaTslJx1/GwB/
	UbjJQMLH+gp4FIGrYtYZZXnioLY4Igo4WT8+s4TItX2s7Oq8RVVOsiET1r3YBUm0z9z2gVD3/kZsb
	jV8rLE3Xw2OaKu+uMugvFTF0BqbBO+K4aamisTI7Z3UxZIbu7T5OYUVc1T+oTAdJfF9z7hHJj2/y7
	Q5pN7O0rVhZxpVgTcpSIQpwR5TSA64wi54XLlivSuj6/ecvt7tRNquQ1pLaCwBgz2a980D+b6nzja
	F67ZtLONnv/peMOLxy3yjtCAhZ3iaNAQlACFLS6OB7o7Hj3d3fXlLt2AvpKQ+Q82p/719OEETGATU
	kTCOnYMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzJ8G-000000015Wc-1hPc;
	Mon, 31 Mar 2025 17:41:08 +0000
Received: from zdiv.net ([46.226.106.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzJ8C-000000015Vp-34zn
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 17:41:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1743442859;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cOcOgFS1YZ+IQAhiyrTg7oIngQMftjM6KEPD9KXI55E=;
	b=UxEHbHhrfyN0v5kd/RxMGbG9W+FLi33PIdwsRtAKZ1A9rLlTF1fcbcTNf3bxG+rEl51OD2
	UFXo0Uq5kYMVNYnJKuRY9HMZf5xlEJi0V7T19WFrKB25Q8ATeSOfiB5Pt3/J6NFDI09nec
	PKU+piGwXywwWp+TTUb0ljSQ7Ubj8+MdFlZCP/DsGwjgJL1F62vxKPJve+PY0L4AoZ3zpb
	iFj2d5ZS6CwKwEwZ7TUDGu2kbXQd47CSieWysGZKIqSG1bZaJfd5oo25GX4YYzoZjbMzB9
	8UDRTqn+qp4S+3nJ7xnSzKbZerXwe689/4odpZ++HdkR2Xvv8VNHY9oEijpuVw==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:7db3:a294:8571:f831])
	by zdiv.net (OpenSMTPD) with ESMTPSA id bf267a92 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
	for <barebox@lists.infradead.org>;
	Mon, 31 Mar 2025 19:40:59 +0200 (CEST)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Date: Mon, 31 Mar 2025 19:40:50 +0200
Message-ID: <20250331174050.2606-2-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250331174050.2606-1-jmaselbas@zdiv.net>
References: <20250331174050.2606-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_104105_032798_BDFED046 
X-CRM114-Status: GOOD (  10.55  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] commands: edit: remove the memset call on screenline
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Rework the screenline function so the lbuf doesn't have to be
initialized to zero eachtime the screenline function is called.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 commands/edit.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/commands/edit.c b/commands/edit.c
index 3bbe60fdbf..28c9ab8877 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -46,11 +46,9 @@ static char *screenline(char *line, int *pos)
 	int i, outpos = 0;
 	static char lbuf[1024];
 
-	memset(lbuf, 0, 1024);
-
 	if (!line) {
-		lbuf[0] = '~';
-		return lbuf;
+		lbuf[outpos++] = '~';
+		goto out;
 	}
 
 	for (i = 0; outpos < sizeof(lbuf) - 1; i++) {
@@ -67,6 +65,8 @@ static char *screenline(char *line, int *pos)
 		lbuf[outpos++] = line[i];
 	}
 
+out:
+	lbuf[outpos] = 0;
 	return lbuf;
 }
 
-- 
2.48.1



