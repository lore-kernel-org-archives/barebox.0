Delivery-date: Fri, 17 Feb 2023 08:24:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSv6M-009wNs-4z
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 08:24:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSv6K-0004mB-Vz
	for lore@pengutronix.de; Fri, 17 Feb 2023 08:24:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LlNkXzHL1IlCJRMkJYeEAYRC926uByoi05ZzSIcXk4o=; b=tF6zR90mYLMyorLUa1G6ARErVG
	u7oYjkIDbWYnXNDtKR1U8+/9+g3qo55RwtxOGdVXTDRjIlPKQNN8LOf7u+qTNo6WIKNlux+X+aWoK
	UDDiUqVdk4LnZYzgd90xoyKYroWgZ+l5AhhAU1ZsUShk3+xkN8zxZ3ZVedHlUpIYPnTVDPa51OcXW
	VbuY61/QrcaHhZD9xoulPCbcx5FLSnvf3zeGw+xOv9/h7raqgyi7ffcnLfYGXsDmLyRicOgk2/+zS
	vR8QqY5fp4y8oj31AM4ATYlxrdTWT2YbtCCEGaDvQ1DY02ZIo3H19oULLX4OU1gnstWYS6HtDS7fl
	v5DZI3QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSv4f-00D4Es-PU; Fri, 17 Feb 2023 07:22:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSv4a-00D4Dz-Eo
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 07:22:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pSv4W-0004Gj-5Y; Fri, 17 Feb 2023 08:22:20 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pSuqp-005Wqj-AU; Fri, 17 Feb 2023 08:08:12 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pSuqp-00E4JV-Rf; Fri, 17 Feb 2023 08:08:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 08:08:10 +0100
Message-Id: <20230217070810.3353123-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_232224_515951_3A1A736E 
X-CRM114-Status: UNSURE (   9.19  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] kwboot: add missing header to fix musl build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Building kwboot for musl instead of glibc results in a couple of errors:

  error: unknown type name 'fd_set'
  error: storage size of 'tv' isn't known
    142 |         struct timeval tv;
  warning: implicit declaration of function 'FD_ZERO'
  warning: implicit declaration of function 'FD_SET'
  warning: implicit declaration of function 'select'
  warning: implicit declaration of function 'FD_ISSET'

POSIX specifies[1] that all these symbols shall be defined by <sys/select.h>,
so include this missing header.

[1]: https://pubs.opengroup.org/onlinepubs/009695399/basedefs/sys/select.h.html

Reported-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Link: https://lore.kernel.org/openembedded-core/Y91ObtiQCtnpGaRH@mail.local/
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/kwboot.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/kwboot.c b/scripts/kwboot.c
index 1cbb456935f2..2a4f6bc5fc58 100644
--- a/scripts/kwboot.c
+++ b/scripts/kwboot.c
@@ -22,6 +22,7 @@
 #include <termios.h>
 #include <sys/mman.h>
 #include <sys/stat.h>
+#include <sys/select.h>
 
 /*
  * Marvell BootROM UART Sensing
-- 
2.30.2



