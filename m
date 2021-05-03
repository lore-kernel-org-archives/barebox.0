Delivery-date: Mon, 03 May 2021 14:46:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXyN-0003DG-IP
	for lore@lore.pengutronix.de; Mon, 03 May 2021 14:46:51 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXyM-0007UI-QY
	for lore@pengutronix.de; Mon, 03 May 2021 14:46:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4m3eITNYbxnrOUb3rBLCrx/dytUvKgDqMbK61HfMPqE=; b=A0U2YZdhqRpOznGEN13f1b4qe
	0Noe4PYUh1utTrljjX1FPgzrqY+L7tE24LiHBEnwPWlmBnpC2qjnwQggWrneYn9BnkvQ3fPwl8kgM
	fTPyXUHO+B4RLE6bTWyliB5wO5/SGwHoyK19nU/6vTVhes34rW3kVPLqtTwImdARnOSK15CBlAs5P
	RG9VTuf4rUem/OZWB5P2dUDnTycWN+18d+CvkBlVYrHgHrXPRNnYoyyfn5MVSE/+iZ2H1id69Qwte
	A/8+I/vcCIxDVv51hXAFKSe8JsmwtieKyIR7fzio+ej0+3xZpn0xpPgvfXR55kcfBnckUBdUGptWg
	ZPSRByG2Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldXxF-00DtDv-Tt; Mon, 03 May 2021 12:45:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXwu-00DtC6-7F
 for barebox@desiato.infradead.org; Mon, 03 May 2021 12:45:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=W06JT4EeD9hIS4K7+c/4712EyA4I3HTionXgUJUdByM=; b=WA6Zhzr7Q1WJ7MHiSC63omeofy
 KTSl3QChRQZkbi2Nticg/qAjonmMM9rneW+SehyiDG5W0V8QDxAvlBCgsHmtR83HXMFjTfQOMoIzO
 8oCXQ4hUSmnX3Gn2zvHszAQZ+LP6oyAiViG4G92CIO8M+lv/raOUOchrpIgvktDmDe3mM6rAFoDpw
 Z3sQ4H9YOWkWKv/qzKSUvNtW2wJrnVIWHZjDxY7Rfwfl1Tkb9kudoNrUy/3qJXzTvAq+kZJA8fZIc
 WanzKRz7B7Ya/r7dMaM3M8aTryRz8lOJcgqOErJ7Lj4HmL6HBZN4aIf4bHzdI7ZZ47sLDJGP/JqRo
 NmROgBgQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXwr-003417-Qp
 for barebox@lists.infradead.org; Mon, 03 May 2021 12:45:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldXwq-00072G-9x; Mon, 03 May 2021 14:45:16 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldXwp-0000Jy-Mi; Mon, 03 May 2021 14:45:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 May 2021 14:45:06 +0200
Message-Id: <20210503124508.856-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210503124508.856-1-a.fatoum@pengutronix.de>
References: <20210503124508.856-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_054517_892147_C13115FA 
X-CRM114-Status: GOOD (  12.44  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/4] slice: reschedule bthreads doing File I/O in command
 context
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently, without locks, it's unsafe to do file I/O outside of
the main thread, be it in pollers or secondary bthreads.

Pollers side step this issue by deferring file I/O to workqueues
that run in command context: the time when the shell is waiting
for input.

For bthreads, we can do something similar without involving
workqueues: We just suspend threads until they are scheduled in
command context.

This is not a full solution: Not everything that should
assert_command_context() does so, so you still can't do absolutely
everything in a secondary bthread. To get there, we will need
to distribute locks across the code base, but that's a patchset
for another time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/slice.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/include/slice.h b/include/slice.h
index cf684300a809..abe819163d32 100644
--- a/include/slice.h
+++ b/include/slice.h
@@ -40,8 +40,10 @@ extern int poller_active;
 #define assert_command_context() do { \
 	WARN_ONCE(IS_ENABLED(CONFIG_POLLER) && poller_active, \
 		  "%s called in poller\n", __func__); \
-	WARN_ONCE(IS_ENABLED(CONFIG_BTHREAD) && !bthread_is_main(current), \
-		  "%s called in secondary bthread\n", __func__); \
+	if (IS_ENABLED(CONFIG_BTHREAD) && !bthread_is_main(current)) { \
+		while (slice_acquired(&command_slice)) \
+			bthread_reschedule(); \
+	} \
 } while (0)
 
 #endif
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

