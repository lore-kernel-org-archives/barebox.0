Delivery-date: Tue, 21 May 2024 12:50:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9N4G-00C7rc-2E
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 12:50:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9N4G-0005jY-4C
	for lore@pengutronix.de; Tue, 21 May 2024 12:50:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dFQffVGAlcNnSoW5CO42rxEQHUfrwlb1R/zKPFG3OLw=; b=bFTPo51TKPIZ51CN8sacdKi2Kr
	v2iaGSbD8GP/1d7HzbFrORiFXmGTwDfMGX05TMbGvkUxAtkoLup7Nv6KRb10CpwW16OXMevubl3oH
	mOi13IwdClLrgoWy8tRFx2b3OS+BOxMK8QlH/fNbJCy7Y8b8CJiaTgDV/RXnCS2lGPpC5twNHv4hw
	QaQ/ws2rhexj+bM7RXcZWliy5sUlHeMUjzwsYRkdGvXKVX6+9GEKWLqnk70BrK4Vwf3vA8cSMXfnh
	+IUkwlL0Rwvcvr+DfFh0UHWtWGkr1MtuWW2rHsLvC9eWC8wV6sIATPUM0IcpjfCbeksPdnRtOfLfx
	mETH8/eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9N3a-0000000HA8O-3zMz;
	Tue, 21 May 2024 10:49:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9N3W-0000000HA4r-2u72
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 10:49:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9N3T-0005JT-EH; Tue, 21 May 2024 12:49:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9N3T-002NUC-1l; Tue, 21 May 2024 12:49:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9N3S-008KDT-34;
	Tue, 21 May 2024 12:49:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 21 May 2024 12:49:10 +0200
Message-Id: <20240521104913.1983970-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240521104913.1983970-1-s.hauer@pengutronix.de>
References: <20240521104913.1983970-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_034918_797476_245463EE 
X-CRM114-Status: GOOD (  13.58  )
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
Subject: [PATCH 1/4] handoff-data: put handoff data into data section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The intention was to put the handoff data into the data section and not
into the bss section so that it won't be cleared by another call to
setup_c(). This was not fully done, add a __section(.data) to the
missing places.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/pbl/handoff-data.h | 18 +++++++++---------
 pbl/handoff-data.c         |  2 +-
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/include/pbl/handoff-data.h b/include/pbl/handoff-data.h
index 7f883421df..18ea9e508b 100644
--- a/include/pbl/handoff-data.h
+++ b/include/pbl/handoff-data.h
@@ -24,15 +24,15 @@ struct handoff_data_entry {
 	unsigned int flags;
 };
 
-#define handoff_data_add_flags(_cookie, _data, _size, _flags)	\
-	do {							\
-		static struct handoff_data_entry hde;		\
-		hde.cookie = _cookie;				\
-		hde.data = _data;				\
-		hde.size = _size;				\
-		hde.flags = _flags;				\
-								\
-		handoff_data_add_entry(&hde);			\
+#define handoff_data_add_flags(_cookie, _data, _size, _flags)		\
+	do {								\
+		static struct handoff_data_entry hde __section(.data);	\
+		hde.cookie = _cookie;					\
+		hde.data = _data;					\
+		hde.size = _size;					\
+		hde.flags = _flags;					\
+									\
+		handoff_data_add_entry(&hde);				\
 	} while (0);
 
 #define handoff_data_add(_cookie, _data, _size)			\
diff --git a/pbl/handoff-data.c b/pbl/handoff-data.c
index e6745797c0..85c3985995 100644
--- a/pbl/handoff-data.c
+++ b/pbl/handoff-data.c
@@ -9,7 +9,7 @@ static struct handoff_data *handoff_data = (void *)-1;
 
 static struct handoff_data *handoff_data_get(void)
 {
-	static struct handoff_data __handoff_data;
+	static struct handoff_data __handoff_data __section(.data);
 
 	/*
 	 * Sometimes the PBL copies itself to some other location and is
-- 
2.39.2



