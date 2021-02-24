Delivery-date: Wed, 24 Feb 2021 11:17:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lErEY-00054S-B7
	for lore@lore.pengutronix.de; Wed, 24 Feb 2021 11:17:30 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lErEX-0000FF-G1
	for lore@pengutronix.de; Wed, 24 Feb 2021 11:17:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gP7ChmLuuGFApJxJN/909HyT/cjx8zR7H1DMN5DuQCA=; b=zagBbyr+T99FhgyYZOXkhtzK45
	HHDVXfMREB3xtI9zTikiMnEv4M9WvFBe1Zkxwumhpuc+W4SWNvkyV2jQxOgU/YdYKS+RHuLgOxw1m
	SLfk8r9tFGli1ceLCOhO/2zNGzGSzP5KqQocAAXdBVrABmlYHBWdKBlcPD1gZwtSaa5oHtyQr39xC
	VNNUxU9i9mXf2xpErJDFlh85gSJ2IaqbPU8YnUZ9jhm5CFoVoX+cCxEVu7pu5h5f7ZLpXlZLtD0Oi
	pcXFBqWXdYAPaPyTxi5ItO7AMjlf9k5QM2z6G1WK0g8dFMNld5to2j5Kjpri794G24w0Z0xO7bUyK
	NgE91TWg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lErCz-0007CS-9X; Wed, 24 Feb 2021 10:15:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lErCw-0007Bi-AI
 for barebox@lists.infradead.org; Wed, 24 Feb 2021 10:15:51 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lErCt-0008R7-HU
 for barebox@lists.infradead.org; Wed, 24 Feb 2021 11:15:47 +0100
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lErCt-0004ot-88
 for barebox@lists.infradead.org; Wed, 24 Feb 2021 11:15:47 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 24 Feb 2021 11:15:45 +0100
Message-Id: <20210224101545.15009-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210224_051550_399020_7498B6A5 
X-CRM114-Status: GOOD (  11.25  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] bbremote: fix the exit usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Unlike the sys.exit() function the builtin exit() function don't take an
argument. Fix it by using the exit function from the sys module which is
already imported.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/remote/main.py | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/scripts/remote/main.py b/scripts/remote/main.py
index cef5d92ee2..37be5a35f0 100644
--- a/scripts/remote/main.py
+++ b/scripts/remote/main.py
@@ -14,7 +14,7 @@ try:
     import serial
 except:
     print("error: No python-serial package found", file=sys.stderr)
-    exit(2)
+    sys.exit(2)
 
 
 def versiontuple(v):
@@ -279,15 +279,15 @@ logging.basicConfig(level=VERBOSITY[args.verbose],
                     format='%(levelname)-8s %(module)-8s %(funcName)-16s %(message)s')
 try:
     res = args.func(args)
-    exit(res)
+    sys.exit(res)
 except RatpError as detail:
     print("Ratp error:", detail, file=sys.stderr);
-    exit(127)
+    sys.exit(127)
 except KeyboardInterrupt:
     print("\nInterrupted", file=sys.stderr);
-    exit(1)
+    sys.exit(1)
 #try:
 #    res = args.func(args)
 #except Exception as e:
 #    print("error: failed to establish connection: %s" % e, file=sys.stderr)
-#    exit(2)
+#    sys.exit(2)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

