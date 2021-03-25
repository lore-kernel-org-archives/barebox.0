Delivery-date: Thu, 25 Mar 2021 14:40:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPQDc-000871-Tq
	for lore@lore.pengutronix.de; Thu, 25 Mar 2021 14:40:12 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPQDc-00088z-21
	for lore@pengutronix.de; Thu, 25 Mar 2021 14:40:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qyCdadQoFsB6d/WdWjmNonACyPKZqcd1GTlxP3GaJgk=; b=aYJyAp6Xh4/zTyVmfQC/ZbEBW/
	4LgfSNWNTbD/8VRFbbDAchGisM5j+1blruZIbcwppHQ4ECVe5TDLOIYgFurg8rG7cCQPHDmwOnZpy
	TaPy7wOTsx3Kj4fqlReu8IUTpkr1iSDOuqh/kS9ChpGwJUThCOAOp+H23JPCvUmsc4u2EHErIFEjc
	nEZuhYkWhfnDHPJxV1U9NISdAK71YFtfQ1UVjTrlMZMWJHOWPukzBc+Qnv6+Yk4mXWtp6sdp7LfRO
	8FNxiasQDaE3TzmyCVdsMGj7gXv4s2YRB8zKB8KcciOIH6azw1n2K1azRw/wYUNXggRmqkG4S61XA
	93MW+RQw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPQCZ-001XUv-Jf; Thu, 25 Mar 2021 13:39:07 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPQCT-001XU3-OJ
 for barebox@lists.infradead.org; Thu, 25 Mar 2021 13:39:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id D58041A540C
 for <barebox@lists.infradead.org>; Thu, 25 Mar 2021 13:38:59 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KMOX98H6
 for barebox@lists.infradead.org;
 Thu, 25 Mar 2021 13:38:59 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id B024A1A540A
 for <barebox@lists.infradead.org>; Thu, 25 Mar 2021 13:38:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 78D3E27E0815
 for <barebox@lists.infradead.org>; Thu, 25 Mar 2021 14:38:59 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id R7T1PLQv5ddR; Thu, 25 Mar 2021 14:38:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 209E327E0814;
 Thu, 25 Mar 2021 14:38:59 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 209E327E0814
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1616679539;
 bh=ad6pKeHlevZFWY1xx5WNMaaUlYlecSANCeKCh6n/CoA=;
 h=From:To:Date:Message-Id;
 b=N59DRGi4yozcpjlBKc1gfNRvT/SiiX+oFe8utzl7kAh80NOcZ1+hLnE2wSyh+HIZn
 aZD+hmJuDAMd3UUesj7cyQJXxBlqB4+5/gthfW+sU7y7bPh9KT3lyTT+b0ZIfokuPv
 6TA5+lD/HIVjEMdfiLL+crXZa3S2BWOB0SnIzWq4=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Jqat8wZ32yF7; Thu, 25 Mar 2021 14:38:59 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 04B3627E06B0;
 Thu, 25 Mar 2021 14:38:59 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 25 Mar 2021 14:38:34 +0100
Message-Id: <20210325133837.30866-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_133902_139864_F6C32D61 
X-CRM114-Status: UNSURE (   9.16  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] clock: Change cyc2ns return type to uint64_t
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Using an uint32_t to count nanosec will overflow every ~4sec, this means
that if get_time_ns is not called often enough the time keeping will be
wrong. By changing the return type to uint64_t doesn't fix the underlying
overflow issue but it will take more than 500 years to happen and I think
it's safe to assume this won't be an issue.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 include/clock.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/clock.h b/include/clock.h
index d681bf630..e6197e7eb 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -17,7 +17,7 @@ struct clocksource {
 	int		(*init)(struct clocksource*);
 };
 
-static inline uint32_t cyc2ns(struct clocksource *cs, uint64_t cycles)
+static inline uint64_t cyc2ns(struct clocksource *cs, uint64_t cycles)
 {
         uint64_t ret = cycles;
         ret = (ret * cs->mult) >> cs->shift;
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

