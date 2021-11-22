Delivery-date: Mon, 22 Nov 2021 09:55:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp56q-0003jV-4c
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:55:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp56p-0002TG-71
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:55:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvjQU9cENSgLX5oPTta9igrCe1jd4BI7uC7KWcWxamQ=; b=OJmTlAZUKM1hjq
	yyBgV3zGz9LvUaH85RFIAbuFow7Y7QKAJpwsqDacTPZujjVfGPr54TpxfAgRABuWXT82PShmJ3MY7
	Maa5CGUfd5U0eh4hX1DcMxPJbp6q4lh/yDhDMTKwyWmxeBJtm+MP80aIJ7VNYWZnypviyvpuaLbMj
	mzJDEDy+UaCWEo60Pd3PUC7ETpbZzPyB+m7X6TtV2RFGOan/3fvFmLUwLIwO9PI7srWhZBr2JOLYO
	zItAyQ6Tzeqnpalt/DPFeeKasfkZAg3yLvcMnetdeCYXIKFeBNP30ecyTSl1k1kfmXxHiGwPhgq4d
	S/4o6xECpG7h1FT27Syw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp55E-00FOnv-Jk; Mon, 22 Nov 2021 08:53:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zR-00FL9y-Ug
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zA-0007wF-GX; Mon, 22 Nov 2021 09:47:36 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00Atee-AF; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:06 +0100
Message-Id: <20211122084732.2597109-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004754_023483_C548F899 
X-CRM114-Status: GOOD (  10.14  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/30] include: <linux/types.h>: wrap in #ifndef __ASSEMBLY__
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While it makes no sense for assembly sources to include <linux/types.h>
directly, it may be included transitively outside of an __ASSEMBLY__
guard, thus wrap it completely in the __ASSEMBLY__ guard, just like
Linux does.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/types.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/types.h b/include/linux/types.h
index 5716a4c92fac..dfef336c198b 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -1,5 +1,6 @@
 #ifndef _LINUX_TYPES_H
 #define _LINUX_TYPES_H
+#ifndef __ASSEMBLY__
 
 #include <linux/posix_types.h>
 #include <asm/types.h>
@@ -213,4 +214,5 @@ struct hlist_node {
 	struct hlist_node *next, **pprev;
 };
 
+#endif
 #endif /* _LINUX_TYPES_H */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

