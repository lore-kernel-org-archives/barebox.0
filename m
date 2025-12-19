Delivery-date: Fri, 19 Dec 2025 11:38:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXs7-00DAbR-2z
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:38:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXrv-0005uk-Dp
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:38:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QRk+9EMDgCXJh2QHOUZ/4NtSy8DmXPNpURH+A5cXZ3I=; b=KK5ZijVX3GlHX1vn6aFaqI0Ogt
	n8COEuSZc6uc0ZugmiZr4rwy5iPp6aLbWG0krMVfn1x1Rzp8P5PV3zT5bQJ+74MsD4DdMl8++ooBQ
	mxESYigamOU2c30nw3NppoVrFz2GIsZLW4WFHVTDw7IMUSoxT/cFN5gDvGoj0IW7K44MtjCmdOZrF
	nAdpsfPynACHF6a4/Pkx9HjNzqW/Sl64lUdgQFFMG7cFyZ8ltxBU9nRWMbzNlIsuH5j4P5TlosAbi
	DOYiFFYQktUn6y+USLToD2RKX4c6PRwbLBpH7Yoz6QKBXMBPojUVLqUSkZ1JtPZXdRTQAmHiJfot3
	nKaY0Yjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr4-0000000A6E8-3wwB;
	Fri, 19 Dec 2025 10:37:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqs-0000000A5us-1fIv
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:36:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-0004bo-TV; Fri, 19 Dec 2025 11:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-006RUo-2I;
	Fri, 19 Dec 2025 11:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVi-0000000320L-2FG5;
	Fri, 19 Dec 2025 11:14:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:21:20 +0100
Message-ID: <20251219101453.2806980-45-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_023650_434713_11BB921D 
X-CRM114-Status: GOOD (  10.40  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 44/49] param: make setting a parameter to the same string value a no-op
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

setenv("global.bootm.root_param", getenv("global.bootm.root_param"))
triggers a use-after-free, because the value is free'd before being
duplicated and allocated again.

Let's just early exit in this case as there's nothing further to do.

This was noticed by KASAN when bootm_data_restore_defaults restored
global.bootm.root_param.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20251211171706.2369329-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit c8cfce813f2f7e5df84bf2ba4364212c04102451)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/parameter.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/parameter.c b/lib/parameter.c
index 274e6fcb8376..770c90ec48b4 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -131,6 +131,8 @@ int bobject_set_param(bobject_t _bobj, const char *name, const char *val)
 int bobject_param_set_generic(bobject_t _bobj, struct param_d *p,
 			  const char *val)
 {
+	if (val == p->value)
+		return 0;
 	free(p->value);
 	if (!val) {
 		p->value = NULL;
-- 
2.47.3



