Delivery-date: Fri, 20 May 2022 08:57:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrwZW-002sX5-LY
	for lore@lore.pengutronix.de; Fri, 20 May 2022 08:57:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrwZV-0007SX-1x
	for lore@pengutronix.de; Fri, 20 May 2022 08:57:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5tzzKYNt1hVjDZzG1Kbyk2ki2dS97H9DvseiIvpUKPA=; b=oo0YvfqB9t3SKh
	mjTZljkUjIWsQXtZrLg/6RwdwU3zgsBvF+BbSAI9qceGLcgdiTqjYNZ1HQNQI9O+soaY3JIpYQrU5
	x8dD3Q7YD0QgzkCyoIDhbAgVBMhRgvEKgJzYw/L+Qo033O0Ert6eE7jjGfCL+t9H39MtUJGlRKYVb
	JccTWBNniHUSXoUkuYMSRlfmeOF/7MsUN4PJZ224sJ8Y297k0ZYwDqyGK7//NFZSv5z+O7IXX6Gd9
	MHkrK81qhLQbXjlaw2F67VDQOvv5sdYBqnvchqx+uqIohzc1JYiAhLs0OsMJRPiRJ403Tvo8oqnZD
	gNUBj+G8I6DhdTvoDF0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrwXu-00AtRr-Dr; Fri, 20 May 2022 06:55:34 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrwXp-00AtQK-Gd
 for barebox@lists.infradead.org; Fri, 20 May 2022 06:55:30 +0000
Received: by mail-lf1-x131.google.com with SMTP id bq30so12766273lfb.3
 for <barebox@lists.infradead.org>; Thu, 19 May 2022 23:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ckg2UD+OhXfVXYTcDZmcEBiuhpIjHkBWFx/xGN5AEzQ=;
 b=qrEoAyGve5erbxwkYELBDLjOTyRPNurz+WSMDwgYv5hYZvYxUc87kj0Ojj//QJddUU
 k67MAIvAL6TWNZX27mVnyQkN6F63N1hn6c40eps+iffdfU/sSa/7gLNIBm1Z9MtDIHIN
 RDsqiEewX5A+anJ3RQe7ef+b/xBkdVVgKCKB9581ZpzCehDIv/UfxvLC3ijZC2RaFsda
 IYoGkf/kGc0lhYL0a8z2qeNnPfzkZkfvaMOdV4uVTRv/E4KyhyVL2gfzdOKyfsOsEG2J
 DjpY0R+mFlHe9mZdjL/wqZSCud368Y9QOqipbvvKFInKHKt/qz+BySrhqSe/oZ754q/c
 +vvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ckg2UD+OhXfVXYTcDZmcEBiuhpIjHkBWFx/xGN5AEzQ=;
 b=nTcbd7oXBC3/7A9H8HVVRXByiyuin4pexpftFVezBb489Ux3b5MfGcQnk9J6iZRC+i
 0QGF2q+UcKGxBWTOrJpp0mw9QQClXFwD6j51bwmnrAxJGlt6G3o1VJtrbVKsbEJdBCjJ
 sB1Ce0SswhvWfXh25tfHaqklXFmNN3Lq3OK1jzem+VNDY8wzKclcAiNbiK/X7dki3q4v
 YkHDEXDmJqQrS7iPU+I7ya17KFGd0LkjdThSYYtTXGe3pwU3/6qLGoAjsYloTnUyekml
 VsVcnGi7zfsCp/gzMGxVAhp7e0IoJRTqNWTqFnl2jYA7Y/e8zRiAsJwL9bZstmKQnAHZ
 2zfA==
X-Gm-Message-State: AOAM531vcE5GuUSo83DGtjsyNgY4617WeIOvlDZKevvGfDXVd4V0ISkK
 +K5qehcQlF08KJYy8dU9n6a35P96/nBaAuFMAII=
X-Google-Smtp-Source: ABdhPJyhTgBd7sj0qkj7aKQyrs8j0TB66dQBsZE/R7zStw7Lw/8tC3kudXmAKP3iy9eDbfjE2+2fUA==
X-Received: by 2002:ac2:53a2:0:b0:472:3dd:40c6 with SMTP id
 j2-20020ac253a2000000b0047203dd40c6mr6192979lfh.130.1653029725280; 
 Thu, 19 May 2022 23:55:25 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 c12-20020a056512074c00b00477bb6079d7sm544329lfs.131.2022.05.19.23.55.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 May 2022 23:55:24 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 20 May 2022 09:55:19 +0300
Message-Id: <20220520065519.28173-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_235529_610572_005B7F57 
X-CRM114-Status: UNSURE (   9.49  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] clk: fix clk_round_rate command description
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 commands/clk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/clk.c b/commands/clk.c
index 0f7d7422e9..dfbc7c988f 100644
--- a/commands/clk.c
+++ b/commands/clk.c
@@ -99,12 +99,12 @@ static int do_clk_round_rate(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(clk_round_rate)
-BAREBOX_CMD_HELP_TEXT("Set clock CLK to RATE")
+BAREBOX_CMD_HELP_TEXT("Show clock CLK actual rate if set to HZ")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(clk_round_rate)
 	.cmd		= do_clk_round_rate,
-	BAREBOX_CMD_DESC("set a clocks rate")
+	BAREBOX_CMD_DESC("show a resulting clocks rate")
 	BAREBOX_CMD_OPTS("CLK HZ")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_clk_round_rate_help)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

