Delivery-date: Fri, 13 Mar 2026 14:35:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fa-000DZe-1I
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:35:14 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fH-0001Bi-3Q
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:35:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wD08XjXgyz5+evdUqEvt6MQYpsrWAldTv/xhA/8ulZY=; b=3vjhRnCxlwwWwJCbtVZKk/M3BD
	OtLZcB9TjzojVG+5lDPVJC1xWYNeI8vhi9ryyp1iX9ubDs12yMUrq+MdgLLERVzpKmY8QTdwhKOct
	6JGgs+4sBZ8vFWiceEQlJaxxoFCQMvAbLvy0lpE7T8TFNJr93jsb0eZKd4NeStVt2WZ5QxPW1pqo4
	jJkz1t5RHejZXJE9KkIFtSm1FPnH8DShjM3B38OzqoNVD5+NaZeiWjuZGD+MwDoCg0X0vTLas0yjs
	jAauwkRPBehR3tmEFmmFd8CK5unAxK67wK8ENT7v8eYQq3o2XJuarH/kpjK68CV96cbT1D2jXSeNj
	z649/8PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12de-00000000GQY-0Wop;
	Fri, 13 Mar 2026 13:33:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dI-00000000Fow-363c
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=wD08XjXgyz5+evdUqEvt6MQYpsrWAldTv/xhA/8ulZY=; b=e0E7RXBcw/2gFM3XiUt7GW4RHV
	vCNFS+vl0KuZUHYEzBbUFlGmeCs9cUy41TFLU8OLwNXdRTqbWFiQwTf7Ew1W2dluhvkOoKRhKMaR/
	ymnrLpBor3KTurv5hW2OSqg48Sh2Egkzd5Q8gy5xS3mpeGN6yHqiOJxLFtyz36kJ2zSzjRM8zC/Ob
	vu0x6nfMXW+XXVaueAt0+pQ3Zoenn78tvMPr+v8Wx18Bnwmy27zNAPmkPjn+9OoNPiu8IpgVRSVu5
	WFM/HG3UCK6D4geSXColpjDq+/Qi9TazjTpXtIoJdG8LK8JqYOGSTv52E8UyTMH4yakc/Umh8pKRL
	MEu/uyiA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d4-00000003OSW-10tI
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d1-0006xE-ED; Fri, 13 Mar 2026 14:32:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d1-0005VE-0k;
	Fri, 13 Mar 2026 14:32:35 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-0yzw;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Sonnet 4.5" <noreply@anthropic.com>,
	Marco Felsch <m.felsch@pengutronix.de>
Date: Fri, 13 Mar 2026 14:25:06 +0100
Message-ID: <20260313132631.2257573-23-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133238_499397_A293B898 
X-CRM114-Status: GOOD (  11.50  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 22/58] FIT: fix double free issue with >1 reference count
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fit_open() was recently changed to be reference counted. When the FIT is
already open, a handle will be returned with the canonical filename
being the only allocation incurred.

fit_close() however unconditionally frees the handle without regards to
the reference count.

Fix this and while at it, fix the memory leak for the canonical filename
as well.

(cherry picked from commit ba345a71e85e90d70c01a3a6ec06bf6258634d2c)

Reported-by: Claude Sonnet 4.5 <noreply@anthropic.com>
Fixes: f3aadb274abe ("FIT: add support to cache opened fit images")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Link: https://lore.barebox.org/20260126104433.765071-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 6b44a79e9d1c..027b268928d3 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -1016,6 +1016,7 @@ struct fit_handle *fit_open(const char *_filename, bool verbose,
 
 	handle = fit_get_handle(filename);
 	if (handle) {
+		free(filename);
 		refcount_inc(&handle->users);
 		return handle;
 	}
@@ -1049,10 +1050,10 @@ struct fit_handle *fit_open(const char *_filename, bool verbose,
 	return handle;
 }
 
-static void __fit_close(struct fit_handle *handle)
+static bool __fit_close(struct fit_handle *handle)
 {
 	if (!refcount_dec_and_test(&handle->users))
-		return;
+		return false;
 
 	if (handle->root)
 		of_delete_node(handle->root);
@@ -1062,12 +1063,13 @@ static void __fit_close(struct fit_handle *handle)
 
 	free(handle->filename);
 	free(handle->fit_alloc);
+	return true;
 }
 
 void fit_close(struct fit_handle *handle)
 {
-	__fit_close(handle);
-	free(handle);
+	if (__fit_close(handle))
+		free(handle);
 }
 
 static int do_bootm_fit(struct image_data *data)
-- 
2.47.3



