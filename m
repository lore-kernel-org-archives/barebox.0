Delivery-date: Wed, 03 Mar 2021 16:52:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHTnB-0008M0-00
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 16:52:05 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHTnA-0005H7-2L
	for lore@pengutronix.de; Wed, 03 Mar 2021 16:52:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WUS3NnzKlTDJMXR6Pq1cCJvOUTiW4MokgYPvudt8IMI=; b=m5/9ez1iTrijd3CjuybdFnh5p
	glD7Yv3Iez4QnJA2UiS5WxjpdmnnemYWafDb4KT4RzvvSnoOqB5vYdWB7N3rgoGTUxlTsWRwIRfRK
	y7GzvSpuBBjaekcWFLsuc0cPStSLCum3WS1JHJj6q/QCgqCZ6pT1beRYCx9EH04Dj9Pv91Ynk61vX
	+CECaN5MKIVt9LxEIo/WUmz8MC9V3/F46QujVyCEqqc+kHeSym7nHsPJh+e4PSEzH3TKFP4aoWufo
	F/P6US6YKEsr1NpnOKFKhxfx1WkB+Gmp7GqvmZh8qh/5GbGW0aa6NVujYR+9zUtxlBOo24kRNf/sS
	BDktm6aIQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHTlr-005Sze-Hl; Wed, 03 Mar 2021 15:50:43 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSk8-005CNp-6L
 for barebox@desiato.infradead.org; Wed, 03 Mar 2021 14:44:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=EftmGZdjLp3X1b5WI/aqMkWru2/fOhiuSqIREAuvwXM=; b=Tpfjr9cUzT2EyU22UydTYSaTd5
 kN9N1Msjw6Lu40UnhDiBWF4pgyUjk5pfsKwLF42TTz0HzKWnyS9LeVk0GtBzNG9msFvkCsdHJycxv
 zQqiUaNu5Uo12taFDvzKpAvYgCC1UarRn+Ow5sLSJviUhNGh+KLOY27ZpRO/sOqedh9TwErnRUdeo
 7xpt8edrENWZbLDvO7cSxJuhaKlr+Xx7m5s2Hv7CmwomhFo2oTrzp3mLidi8Noz6FZHXtzvLSYhHz
 rgvwMJHGIXAkTIiCJS2ILGktD6CjGbU1jb3b+xDEoyg7LDQ9Gy/zrWpvbWIXk9nWQadZTjmPE4sXR
 wM56KwpQ==;
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHRuq-002qLg-Vf
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 13:51:53 +0000
Received: by mail-pg1-x532.google.com with SMTP id p21so16381838pgl.12
 for <barebox@lists.infradead.org>; Wed, 03 Mar 2021 05:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EftmGZdjLp3X1b5WI/aqMkWru2/fOhiuSqIREAuvwXM=;
 b=H20IitUyWiUpKW5ZAsnQM1meeyUma5jNr20Y84ib4Z1nw18Hy+2f+64gQUxIgqN7hj
 twrtOfzXQsuiY8PKgXVy/1VCsVuxAzMHIEXdedX2CYFq1wlDKGUwYBUBHgbMa9HggbOy
 Sogfb3BpRyYE2BkdMgYKH4oAeIKPOsl1o1TEjoO0nszGIt6uJYU4Lhe1IIfVEVFjbaZA
 J0qbUfA+gxuV82nIx+iVUk0nxZ/Nvf4KOh72S+EBaQKhUa7/kS4y1hRPpEJl164xDHJa
 Ri3UG0V5nbvOSI+n/ckagGjUeyb1RM1wR61C7lX2jNtIkQl1/mG8KS7h0HQ6JYwUsfTs
 5GWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EftmGZdjLp3X1b5WI/aqMkWru2/fOhiuSqIREAuvwXM=;
 b=uaMHhRaMlcPubhihTnkmquqLZCYEq+rpwjPhrLKznpYsQUx9Ck6X+1wLGYGB0lqqMu
 3nkT6Y9b1wZzelNGlCyatPkp1ppj0Hf35dermvPkmcSX8E8iHyUQtKfolC7ye7e2St5/
 vszdA24hZEuClde4e8zGk0Mu6u7bLIXzRvP/8yMh5SV2ftXI1s9AriL9k8q4XIziorh3
 FdvniG9EPCgB+eVT1OSPpbcXfcS+7g1jRSVFl8bBXktcgfUcBRrC828AgnMYRddLE+yD
 2lfTYZH2qMQB+SI36Ly5CegUZSctHL7Jbe0gaWxDyJA/2BKv5RHTyWI9oUbiieQw4Gub
 aVjg==
X-Gm-Message-State: AOAM531K5j8BvwjdoihIiOze1zUFQ69Uq3QT7gQBqbV3n8kOr95XU4S1
 I5DvbO+jcrfxvxs50eBW/Wb/p61TGmY=
X-Google-Smtp-Source: ABdhPJwKfVtjxpk16Nj4MGzOgAKgk7J0xUyUIRCrv9L1qr8XcBoKhlWMe169OJLYAdIwsAtSpFL6nw==
X-Received: by 2002:a65:6207:: with SMTP id d7mr24014291pgv.92.1614779446304; 
 Wed, 03 Mar 2021 05:50:46 -0800 (PST)
Received: from localhost (g98.115-65-200.ppp.wakwak.ne.jp. [115.65.200.98])
 by smtp.gmail.com with ESMTPSA id 184sm23257577pgj.93.2021.03.03.05.50.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Mar 2021 05:50:45 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: Barebox <barebox@lists.infradead.org>
Date: Wed,  3 Mar 2021 22:50:25 +0900
Message-Id: <20210303135026.3450789-4-shorne@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210303135026.3450789-1-shorne@gmail.com>
References: <20210303135026.3450789-1-shorne@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_135153_781302_B78E7844 
X-CRM114-Status: UNSURE (   9.95  )
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
Cc: Openrisc <openrisc@lists.librecores.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, Stafford Horne <shorne@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/4] openrisc: Add linkage.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Copied from glibc minus bits we don't need.

Signed-off-by: Stafford Horne <shorne@gmail.com>
---
 arch/openrisc/include/asm/linkage.h | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 arch/openrisc/include/asm/linkage.h

diff --git a/arch/openrisc/include/asm/linkage.h b/arch/openrisc/include/asm/linkage.h
new file mode 100644
index 000000000..dbe4b4e31
--- /dev/null
+++ b/arch/openrisc/include/asm/linkage.h
@@ -0,0 +1,7 @@
+#ifndef __ASM_LINKAGE_H
+#define __ASM_LINKAGE_H
+
+#define __ALIGN .align 0
+#define __ALIGN_STR ".align 0"
+
+#endif
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

