Delivery-date: Mon, 01 Mar 2021 12:02:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgK5-0004UJ-J9
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 12:02:45 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgK4-0000Gd-IC
	for lore@pengutronix.de; Mon, 01 Mar 2021 12:02:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6I8ExB1knMfGSlO+HpcaPtq5477sfgpt0P1Bw74ael4=; b=AXFizK79LFXNFuySliLpXerlM
	nfLwjsnAXiFAIQLpP2Mve4QicKE5xDBbS9zg9B5LH2aSZ+CRTfFrNQW5XfDwg9lLigSaptvYd5jW2
	8m1P1jiih95bxOkeD46udeULbpdMi36XSFKa+Ubx0BS3zWrxFOUhxZ8j3gSnCG0Hsuxb8yHzeDVHP
	Klic559YCO93gKIf08Rul7DOEcE4hYFm/ERX3WCYXxTtmFlG8f4lkvd2B1yiJa76CAm+vmIozRFpq
	8XQOUWry6CZfbM3f1k5DLNJPsCVw+EnzRv1kUhyQf0S/9VEHn/tdlDkNfuJkFRra5Rlp2m+fY1+sr
	5gcWp3cHQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGgIk-0005Kb-W0; Mon, 01 Mar 2021 11:01:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGgIe-0005Hy-Ju
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 11:01:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lGgIb-00089C-7f; Mon, 01 Mar 2021 12:01:13 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lGgIa-0001az-B3; Mon, 01 Mar 2021 12:01:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  1 Mar 2021 12:00:56 +0100
Message-Id: <20210301110106.3764-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210301110106.3764-1-a.fatoum@pengutronix.de>
References: <20210301110106.3764-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_060116_739350_6BD1DD97 
X-CRM114-Status: GOOD (  12.55  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Stafford Horne <shorne@gmail.com>,
 sha@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 01/11] console: unconditionally run poller_call in ctrlc()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

ctrlc is allowed only after init and reboot mode scripts have run, so
these scripts run uninterruptible. A side effect of this is that all
calls to ctrlc() will immediately return with false without running the
pollers. While init scripts shouldn't run too long, it's still
surprising behavior. Thus call poller_call() first thing in ctrlc().

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/console.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/console.c b/common/console.c
index 306149c99ea1..974d3de9e483 100644
--- a/common/console.c
+++ b/common/console.c
@@ -579,14 +579,14 @@ int ctrlc(void)
 {
 	int ret = 0;
 
+	poller_call();
+
 	if (!ctrlc_allowed)
 		return 0;
 
 	if (ctrlc_abort)
 		return 1;
 
-	poller_call();
-
 #ifdef ARCH_HAS_CTRLC
 	ret = arch_ctrlc();
 #else
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

