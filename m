Delivery-date: Thu, 08 Sep 2022 11:32:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWDt9-00AX7J-Oc
	for lore@lore.pengutronix.de; Thu, 08 Sep 2022 11:32:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWDt8-0001oQ-Ur
	for lore@pengutronix.de; Thu, 08 Sep 2022 11:32:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S1oE15ZxSzXsXuu07UczRvrFIXk5ZqSwdn5h87dkufw=; b=IP45dW6ziMugparnPPMjrlHJbf
	SSNdBs1Uuxa8kSgqkquP91YzEEzi7UQTSqc+ufBpdWk/BFqKNALB5raCs3ohD78thTrMl05fSy+P7
	TM8rWtD6cZ0ak2Ok21LBUl9xyslcM3xf3y4jLy7yFSVKFjbwqSow1Vlmq2T2Aq3u5yh0d6K0jHpgg
	P+gKyV2FKSGSMwQ+HNiSfU1s/a4P0wMnp197MpUUdx8ueUPTBKaYKL5K21Pzi6kXLu+qKLY5+F3pY
	cLh8MUxzrY0bf7ZIeey25qDFivoV9DaXZ9Pl0XZUs902VuXllGYqsyRCkgV7iWiDTkA1Tb+PebxyD
	dXzdQhWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWDrm-001gbF-BG; Thu, 08 Sep 2022 09:30:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWDrW-001gTa-0k
	for barebox@lists.infradead.org; Thu, 08 Sep 2022 09:30:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oWDrM-0001IY-ND; Thu, 08 Sep 2022 11:30:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oWDrK-004bOb-04; Thu, 08 Sep 2022 11:30:07 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oWDrK-00CjeZ-Gh; Thu, 08 Sep 2022 11:30:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  8 Sep 2022 11:30:05 +0200
Message-Id: <20220908093005.3035259-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220908093005.3035259-1-s.hauer@pengutronix.de>
References: <20220908093005.3035259-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_023018_082739_AFE70EEF 
X-CRM114-Status: UNSURE (   8.27  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/5] bbremote: Print usage when no command is given
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of dumping a backtrace, print usage information when no
subcommand is given.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v1:
    - new patch

 scripts/remote/main.py | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/scripts/remote/main.py b/scripts/remote/main.py
index 2f3ce370ae..5aa176fdc4 100644
--- a/scripts/remote/main.py
+++ b/scripts/remote/main.py
@@ -206,6 +206,7 @@ parser.add_argument('--port', type=str, default=os.environ.get('BBREMOTE_PORT',
 parser.add_argument('--baudrate', type=int, default=os.environ.get('BBREMOTE_BAUDRATE', 115200))
 parser.add_argument('--export', type=str, default=os.environ.get('BBREMOTE_EXPORT', None))
 parser.add_argument('-w', '--wait', action='count', default=0)
+parser.set_defaults(func=None)
 subparsers = parser.add_subparsers(help='sub-command help')
 
 parser_run = subparsers.add_parser('run', help="run a barebox command")
@@ -277,6 +278,11 @@ parser_console.set_defaults(func=handle_console)
 args = parser.parse_args()
 logging.basicConfig(level=VERBOSITY[args.verbose],
                     format='%(levelname)-8s %(module)-8s %(funcName)-16s %(message)s')
+
+if args.func is None:
+    parser.print_help()
+    exit(1)
+
 try:
     res = args.func(args)
     exit(res)
-- 
2.30.2



