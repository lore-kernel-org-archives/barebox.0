Delivery-date: Mon, 22 Mar 2021 07:27:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOE2T-000365-8P
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 07:27:45 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOE2S-0004CP-D1
	for lore@pengutronix.de; Mon, 22 Mar 2021 07:27:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nEEZglQTEmBbf/C01CAWiSwpqYEuCmInYfP4buWKnyY=; b=kyYhY/4w1g4umYJnMADUeeuxMX
	76eOBgE7RYPGI7KTWaZ/Qe4ssQVqgNF0zBjxKZMIWWaMGm3RPfLqBhRBOTqK8PCoMJKP2ZmyInLC9
	UpFr2TrNzpuMOm0s9n30NC1ihQ9HqGkGuGFoSg9PUTr1wbuoHbQSoywohe7si5WKLb2gKXQIFwAdi
	9h6gt4+RdhIKXocll7rrhsxnjruby0hW60NttgeKENJVvtvLFFpjQQ3/c1y6dy69lE2+m3iDkCJE0
	UNnzM2JD0TviTDlpmQL6eXE6J/kGAZrvyidxkA9d41P1C962dW7qJXZK9WrT3bOvTfMDRUmacch/Z
	pBKvXAEQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOE1T-00B19V-BC; Mon, 22 Mar 2021 06:26:45 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOE1E-00B17q-9y
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 06:26:31 +0000
Received: from geraet.fritz.box (unknown [83.135.84.27])
 (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id D392B200002;
 Mon, 22 Mar 2021 06:26:26 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 22 Mar 2021 07:26:20 +0100
Message-Id: <20210322062620.3706270-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_062628_686164_4CD94826 
X-CRM114-Status: UNSURE (   9.84  )
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
Subject: [PATCH v2] fixup! common: introduce bthreads,
 co-operative barebox threads
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Specifying __aligned for a struct member only ensures a relative
alignment to the start of the struct. Correct the alignment
by making the stack a separate memalign allocation.

This fixes an issue where printf("%llu" printed bogus values when
run from a bthread, because gcc va_arg on RISC-V requires 16-bit
stack alignment.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/bthread.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/common/bthread.c b/common/bthread.c
index 80b486c99af7..c811797130eb 100644
--- a/common/bthread.c
+++ b/common/bthread.c
@@ -33,10 +33,9 @@ static struct bthread {
 #ifdef HAVE_FIBER_SANITIZER
 	void *fake_stack_save;
 #endif
-	u16 awake :1;
-	u16 should_stop :1;
-	u16 has_stopped :1;
-	u8 stack_space[] __aligned(16);
+	u8 awake :1;
+	u8 should_stop :1;
+	u8 has_stopped :1;
 } main_thread = {
 	.list = LIST_HEAD_INIT(main_thread.list),
 	.name = "main",
@@ -72,6 +71,7 @@ bool bthread_is_main(struct bthread *bthread)
 
 void bthread_free(struct bthread *bthread)
 {
+	free(bthread->stack);
 	free(bthread->name);
 	free(bthread);
 }
@@ -84,17 +84,18 @@ const char *bthread_name(struct bthread *bthread)
 struct bthread *bthread_create(int (*threadfn)(void *), void *data,
 			       const char *namefmt, ...)
 {
-	struct bthread *bthread = NULL;
+	struct bthread *bthread;
 	va_list ap;
 	int len;
 
-	bthread = malloc(struct_size(bthread, stack_space, CONFIG_STACK_SIZE));
+	bthread = calloc(1, sizeof(*bthread));
 	if (!bthread)
 		goto err;
 
-	memset(bthread, 0, sizeof(*bthread));
+	bthread->stack = memalign(16, CONFIG_STACK_SIZE);
+	if (!bthread->stack)
+		goto err;
 
-	bthread->stack = bthread->stack_space;
 	bthread->stack_size = CONFIG_STACK_SIZE;
 	bthread->threadfn = threadfn;
 	bthread->data = data;
@@ -112,7 +113,7 @@ struct bthread *bthread_create(int (*threadfn)(void *), void *data,
 
 	return bthread;
 err:
-	free(bthread);
+	bthread_free(bthread);
 	return NULL;
 }
 
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

