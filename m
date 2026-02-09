Delivery-date: Mon, 09 Feb 2026 10:15:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNMw-00AVIe-2V
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 10:15:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNMv-00069h-Ns
	for lore@pengutronix.de; Mon, 09 Feb 2026 10:15:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2GZfnNjOOURTCjl9umll50psw+PH9+D5jta/UyCYrfQ=; b=clqhrBDZ/ygeZKgVdoFLyh0a7d
	LXofTfy0wDRxu274AMfAftBBCipn8JC0bOcjoGK25R9QhnhoX9WNHjpSeIyhQz7R05EuUOClCP+mJ
	7v3RIdUpoVHrqiNrFiozFGRn6WLNVy5I3Kg6E8bqoAuYPZAtZc3SxNmEIMah5Wt2AM8h1d+POC+Y/
	CJds1LE/ds56ZtNGlO+0z0cFx/os6BmQn1NHVRGI81OYRTAuiAgxm82RUnHprg1XOlrOpIFwxKDRR
	V4cnEH7s/AfL+pXWZdTHQ6y5MmDRElUHntHNtW+47LZjOkrpL6WdjD4/zEJWBG/jN9ijYWQYK7PKz
	4itqzzKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNMZ-0000000F6fY-0Sfg;
	Mon, 09 Feb 2026 09:15:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNMT-0000000F6bB-14EP
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 09:15:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vpNMR-0005oY-BI; Mon, 09 Feb 2026 10:15:15 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  9 Feb 2026 10:10:26 +0100
Message-ID: <20260209091513.3563412-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209091513.3563412-1-a.fatoum@barebox.org>
References: <20260209091513.3563412-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_011518_201319_471C838B 
X-CRM114-Status: GOOD (  10.13  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] include: array_size.h: make header self-contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The definition of __must_be_array is a bit hairy as it's defined in
<linux/compiler-gcc.h>, which is included by <linux/compiler_types.h>,
but has an implicit dependency on <linux/build_bug.h> for BUILD_BUG_ON_ZERO
in the definition of __must_be_array, but <linux/build_bug.h> itself
already includes <linux/compiler_types.h>.

Let's put a bandaid on this for users of ARRAY_SIZE, by including
<linux/build_bug.h> explicitly for <linux/array_size.h>.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/linux/array_size.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/array_size.h b/include/linux/array_size.h
index 5411d730c819..d1ad53d950d4 100644
--- a/include/linux/array_size.h
+++ b/include/linux/array_size.h
@@ -2,7 +2,8 @@
 #ifndef _LINUX_ARRAY_SIZE_H
 #define _LINUX_ARRAY_SIZE_H
 
-#include <linux/compiler.h>
+#include <linux/compiler_types.h>
+#include <linux/build_bug.h>
 
 /**
  * ARRAY_SIZE - get the number of elements in array @arr
-- 
2.47.3



