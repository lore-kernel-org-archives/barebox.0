Delivery-date: Mon, 13 Dec 2021 22:14:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwseC-005gJm-Lq
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:14:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwseB-0004ZA-H9
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:14:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kT3hdAgTwqlCV9+UD36ivPiPtOhC8+RxkghtPKC0wn4=; b=lCRsj/kzGbQsQQ
	y5QjhkSo8/7Meucx/AYTd9T0naba2Nh7LYRkkmSY8NBTyWR3kPGFkzgn6WWQ2m8D3SO0qXBN5egyQ
	yUactkXR0y4JlD/g+gfe5V6PSJZGD6jXcJqgbtVgIzAnc/8xdoWw9sAel56TgnUtuFnnFqAI99g5s
	8Ip/U6F4yuYbFMdM08Pr5868q/wXAo/Uy+XOvywR5aSxKJMLx8uuanmxcG/HKMnQwIxnfp3l7moeF
	o5nO/yul9DwV1qOZnvr5vYL4N9BsBMNUvdO8tpVFwoCTvDaJvGhY3JIsxjMuhon3S1dHOeGiJOO+A
	by24t550JbkVJT+LSHlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwscp-00BR5X-2R; Mon, 13 Dec 2021 21:12:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZb-00BOxZ-26
 for barebox@bombadil.infradead.org; Mon, 13 Dec 2021 21:09:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=qPacjmrskYAPOF6GjzLmbR4PIgZiSKXgFxGELN/DfMA=; b=A0OG6CmH3J/zCCnW/bnROoa3GI
 sLRg5C8GxDxV8FAoftFAF9btdNNhOFFmGkHLocjso5y4ig7w6jwhEK9IuEVBmHbY4+2FCjn5medQb
 6T/5pEI5Y46Y/KdHwfdWbROVete1l+CFpo5b2s4rqZg04VvQ1fogW/7J1K0VRw+fnRnqFxy+45loT
 qNj3E77wW0gJrOTUtsltZEhhCvHxn6R7ln5mV6DNrdJZKNfuDJj1sEC3h5mcLj+203ls72ds6P9RU
 6ZLlRSOWFtcjA4egTGIRW1SYJTkxHhZSeQadrDh/QUOPIKc53p+xzmfUXOKKLtf8NmM9FwtK247fR
 Y+Lu4FUg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZW-001BcU-4i
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZL-0002TA-5B; Mon, 13 Dec 2021 22:09:11 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGpa-Dg; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:09:02 +0100
Message-Id: <20211213210905.3399551-23-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_210922_423511_0A148794 
X-CRM114-Status: GOOD (  11.58  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 22/25] edit: send escape sequence only for smartscroll
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

"\e[2;<x>r" is needed to prevent the status line from scrolling out of
the window when smartscrolling is used. Only send it when smartscrolling
is actually active.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/edit.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/commands/edit.c b/commands/edit.c
index 592cf4aa3d..12695d39e4 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -610,7 +610,9 @@ static int do_edit(int argc, char *argv[])
 				argv[1]);
 	}
 
-	printf("\x1b[2;%dr", screenheight);
+	if (smartscroll)
+		printf("\x1b[2;%dr", screenheight);
+
 	pos(0, 0);
 
 	screenheight--; /* status line */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

