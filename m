Delivery-date: Fri, 09 Aug 2024 16:25:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQYP-007rYX-0U
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:25:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQYO-0000Ji-FQ
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:25:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XAj3aNfBtB7tSBdXcqL2LlsLHdP7iPYkCBbBFXKr3y8=; b=SRbpA1eKQzow3zaPo1KmMOXsFc
	Cju07BBNIfCrn5OG4SJehFOObWCdkqzJZ49ce3VWrniKFbBPopFLOXjGApQIAeufBGsG+VQZaltdX
	ywyLccZTPjQQI4fPA7nRVN3QpUqoQPGt9J7O0HfoT6IXsscYB5OFWs2MIKGqjX7EEwZJLHBmTIxm8
	mNtZfIIx6TtZejICo5Nzh5va0ZSaT/kxvcqrKUvfYkUET8JhxDwo8x78wSa12FFjQs94spaeu8FxO
	kbmQHKv59wQczcss5wK6R9rJZ+L88/Xdfkfh2bKlfoiryvXzKPhdFYYP8kHd3ihi3PFE+5gUHmLqk
	fLnZbqVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQY1-0000000BWni-0Fiu;
	Fri, 09 Aug 2024 14:24:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXw-0000000BWkM-1n7U
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:24:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXu-0008ME-NE; Fri, 09 Aug 2024 16:24:46 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXt-005gf7-Uq; Fri, 09 Aug 2024 16:24:45 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXt-001KDU-2m;
	Fri, 09 Aug 2024 16:24:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:24:42 +0200
Message-Id: <20240809142444.316021-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_072448_493951_B6FABBA7 
X-CRM114-Status: GOOD (  15.31  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] Documentation: devel: background-execution: update section on I2C slices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When the documentation was written, there were no I2C slices yet.
The example is still useful to explain why slices need to be used, so
we'll leave it in, but update the documentation to reflect that slices
are indeed used now in I2C code.

Fixes: 51ae3151381b ("i2c: Add slices for I2C adapters")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/background-execution.rst | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/Documentation/devel/background-execution.rst b/Documentation/devel/background-execution.rst
index d379593efb23..cf8675b9aa0e 100644
--- a/Documentation/devel/background-execution.rst
+++ b/Documentation/devel/background-execution.rst
@@ -131,12 +131,14 @@ executed nothing else happens. This means that when fastboot flashes an image
 in a workqueue then barebox won't react to any key presses on the command line.
 The usage of the interfaces described in this document is not yet very
 widespread in barebox. The interfaces are used in the places where we need
-them, but there are other places which do not use them but should. For example
-using a LED driven by a I2C GPIO exander used as hearbeat LED won't work
-properly currently. Consider the I2C driver accesses an unrelated I2C device,
+them, but there are other places which do not use them but should.
+
+For example using a LED driven by a I2C GPIO expander used as hearbeat LED
+used to not work properly before addition of slices.
+Consider the I2C driver accesses an unrelated I2C device,
 like an EEPROM. After having initiated the transfer the driver polls for the
 transfer being completed using a ``is_timeout()`` loop. The call to
 ``is_timeout()`` then calls into the registered pollers from which one accesses
 the same I2C bus whose driver is just polling for completion of another
-transfer. With this the I2C driver is in an undefined state and will likely not
-work anymore.
+transfer. Without slices, this left the I2C driver in an undefined state,
+where it would likely not work anymore.
-- 
2.39.2



