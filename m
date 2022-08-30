Delivery-date: Tue, 30 Aug 2022 09:46:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvxX-001UYO-QF
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:46:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvxV-0005MF-1B
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:46:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nrsDkM8ORQmxnJX77X504SVNoO1IpyYoV5dkSYu/KG8=; b=CiW0IQ4gj/aXruDc6laXlV8pBi
	K36eb9chhFPe4SfKaJu7fssLFLJJwp9LOsoRenJHEw7NPXbBazBd0Dql/eIPbMdJ8vebfuXsmOgvb
	ib0mlUNvTVyG3dy77fx9svbSIfaxTMFRRhLLaQDHDugFE1Ppkbd7OF+qE+CqYm1Mv7J3XjmOS8uPh
	inyf7JHS5T3DfZ80kudUhAsmO1ZPyJvgQeZo9AnYcKSGJR7tyxM/doX7QnkKGs+dv4FbSecWn7j/N
	D1ttyBGNxwm42Ak61KDFSkem5q3NYNzR5cRvIzurX/k/CzG/kdfR5BNni3qH1ZkTcEI0t+eY1/ZLa
	Wz3GEiLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvvh-00Es5g-UR; Tue, 30 Aug 2022 07:45:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqM-00EpWV-B6
	for barebox@bombadil.infradead.org; Tue, 30 Aug 2022 07:39:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description;
	bh=nrsDkM8ORQmxnJX77X504SVNoO1IpyYoV5dkSYu/KG8=; b=FytoIRwu/VfvNC1VGZjSF1lBQ1
	nhtiiTF7EiOU7C2eBn9E7Ef5SB1QdVTy/L14N1IHQDrVMXSs8+RYd4lb7PUkmrBDi604+1LCsEf13
	9JrdiLXVK/9weT+VjiCOYsyCojG1PD0jl2/P3xL7lrLSZpNUUGTN1ZhL5v0G1OOgPUsYTdVSXv1vc
	8i1zarlN226B2/soKTzwoGEhny1YnqTcASFDnzDoPyVwi+Ym/Kdc9NirHe28yWW1gIflZyLZUnmqi
	Jup/c+MeR2oC8W9Dlk2+AwVx2nAfQs4b459qi4yQnwTNhOc7n3qrvHiNlX9hEZ/6UeJRJRYerA59s
	Pvo/kqlQ==;
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqC-007m5w-3r
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:27 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7ce5I993562
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845120;
	bh=nrsDkM8ORQmxnJX77X504SVNoO1IpyYoV5dkSYu/KG8=; l=874;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=qscSfx0ExJPyIpPK6CPkdzsGF6ot6dDwehKGqwVnQjQQ7CWMWOx7YSp0kcXFguWWq
	 hkmSOTV2HSQx0UjT4Jt2Z/qL7ON3y8sHDey096plWdCivfvK1GlCxkmRH+sZFv6wYM
	 5/QNMyjKI5cxpnf7uHr39Eqtxd1yRgL3eNhQ4XHpVTc7/norhzGXcRJ8oeHbQ579US
	 5feokKw3kcruQe8bld651ohrcO28DQUvEOJrC/ktAFW4sxTybNcnXIsSnVqbjNjkR6
	 vOjL8vHamJFuf6kTtqLTRM1MhQ8LZxcklDoMrmF2lb7nWDIerDlYfYAr+RPFgDKm02
	 Co4yGz+cku7og==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cOxa1001063
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:24 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 5CE17808B29; Tue, 30 Aug 2022 09:38:21 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27U7cKLC949563
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:21 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpE-00BJ33-1p;
	Tue, 30 Aug 2022 09:38:20 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:38:04 +0200
Message-Id: <20220830073816.2694734-10-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_083922_433239_F382ABF1 
X-CRM114-Status: UNSURE (   8.04  )
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
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 09/21] tftp: add debug_assert() macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Is a noop in normal cases (when compiler sees that the condition can
be evaluated without sideeffects) but allows optimizations based on
the condition.

E.g. in

| void foo(int a)
| {
|     debug_assert(a == 23);
|
|     if (a == 23)
|         return;
|
|     bar();
| }

the call to 'bar()' will be optimized away.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/fs/tftp.c b/fs/tftp.c
index 51cb1109d2ff..07de8334f202 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -70,6 +70,15 @@
 
 #define TFTP_ERR_RESEND	1
 
+#ifdef DEBUG
+#  define debug_assert(_cond)	BUG_ON(!(_cond))
+#else
+#  define debug_assert(_cond) do {			\
+		if (!(_cond))				\
+			__builtin_unreachable();	\
+	} while (0)
+#endif
+
 struct file_priv {
 	struct net_connection *tftp_con;
 	int push;
-- 
2.37.2



