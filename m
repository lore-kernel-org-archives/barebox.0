Delivery-date: Mon, 09 Jan 2023 16:30:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEu72-006mEz-10
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 16:30:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEu6z-0006nU-Pj
	for lore@pengutronix.de; Mon, 09 Jan 2023 16:30:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=y6Q+uJNqFTIeZVODH6qafu4Zhtri9vyIuCg8Yqtqw9A=; b=eOrmsg+1UgB/2QheWy0hYm9m3f
	3k5NtYhW1c3WWRav+pE2otpfX3C8S05s0WNh8bS9+cu/UqsGmx294cOkjl/zJJcLFs6zhAKoH4oI4
	Aijj9RgnWwyK/p0v+qW/vghlB9opqfKzipAxbbWICtLKzVev/tSeY7rlO0SqKIwjJXbljgMFyMrlj
	52PfVyW9qX211+R7F4LmzqWi/wLnKGeMaLSi6TsMzdY8M8BNQFfcYg2VVtXGhiyzrcniFTFshOvx9
	P1v6ICfgkl8U1sdOm/zuNHjzwHuZx3uW7ypfmPbX520gS8SJJCsf44NZTG5/dQGmv4tx7394yMI31
	iz5EppYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEu5h-002FQ0-Mq; Mon, 09 Jan 2023 15:29:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEu5a-002FOj-85
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 15:29:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pEu5Y-0006NF-G2; Mon, 09 Jan 2023 16:29:28 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEu5X-004sdJ-SY; Mon, 09 Jan 2023 16:29:27 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEu5X-009C73-5f; Mon, 09 Jan 2023 16:29:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 16:29:26 +0100
Message-Id: <20230109152926.2191465-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_072930_410007_118EB7FD 
X-CRM114-Status: GOOD (  11.05  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] driver: add of_match_table as alias to of_compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In order to reduce trivial differences between barebox and Linux to
simplify driver porting. Add of_match_table as alias to of_compatible
in struct driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/driver.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/driver.h b/include/driver.h
index ce3eba3152d0..322060acc2a6 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -119,7 +119,10 @@ struct driver {
 	struct bus_type *bus;
 
 	const struct platform_device_id *id_table;
-	const struct of_device_id *of_compatible;
+	union {
+		const struct of_device_id *of_compatible;
+		const struct of_device_id *of_match_table;
+	};
 };
 
 /*@}*/	/* do not delete, doxygen relevant */
-- 
2.30.2



