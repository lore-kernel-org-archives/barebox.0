Delivery-date: Wed, 03 Jan 2024 11:19:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyKz-001mft-22
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 11:19:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyKy-0003nW-Kb
	for lore@pengutronix.de; Wed, 03 Jan 2024 11:19:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8YFcHW3rAmgtqSjLhIn9pjmOt+swpl+56g6b2Ym32C4=; b=LwAaE/czWpQJNwvCIp1sVLCuoc
	yAj4TkIxtn+YmRphNn8nr2qtz/D0pK5b2PU+ZbWljQcS4FHgGa4T1e5+POHlD607Lz1uu3NU0K3eQ
	pQhbCOuKO3/jZc4uRFDooR21YBjV5hHHspzDJHjLd0Z+mRu/IHv3GZD118Gv8paB+wz4tOjVrttBm
	NcyX2AH6zFh0gMceT/dCqmOq6ipho6ng3ORx/d48TcvQDoUpkwtLpPAbipqX99GqiHONlHHw9s9y8
	n/MUkhorJfXwkmieTuTE+EBH6NG9ur1DJi2qE5S3oBRmMmu9KCoUXaBdZHbgWJFPh0Mx1fSDQLU+o
	GCH8sXiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyJx-00AMxL-00;
	Wed, 03 Jan 2024 10:17:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyJr-00AMtn-2W
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 10:17:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyJq-0003JZ-Jj; Wed, 03 Jan 2024 11:17:50 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyJq-0005wi-6u; Wed, 03 Jan 2024 11:17:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyJq-00B2Bh-0Q;
	Wed, 03 Jan 2024 11:17:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 11:17:47 +0100
Message-Id: <20240103101748.2629927-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103101748.2629927-1-a.fatoum@pengutronix.de>
References: <20240103101748.2629927-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_021751_845163_8A33DDFC 
X-CRM114-Status: UNSURE (   9.06  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] compiler: define __ll_elem for linker list elements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When built with clang + AddressSanitizer, global variables end up with
a redzone that breaks linker list elements.

The __no_sanitize_address attribute prevents these redzones, but GCC
isn't happy about applying it to anything but functions. Therefore
define a __ll_elem macro for defining linker list elements that takes
care to avoid these redzones when building with clang.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/compiler_types.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 9ef8115a396f..d925b3da296d 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -274,6 +274,12 @@ struct ftrace_likely_data {
 #define __cold			__attribute__((cold))
 #define __section(S)		__attribute__((__section__(#S)))
 
+#ifdef __clang__
+#define __ll_elem(S)		__section(S) __used __no_sanitize_address
+#else
+#define __ll_elem(S)		__section(S) __used
+#endif
+
 
 #ifdef CONFIG_ENABLE_MUST_CHECK
 #define __must_check		__attribute__((warn_unused_result))
-- 
2.39.2



