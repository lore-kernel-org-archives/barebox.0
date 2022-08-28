Delivery-date: Sun, 28 Aug 2022 16:05:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSIuq-00D8F3-Q7
	for lore@lore.pengutronix.de; Sun, 28 Aug 2022 16:05:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSIum-0002Nk-4R
	for lore@pengutronix.de; Sun, 28 Aug 2022 16:05:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KG0T8AQ78Oz4U5Iy0dnkCJZNYCQE3IxSZxmUCOedQqk=; b=LkEsx3FpdxgA3y5Y2c854Iwk38
	f5Y+wSFsZdPaGPQO/VXKZW+rQn3Txz+GMpeBzl9BYptZ1cPkoNL9PMBgP6QhBDNjS++rJoUvcqnh1
	9baXLF9ffBcwUbEMlGZBr/Q+KFWrCNodPv68/3b+Bc1qWFdHKINRQ3NIYPWh5dBn0HNcMT5/nema+
	vvwOQ4kQRxXE4hW2WW4lVVh/ued085W5t74fWy11zjOjM3IdROEUeTzW5dgX+ZhxvmvzT/Menplvb
	WzA3Z2wAg2+jIVKbQtLvODq+6hbAPfeZcUhtjFlu2RHgaj1KAgrZYzYSbCY6QN7Njbmq19Sn1fpNq
	5H7jmXXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSIt7-00HKEP-QZ; Sun, 28 Aug 2022 14:03:45 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSIsw-00HJnZ-Kz
	for barebox@lists.infradead.org; Sun, 28 Aug 2022 14:03:36 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27SE2n38789816
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Sun, 28 Aug 2022 16:02:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661695369;
	bh=KG0T8AQ78Oz4U5Iy0dnkCJZNYCQE3IxSZxmUCOedQqk=; l=1112;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=glHVsYLla6uIiOPSzLq82DpLe6v2rWxoYYqJlm7limnM08RIk0shZZH/q/pqNqhy+
	 alR6zBl9oAQA2neLvF22nwgwMLjLkXvBpTtB21wfKDA1eaG4A9FCICszzjj/OcBlXe
	 KAF2HupSOwI93Cd9ueoEKVyq09PWTDlQAWG26LMa7VQoJ2SIdW6SwPCtvnznfmgzbb
	 j4YaBgdwpKuP8Wq583j+tJlT8Pv2SXCHDLvekAuTrhqhwljsTfLzIrjYwPjdDnzS7y
	 jBb4TtKBrPt3sdXrpQG/T5WA5fi0qgwI3jd7EfbS7zsNk/ZFSYlMX85OGDk62ZxGzF
	 +XRW22vN+S26w==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27SE2e7M2843344
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Sun, 28 Aug 2022 16:02:40 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 8DB7C809EA8; Sun, 28 Aug 2022 16:02:38 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27SE2bt6933378
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Sun, 28 Aug 2022 16:02:38 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSIs1-003u7X-9s;
	Sun, 28 Aug 2022 16:02:37 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Sun, 28 Aug 2022 16:02:25 +0200
Message-Id: <20220828140231.930643-3-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
References: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220828_070335_039410_DDDA9632 
X-CRM114-Status: GOOD (  10.05  )
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
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/8] tftp: remove sanity check of first block
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With tftp window size support, the first received block might be !=
1 (e.g. when it was reordered or dropped).  There could be checked
against '!in_window(block, 1, priv->windowsize)', but the corresponding
sanity check can be dropped completely:

- OACK logic verifies that we speak with a tftp server (which always
  sends block #1 as the first one)

- the code some lines later handles this case already

Remove the check and simplify things.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 783413797251..aaeb19590e93 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -686,14 +686,6 @@ static void tftp_recv(struct file_priv *priv,
 			priv->tftp_con->udp->uh_dport = uh_sport;
 			priv->last_block = 0;
 			tftp_window_cache_reset(&priv->cache);
-
-			if (block != 1) {	/* Assertion */
-				pr_err("error: First block is not block 1 (%d)\n",
-					block);
-				priv->err = -EINVAL;
-				priv->state = STATE_DONE;
-				break;
-			}
 		}
 
 		tftp_handle_data(priv, block, pkt + 2, len);
-- 
2.37.2



