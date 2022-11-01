Delivery-date: Tue, 01 Nov 2022 07:44:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opl0o-00AQO7-SM
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 07:44:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opl0n-0003r9-AX
	for lore@pengutronix.de; Tue, 01 Nov 2022 07:44:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Sk7HCLWONgyX39EugaQmBfNnkZDid45v5T2G09Un7Qk=; b=ycgWAEg8cxRbEqjox4jAmxEJvT
	EqmGWJdpQBzLmuNFLp2yQjPkIYPADrEgwdbJrk6gNDygCI5Xi3Noh01YiRElJ4l47LK+cHxrkyWIK
	elLjdHhSSLyBk1laorn4I03hxq3qeKB+XekytQvDW0NS/Uu5CL/WfyIfIh2UDiQmVyj6ZKanb4IEC
	ao0r1ewCuhWNcubBDSUwrnzKTipwBl0A+YS/zjk/AdpsXisWaVwjJhtun0MTiddDu6uAAYdMkG4jL
	m4+FTga749tM/DWbQjecOvfF6ZJoaBNpEcStfvlJO4LmCiHloPiqp7OqyJF5uRWoJ00x3lwgaf8o4
	6lBSZmyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opkzX-002SXE-9g; Tue, 01 Nov 2022 06:43:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opkzS-002SRS-RB
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 06:43:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1opkzQ-0003ld-Tf; Tue, 01 Nov 2022 07:43:12 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opkzR-001ckl-5h; Tue, 01 Nov 2022 07:43:12 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opkzP-00DXbs-6H; Tue, 01 Nov 2022 07:43:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Nov 2022 07:43:10 +0100
Message-Id: <20221101064310.3227410-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_234314_977325_6F350195 
X-CRM114-Status: UNSURE (   9.81  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] lib: string: implement mempcpy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

mempcpy(3) is a GNU libc extension that like stpcpy returns not the
start of the destination buffer, but the first byte after its end.

Provide it as it is useful when concatenating buffers or known-size
strings.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - split off function from series using it. Other series needs
    commits reordered.
---
 include/string.h | 1 +
 lib/string.c     | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/include/string.h b/include/string.h
index 2cc727fd1d7a..596440ca8164 100644
--- a/include/string.h
+++ b/include/string.h
@@ -4,6 +4,7 @@
 
 #include <linux/string.h>
 
+void *mempcpy(void *dest, const void *src, size_t count);
 int strtobool(const char *str, int *val);
 char *strsep_unescaped(char **, const char *);
 char *stpcpy(char *dest, const char *src);
diff --git a/lib/string.c b/lib/string.c
index fd4d7da10a7c..edd36da4d4f2 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -603,6 +603,11 @@ void *__memcpy(void * dest, const void *src, size_t count)
 	__alias(__default_memcpy);
 #endif
 
+void *mempcpy(void *dest, const void *src, size_t count)
+{
+	return memcpy(dest, src, count) + count;
+}
+EXPORT_SYMBOL(mempcpy);
 
 #ifndef __HAVE_ARCH_MEMMOVE
 /**
-- 
2.30.2



