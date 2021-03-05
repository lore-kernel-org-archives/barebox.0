Delivery-date: Fri, 05 Mar 2021 12:05:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lI8HD-0002Zm-FN
	for lore@lore.pengutronix.de; Fri, 05 Mar 2021 12:05:47 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lI8HC-0001kT-Qf
	for lore@pengutronix.de; Fri, 05 Mar 2021 12:05:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tKW6BeTWo2U4f3MB8nzM9d0OXjuV2Aq14FJPyRkZeXM=; b=eA3vfzFt57yl5+E00LCY2LD/e
	IEokuN2ObvsiXojF3E0trz9ieKdO81vT39A/QxkBaAMbqW3y01+jk67RC/gRA4giCAW7zWCKofNZh
	Nsvgm+7nL/XZqTRfOp1/ft4Y9+dvoOSiRUV3WgRYJIIc+yqCm2ByLGf3Iodq/VfUR/SiT1BkHndgv
	+vcDwQX50Fa9UtiCseKCSkgpzGlZvK3g89zovw/XqQw/sa4TWKR28+D/mOxLSjzJyw8JYuSEMRYqJ
	qvnCjzdaY13op5bywcvtLmB5Vs4cfv0SjrZ8cEgG6Y3HM69j6hfRR1aDOjBJMjswXdJjMCXS7jWZu
	pml0Ur5xA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lI8G6-00EgM0-NQ; Fri, 05 Mar 2021 11:04:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lI8F1-00Eg0P-Iw
 for barebox@lists.infradead.org; Fri, 05 Mar 2021 11:03:34 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lI8F1-0001U2-07; Fri, 05 Mar 2021 12:03:31 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lI8F0-0008F0-LM; Fri, 05 Mar 2021 12:03:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  5 Mar 2021 12:03:28 +0100
Message-Id: <20210305110329.31046-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210305110329.31046-1-s.hauer@pengutronix.de>
References: <20210305110329.31046-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_110332_156642_420F73DD 
X-CRM114-Status: GOOD (  10.35  )
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
Subject: [PATCH 2/3] stringlist: Initialize HEAD str member to NULL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

HEAD str member should be unused, but when it's used accidently then at
least make sure we do not use an uninitialized string.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/stringlist.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/stringlist.h b/include/stringlist.h
index dbf159da91..c5d6e70a36 100644
--- a/include/stringlist.h
+++ b/include/stringlist.h
@@ -19,6 +19,7 @@ void string_list_print_by_column(struct string_list *sl);
 static inline void string_list_init(struct string_list *sl)
 {
 	INIT_LIST_HEAD(&sl->list);
+	sl->str = NULL;
 }
 
 static inline void string_list_free(struct string_list *sl)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

