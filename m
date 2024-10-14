Delivery-date: Mon, 14 Oct 2024 15:30:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9F-004H3M-3B
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:30:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9D-0003Eg-VF
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:30:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tmY+b1j4QD9CRMYJV8ldS8BXGSezRAQ9bQYnA7cLHm4=; b=VkmU0by2CLjKcdzicNHGFRCe4s
	EwQP+mAdfsNczJ1phhIJblsywJDBSkEWPk0w8QqfnGGxVtXVWR5i//CvGcKVX8BptMhGeFW8teYPE
	3DHhcAUMxWffV8EUcsxU8mYdB7Shwk8YKv0l/ydbBMgR5hYux0sjAsznkkB1T/B+OuZE/2C4SX5X/
	vVimV3BC3Wf5R582OKqUrZ076NlaepmUiyJX69aMuMFNBcPgXjceTaLN61yVsGBY2TJF2OVdnjjcm
	sHd1lyWU4Gz9s8NvLn9b2pd9Bb5wTXnYh1fwOX+hXc/Qvm3dVdEel93fiQdMLyX4MqoG3iSkhPjpo
	jCS3phvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L8e-00000005HX3-15Lq;
	Mon, 14 Oct 2024 13:29:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jb5-00000004zKq-1sol
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:50:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=tmY+b1j4QD9CRMYJV8ldS8BXGSezRAQ9bQYnA7cLHm4=; b=dHtPSuzf2IPPUFv8gpVzDzYUJs
	G3C4kAMwxpD65kVKClN+pk3XvERunIgOkWEbzbblHi6CoisK3NZWNrgBDDhyj687mur3Qg2fU5hch
	qgQIenzVstC4Aw6lwIdArN4dcezhyCYlG0Al10wbTCbLQqYqSf0iKQX9WaoOC9Io2V1HORzNSCP16
	OBAPWRvUPGlQXg3eb+IDy+GL1Lz25b7RhS/2JxpYMzIFGZuPbqJzQKQ4F7FR61ghg8WvLCHfIs+GK
	HKhBO0xXS7IxmoDYtquswQQR9UPpimY4dCiBfVMGGkTdVUioZDq9Sq4Sbsu6eD6Q/IEJ6Bdo8YWS7
	cdYgiCVA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jb1-00000006Kl6-0NNB
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:50:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-0001C9-Kg; Mon, 14 Oct 2024 13:50:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-001mUb-7r; Mon, 14 Oct 2024 13:50:42 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-00BvdQ-0V;
	Mon, 14 Oct 2024 13:50:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:50:33 +0200
Message-Id: <20241014115040.2843121-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
References: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_125043_480168_EB792453 
X-CRM114-Status: UNSURE (   9.80  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/12] include: common.h: move out user interface functions into stdio.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These two functions fit nicely with the other functions in stdio.h,
which is already being included by common.h.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/common.h | 4 ----
 include/stdio.h  | 3 +++
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/include/common.h b/include/common.h
index bab03a0444f7..9a0b4768b015 100644
--- a/include/common.h
+++ b/include/common.h
@@ -28,10 +28,6 @@
  */
 void reginfo(void);
 
-char *size_human_readable(unsigned long long size);
-
-int	readline	(const char *prompt, char *buf, int len);
-
 /* common/memsize.c */
 long	get_ram_size  (volatile long *, long);
 
diff --git a/include/stdio.h b/include/stdio.h
index 33ca73a80d18..1ed7e1d3e38b 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -79,6 +79,9 @@ static inline void ctrlc_handled(void)
 
 #endif
 
+char *size_human_readable(unsigned long long size);
+int readline(const char *prompt, char *buf, int len);
+
 #if (!defined(__PBL__) && !defined(CONFIG_CONSOLE_NONE)) || \
 	(defined(__PBL__) && defined(CONFIG_PBL_CONSOLE))
 static inline int puts(const char *s)
-- 
2.39.5



