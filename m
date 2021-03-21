Delivery-date: Sun, 21 Mar 2021 16:05:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzdz-0001z4-HK
	for lore@lore.pengutronix.de; Sun, 21 Mar 2021 16:05:31 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzdy-0008TN-IJ
	for lore@pengutronix.de; Sun, 21 Mar 2021 16:05:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RUQkAQTlNin0Njnj3HEQ8CRJLlEQn9GDBpLUEwfU2I0=; b=W2fLPoDUO9ZsEy7KkmJDMWUzTM
	G1IXqipBTMLW0/rppd9nDuZn9b5AvK3Pb+C2k+yXLjr9ZY4c/HaQVerOPx7Mgd/STi798jkjVUck+
	wcjkLfKnO7vfRD0nkGzZzF5ks0XEnfQDFnDlX3Jm2p0q/wLGd+wry0imC8SUrqJ+AwIlzOtkGzbxi
	CXEA2pWM4lFck+qoNNkyOiUvC/NxyvCJIc5SWPk5Ydk801YokDRtMabVScDQCE/BYO3WMNm9wbha1
	XW6+UlstUwgQ67o5b0xqKKB72nh8lZ9rKYi0hf2g8Bqv3Jgnqdv108tJMKW+elK/TTxX7GALtKSlx
	pTh1z7zw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNzbv-00A3In-IE; Sun, 21 Mar 2021 15:03:23 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzbc-00A2yk-HF
 for barebox@lists.infradead.org; Sun, 21 Mar 2021 15:03:11 +0000
X-Originating-IP: 83.135.82.223
Received: from geraet.fritz.box (unknown [83.135.82.223])
 (Authenticated sender: ahmad@a3f.at)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id C64882000B;
 Sun, 21 Mar 2021 15:00:56 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sun, 21 Mar 2021 16:00:50 +0100
Message-Id: <20210321150050.3566868-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_150304_710377_C77BD0B0 
X-CRM114-Status: UNSURE (   8.73  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! common: introduce bthreads,
 co-operative barebox threads
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Specifying __aligned for a struct member only ensures a relative
alignment to the start of the struct. To get an absolute alignment,
we must ensure the struct itself is aligned suitably as well. Do so.

This fixes an issue where printf("%llu" printed bogus values when
run from a bthread, because gcc va_arg on RISC-V requires 16-bit
stack alignment.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/bthread.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/bthread.c b/common/bthread.c
index 80b486c99af7..ece02e091da9 100644
--- a/common/bthread.c
+++ b/common/bthread.c
@@ -88,7 +88,7 @@ struct bthread *bthread_create(int (*threadfn)(void *), void *data,
 	va_list ap;
 	int len;
 
-	bthread = malloc(struct_size(bthread, stack_space, CONFIG_STACK_SIZE));
+	bthread = memalign(16, struct_size(bthread, stack_space, CONFIG_STACK_SIZE));
 	if (!bthread)
 		goto err;
 
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

