Delivery-date: Fri, 05 Mar 2021 12:05:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lI8HA-0002ZQ-EU
	for lore@lore.pengutronix.de; Fri, 05 Mar 2021 12:05:44 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lI8H9-0001jU-Pi
	for lore@pengutronix.de; Fri, 05 Mar 2021 12:05:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yjSutD6opvgt6xBVP4o/mAqep9ReMUpaXmhZ6rgbTxA=; b=Fu1oRsztywcN7mPvmqTyD+w6N
	+QMw/az7qM6reqndrkInTsRHs3kRj76CeHvJ4kfxzwtPAVMjC4p00b74F/rKpv9K5DPcfWxpO49Te
	1jok1Q24Ajq3e4Phxq80Y9tb2vnf0YjPqjLqxJy7NWlVqySTV369NqGHS7GFYZGJ47D/gemckm0W0
	LmML4M7odT5DhK3lsVoTe0W6jGt12xHEApT3/CQTipY2Tm79n+8lU2xmyCGsn2wrUWssPu1X1F3OJ
	UEEWI9HCmgBLfSgpPLvahDqLcw1nziPxAV45S2OaW8cpdBDiu4+/YoM25/KjNjhNyqMvSn3Agggnu
	V+Rgeig8w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lI8G1-00EgJ2-Oa; Fri, 05 Mar 2021 11:04:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lI8F1-00Eg0Y-Iw
 for barebox@lists.infradead.org; Fri, 05 Mar 2021 11:03:35 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lI8F1-0001U3-2Z; Fri, 05 Mar 2021 12:03:31 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lI8F0-0008FT-NJ; Fri, 05 Mar 2021 12:03:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  5 Mar 2021 12:03:29 +0100
Message-Id: <20210305110329.31046-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210305110329.31046-1-s.hauer@pengutronix.de>
References: <20210305110329.31046-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_110332_336817_A112B2A7 
X-CRM114-Status: GOOD (  10.70  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] complete: Use string_list_add_sort_uniq()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/complete.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/common/complete.c b/common/complete.c
index ad630f4c95..e504b75606 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -101,14 +101,7 @@ static int path_command_complete(struct string_list *sl, char *instr)
 				else
 					strcat(tmp, " ");
 
-				/* This function is called
-				 * after command_complete,
-				 * so we check if a double
-				 * entry exist */
-				if (string_list_contains
-						(sl, tmp) == 0) {
-					string_list_add_sorted(sl, tmp);
-				}
+				string_list_add_sort_uniq(sl, tmp);
 			}
 		}
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

