Delivery-date: Thu, 08 Sep 2022 10:18:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWCk2-00ATmc-F9
	for lore@lore.pengutronix.de; Thu, 08 Sep 2022 10:18:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWCk2-0000Bc-Rm
	for lore@pengutronix.de; Thu, 08 Sep 2022 10:18:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IgKpkE835blV286c7SnZCH6At7C0MfR1+UbKpg/NVMU=; b=R0uBFH9kY6W/5VJNAYeGf/PM4B
	myxrT3LoUQ7O4lBye1BdlcgTn2rVAHE1Cx+cX4lpzQoG25/mPDKleuvjqqMEn/neNJcmt9y2Yr3pJ
	K+0o1U3lXQ4oY2X7N+xG4VEFrcP+2wVQQU/gUuanZHJQtdXxwi34rK3ZymYlcQx/Wt6T7uvqOU8sk
	Ss66LscyeXnsK/nQBzXBFWP1t9BKPXtmI0BoScCYgMM2C2iPareRzEeweoJihfZcBtKTk4rgqHA8v
	LT7dHufDBL2LS1rj/aUHMVVlw2JQIOqybRNHULeYd5HF6TiN7svHLSQAYxzM/qvaYNmlSv6ODo4O+
	KP3C+T9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWCiG-000zIM-0B; Thu, 08 Sep 2022 08:16:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWCiB-000zGp-9P
	for barebox@lists.infradead.org; Thu, 08 Sep 2022 08:16:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oWCi9-0008Ni-AM; Thu, 08 Sep 2022 10:16:33 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oWCi9-0001vx-1V; Thu, 08 Sep 2022 10:16:33 +0200
Date: Thu, 8 Sep 2022 10:16:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jan =?iso-8859-15?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220908081633.GA24324@pengutronix.de>
References: <20220906102049.1364561-1-s.hauer@pengutronix.de>
 <20220906102049.1364561-3-s.hauer@pengutronix.de>
 <1019c1be5617830df3edd0a47b7f7fbd9bc2a311.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1019c1be5617830df3edd0a47b7f7fbd9bc2a311.camel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_011635_350981_76B1D173 
X-CRM114-Status: GOOD (  25.80  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/4] bbremote: Convert to python3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Sep 06, 2022 at 03:02:34PM +0200, Jan Lübbe wrote:
> On Tue, 2022-09-06 at 12:20 +0200, Sascha Hauer wrote:
> > This is the long overdue conversion from python2 to python3.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  scripts/bbremote              |  2 +-
> >  scripts/remote/controller.py  | 21 +++++++++++----------
> >  scripts/remote/main.py        |  8 ++++----
> >  scripts/remote/messages.py    | 15 +++++++++++++--
> >  scripts/remote/ratp.py        |  4 ++--
> >  scripts/remote/ratpfs.py      |  4 ++--
> >  scripts/remote/threadstdio.py |  4 ++--
> >  7 files changed, 35 insertions(+), 23 deletions(-)
> > 
> > diff --git a/scripts/bbremote b/scripts/bbremote
> > index bc5351dbae..1eeabd08d1 100755
> > --- a/scripts/bbremote
> > +++ b/scripts/bbremote
> > @@ -1,3 +1,3 @@
> > -#!/usr/bin/env python2
> > +#!/usr/bin/env python3
> >  
> >  import remote.main
> > diff --git a/scripts/remote/controller.py b/scripts/remote/controller.py
> > index b4493591dd..a3ae260558 100644
> > --- a/scripts/remote/controller.py
> > +++ b/scripts/remote/controller.py
> > @@ -1,4 +1,4 @@
> > -#!/usr/bin/env python2
> > +#!/usr/bin/env python3
> >  # -*- coding: utf-8 -*-
> >  
> >  from __future__ import absolute_import, division, print_function
> > @@ -8,7 +8,7 @@ import logging
> >  import sys
> >  import os
> >  from threading import Thread
> > -from Queue import Queue, Empty
> > +from queue import Queue, Empty
> >  from .ratpfs import RatpFSServer
> >  from .messages import *
> >  from .ratp import RatpError
> > @@ -105,7 +105,7 @@ class Controller(Thread):
> >          self.rxq = None
> >          self.conn.connect(timeout=5.0)
> >          self._txq = Queue()
> > -        self._stop = False
> > +        self._stopit = False
> 
> Is this rename needed?

Yes. It seems the Thread class now has a member _stop itself, see:

https://github.com/python/cpython/blob/3.10/Lib/threading.py#L1028

Without this rename we get:

Traceback (most recent call last):
  File "/ptx/work/WORK_EIHEI/sha/projects/barebox/barebox/./scripts/bbremote", line 3, in <module>
    import remote.main
  File "/ptx/work/WORK_EIHEI/sha/projects/barebox/barebox/scripts/remote/main.py", line 281, in <module>
    res = args.func(args)
  File "/ptx/work/WORK_EIHEI/sha/projects/barebox/barebox/scripts/remote/main.py", line 185, in handle_console
    ctrl.stop()
  File "/ptx/work/WORK_EIHEI/sha/projects/barebox/barebox/scripts/remote/controller.py", line 239, in stop
    self.join()
  File "/usr/lib/python3.9/threading.py", line 1033, in join
    self._wait_for_tstate_lock()
  File "/usr/lib/python3.9/threading.py", line 1051, in _wait_for_tstate_lock
    self._stop()
TypeError: 'bool' object is not callable

> >  
> >      def _unpack_payload(self, payload):
> > +        assert isinstance(payload, bytes)
> >          self.cmd = payload
> >  
> >      def _pack_payload(self):
> > @@ -94,6 +97,8 @@ class BBPacketCommandReturn(BBPacket):
> >  
> >  class BBPacketConsoleMsg(BBPacket):
> >      def __init__(self, raw=None, text=None):
> > +        if text != None:
> 
> Use 'if text is not None:'.

Ok.

> > +++ b/scripts/remote/ratpfs.py
> > @@ -1,4 +1,4 @@
> > -#!/usr/bin/env python2
> > +#!/usr/bin/env python3
> >  # -*- coding: utf-8 -*-
> >  
> >  from __future__ import absolute_import, division, print_function
> > @@ -97,7 +97,7 @@ class RatpFSServer(object):
> >                           os.O_TRUNC)
> >          path = params[4:]
> >          try:
> > -            f = os.open(self._resolve(path), flags, 0666)
> > +            f = os.open(self._resolve(path), flags, 0o666)
> 
> This looks like an unrelated fix.

It depends how you see it. This was accepted in python2, but no longer in python3,
so this is a step to python3 conversion.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


