Delivery-date: Fri, 07 May 2021 12:57:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leyAv-0004Io-8A
	for lore@lore.pengutronix.de; Fri, 07 May 2021 12:57:41 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leyAu-0004xn-F0
	for lore@pengutronix.de; Fri, 07 May 2021 12:57:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HuIdkk/35sXROxqMMU4dii5IT83HSuq9Yzf47SOeuzc=; b=ZM8eAEokgQPWOOkFXFI0whL/c
	hvVnuZiMbDJIT/IbO82EYXw7vszOfAmFOQ6edx+rsuzazvLVrkAtMFJJdtojLQRUa1gBmWdPyAA4b
	cDaPe9nu9gah4ADrTWBhm29unAReXyAQe+IFXFg1NFnGzHmbR67xIVBcBVqV43pc+6MDy0Ho9+3e7
	Zyy0WhmWAcdNyRru3v5SWoYGe8U6FdntTryazbypuMxMgipZPemdPucQBXVOH1/pqa+Wf2X7DDM7J
	APX83F/aI7Rrb++zeoHXM5WCm45H6xhIx6slr0FhAhAwnlWN9+MYht9lUDfs+QiWEf2b3q3Uzs9om
	C4JT9+Gkg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leyA1-006tBI-1G; Fri, 07 May 2021 10:56:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ley9w-006tAD-8E
 for barebox@desiato.infradead.org; Fri, 07 May 2021 10:56:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=DNIgQW17SaihWq9/JKPsUPJBM7wdQQzx+/iFCHOk4FE=; b=2GYqJNJwUMPwxlZlrQmCtGSqiW
 uAu9NxsAp3H7R0cUuc+WCB+yQsJ4VOVddgqOKFruKI/hNgerqAQ/jbYTu9vC2xvj3KJXccPlo0trf
 bsCSkMzgvr7Q7aDPYxZQltofrrT4y06+QbMNOQ3R+6a+loUvf1/asLuQqEUzUo9H/sNPTqiDYHb9t
 vWwL76hMy+QQX6BaKyCaq77FBcNlVlONmjdIHcKLipcocR0p9VJ93vtMbZtZsbUqeMKuBu+6ddzoW
 US6JXlLRjSJb1MzLYeS+gFXBww31M7L/dQ3sK8oABwrFYPmTlVBW8jxsFYmHEdJB3zaMfMrRurdCC
 9uz/s4uQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ley9t-006nTw-U8
 for barebox@lists.infradead.org; Fri, 07 May 2021 10:56:39 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ley9U-0004ZY-Ms; Fri, 07 May 2021 12:56:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ley9U-000567-6I; Fri, 07 May 2021 12:56:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  7 May 2021 12:56:10 +0200
Message-Id: <20210507105611.17017-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210507105611.17017-1-s.hauer@pengutronix.de>
References: <20210507105611.17017-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_035637_987067_DE451955 
X-CRM114-Status: GOOD (  10.16  )
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
Subject: [PATCH 2/3] fs: check for valid name in filename_lookup()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The getname() return value is passed to filename_lookup() without
checking the return value, so this must be done in filename_lookup().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 09fccf9c28..2eaf7eaa37 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2189,6 +2189,9 @@ static int filename_lookup(int dfd, struct filename *name, unsigned flags,
 	struct nameidata nd;
 	const char *s;
 
+	if (IS_ERR(name))
+		return PTR_ERR(name);
+
 	set_nameidata(&nd, dfd, name);
 
 	s = path_init(&nd, flags);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

