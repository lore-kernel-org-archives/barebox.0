Delivery-date: Wed, 30 Oct 2024 12:47:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t67Ad-002gAk-2j
	for lore@lore.pengutronix.de;
	Wed, 30 Oct 2024 12:47:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t67Ae-0003wn-1D
	for lore@pengutronix.de; Wed, 30 Oct 2024 12:47:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9E7A43YAH/QFPx9E5lUWve9N2WjQMwd/wG3JXVQs7wY=; b=SHS9VF4m18T4v6pqvne3Tn9dFn
	RY3W5J2wvskUXpbvpVa5MWijf2lBb3bowYTq9XJwlhr9A9Px39pliqb8nFsfZK2OCnnghFQupK9Gu
	GN8nN3QXhiDmhq6NQKRdyeq2Yw4qjwUmzbxtx/D64U9DT7ZJ2UUkmR/XjRxJcJ03OT3/EFxoMcVog
	VuEMYhEklNI5ecvz5N0sDVKOnfl1Kzz3H+jAqsHV8epDuYODyxX+WpGQloBPuoT1hb+0H4sX6PuzN
	ig7HE8JZBmcfbEC/EG+x7hnwJrdG/x4vwEsXlbCF/wqBwizrQGeifAy5caClDfYtLURbBtw3cqasa
	kFw+Dsbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t67A9-00000000CXH-0ENr;
	Wed, 30 Oct 2024 11:46:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t66uL-000000008ov-3og8
	for barebox@lists.infradead.org;
	Wed, 30 Oct 2024 11:30:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t66uK-0001gY-HD; Wed, 30 Oct 2024 12:30:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t66uK-001BhC-0o;
	Wed, 30 Oct 2024 12:30:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t66uK-00333E-0d;
	Wed, 30 Oct 2024 12:30:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 30 Oct 2024 12:30:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241030-handoff-data-v1-4-4403e0c62c2a@pengutronix.de>
References: <20241030-handoff-data-v1-0-4403e0c62c2a@pengutronix.de>
In-Reply-To: <20241030-handoff-data-v1-0-4403e0c62c2a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730287836; l=921;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Ji5f0O+CTGUTQFgdJheNoYuH32t8wSNvGqZHcrPR5xM=;
 b=QGRv16j1bTH8wlHSOWo5CVxH8R3abhjNPW1Po9TFIbCqghVDEImWcQWfgJ8+CrphtuDllzLge
 ApUlg5S89dfAwjzgJYNZSCYbtkvJ+6Se40uxMmH5gkrQZ9V01jl1qFl
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_043037_992475_9D671B87 
X-CRM114-Status: GOOD (  10.46  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] handoff-data: add protection against multiple
 invocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

handoff_data_add_flags() passes statically allocated structs as handoff
data, thus we cannot allow it to be called multiple times as that would
reuse the same data. Add a BUG_ON() to catch this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/pbl/handoff-data.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/pbl/handoff-data.h b/include/pbl/handoff-data.h
index eac3b9bf3e..bc1d403380 100644
--- a/include/pbl/handoff-data.h
+++ b/include/pbl/handoff-data.h
@@ -28,6 +28,10 @@ struct handoff_data_entry {
 #define handoff_data_add_flags(_cookie, _data, _size, _flags)		\
 	do {								\
 		static struct handoff_data_entry hde __section(.data);	\
+									\
+		/* using static data, do not invoke multiple times */	\
+		BUG_ON(hde.cookie); 					\
+									\
 		hde.cookie = _cookie;					\
 		hde.data = _data;					\
 		hde.size = _size;					\

-- 
2.39.5



