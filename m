Delivery-date: Mon, 06 Jan 2025 10:19:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGw-00HQh6-2V
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 10:19:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGv-0003yo-Vh
	for lore@pengutronix.de; Mon, 06 Jan 2025 10:19:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ri0U3P3IfCtWu/Bn0N/THJXvg5WfQ/rcVzmkzXlYEEk=; b=sNYNf86l8iQDdfL2W4t96Ua61O
	VnkNj8lRP8sStkvCWVb/S59YCsKw3KJUfsjkctiXeTJ/KX2Dat20y2S6BY1xfQxBXJ2aplMx6eaaI
	G72Tvkini58Y+ccVQ2CDr2wSZBZLM0xAyRNEPCT3mlTXLVUphp8utpIH7RAgm7CuHFklssq4WtVRv
	uPDeXQsMXK8u8fSUXyaN6whzoqhPhDK7nZWIxmOA4CyvExgJQaRSDT63qQGRyVetfmXy1PRh+9U8Q
	HTuoy9EagVEwrO02p5W/3ZezeTW3zPJALNgPFq6kTAS+uPU3gdm+OIxpviNFo9tahAJ9tTgS0Uxza
	WpyRNrZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjGR-00000000eFz-0Jnu;
	Mon, 06 Jan 2025 09:19:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjGO-00000000eE6-3rfV
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 09:19:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjGN-0003Pg-Er; Mon, 06 Jan 2025 10:19:07 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjGM-0078qx-0k;
	Mon, 06 Jan 2025 10:19:07 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjGM-00EPel-2x;
	Mon, 06 Jan 2025 10:19:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jan 2025 10:19:06 +0100
Message-Id: <20250106091906.3435166-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250106091906.3435166-1-a.fatoum@pengutronix.de>
References: <20250106091906.3435166-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_011908_956372_B908C0BF 
X-CRM114-Status: GOOD (  11.18  )
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
Subject: [PATCH 2/2] vsprintf: document %JP format specifier as being barebox-specific
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

%JP was added before the documentation was adapted to differentiate
between format specifiers inherited from Linux and thus specific to
barebox. Move it to correctly indicate that this is a barebox extension.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/vsprintf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index edc3f4aa4fe0..cb42caebca16 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -510,12 +510,12 @@ char *device_node_string(char *buf, const char *end, const struct device_node *n
  *              C colon
  *              D dash
  *              N no separator
- * - 'JP' For a JSON path
  * - 'M' For a 6-byte MAC address, it prints the address in the
  *       usual colon-separated hex notation
  *
  * Additionally, we support following barebox-specific format specifiers:
  *
+ * - 'JP' For a JSON path
  * - 'D' For EFI device paths
  */
 static char *pointer(const char *fmt, char *buf, const char *end, const void *ptr,
-- 
2.39.5



