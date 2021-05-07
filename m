Delivery-date: Fri, 07 May 2021 12:57:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leyAm-0004IF-2J
	for lore@lore.pengutronix.de; Fri, 07 May 2021 12:57:32 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leyAl-0004wO-AY
	for lore@pengutronix.de; Fri, 07 May 2021 12:57:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IdM5td3G+WJMvjInUlP8jfUbTGgrrHLdHhSpUt2KRaI=; b=ivKg6fPldCrsxMqaAHDBylxMg
	p8hmjqw8Mns9N7f1JIsgZbbuE9+0H7m695Xu+6/rcU5JwoPgsR2tvGmFcpfVw2P0dzC/bClXJ+T4Z
	cNktp52l39JidIIFK7yLiWZS9BHXBtZgIl9hwqtQj/zHJyFDzltv7UaxJwLJwifcJbQYvxinnFRVg
	CP8fDLICE/uIrgTc7srqwTSwpYvFiZ+mZcn8sdfIMpdRzvj3OoAlcmO3rKnkP5zXXiEcQdT6HGSC9
	T9R6bsjiB4HVOqSwgzgUK5te7yJcl91Tin9hqivr0gDL3VHn1ZRG4burwhut/i8T/T6nvP9Vr5/pe
	upiwIFrLA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ley9l-006t7R-5p; Fri, 07 May 2021 10:56:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ley9g-006t6U-EI
 for barebox@desiato.infradead.org; Fri, 07 May 2021 10:56:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=MAozJ9ZoTfumv7Vx/SoKBZUqbdwPyOwsSBXIDp46JQM=; b=jkteLo2dESQj5DUZt2knw+IIrU
 Pz9Vjdu2/XN1UvaDKdRuc9rY9Lcl4KSEi0/qm05NL3B3emhjzhNjm5ELnAHG8UTZ1s6hJQh9H9gCL
 DQJNGk/oAEvxHP6hvLaNa4gf0KtdlZ9CiHsz38Qkvaey+6IlZeLST6pdN4JQYXDSfjC6k6fzqzJJV
 w7hBEQLO610ZG5Lpkp76bcldE/OgQV7GDX7jL870HMy3lFvzsbvX/cLupOBSCqY+7tXpWrfVWbUsL
 j2uNT/EBlXI2gUx6I7Qv/QP33XgQqjsqn0d7wET4WByH/bwd/c5dX0ULnHQI6gNrWmyjmhJugUknp
 ML/KrGlA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ley9e-006nSu-36
 for barebox@lists.infradead.org; Fri, 07 May 2021 10:56:23 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ley9U-0004ZZ-Mp; Fri, 07 May 2021 12:56:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ley9U-00056A-6k; Fri, 07 May 2021 12:56:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  7 May 2021 12:56:11 +0200
Message-Id: <20210507105611.17017-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210507105611.17017-1-s.hauer@pengutronix.de>
References: <20210507105611.17017-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_035622_153836_3617F52A 
X-CRM114-Status: GOOD (  11.69  )
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
Cc: Neeraj Pal <neerajpal09@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] fs: check getname() return value in open()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

getname() can return an error when for example the input path is an
empty string. Check the getname() return value in open() before
further using it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index 2eaf7eaa37..f4baba81e7 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2368,8 +2368,14 @@ int open(const char *pathname, int flags, ...)
 	struct dentry *dentry = NULL;
 	struct nameidata nd;
 	const char *s;
+	struct filename *filename;
+
+	filename = getname(pathname);
+	if (IS_ERR(filename))
+		return PTR_ERR(filename);
+
+	set_nameidata(&nd, AT_FDCWD, filename);
 
-	set_nameidata(&nd, AT_FDCWD, getname(pathname));
 	s = path_init(&nd, LOOKUP_FOLLOW);
 
 	while (1) {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

