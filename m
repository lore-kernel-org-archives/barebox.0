Delivery-date: Mon, 05 Sep 2022 17:39:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVEC1-007euo-SD
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 17:39:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVEC0-00031V-Aj
	for lore@pengutronix.de; Mon, 05 Sep 2022 17:39:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PXNGvg0neV6qc3M0/VLoh9MCOsWIpHAxw30zOoXS4XI=; b=0SlVzmS0lXV7Yd/HW7RxCpOd6A
	22ohGD2lU07hjXzgan4+BmRIFkvKNw/U+4QkbIRj0m9shByVZ9Igv6kRvGoK9JxUiO1b7umTHT2n1
	SkHJkN+oOeEFvRAjNnVIq0Giouu7smg8UE1Iq9cphBGJlYzFDhNbBvVJmRy+UnwRQh5f+PJbfPRCA
	jrbBnjKRusN6o9BPSM/jN3qqiNo5F/L8kr29KUwg5McQVZ3OSXwASFFzODP8WVtVTIKyYulREnOD2
	hGJQAW0xaCR4Ek2FJrvt44fdxkt2xRh0++IQcvCUGqEjZ0fzAGs5ccrET5Tt3iUnR7B47QBjehvq4
	F1E9NiYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVEA6-0064Xp-LU; Mon, 05 Sep 2022 15:37:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q7-00H4C2-D6
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=PXNGvg0neV6qc3M0/VLoh9MCOsWIpHAxw30zOoXS4XI=; b=bQut6UnHWEL2voFMsLiblU7J0z
	GhyuAGa6K2wsfd26Tc0NU102f1EUcT9Dm9DvkOxj1kN61/fFQ+sNalppLEywtl6aFeT+n5Yc4qPn/
	mRynByiHsvmiydEBfCy9SK28NDTB2eNQQw10h1UqoN2TrICn1tvmP2nRRBpUpYw0/Sd34e+6R1TUv
	qIkV51aRMo48S8Cqlwc7S117c/l2cV4tQW6cdlM5x+XMfOccuNNWNsa3+Fqu/Jqvm+qw2sOW6512v
	Hy9PBTprOfNHhY8RbCnKxYa4RVITDu9vI5jZyENyG0rQuo31QCLeK1DV9DLoxAMeyjup/Im4XBpWz
	Xl83Ur4Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q0-009UjD-19
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pq-0008FM-5m; Mon, 05 Sep 2022 11:56:06 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pn-0042G5-9d; Mon, 05 Sep 2022 11:56:05 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-002WeI-0r; Mon, 05 Sep 2022 11:56:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:39 +0200
Message-Id: <20220905095557.596891-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105616_701574_62786B84 
X-CRM114-Status: UNSURE (   8.88  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 14/32] bthread: fix null pointer dereference in error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When borting bthread creation early, we would end up calling
bthread_free on a NULL bthread, causing a NULL pointer dereference.

As it's customary for free functions to gracefully handle a NULL
argument, have bthread_free follow suit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bthread.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/bthread.c b/common/bthread.c
index 46e6987149bb..d40c0b0f9e3a 100644
--- a/common/bthread.c
+++ b/common/bthread.c
@@ -70,6 +70,8 @@ bool bthread_is_main(struct bthread *bthread)
 
 static void bthread_free(struct bthread *bthread)
 {
+	if (!bthread)
+		return;
 	free(bthread->stack);
 	free(bthread->name);
 	free(bthread);
-- 
2.30.2



