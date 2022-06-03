Delivery-date: Fri, 03 Jun 2022 09:26:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx1h5-001Yox-Pn
	for lore@lore.pengutronix.de; Fri, 03 Jun 2022 09:26:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx1h4-00082w-PT
	for lore@pengutronix.de; Fri, 03 Jun 2022 09:26:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uD9sQ7ZYjzbEQMHD8juAD+URxD3gTdWU7H1obIiG4Bs=; b=oCiA4kMAXb8NNo
	fXnCbAh0//typhPlxIJjoHOH0C7ZIii8AD1e5U8byRDi5iD11U0Eq3CNSqCn3C2YF0ilJbcXnloGS
	0ydYUlKP5TYU6EPQq/gAZUuyj8RRZBDUtYlJrMe5qeNQjx6JdudJLaGqNVUpiyQ7S0PF3kUwmgX7D
	koVXINrEVv3+GTW/0p0H38Y9H71nCbOJ+yPvmPvQTV+cTS3LeWJPdBvHG2WxeE8zU404fHgpznrPs
	zs54zDqMRwJXT2c4tBUlZ2llZY4kJK5ZJbqZ0sHm8fBUtrVbSzzkOKOdAgjJHwKrrAEXHrXWTcjbv
	lejFBGv7RRU+alqacNSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx1fq-006IG8-Kq; Fri, 03 Jun 2022 07:24:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx1fl-006IEH-TP
	for barebox@lists.infradead.org; Fri, 03 Jun 2022 07:24:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nx1fk-0007oM-Mt; Fri, 03 Jun 2022 09:24:40 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nx1fl-006B76-BZ; Fri, 03 Jun 2022 09:24:40 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nx1fj-006d0Q-DC; Fri, 03 Jun 2022 09:24:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  3 Jun 2022 09:24:35 +0200
Message-Id: <20220603072436.1579545-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_002441_983357_E8B600C4 
X-CRM114-Status: UNSURE (   9.61  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: cpuinfo: print CPU mainid if unknown
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of e.g.

  core: unknown r0p3

We now get

  core: unknown (0x410fd083) r0p3

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/cpuinfo.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index a08fc253efbb..5dce34536efc 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -191,7 +191,7 @@ static int do_cpuinfo(int argc, char *argv[])
 
 	if (cpu_arch >= CPU_ARCH_ARMv7) {
 		unsigned int major, minor;
-		char *part;
+		const char *part = NULL;
 		major = (mainid >> 20) & 0xf;
 		minor = mainid & 0xf;
 		switch (mainid & 0xfff0) {
@@ -217,9 +217,13 @@ static int do_cpuinfo(int argc, char *argv[])
 			part = "Cortex-A57";
 			break;
 		default:
-			part = "unknown";
+			printf("core: unknown (0x%08lx) r%up%u\n",
+			       mainid, major, minor);
+			break;
 		}
-		printf("core: %s r%up%u\n", part, major, minor);
+
+		if (part)
+			printf("core: %s r%up%u\n", part, major, minor);
 	}
 
 	if (cache & (1 << 24)) {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

