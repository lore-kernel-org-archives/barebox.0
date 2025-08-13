Delivery-date: Wed, 13 Aug 2025 16:51:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umCom-000CgC-0e
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 16:51:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umCok-0006sS-8o
	for lore@pengutronix.de; Wed, 13 Aug 2025 16:51:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5Yh6eRLgIMh89MmbYP/O+c3VAYOa8ypwYcK8rXZUpVE=; b=yKOj0d4mQOOEigXmIc6SXM23cb
	r9r1gxKNweizTQYEOUAACjPhZN2/Djsdml4C7mNnNs+CRZ3cnsL3tthnmZaRje4YLDX2W/02LVTf3
	5dQH7GAzluIrB67wZI7bfK7jGnAH1wm6qGG/9ihl5qRlROf8MJXkjCs/tDJ3WfGRFpMvOq2gfIRUe
	NNY5ASN0yflsRjOvnoXokYis7/vHXkxlqF5VHVXpJEMHmF3Czm08hdOpHt/BmBZ3/Bj5cKWzEpcbX
	ZVyceISuE97V6j5Z0Ji2w2ySwU5tWzShufMXa5idghvdAXS43UBxu82tiAp93iowBdGQmclydsxr4
	9Nngrx9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCo5-0000000Dy0V-14wC;
	Wed, 13 Aug 2025 14:50:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCYL-0000000DvO1-3eFu
	for barebox@bombadil.infradead.org;
	Wed, 13 Aug 2025 14:34:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=5Yh6eRLgIMh89MmbYP/O+c3VAYOa8ypwYcK8rXZUpVE=; b=DWijTpHcDM37olerpGd+udIhct
	IIdmnYuDra1nFlqPTyxC19xIT9BufkShzM5v5XIdbMG2NcIfsZpfady0pdaGsrqJB2+HEvcIbRK+b
	URhf2WymwB8fLBfkW9xZHcW9J+/CqsTRZphuZh5RJ8RXPUUAPLaLzh/123JpEbcGtmkIRZqPUAvyj
	SesfRh9fTiyEaKuFUfB8FfPk1Yi1YXe11w/r34NIJE3W5QSoxo9gzvFn668o5qEsOGcGyQEn4rOy4
	fXeDC8uXWK1sv5KWT+by2RkvA+GWVy2syKId+SmkmpqLJjPi0ztfRdvTPwiO/ats9CQH+HmOG8BVz
	9J+/YUZQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCYH-0000000G6hu-2k78
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 14:34:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umCYF-0003xl-Hs; Wed, 13 Aug 2025 16:34:03 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 13 Aug 2025 16:33:45 +0200
Message-Id: <20250813143345.3758653-14-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250813143345.3758653-1-a.fatoum@barebox.org>
References: <20250813143345.3758653-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_153405_853289_127450EB 
X-CRM114-Status: UNSURE (   9.85  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 13/13] hush: structio: silence missing command error message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - new patch
---
 common/hush.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/hush.c b/common/hush.c
index 552e7327de92..21348c4b7510 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -113,6 +113,7 @@
 #include <getopt.h>
 #include <libfile.h>
 #include <magicvar.h>
+#include <structio.h>
 #include <linux/list.h>
 #include <binfmt.h>
 #include <init.h>
@@ -853,7 +854,7 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 	} else {
 		ret = execute_binfmt(globbuf.gl_pathc, globbuf.gl_pathv);
 		if (ret < 0) {
-			printf("%s: %pe\n", globbuf.gl_pathv[0], ERR_PTR(ret));
+			stnoprintf("%s: %pe\n", globbuf.gl_pathv[0], ERR_PTR(ret));
 			ret = 127;
 		}
 	}
-- 
2.39.5



