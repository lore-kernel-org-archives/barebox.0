Delivery-date: Tue, 06 Sep 2022 15:04:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVYFn-008chv-Co
	for lore@lore.pengutronix.de; Tue, 06 Sep 2022 15:04:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVYFn-00088f-57
	for lore@pengutronix.de; Tue, 06 Sep 2022 15:04:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Cc:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pp2/ELA1Jx3LPGfETemaA5gPGKitzp7+cyGhojbWU30=; b=BFqyEEmfb+tyPOJl+0NVFjJ8Xg
	6szdJeuEMCvI0A8GMjHzP6I2FgCG2BVTVV5r0ZF/BJ26dMWjWyMNJ30LLiMz6eIdfBI6iiLIxA6CQ
	V1ZC/Fd5futRWJ221bSIzIzTFdH+Uz+xsu33rnmq1QeFqEJY9yjZsuHAWWcPX+Iphxm8X9xsyvbxU
	m4HwcuT5ShsgxT111Tuhj/wXYG29vsUytRr0uze7tgXkSWj4wq9Mrkwm+fALOIRG8djXDpqPYGTFZ
	qT07lZBcpWIP4veuFagJ810U90goDx2al/fjhUcfGhN4Nx7vC5Db4XuYjY6rDG5lZB+TTUdmkHBkK
	m1BQNLkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVYE0-00DZVl-U7; Tue, 06 Sep 2022 13:02:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVYDv-00DZSH-84
	for barebox@lists.infradead.org; Tue, 06 Sep 2022 13:02:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1oVYDp-00080O-Ih; Tue, 06 Sep 2022 15:02:33 +0200
Received: from localhost ([127.0.0.1])
	by ptx.hi.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1oVYDp-0008Ny-5i; Tue, 06 Sep 2022 15:02:33 +0200
Message-ID: <1019c1be5617830df3edd0a47b7f7fbd9bc2a311.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List
	 <barebox@lists.infradead.org>
Date: Tue, 06 Sep 2022 15:02:34 +0200
In-Reply-To: <20220906102049.1364561-3-s.hauer@pengutronix.de>
References: <20220906102049.1364561-1-s.hauer@pengutronix.de>
	 <20220906102049.1364561-3-s.hauer@pengutronix.de>
Organization: Pengutronix
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_060239_622910_DCA58955 
X-CRM114-Status: GOOD (  25.16  )
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
Reply-To: jlu@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/4] bbremote: Convert to python3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, 2022-09-06 at 12:20 +0200, Sascha Hauer wrote:
> This is the long overdue conversion from python2 to python3.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  scripts/bbremote              |  2 +-
>  scripts/remote/controller.py  | 21 +++++++++++----------
>  scripts/remote/main.py        |  8 ++++----
>  scripts/remote/messages.py    | 15 +++++++++++++--
>  scripts/remote/ratp.py        |  4 ++--
>  scripts/remote/ratpfs.py      |  4 ++--
>  scripts/remote/threadstdio.py |  4 ++--
>  7 files changed, 35 insertions(+), 23 deletions(-)
> 
> diff --git a/scripts/bbremote b/scripts/bbremote
> index bc5351dbae..1eeabd08d1 100755
> --- a/scripts/bbremote
> +++ b/scripts/bbremote
> @@ -1,3 +1,3 @@
> -#!/usr/bin/env python2
> +#!/usr/bin/env python3
>  
>  import remote.main
> diff --git a/scripts/remote/controller.py b/scripts/remote/controller.py
> index b4493591dd..a3ae260558 100644
> --- a/scripts/remote/controller.py
> +++ b/scripts/remote/controller.py
> @@ -1,4 +1,4 @@
> -#!/usr/bin/env python2
> +#!/usr/bin/env python3
>  # -*- coding: utf-8 -*-
>  
>  from __future__ import absolute_import, division, print_function
> @@ -8,7 +8,7 @@ import logging
>  import sys
>  import os
>  from threading import Thread
> -from Queue import Queue, Empty
> +from queue import Queue, Empty
>  from .ratpfs import RatpFSServer
>  from .messages import *
>  from .ratp import RatpError
> @@ -105,7 +105,7 @@ class Controller(Thread):
>          self.rxq = None
>          self.conn.connect(timeout=5.0)
>          self._txq = Queue()
> -        self._stop = False
> +        self._stopit = False

Is this rename needed?

>          self.fsserver = RatpFSServer()
>  
>      def _send(self, bbpkt):
> @@ -147,24 +147,24 @@ class Controller(Thread):
>              return 0
>  
>      def command(self, cmd):
> -        self._send(BBPacketCommand(cmd=cmd))
> +        self._send(BBPacketCommand(cmd=cmd.encode()))
>          r = self._expect(BBPacketCommandReturn, timeout=None)
>          logging.info("Command: %r", r)
>          return r.exit_code
>  
>      def getenv(self, varname):
> -        self._send(BBPacketGetenv(varname=varname))
> +        self._send(BBPacketGetenv(varname=varname.encode()))
>          r = self._expect(BBPacketGetenvReturn)
>          return r.text
>  
>      def md(self, path, addr, size):
> -        self._send(BBPacketMd(path=path, addr=addr, size=size))
> +        self._send(BBPacketMd(path=path.encode(), addr=addr, size=size))
>          r = self._expect(BBPacketMdReturn)
>          logging.info("Md return: %r", r)
>          return (r.exit_code,r.data)
>  
>      def mw(self, path, addr, data):
> -        self._send(BBPacketMw(path=path, addr=addr, data=data))
> +        self._send(BBPacketMw(path=path.encode(), addr=addr, data=data))
>          r = self._expect(BBPacketMwReturn)
>          logging.info("Mw return: %r", r)
>          return (r.exit_code,r.written)
> @@ -208,7 +208,7 @@ class Controller(Thread):
>      def run(self):
>          assert self.rxq is not None
>          try:
> -            while not self._stop:
> +            while not self._stopit:
>                  # receive
>                  pkt = self.conn.recv()
>                  if pkt:
> @@ -235,15 +235,16 @@ class Controller(Thread):
>          Thread.start(self)
>  
>      def stop(self):
> -        self._stop = True
> +        self._stopit = True
>          self.join()
> -        self._stop = False
> +        self._stopit = False
>          self.rxq = None
>  
>      def send_async(self, pkt):
>          self._txq.put(pkt)
>  
>      def send_async_console(self, text):
> +        assert isinstance(text, bytes)
>          self._txq.put(BBPacketConsoleMsg(text=text))
>  
>      def send_async_ping(self):
> diff --git a/scripts/remote/main.py b/scripts/remote/main.py
> index cef5d92ee2..b99dba180a 100644
> --- a/scripts/remote/main.py
> +++ b/scripts/remote/main.py
> @@ -1,4 +1,4 @@
> -#!/usr/bin/env python2
> +#!/usr/bin/env python3
>  
>  from __future__ import absolute_import, division, print_function
>  
> @@ -7,7 +7,7 @@ import os
>  import argparse
>  import binascii
>  import logging
> -from Queue import Queue
> +from queue import Queue
>  from .ratp import RatpError
>  
>  try:
> @@ -162,8 +162,8 @@ def handle_console(args):
>      ctrl = get_controller(args)
>      ctrl.export(args.export)
>      ctrl.start(queue)
> -    ctrl.send_async_console('\r')
> -    cons = ConsoleInput(queue, exit='\x14')  # CTRL-T
> +    ctrl.send_async_console(b'\r')
> +    cons = ConsoleInput(queue, exit=b'\x14')  # CTRL-T
>      cons.start()
>      try:
>          while True:
> diff --git a/scripts/remote/messages.py b/scripts/remote/messages.py
> index abd331c8b6..ae36189d4c 100644
> --- a/scripts/remote/messages.py
> +++ b/scripts/remote/messages.py
> @@ -1,4 +1,4 @@
> -#!/usr/bin/env python2
> +#!/usr/bin/env python3
>  # -*- coding: utf-8 -*-
>  
>  from __future__ import absolute_import, division, print_function
> @@ -41,12 +41,13 @@ class BBPacket(object):
>          if raw is not None:
>              self.unpack(raw)
>          else:
> -            self.payload = payload
> +            self.payload = payload.encode()
>  
>      def __repr__(self):
>          return "BBPacket(%i, %i)" % (self.p_type, self.p_flags)
>  
>      def _unpack_payload(self, data):
> +        assert isinstance(data, bytes)
>          self.payload = data
>  
>      def _pack_payload(self):
> @@ -63,6 +64,7 @@ class BBPacket(object):
>  
>  class BBPacketCommand(BBPacket):
>      def __init__(self, raw=None, cmd=None):
> +        assert isinstance(cmd, bytes)
>          self.cmd = cmd
>          super(BBPacketCommand, self).__init__(BBType.command, raw=raw)
>  
> @@ -70,6 +72,7 @@ class BBPacketCommand(BBPacket):
>          return "BBPacketCommand(cmd=%r)" % self.cmd
>  
>      def _unpack_payload(self, payload):
> +        assert isinstance(payload, bytes)
>          self.cmd = payload
>  
>      def _pack_payload(self):
> @@ -94,6 +97,8 @@ class BBPacketCommandReturn(BBPacket):
>  
>  class BBPacketConsoleMsg(BBPacket):
>      def __init__(self, raw=None, text=None):
> +        if text != None:

Use 'if text is not None:'.

> +            assert isinstance(text, bytes)
>          self.text = text
>          super(BBPacketConsoleMsg, self).__init__(BBType.consolemsg, raw=raw)
>  
> @@ -101,6 +106,7 @@ class BBPacketConsoleMsg(BBPacket):
>          return "BBPacketConsoleMsg(text=%r)" % self.text
>  
>      def _unpack_payload(self, payload):
> +        assert isinstance(payload, bytes)
>          self.text = payload
>  
>      def _pack_payload(self):
> @@ -125,6 +131,7 @@ class BBPacketPong(BBPacket):
>  
>  class BBPacketGetenv(BBPacket):
>      def __init__(self, raw=None, varname=None):
> +        assert isinstance(varname, bytes)
>          self.varname = varname
>          super(BBPacketGetenv, self).__init__(BBType.getenv, raw=raw)
>  
> @@ -132,6 +139,7 @@ class BBPacketGetenv(BBPacket):
>          return "BBPacketGetenv(varname=%r)" % self.varname
>  
>      def _unpack_payload(self, payload):
> +        assert isinstance(payload, bytes)
>          self.varname = payload
>  
>      def _pack_payload(self):
> @@ -148,6 +156,7 @@ class BBPacketGetenvReturn(BBPacket):
>          return "BBPacketGetenvReturn(varvalue=%s)" % self.text
>  
>      def _unpack_payload(self, payload):
> +        assert isinstance(payload, bytes)
>          self.text = payload
>  
>      def _pack_payload(self):
> @@ -172,6 +181,7 @@ class BBPacketFSReturn(BBPacket):
>  
>  class BBPacketMd(BBPacket):
>      def __init__(self, raw=None, path=None, addr=None, size=None):
> +        assert isinstance(path, bytes)
>          self.path = path
>          self.addr = addr
>          self.size = size
> @@ -214,6 +224,7 @@ class BBPacketMdReturn(BBPacket):
>  
>  class BBPacketMw(BBPacket):
>      def __init__(self, raw=None, path=None, addr=None, data=None):
> +        assert isinstance(path, bytes)
>          self.path = path
>          self.addr = addr
>          self.data = data
> diff --git a/scripts/remote/ratp.py b/scripts/remote/ratp.py
> index 44f3e2f40a..25ca442d15 100644
> --- a/scripts/remote/ratp.py
> +++ b/scripts/remote/ratp.py
> @@ -1,4 +1,4 @@
> -#!/usr/bin/env python2
> +#!/usr/bin/env python3
>  # -*- coding: utf-8 -*-
>  
>  from __future__ import absolute_import, division, print_function
> @@ -593,7 +593,7 @@ class RatpConnection(object):
>          # reassemble
>          if r.c_eor:
>              logging.info("Reassembling %i frames", len(self._rx_buf))
> -            self._rx_queue.append(''.join(self._rx_buf))
> +            self._rx_queue.append(b''.join(self._rx_buf))
>              self._rx_buf = []
>  
>          s = RatpPacket(flags='A')
> diff --git a/scripts/remote/ratpfs.py b/scripts/remote/ratpfs.py
> index 91ca044540..957628b648 100644
> --- a/scripts/remote/ratpfs.py
> +++ b/scripts/remote/ratpfs.py
> @@ -1,4 +1,4 @@
> -#!/usr/bin/env python2
> +#!/usr/bin/env python3
>  # -*- coding: utf-8 -*-
>  
>  from __future__ import absolute_import, division, print_function
> @@ -97,7 +97,7 @@ class RatpFSServer(object):
>                           os.O_TRUNC)
>          path = params[4:]
>          try:
> -            f = os.open(self._resolve(path), flags, 0666)
> +            f = os.open(self._resolve(path), flags, 0o666)

This looks like an unrelated fix.

>          except OSError as e:
>              return struct.pack('!II', 0, e.errno)
>          h = self._alloc_handle()
> diff --git a/scripts/remote/threadstdio.py b/scripts/remote/threadstdio.py
> index db249892ac..d8ad71413c 100644
> --- a/scripts/remote/threadstdio.py
> +++ b/scripts/remote/threadstdio.py
> @@ -1,11 +1,11 @@
> -#!/usr/bin/python2
> +#!/usr/bin/env python3
>  
>  import os
>  import sys
>  import termios
>  import atexit
>  from threading import Thread
> -from Queue import Queue, Empty
> +from queue import Queue, Empty
>  
>  class ConsoleInput(Thread):
>      def __init__(self, queue, exit='\x14'):

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



