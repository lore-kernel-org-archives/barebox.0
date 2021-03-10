Delivery-date: Wed, 10 Mar 2021 09:50:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuXb-0001Bk-9K
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 09:50:03 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuXY-0002Ht-Cr
	for lore@pengutronix.de; Wed, 10 Mar 2021 09:50:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PM/VVINPz6egl9sXfzg3mzVcmsqJs3eDm4Q2/bfndns=; b=TJWtzhU2/nni7x10KNnlQ+lWi
	Etv3XNplU4mMPteuI63hmVAaDREhObyUT6cYe/5s80WxsgUvTMaEQY89j3hOFP++UxFOU6WANJUMr
	qo3Bh1YH0XAHbAiSL/WuFEYvmQGYwd5QjDsK2ur3NwFP1+suBEMs46/AJwH/S6SCyZeQ1hGQDvl/d
	m4B14q8QEw/TznF+vgj9OQaYheU3x9mQFXErTTdFVxJtl2x3/ULjLQeUtTtSfW5A3bvc5Y8mybLE8
	Uo44i4vhlyza3UoLteBqpkdiERzWMDb7j2DMBt7ECA1TGLEc/Mo/heuXXy3OfdCTtU/3qAMg/P9za
	ssnoHaxeQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJuWg-006LaC-R7; Wed, 10 Mar 2021 08:49:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJuVj-006LL8-Vd
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 08:48:13 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVj-0001Ti-IC; Wed, 10 Mar 2021 09:48:07 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVd-0001zj-LX; Wed, 10 Mar 2021 09:48:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>, Peter Korsgaard <peter@korsgaard.com>,
 Sascha Hauer <sha@pengutronix.de>
Date: Wed, 10 Mar 2021 09:47:57 +0100
Message-Id: <20210310084800.3584-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310084800.3584-1-a.fatoum@pengutronix.de>
References: <20210310084800.3584-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_084808_488152_A089F8C9 
X-CRM114-Status: GOOD (  11.74  )
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
Subject: [PATCH v3 13/16] console: unconditionally run resched() in ctrlc()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

ctrlc is allowed only after init and reboot mode scripts have run, so
these scripts run uninterruptible. A side effect of this is that all
calls to ctrlc() will immediately return with false without running the
pollers. While init scripts shouldn't run too long, it's still
surprising behavior. Thus call resched() first thing in ctrlc().

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/console.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/console.c b/common/console.c
index a436c37aa3e8..8a0af75a1ff4 100644
--- a/common/console.c
+++ b/common/console.c
@@ -579,14 +579,14 @@ int ctrlc(void)
 {
 	int ret = 0;
 
+	resched();
+
 	if (!ctrlc_allowed)
 		return 0;
 
 	if (ctrlc_abort)
 		return 1;
 
-	resched();
-
 #ifdef ARCH_HAS_CTRLC
 	ret = arch_ctrlc();
 #else
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

