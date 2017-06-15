Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x230.google.com ([2a00:1450:400c:c0c::230])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dLSjt-0002YD-Pl
 for barebox@lists.infradead.org; Thu, 15 Jun 2017 11:15:04 +0000
Received: by mail-wr0-x230.google.com with SMTP id 77so17181640wrb.1
 for <barebox@lists.infradead.org>; Thu, 15 Jun 2017 04:14:40 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu, 15 Jun 2017 13:14:04 +0200
Message-Id: <20170615111420.5318-1-aleksander@aleksander.es>
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
Subject: [PATCH 00/16] RATP logic fixes and improvements
To: s.hauer@pengutronix.de, barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

Hey Sascha,

I went through the RFC916 and ended up preparing a set of fixes and improvements for the RATP logic in barebox.
Let me know what you think.

Cheers!

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
