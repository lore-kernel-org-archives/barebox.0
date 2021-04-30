Delivery-date: Fri, 30 Apr 2021 15:42:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTPK-00055f-Tt
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 15:42:14 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTPK-0000aw-17
	for lore@pengutronix.de; Fri, 30 Apr 2021 15:42:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4m3eITNYbxnrOUb3rBLCrx/dytUvKgDqMbK61HfMPqE=; b=RqusY+426q0l1mIHLB5EM2sTG
	FwYTyV3vLcuqOgUQFnig7beNoxn86W6JZk+8R8Khlop3dhlPr0o1W5F9AQkKUoLLaJSY+931wj1jd
	JcgZ3yJCyvwhnlW40k7BRDnlaGgFR8YLq7hP1hHfmyxT6ze0UpghHUpLGx79/CMNq7/7pzBCaIArz
	kjyQZyJ/Et8ugHv+h+EHQuihX/kQfk9XXuU46jpNjuisHITu+MXhXr6KWSCpgYsQZUfEX7ntb+0UC
	JGpNF4T7it5jfb5QnXUVrXV0TcqNIkiCc/32Z0lpr1XMYn4eHAyNWQslt8hW8+29pjORs1p+F0zkg
	hb0dAWB8w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcTOa-007wDh-CI; Fri, 30 Apr 2021 13:41:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTOQ-007wBY-TN
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 13:41:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=W06JT4EeD9hIS4K7+c/4712EyA4I3HTionXgUJUdByM=; b=qURqFkb0JlnfFA6k7tu8RJxD5Q
 ko6NUEjWysZLwBMJdRjkLKquaNXtzgvI2Ny7j3zt1A7lcWPdXzO9cPRM1Q2VCSMHx84dG9Efo8Df0
 uGzZiO3plUWosCOSCBcE/fqNgAWVebu0LnE83THdaIyPWZt35KH8ZeHgXoZZnzXga8o1w8+mOUGH0
 ebEVICxgVmzGiwU4ag0LliVdwtM9xjTW017CoGwRoL/q/tBsb9lW8ZKDV7hcCLCJN8vlpRpQDBfNW
 px48Tg+O3bSg3Bh5Kg/TiVXFjd6svavfUfWiuAIUCMh8kf/tfn2IUV6o7sOyrN4HN000us/ABsnhF
 xEoEfMEA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTOO-001PoZ-IB
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 13:41:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTOF-0000Au-B0; Fri, 30 Apr 2021 15:41:07 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTOE-0005iQ-T6; Fri, 30 Apr 2021 15:41:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 30 Apr 2021 15:40:59 +0200
Message-Id: <20210430134101.20580-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210430134101.20580-1-a.fatoum@pengutronix.de>
References: <20210430134101.20580-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_064116_618467_60CF57AB 
X-CRM114-Status: GOOD (  12.42  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/4] slice: reschedule bthreads doing File I/O in command
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

