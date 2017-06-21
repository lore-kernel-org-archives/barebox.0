Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x236.google.com ([2a00:1450:400c:c0c::236])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dNl4v-0004Hg-RR
 for barebox@lists.infradead.org; Wed, 21 Jun 2017 19:14:16 +0000
Received: by mail-wr0-x236.google.com with SMTP id l5so4534672wre.2
 for <barebox@lists.infradead.org>; Wed, 21 Jun 2017 12:13:48 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 21 Jun 2017 21:13:07 +0200
Message-Id: <20170621191323.18191-1-aleksander@aleksander.es>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 00/16] RATP logic fixes and improvements
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Aleksander Morgado <aleksander@aleksander.es>

Hey Sascha,

This v2 series of patches includes just changes in the commit messages, trying to explain which of the patches apply to barebox and/or the barebox<->bbremote interactions. I did test all these patches also with RATP FS, and I didn't see any regression.

I did see issues in RATP FS happening with and without my patches, though. E.g. "cat"-ing a long file (>1024 bytes) that is being exported via RATFS results in each byte read being sent through the ratp output console messages one by one (the actual read operation over RATFS goes in chunks of 255, but the cat stdout messages via RATP go byte by byte...). After that, the additional read operations above offset 1024 end up timing out. I believe I'm going to have to work with RATFS in the near future, so I'll likely spend some time looking at those issues soon anyway.

Aleksander Morgado (16):
  ratp: add missing transition to SYN-RECEIVED in behavior B
  ratp: avoid unnecessary variable initializations
  ratp: send missing RST in behavior C2
  ratp: add missing RST flag in behavior G
  ratp: completely ignore RST flagged packets in behavior G
  ratp: fix data presence check
  ratp: fix single byte sending flagged with SO
  ratp: remove bogus data checks in behavior C2
  ratp: remove FIXME comment: FIN always requires ACK
  ratp: fix sending ACKs without data
  ratp: consolidate ratp_sn_expected() and ratp_an_expected()
  ratp: prefer using ratp_send_ack() in behaviour I1
  ratp: send initial data in behaviour B if any pending
  ratp: don't ignore data that may arrive in behaviour H1
  ratp: consolidate setting the next AN or SN flags
  ratp: user close may happen in SYN-RECEIVED state

 lib/ratp.c             | 116 +++++++++++++++++++++++++++----------------------
 scripts/remote/ratp.py |  38 +++++++---------
 2 files changed, 78 insertions(+), 76 deletions(-)

--
2.13.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
