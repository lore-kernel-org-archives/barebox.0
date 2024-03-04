Delivery-date: Mon, 04 Mar 2024 21:20:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhEnw-008inu-2O
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 21:20:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhEnw-0003q4-6Q
	for lore@pengutronix.de; Mon, 04 Mar 2024 21:20:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a/+Y6ZK7Yn/4Qrt6jKuJlsOu/QrVPeIvIGq8Gvcyb1Q=; b=cs7BYKsA/7oLinXam0Qspd/MKD
	Yoh1qevnpan3qm0v96xT9XVGJDTEqScgBUGKZg50KfaRM8Jh7hxxVnjRU4Pc7WoDmrjhkd7zuqxcT
	hc/X99r2ibOdPwoqtbwdIc66ShYX229nakQQEQ5LwPMy3PlvOaP3oZ7GbXVFdAMnsiDHNfyAxw66/
	+Ahdi4qnBZ71CAFFyjPTDJfcL4dP9sfmV8moCnClTPKVphJ2MA25B8Qwck1ABftmLTPVdR9B4NgLJ
	Af/4YkxhvZwQ+V8+sna+tXvjrsOcaSc6OCnk+T6KGqKejtOC9nLa8ux8mvHJtUQv2L8XNjx8irZsl
	LUrbDodg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhEnU-0000000AZT8-2MG0;
	Mon, 04 Mar 2024 20:20:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaa-0000000AIal-3h2n
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=a/+Y6ZK7Yn/4Qrt6jKuJlsOu/QrVPeIvIGq8Gvcyb1Q=; b=oQod6H2H0yl7IXbzwV/f7Q1Hda
	QXvozV9xwEsXsA8yu8oUWKPK2zQVT0ckI6rqLnSdJACT3YzLEyYhV/DI8hBwOddJTclMKllIz9ixu
	IST0dNCv3l4GMCtnpsp55lD4kB7tH4SZI2y/s2PBMjIU5+gaobet6D6b+fMB57xnTIX7rU9Ig8qXZ
	GK3+SmUTFlO8E7xzkHH8S1BDoJmHgq1OMf4SY3DYFu4kO7Y0JBsKEB0j98s4bsZJbUEktSJ0IgJIa
	bE1Gap8r/4RpEnkXqrBQMRJyafb3e+B6exsEgB6sxgAiLK4WI41dk38HH4Zk1Lg92Bt7pF6q2cb4x
	EiAtwpGQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaT-000000051vn-2MMB
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-0006Ax-C2; Mon, 04 Mar 2024 20:02:45 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-004PKY-PH; Mon, 04 Mar 2024 20:02:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-00Ed9V-2m;
	Mon, 04 Mar 2024 20:00:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:25 +0100
Message-Id: <20240304190038.3486881-41-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190257_798918_AB9EA141 
X-CRM114-Status: UNSURE (   9.55  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 040/113] fs: initialize struct nameidata::last
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The last member is normally written by link_path_walk(), before being
read by __lookup_hash, among others.

In the special case of calling open() on "/", link_path_walk() will
terminate early without setting the last member, leading __d_alloc
called by __lookup_hash to read uninitialized memory.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/fs.c b/fs/fs.c
index 0ff7f1b6f947..acd89dd1c9a4 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1631,6 +1631,7 @@ struct filename {
 
 static void set_nameidata(struct nameidata *p, struct filename *name)
 {
+	p->last = slash_name;
 	p->stack = p->internal;
 	p->name = name;
 	p->total_link_count = 0;
-- 
2.39.2



