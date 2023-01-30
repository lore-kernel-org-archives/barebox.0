Delivery-date: Mon, 30 Jan 2023 18:49:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMYHU-007r31-AX
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 18:49:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMYHR-0001sR-Ei
	for lore@pengutronix.de; Mon, 30 Jan 2023 18:49:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CZg6awpsauHZvqLlAtrK7HQSvHQ2SeFgnoV/wbUYvmU=; b=l3XCF2LGmX7eB/h8Zyg1FNCvX9
	kaLX3hVuN5jXg6xwb+jbI580bX0vAunw50IUt4zX5m8iMATWCJlw2xEKANmmwCL3RWO6hz0IAInzN
	Dy6lA4toKMfECv3UEVQLrhgUSRmwVPITeWm3GfFLTE0vWyaicP9bliQIXXmNcdY+XvXj8ZYPfRi8r
	yXh1ICF5EfCUrTBIQBoFi/ierbwa5/gTmYR6ESa8CL+KJkaxdbpmWtaO/thchl6peMF6jNLEV7MAd
	e0IbSYpIWAnW9sNITAWCX0sVIT34dtZOdpK7UYd+L9dfTPJd1EoQZohFJ5DAcfNDTf0stgl0PzHpX
	+rHmOzmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMOZZ-002XeX-2G; Mon, 30 Jan 2023 07:27:25 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMOZQ-002XcB-G8
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 07:27:19 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 1BD021C0007;
	Mon, 30 Jan 2023 07:27:13 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>,
	Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Jan 2023 08:27:05 +0100
Message-Id: <20230130072707.2423294-3-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230130072707.2423294-1-ahmad@a3f.at>
References: <20230130072707.2423294-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_232716_704718_DFF558AB 
X-CRM114-Status: UNSURE (   8.16  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/4] asm-generic: avoid compiler warnings due to PCI_IOBASE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some GCC versions take offence at PCI_IOBASE's default value of 0.
Hide warnings about this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/asm-generic/io.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index acb70509d168..6e91c0aea68f 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -12,6 +12,7 @@
 #define __ASM_GENERIC_IO_H
 
 #include <linux/string.h> /* for memset() and memcpy() */
+#include <linux/compiler.h>
 #include <linux/types.h>
 #include <asm/byteorder.h>
 
@@ -86,7 +87,7 @@ static inline void __raw_writeq(u64 b, volatile void __iomem *addr)
 #endif
 
 #ifndef PCI_IOBASE
-#define PCI_IOBASE ((void __iomem *)0)
+#define PCI_IOBASE ((void __iomem *)RELOC_HIDE((void *)0, 0))
 #endif
 
 #ifndef IO_SPACE_LIMIT
-- 
2.38.1



