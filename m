Delivery-date: Mon, 12 Jun 2023 15:03:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hCt-003qZV-Bc
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 15:03:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hCr-0000bh-0Y
	for lore@pengutronix.de; Mon, 12 Jun 2023 15:03:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+dN+AZ/IcrhhUaifYieC8UbFfG/5adH4IrrxLmT8eYY=; b=wnp0F6qAsVxaFKTxRNU9lK6yO4
	pdomcbYcpImaWn08YVcNNIlfmJZjE33ESGICtg9g3AXBfz10culh/L87rthsTbfs+3pb7smhbHM5f
	nBCWr3oTGuxr1HrXU7t8A1dBa2V89FFIXIr6el0QIRtdvvAxw8PqDrF7PE3Do+cgt8T6YzbbqoqmH
	o6HCcgAweSzCBoVVM2+sVfFapYeQh/8dJytUW/9PLzYdiXMLBFiBMajeeX/ncIE1Se+G7l3ncglFK
	ECn0+0ExLOTog81PblQZjkdGKeGkCdYk47LFFN3NgOulGzZjvK/GCp1THbfx/dh0R0zJRvPCvQBJN
	p93SdKVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hCC-0047I0-2f;
	Mon, 12 Jun 2023 13:02:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hC7-0047CP-13
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 13:02:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC6-0008Kw-44; Mon, 12 Jun 2023 15:02:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC5-006tVS-BW; Mon, 12 Jun 2023 15:02:49 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC3-004aJp-73; Mon, 12 Jun 2023 15:02:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 15:02:33 +0200
Message-Id: <20230612130239.1087599-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
References: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_060251_357858_1E59A5F1 
X-CRM114-Status: UNSURE (   9.29  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 12/19] lib: make_directory: return -ENOMEM on allocation failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

mkdir calls strdup on the dir that's passed in, but doesn't account for
allocation failure. Have it return -ENOMEM in that case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/make_directory.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/make_directory.c b/lib/make_directory.c
index 7db93ded8817..59ac87e6bfdf 100644
--- a/lib/make_directory.c
+++ b/lib/make_directory.c
@@ -19,6 +19,9 @@ STATIC int make_directory(const char *dir)
 	char c;
 	int ret = 0;
 
+	if (!s)
+		return -ENOMEM;
+
 	do {
 		c = 0;
 
-- 
2.39.2



