Delivery-date: Mon, 18 Jul 2022 14:25:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPof-00D7Fp-JO
	for lore@lore.pengutronix.de; Mon, 18 Jul 2022 14:25:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDPoc-0008F4-Ss
	for lore@pengutronix.de; Mon, 18 Jul 2022 14:25:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=svgQUqzv/yTM9CZC5vHroaRyj5uG6/MTSD5hoOhChoY=; b=aOq/AmHclxfSInkNbsV+C6m6At
	IeBM3Iqnrk2ifXphC7QNfCVBeoGE9YncjTvBZcyYBWIs93hCcJf5FrisU73eZ4oVmYgZJbHgKF5hs
	G/IMG3XNxh7+oS8yTqglRjmzVE7gbyokZlGmzA8ombyR9OYh7GddC65nZ9rX9KK4hLlRkhOfJTNOn
	7V7AGnqlA5mM5YBOuqmHC82fpUo4oJP1qcmppcsTTJYfsNcIgv6mdqdngjFjNP6MZuaWomK0ntH4C
	n4GZ1SDWY8HLAv6hvNSXgZsqm/EO8bLnKga18+N25V8u+KAbbaL95NXH5ENI1HJ5dPcgzOea1KIoD
	WXwn2m5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPnD-00DEIo-Ak; Mon, 18 Jul 2022 12:24:07 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPmd-00DDVx-4U
	for barebox@lists.infradead.org; Mon, 18 Jul 2022 12:23:32 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 26ICMlMk390608
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Mon, 18 Jul 2022 14:22:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1658146967;
	bh=svgQUqzv/yTM9CZC5vHroaRyj5uG6/MTSD5hoOhChoY=; l=438;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=QCdbRw2UDFE/6tIgVy2u+2TYZ/PwANfrpdMOgWaLUH1XVWGvCS2Elpih1fnf4teSB
	 QAbRxPrCzH6qEDpripnp4zn7FCHZ1axk8woSTJBJzYT7YRKijA/7sGk92MoW92plNH
	 tb94ycTgiCiuwffLmO6lSHY+tmsPil8hYxc1y1dQG6MUZ/8IdD+gQ8ohbmyJ4CrvFD
	 oBCtzJLSd8g46aHnCzyPSccYeQwiKZ01FBSOTGWcgk3SsNX+R3x/x811Gch1ZMfs+a
	 Mf5T3zFFX2AEJzDVGTlxdq+9C24ZZU/csUSmqt1MogYz+Map1XUMU51lCCpF0M7WHK
	 iPmcHaNZc1ejA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 26ICMYfk1699956
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Mon, 18 Jul 2022 14:22:34 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 23EFC35F566; Mon, 18 Jul 2022 14:22:32 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 26ICMWNB549151
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 18 Jul 2022 14:22:32 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oDPlg-002g3A-NW;
	Mon, 18 Jul 2022 14:22:32 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon, 18 Jul 2022 14:22:17 +0200
Message-Id: <010f1d91dbed37130854e9471535b386a2632eaa.1658144543.git.enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
References: <cover.1658144543.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_052331_380459_9D5B054A 
X-CRM114-Status: UNSURE (   7.11  )
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
X-Spam-Status: No, score=-104.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 02/13] libfile:copy_file: show statistics in verbose mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 lib/libfile.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/libfile.c b/lib/libfile.c
index 3b7985fbcabb..9eb06de02945 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -454,6 +454,9 @@ int copy_file(const char *src, const char *dst, int verbose)
 		}
 	}
 
+	if (verbose)
+		close_progress(total);
+
 	ret = 0;
 out:
 	if (verbose)
-- 
2.36.1



