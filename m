Delivery-date: Sat, 03 Apr 2021 11:50:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lScvC-0001GK-Fs
	for lore@lore.pengutronix.de; Sat, 03 Apr 2021 11:50:26 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lScvB-0007NZ-S9
	for lore@pengutronix.de; Sat, 03 Apr 2021 11:50:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Le/FS6++pD2egoFkKcqP0XnLujmy1a3gfEjA5DCx0fk=; b=JmH2IUcqrsuRekxmOnzRehP5B
	YzFn3E/rzaYPqQg/qGkk1r8e368YdQK10PJrUyYs7q/aHICcBpyFwf8+ZxwtOrwSF06r3kRLB4cG3
	z0Ka1+w3MB3vgPrcF5Gg0Byo5xu7UZ5c4AIA8Q+lZ1gvCbP7GNVnXhp9SscaToN6e4FVNaNw6Q94s
	aZ9LS1VztxAae+e4UsxRv7Ek4LdhpdpaYpXK3DmoXQx1WgYqsT7E4iw2+Y53XrybY5cOrXyaofxNk
	Mq8axUpokYrQxkkBQtwnY8KOJW289wWyQ7/fiLnD5PcXW+l8rSIt/Pv/QPOoK/0bMKGwCWhN1Hv0d
	joomlznWA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lScu2-00EWK2-QH; Sat, 03 Apr 2021 09:49:15 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSctw-00EWJV-M5
 for barebox@lists.infradead.org; Sat, 03 Apr 2021 09:49:10 +0000
X-Originating-IP: 82.207.194.145
Received: from geraet.fritz.box (muedsl-82-207-194-145.citykom.de
 [82.207.194.145]) (Authenticated sender: ahmad@a3f.at)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 676CA20005;
 Sat,  3 Apr 2021 09:49:06 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat,  3 Apr 2021 11:49:02 +0200
Message-Id: <20210403094902.3675876-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210403070237.3642189-1-ahmad@a3f.at>
References: <20210403070237.3642189-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210403_104908_831644_D4DEECF0 
X-CRM114-Status: UNSURE (   8.59  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! PBL: fdt: implement fdt_device_get_match_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Forgot to squash

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 pbl/fdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/pbl/fdt.c b/pbl/fdt.c
index 03260cb61971..8ec128f35987 100644
--- a/pbl/fdt.c
+++ b/pbl/fdt.c
@@ -94,7 +94,7 @@ const void *fdt_device_get_match_data(const void *fdt, const char *nodepath,
 			return NULL;
 
 		for (id = ids; id->compatible; id++) {
-			if (strlen(id->compatible) == length &&
+			if (strlen(id->compatible) + 1 == length &&
 			    !memcmp(list, id->compatible, length))
 				return id->data;
 		}
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

