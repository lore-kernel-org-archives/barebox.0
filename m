Delivery-date: Thu, 08 Sep 2022 11:32:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWDu1-00AXA1-OW
	for lore@lore.pengutronix.de; Thu, 08 Sep 2022 11:32:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWDtv-00021b-Ey
	for lore@pengutronix.de; Thu, 08 Sep 2022 11:32:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jJ/0wYgPbQjgQhexYeCxTRMMgKRX8PHQEgcdnp8TVBs=; b=IB+5ATnXRsATnORBj0jdTJp4U/
	s0Tmrao566C5R0U3lbOf6GStRlptrSqDp5K8CYDKfRzqyVBms8HbFOztyZ5fbS9TR4j46Jwv9+csL
	tRpGsISt67Z+TkWAtwortNgTrVjd+J8vh6+TOgoJ4wI9l1nEurF7OZ8B1ACsTvZmYgQ0U9VK59YFw
	dS7pPZws9ObvNJc8p/ts3dtAiekrLVQ+boXPnKEPAGEhkvK8cJdtgBhoskYKemip/omgK6jCnNusU
	hdq63Z/ALT4fIDFPNjLcvdo14GU0oXSb0NqubnzniT4nVoEm44szJfNaiq7wcy094f7hR/By3dn64
	BXfNODzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWDri-001gYv-3S; Thu, 08 Sep 2022 09:30:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWDrQ-001gPw-7s
	for barebox@lists.infradead.org; Thu, 08 Sep 2022 09:30:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oWDrN-0001Jq-CB; Thu, 08 Sep 2022 11:30:09 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oWDrK-004bOl-Pr; Thu, 08 Sep 2022 11:30:08 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oWDrK-00CjeO-8y; Thu, 08 Sep 2022 11:30:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  8 Sep 2022 11:30:01 +0200
Message-Id: <20220908093005.3035259-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220908093005.3035259-1-s.hauer@pengutronix.de>
References: <20220908093005.3035259-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
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
Subject: [PATCH v2 1/5] remove local pyserial
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

A copy of pyserial has been put into the tree because RFC2217 support
was broken back then. This issue is long fixed, so remove the local
copy.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/serial/__init__.py                    |   79 -
 scripts/serial/rfc2217.py                     | 1327 -----------------
 scripts/serial/serialcli.py                   |  284 ----
 scripts/serial/serialposix.py                 |  730 ---------
 scripts/serial/serialutil.py                  |  572 -------
 scripts/serial/tools/__init__.py              |    1 -
 scripts/serial/tools/list_ports.py            |  103 --
 scripts/serial/tools/list_ports_linux.py      |  152 --
 scripts/serial/urlhandler/__init__.py         |    1 -
 scripts/serial/urlhandler/protocol_hwgrep.py  |   45 -
 scripts/serial/urlhandler/protocol_loop.py    |  279 ----
 scripts/serial/urlhandler/protocol_rfc2217.py |   11 -
 scripts/serial/urlhandler/protocol_socket.py  |  291 ----
 13 files changed, 3875 deletions(-)
 delete mode 100644 scripts/serial/__init__.py
 delete mode 100644 scripts/serial/rfc2217.py
 delete mode 100644 scripts/serial/serialcli.py
 delete mode 100644 scripts/serial/serialposix.py
 delete mode 100644 scripts/serial/serialutil.py
 delete mode 100644 scripts/serial/tools/__init__.py
 delete mode 100644 scripts/serial/tools/list_ports.py
 delete mode 100644 scripts/serial/tools/list_ports_linux.py
 delete mode 100644 scripts/serial/urlhandler/__init__.py
 delete mode 100644 scripts/serial/urlhandler/protocol_hwgrep.py
 delete mode 100644 scripts/serial/urlhandler/protocol_loop.py
 delete mode 100644 scripts/serial/urlhandler/protocol_rfc2217.py
 delete mode 100644 scripts/serial/urlhandler/protocol_socket.py

diff --git a/scripts/serial/__init__.py b/scripts/serial/__init__.py
deleted file mode 100644
index 33ae52ec11..0000000000
--- a/scripts/serial/__init__.py
+++ /dev/null
@@ -1,79 +0,0 @@
-#!/usr/bin/env python=20
-
-# portable serial port access with python
-# this is a wrapper module for different platform implementations
-#
-# (C) 2001-2010 Chris Liechti <cliechti@gmx.net>
-# this is distributed under a free software license, see license.txt
-
-VERSION =3D '2.7'
-
-import sys
-
-if sys.platform =3D=3D 'cli':
-    from serial.serialcli import *
-else:
-    import os
-    # chose an implementation, depending on os
-    if os.name =3D=3D 'nt': #sys.platform =3D=3D 'win32':
-        from serial.serialwin32 import *
-    elif os.name =3D=3D 'posix':
-        from serial.serialposix import *
-    elif os.name =3D=3D 'java':
-        from serial.serialjava import *
-    else:
-        raise ImportError("Sorry: no implementation for your platform ('%s=
') available" % (os.name,))
-
-
-protocol_handler_packages =3D [
-        'serial.urlhandler',
-        ]
-
-def serial_for_url(url, *args, **kwargs):
-    """\
-    Get an instance of the Serial class, depending on port/url. The port i=
s not
-    opened when the keyword parameter 'do_not_open' is true, by default it
-    is. All other parameters are directly passed to the __init__ method wh=
en
-    the port is instantiated.
-
-    The list of package names that is searched for protocol handlers is ke=
pt in
-    ``protocol_handler_packages``.
-
-    e.g. we want to support a URL ``foobar://``. A module
-    ``my_handlers.protocol_foobar`` is provided by the user. Then
-    ``protocol_handler_packages.append("my_handlers")`` would extend the s=
earch
-    path so that ``serial_for_url("foobar://"))`` would work.
-    """
-    # check remove extra parameter to not confuse the Serial class
-    do_open =3D 'do_not_open' not in kwargs or not kwargs['do_not_open']
-    if 'do_not_open' in kwargs: del kwargs['do_not_open']
-    # the default is to use the native version
-    klass =3D Serial   # 'native' implementation
-    # check port type and get class
-    try:
-        url_nocase =3D url.lower()
-    except AttributeError:
-        # it's not a string, use default
-        pass
-    else:
-        if '://' in url_nocase:
-            protocol =3D url_nocase.split('://', 1)[0]
-            for package_name in protocol_handler_packages:
-                module_name =3D '%s.protocol_%s' % (package_name, protocol=
,)
-                try:
-                    handler_module =3D __import__(module_name)
-                except ImportError:
-                    pass
-                else:
-                    klass =3D sys.modules[module_name].Serial
-                    break
-            else:
-                raise ValueError('invalid URL, protocol %r not known' % (p=
rotocol,))
-        else:
-            klass =3D Serial   # 'native' implementation
-    # instantiate and open when desired
-    instance =3D klass(None, *args, **kwargs)
-    instance.port =3D url
-    if do_open:
-        instance.open()
-    return instance
diff --git a/scripts/serial/rfc2217.py b/scripts/serial/rfc2217.py
deleted file mode 100644
index b65edd55c8..0000000000
--- a/scripts/serial/rfc2217.py
+++ /dev/null
@@ -1,1327 +0,0 @@
-#! python
-#
-# Python Serial Port Extension for Win32, Linux, BSD, Jython
-# see __init__.py
-#
-# This module implements a RFC2217 compatible client. RF2217 descibes a
-# protocol to access serial ports over TCP/IP and allows setting the baud =
rate,
-# modem control lines etc.
-#
-# (C) 2001-2013 Chris Liechti <cliechti@gmx.net>
-# this is distributed under a free software license, see license.txt
-
-# TODO:
-# - setting control line -> answer is not checked (had problems with one o=
f the
-#   severs). consider implementing a compatibility mode flag to make check
-#   conditional
-# - write timeout not implemented at all
-
-##########################################################################=
####
-# observations and issues with servers
-#=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
-# sredird V2.2.1
-# - http://www.ibiblio.org/pub/Linux/system/serial/   sredird-2.2.2.tar.gz
-# - does not acknowledge SET_CONTROL (RTS/DTR) correctly, always responding
-#   [105 1] instead of the actual value.
-# - SET_BAUDRATE answer contains 4 extra null bytes -> probably for larger
-#   numbers than 2**32?
-# - To get the signature [COM_PORT_OPTION 0] has to be sent.
-# - run a server: while true; do nc -l -p 7000 -c "sredird debug /dev/ttyU=
SB0 /var/lock/sredir"; done
-#=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
-# telnetcpcd (untested)
-# - http://ftp.wayne.edu/kermit/sredird/telnetcpcd-1.09.tar.gz
-# - To get the signature [COM_PORT_OPTION] w/o data has to be sent.
-#=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
-# ser2net
-# - does not negotiate BINARY or COM_PORT_OPTION for his side but at least
-#   acknowledges that the client activates these options
-# - The configuration may be that the server prints a banner. As this clie=
nt
-#   implementation does a flushInput on connect, this banner is hidden from
-#   the user application.
-# - NOTIFY_MODEMSTATE: the poll interval of the server seems to be one
-#   second.
-# - To get the signature [COM_PORT_OPTION 0] has to be sent.
-# - run a server: run ser2net daemon, in /etc/ser2net.conf:
-#     2000:telnet:0:/dev/ttyS0:9600 remctl banner
-##########################################################################=
####
-
-# How to identify ports? pySerial might want to support other protocols in=
 the
-# future, so lets use an URL scheme.
-# for RFC2217 compliant servers we will use this:
-#    rfc2217://<host>:<port>[/option[/option...]]
-#
-# options:
-# - "debug" print diagnostic messages
-# - "ign_set_control": do not look at the answers to SET_CONTROL
-# - "poll_modem": issue NOTIFY_MODEMSTATE requests when CTS/DTR/RI/CD is r=
ead.
-#   Without this option it expects that the server sends notifications
-#   automatically on change (which most servers do and is according to the
-#   RFC).
-# the order of the options is not relevant
-
-from serial.serialutil import *
-import time
-import struct
-import socket
-import threading
-import Queue
-import logging
-
-# port string is expected to be something like this:
-# rfc2217://host:port
-# host may be an IP or including domain, whatever.
-# port is 0...65535
-
-# map log level names to constants. used in fromURL()
-LOGGER_LEVELS =3D {
-    'debug': logging.DEBUG,
-    'info': logging.INFO,
-    'warning': logging.WARNING,
-    'error': logging.ERROR,
-    }
-
-
-# telnet protocol characters
-IAC  =3D to_bytes([255]) # Interpret As Command
-DONT =3D to_bytes([254])
-DO   =3D to_bytes([253])
-WONT =3D to_bytes([252])
-WILL =3D to_bytes([251])
-IAC_DOUBLED =3D to_bytes([IAC, IAC])
-
-SE  =3D to_bytes([240])  # Subnegotiation End
-NOP =3D to_bytes([241])  # No Operation
-DM  =3D to_bytes([242])  # Data Mark
-BRK =3D to_bytes([243])  # Break
-IP  =3D to_bytes([244])  # Interrupt process
-AO  =3D to_bytes([245])  # Abort output
-AYT =3D to_bytes([246])  # Are You There
-EC  =3D to_bytes([247])  # Erase Character
-EL  =3D to_bytes([248])  # Erase Line
-GA  =3D to_bytes([249])  # Go Ahead
-SB =3D  to_bytes([250])  # Subnegotiation Begin
-
-# selected telnet options
-BINARY =3D to_bytes([0]) # 8-bit data path
-ECHO =3D to_bytes([1])   # echo
-SGA =3D to_bytes([3])    # suppress go ahead
-
-# RFC2217
-COM_PORT_OPTION =3D to_bytes([44])
-
-# Client to Access Server
-SET_BAUDRATE =3D to_bytes([1])
-SET_DATASIZE =3D to_bytes([2])
-SET_PARITY =3D to_bytes([3])
-SET_STOPSIZE =3D to_bytes([4])
-SET_CONTROL =3D to_bytes([5])
-NOTIFY_LINESTATE =3D to_bytes([6])
-NOTIFY_MODEMSTATE =3D to_bytes([7])
-FLOWCONTROL_SUSPEND =3D to_bytes([8])
-FLOWCONTROL_RESUME =3D to_bytes([9])
-SET_LINESTATE_MASK =3D to_bytes([10])
-SET_MODEMSTATE_MASK =3D to_bytes([11])
-PURGE_DATA =3D to_bytes([12])
-
-SERVER_SET_BAUDRATE =3D to_bytes([101])
-SERVER_SET_DATASIZE =3D to_bytes([102])
-SERVER_SET_PARITY =3D to_bytes([103])
-SERVER_SET_STOPSIZE =3D to_bytes([104])
-SERVER_SET_CONTROL =3D to_bytes([105])
-SERVER_NOTIFY_LINESTATE =3D to_bytes([106])
-SERVER_NOTIFY_MODEMSTATE =3D to_bytes([107])
-SERVER_FLOWCONTROL_SUSPEND =3D to_bytes([108])
-SERVER_FLOWCONTROL_RESUME =3D to_bytes([109])
-SERVER_SET_LINESTATE_MASK =3D to_bytes([110])
-SERVER_SET_MODEMSTATE_MASK =3D to_bytes([111])
-SERVER_PURGE_DATA =3D to_bytes([112])
-
-RFC2217_ANSWER_MAP =3D {
-    SET_BAUDRATE: SERVER_SET_BAUDRATE,
-    SET_DATASIZE: SERVER_SET_DATASIZE,
-    SET_PARITY: SERVER_SET_PARITY,
-    SET_STOPSIZE: SERVER_SET_STOPSIZE,
-    SET_CONTROL: SERVER_SET_CONTROL,
-    NOTIFY_LINESTATE: SERVER_NOTIFY_LINESTATE,
-    NOTIFY_MODEMSTATE: SERVER_NOTIFY_MODEMSTATE,
-    FLOWCONTROL_SUSPEND: SERVER_FLOWCONTROL_SUSPEND,
-    FLOWCONTROL_RESUME: SERVER_FLOWCONTROL_RESUME,
-    SET_LINESTATE_MASK: SERVER_SET_LINESTATE_MASK,
-    SET_MODEMSTATE_MASK: SERVER_SET_MODEMSTATE_MASK,
-    PURGE_DATA: SERVER_PURGE_DATA,
-}
-
-SET_CONTROL_REQ_FLOW_SETTING =3D to_bytes([0])        # Request Com Port F=
low Control Setting (outbound/both)
-SET_CONTROL_USE_NO_FLOW_CONTROL =3D to_bytes([1])     # Use No Flow Contro=
l (outbound/both)
-SET_CONTROL_USE_SW_FLOW_CONTROL =3D to_bytes([2])     # Use XON/XOFF Flow =
Control (outbound/both)
-SET_CONTROL_USE_HW_FLOW_CONTROL =3D to_bytes([3])     # Use HARDWARE Flow =
Control (outbound/both)
-SET_CONTROL_REQ_BREAK_STATE =3D to_bytes([4])         # Request BREAK State
-SET_CONTROL_BREAK_ON =3D to_bytes([5])                # Set BREAK State ON
-SET_CONTROL_BREAK_OFF =3D to_bytes([6])               # Set BREAK State OFF
-SET_CONTROL_REQ_DTR =3D to_bytes([7])                 # Request DTR Signal=
 State
-SET_CONTROL_DTR_ON =3D to_bytes([8])                  # Set DTR Signal Sta=
te ON
-SET_CONTROL_DTR_OFF =3D to_bytes([9])                 # Set DTR Signal Sta=
te OFF
-SET_CONTROL_REQ_RTS =3D to_bytes([10])                # Request RTS Signal=
 State
-SET_CONTROL_RTS_ON =3D to_bytes([11])                 # Set RTS Signal Sta=
te ON
-SET_CONTROL_RTS_OFF =3D to_bytes([12])                # Set RTS Signal Sta=
te OFF
-SET_CONTROL_REQ_FLOW_SETTING_IN =3D to_bytes([13])    # Request Com Port F=
low Control Setting (inbound)
-SET_CONTROL_USE_NO_FLOW_CONTROL_IN =3D to_bytes([14]) # Use No Flow Contro=
l (inbound)
-SET_CONTROL_USE_SW_FLOW_CONTOL_IN =3D to_bytes([15])  # Use XON/XOFF Flow =
Control (inbound)
-SET_CONTROL_USE_HW_FLOW_CONTOL_IN =3D to_bytes([16])  # Use HARDWARE Flow =
Control (inbound)
-SET_CONTROL_USE_DCD_FLOW_CONTROL =3D to_bytes([17])   # Use DCD Flow Contr=
ol (outbound/both)
-SET_CONTROL_USE_DTR_FLOW_CONTROL =3D to_bytes([18])   # Use DTR Flow Contr=
ol (inbound)
-SET_CONTROL_USE_DSR_FLOW_CONTROL =3D to_bytes([19])   # Use DSR Flow Contr=
ol (outbound/both)
-
-LINESTATE_MASK_TIMEOUT =3D 128                # Time-out Error
-LINESTATE_MASK_SHIFTREG_EMPTY =3D 64          # Transfer Shift Register Em=
pty
-LINESTATE_MASK_TRANSREG_EMPTY =3D 32          # Transfer Holding Register =
Empty
-LINESTATE_MASK_BREAK_DETECT =3D 16            # Break-detect Error
-LINESTATE_MASK_FRAMING_ERROR =3D 8            # Framing Error
-LINESTATE_MASK_PARTIY_ERROR =3D 4             # Parity Error
-LINESTATE_MASK_OVERRUN_ERROR =3D 2            # Overrun Error
-LINESTATE_MASK_DATA_READY =3D 1               # Data Ready
-
-MODEMSTATE_MASK_CD =3D 128                    # Receive Line Signal Detect=
 (also known as Carrier Detect)
-MODEMSTATE_MASK_RI =3D 64                     # Ring Indicator
-MODEMSTATE_MASK_DSR =3D 32                    # Data-Set-Ready Signal State
-MODEMSTATE_MASK_CTS =3D 16                    # Clear-To-Send Signal State
-MODEMSTATE_MASK_CD_CHANGE =3D 8               # Delta Receive Line Signal =
Detect
-MODEMSTATE_MASK_RI_CHANGE =3D 4               # Trailing-edge Ring Detector
-MODEMSTATE_MASK_DSR_CHANGE =3D 2              # Delta Data-Set-Ready
-MODEMSTATE_MASK_CTS_CHANGE =3D 1              # Delta Clear-To-Send
-
-PURGE_RECEIVE_BUFFER =3D to_bytes([1])        # Purge access server receiv=
e data buffer
-PURGE_TRANSMIT_BUFFER =3D to_bytes([2])       # Purge access server transm=
it data buffer
-PURGE_BOTH_BUFFERS =3D to_bytes([3])          # Purge both the access serv=
er receive data buffer and the access server transmit data buffer
-
-
-RFC2217_PARITY_MAP =3D {
-    PARITY_NONE: 1,
-    PARITY_ODD: 2,
-    PARITY_EVEN: 3,
-    PARITY_MARK: 4,
-    PARITY_SPACE: 5,
-}
-RFC2217_REVERSE_PARITY_MAP =3D dict((v,k) for k,v in RFC2217_PARITY_MAP.it=
ems())
-
-RFC2217_STOPBIT_MAP =3D {
-    STOPBITS_ONE: 1,
-    STOPBITS_ONE_POINT_FIVE: 3,
-    STOPBITS_TWO: 2,
-}
-RFC2217_REVERSE_STOPBIT_MAP =3D dict((v,k) for k,v in RFC2217_STOPBIT_MAP.=
items())
-
-# Telnet filter states
-M_NORMAL =3D 0
-M_IAC_SEEN =3D 1
-M_NEGOTIATE =3D 2
-
-# TelnetOption and TelnetSubnegotiation states
-REQUESTED =3D 'REQUESTED'
-ACTIVE =3D 'ACTIVE'
-INACTIVE =3D 'INACTIVE'
-REALLY_INACTIVE =3D 'REALLY_INACTIVE'
-
-class TelnetOption(object):
-    """Manage a single telnet option, keeps track of DO/DONT WILL/WONT."""
-
-    def __init__(self, connection, name, option, send_yes, send_no, ack_ye=
s, ack_no, initial_state, activation_callback=3DNone):
-        """\
-        Initialize option.
-        :param connection: connection used to transmit answers
-        :param name: a readable name for debug outputs
-        :param send_yes: what to send when option is to be enabled.
-        :param send_no: what to send when option is to be disabled.
-        :param ack_yes: what to expect when remote agrees on option.
-        :param ack_no: what to expect when remote disagrees on option.
-        :param initial_state: options initialized with REQUESTED are tried=
 to
-            be enabled on startup. use INACTIVE for all others.
-        """
-        self.connection =3D connection
-        self.name =3D name
-        self.option =3D option
-        self.send_yes =3D send_yes
-        self.send_no =3D send_no
-        self.ack_yes =3D ack_yes
-        self.ack_no =3D ack_no
-        self.state =3D initial_state
-        self.active =3D False
-        self.activation_callback =3D activation_callback
-
-    def __repr__(self):
-        """String for debug outputs"""
-        return "%s:%s(%s)" % (self.name, self.active, self.state)
-
-    def process_incoming(self, command):
-        """\
-        A DO/DONT/WILL/WONT was received for this option, update state and
-        answer when needed.
-        """
-        if command =3D=3D self.ack_yes:
-            if self.state is REQUESTED:
-                self.state =3D ACTIVE
-                self.active =3D True
-                if self.activation_callback is not None:
-                    self.activation_callback()
-            elif self.state is ACTIVE:
-                pass
-            elif self.state is INACTIVE:
-                self.state =3D ACTIVE
-                self.connection.telnetSendOption(self.send_yes, self.optio=
n)
-                self.active =3D True
-                if self.activation_callback is not None:
-                    self.activation_callback()
-            elif self.state is REALLY_INACTIVE:
-                self.connection.telnetSendOption(self.send_no, self.option)
-            else:
-                raise ValueError('option in illegal state %r' % self)
-        elif command =3D=3D self.ack_no:
-            if self.state is REQUESTED:
-                self.state =3D INACTIVE
-                self.active =3D False
-            elif self.state is ACTIVE:
-                self.state =3D INACTIVE
-                self.connection.telnetSendOption(self.send_no, self.option)
-                self.active =3D False
-            elif self.state is INACTIVE:
-                pass
-            elif self.state is REALLY_INACTIVE:
-                pass
-            else:
-                raise ValueError('option in illegal state %r' % self)
-
-
-class TelnetSubnegotiation(object):
-    """\
-    A object to handle subnegotiation of options. In this case actually
-    sub-sub options for RFC 2217. It is used to track com port options.
-    """
-
-    def __init__(self, connection, name, option, ack_option=3DNone):
-        if ack_option is None: ack_option =3D option
-        self.connection =3D connection
-        self.name =3D name
-        self.option =3D option
-        self.value =3D None
-        self.ack_option =3D ack_option
-        self.state =3D INACTIVE
-
-    def __repr__(self):
-        """String for debug outputs."""
-        return "%s:%s" % (self.name, self.state)
-
-    def set(self, value):
-        """\
-        Request a change of the value. a request is sent to the server. if
-        the client needs to know if the change is performed he has to chec=
k the
-        state of this object.
-        """
-        self.value =3D value
-        self.state =3D REQUESTED
-        self.connection.rfc2217SendSubnegotiation(self.option, self.value)
-        if self.connection.logger:
-            self.connection.logger.debug("SB Requesting %s -> %r" % (self.=
name, self.value))
-
-    def isReady(self):
-        """\
-        Check if answer from server has been received. when server rejects
-        the change, raise a ValueError.
-        """
-        if self.state =3D=3D REALLY_INACTIVE:
-            raise ValueError("remote rejected value for option %r" % (self=
.name))
-        return self.state =3D=3D ACTIVE
-    # add property to have a similar interface as TelnetOption
-    active =3D property(isReady)
-
-    def wait(self, timeout=3D3):
-        """\
-        Wait until the subnegotiation has been acknowledged or timeout. It
-        can also throw a value error when the answer from the server does =
not
-        match the value sent.
-        """
-        timeout_time =3D time.time() + timeout
-        while time.time() < timeout_time:
-            if self.isReady():
-                break
-            time.sleep(0.001)    # prevent 100% CPU load
-        else:
-            raise SerialException("timeout while waiting for option %r" % =
(self.name))
-
-    def checkAnswer(self, suboption):
-        """\
-        Check an incoming subnegotiation block. The parameter already has
-        cut off the header like sub option number and com port option valu=
e.
-        """
-        if self.value =3D=3D suboption[:len(self.value)]:
-            self.state =3D ACTIVE
-        else:
-            # error propagation done in isReady
-            self.state =3D REALLY_INACTIVE
-        if self.connection.logger:
-            self.connection.logger.debug("SB Answer %s -> %r -> %s" % (sel=
f.name, suboption, self.state))
-
-
-class RFC2217Serial(SerialBase):
-    """Serial port implementation for RFC 2217 remote serial ports."""
-
-    BAUDRATES =3D (50, 75, 110, 134, 150, 200, 300, 600, 1200, 1800, 2400,=
 4800,
-                 9600, 19200, 38400, 57600, 115200)
-
-    def open(self):
-        """\
-        Open port with current settings. This may throw a SerialException
-        if the port cannot be opened.
-        """
-        self.logger =3D None
-        self._ignore_set_control_answer =3D False
-        self._poll_modem_state =3D False
-        self._network_timeout =3D 3
-        if self._port is None:
-            raise SerialException("Port must be configured before it can b=
e used.")
-        if self._isOpen:
-            raise SerialException("Port is already open.")
-        try:
-            self._socket =3D socket.socket(socket.AF_INET, socket.SOCK_STR=
EAM)
-            self._socket.connect(self.fromURL(self.portstr))
-            self._socket.setsockopt(socket.IPPROTO_TCP, socket.TCP_NODELAY=
, 1)
-        except Exception, msg:
-            self._socket =3D None
-            raise SerialException("Could not open port %s: %s" % (self.por=
tstr, msg))
-
-        self._socket.settimeout(5) # XXX good value?
-
-        # use a thread save queue as buffer. it also simplifies implementi=
ng
-        # the read timeout
-        self._read_buffer =3D Queue.Queue()
-        # to ensure that user writes does not interfere with internal
-        # telnet/rfc2217 options establish a lock
-        self._write_lock =3D threading.Lock()
-        # name the following separately so that, below, a check can be eas=
ily done
-        mandadory_options =3D [
-            TelnetOption(self, 'we-BINARY', BINARY, WILL, WONT, DO, DONT, =
INACTIVE),
-            TelnetOption(self, 'we-RFC2217', COM_PORT_OPTION, WILL, WONT, =
DO, DONT, REQUESTED),
-        ]
-        # all supported telnet options
-        self._telnet_options =3D [
-            TelnetOption(self, 'ECHO', ECHO, DO, DONT, WILL, WONT, REQUEST=
ED),
-            TelnetOption(self, 'we-SGA', SGA, WILL, WONT, DO, DONT, REQUES=
TED),
-            TelnetOption(self, 'they-SGA', SGA, DO, DONT, WILL, WONT, REQU=
ESTED),
-            TelnetOption(self, 'they-BINARY', BINARY, DO, DONT, WILL, WONT=
, INACTIVE),
-            TelnetOption(self, 'they-RFC2217', COM_PORT_OPTION, DO, DONT, =
WILL, WONT, REQUESTED),
-        ] + mandadory_options
-        # RFC 2217 specific states
-        # COM port settings
-        self._rfc2217_port_settings =3D {
-            'baudrate': TelnetSubnegotiation(self, 'baudrate', SET_BAUDRAT=
E, SERVER_SET_BAUDRATE),
-            'datasize': TelnetSubnegotiation(self, 'datasize', SET_DATASIZ=
E, SERVER_SET_DATASIZE),
-            'parity':   TelnetSubnegotiation(self, 'parity',   SET_PARITY,=
   SERVER_SET_PARITY),
-            'stopsize': TelnetSubnegotiation(self, 'stopsize', SET_STOPSIZ=
E, SERVER_SET_STOPSIZE),
-            }
-        # There are more subnegotiation objects, combine all in one dictio=
nary
-        # for easy access
-        self._rfc2217_options =3D {
-            'purge':    TelnetSubnegotiation(self, 'purge',    PURGE_DATA,=
   SERVER_PURGE_DATA),
-            'control':  TelnetSubnegotiation(self, 'control',  SET_CONTROL=
,  SERVER_SET_CONTROL),
-            }
-        self._rfc2217_options.update(self._rfc2217_port_settings)
-        # cache for line and modem states that the server sends to us
-        self._linestate =3D 0
-        self._modemstate =3D None
-        self._modemstate_expires =3D 0
-        # RFC 2217 flow control between server and client
-        self._remote_suspend_flow =3D False
-
-        self._thread =3D threading.Thread(target=3Dself._telnetReadLoop)
-        self._thread.setDaemon(True)
-        self._thread.setName('pySerial RFC 2217 reader thread for %s' % (s=
elf._port,))
-        self._thread.start()
-
-        # negotiate Telnet/RFC 2217 -> send initial requests
-        for option in self._telnet_options:
-            if option.state is REQUESTED:
-                self.telnetSendOption(option.send_yes, option.option)
-        # now wait until important options are negotiated
-        timeout_time =3D time.time() + self._network_timeout
-        while time.time() < timeout_time:
-            if sum(o.active for o in mandadory_options) =3D=3D sum(o.state=
 !=3D INACTIVE for o in mandadory_options):
-                break
-            time.sleep(0.001)    # prevent 100% CPU load
-        else:
-            raise SerialException("Remote does not seem to support RFC2217=
 or BINARY mode %r" % mandadory_options)
-        if self.logger:
-            self.logger.info("Negotiated options: %s" % self._telnet_optio=
ns)
-
-        # fine, go on, set RFC 2271 specific things
-        self._reconfigurePort()
-        # all things set up get, now a clean start
-        self._isOpen =3D True
-        if not self._rtscts:
-            self.setRTS(True)
-            self.setDTR(True)
-        self.flushInput()
-        self.flushOutput()
-
-    def _reconfigurePort(self):
-        """Set communication parameters on opened port."""
-        if self._socket is None:
-            raise SerialException("Can only operate on open ports")
-
-        # if self._timeout !=3D 0 and self._interCharTimeout is not None:
-            # XXX
-
-        if self._writeTimeout is not None:
-            raise NotImplementedError('writeTimeout is currently not suppo=
rted')
-            # XXX
-
-        # Setup the connection
-        # to get good performance, all parameter changes are sent first...
-        if not isinstance(self._baudrate, (int, long)) or not 0 < self._ba=
udrate < 2**32:
-            raise ValueError("invalid baudrate: %r" % (self._baudrate))
-        self._rfc2217_port_settings['baudrate'].set(struct.pack('!I', self=
._baudrate))
-        self._rfc2217_port_settings['datasize'].set(struct.pack('!B', self=
._bytesize))
-        self._rfc2217_port_settings['parity'].set(struct.pack('!B', RFC221=
7_PARITY_MAP[self._parity]))
-        self._rfc2217_port_settings['stopsize'].set(struct.pack('!B', RFC2=
217_STOPBIT_MAP[self._stopbits]))
-
-        # and now wait until parameters are active
-        items =3D self._rfc2217_port_settings.values()
-        if self.logger:
-            self.logger.debug("Negotiating settings: %s" % (items,))
-        timeout_time =3D time.time() + self._network_timeout
-        while time.time() < timeout_time:
-            if sum(o.active for o in items) =3D=3D len(items):
-                break
-            time.sleep(0.001)    # prevent 100% CPU load
-        else:
-            raise SerialException("Remote does not accept parameter change=
 (RFC2217): %r" % items)
-        if self.logger:
-            self.logger.info("Negotiated settings: %s" % (items,))
-
-        if self._rtscts and self._xonxoff:
-            raise ValueError('xonxoff and rtscts together are not supporte=
d')
-        elif self._rtscts:
-            self.rfc2217SetControl(SET_CONTROL_USE_HW_FLOW_CONTROL)
-        elif self._xonxoff:
-            self.rfc2217SetControl(SET_CONTROL_USE_SW_FLOW_CONTROL)
-        else:
-            self.rfc2217SetControl(SET_CONTROL_USE_NO_FLOW_CONTROL)
-
-    def close(self):
-        """Close port"""
-        if self._isOpen:
-            if self._socket:
-                try:
-                    self._socket.shutdown(socket.SHUT_RDWR)
-                    self._socket.close()
-                except:
-                    # ignore errors.
-                    pass
-                self._socket =3D None
-            if self._thread:
-                self._thread.join()
-            self._isOpen =3D False
-            # in case of quick reconnects, give the server some time
-            time.sleep(0.3)
-
-    def makeDeviceName(self, port):
-        raise SerialException("there is no sensible way to turn numbers in=
to URLs")
-
-    def fromURL(self, url):
-        """extract host and port from an URL string"""
-        if url.lower().startswith("rfc2217://"): url =3D url[10:]
-        try:
-            # is there a "path" (our options)?
-            if '/' in url:
-                # cut away options
-                url, options =3D url.split('/', 1)
-                # process options now, directly altering self
-                for option in options.split('/'):
-                    if '=3D' in option:
-                        option, value =3D option.split('=3D', 1)
-                    else:
-                        value =3D None
-                    if option =3D=3D 'logging':
-                        logging.basicConfig()   # XXX is that good to call=
 it here?
-                        self.logger =3D logging.getLogger('pySerial.rfc221=
7')
-                        self.logger.setLevel(LOGGER_LEVELS[value])
-                        self.logger.debug('enabled logging')
-                    elif option =3D=3D 'ign_set_control':
-                        self._ignore_set_control_answer =3D True
-                    elif option =3D=3D 'poll_modem':
-                        self._poll_modem_state =3D True
-                    elif option =3D=3D 'timeout':
-                        self._network_timeout =3D float(value)
-                    else:
-                        raise ValueError('unknown option: %r' % (option,))
-            # get host and port
-            host, port =3D url.split(':', 1) # may raise ValueError becaus=
e of unpacking
-            port =3D int(port)               # and this if it's not a numb=
er
-            if not 0 <=3D port < 65536: raise ValueError("port not in rang=
e 0...65535")
-        except ValueError, e:
-            raise SerialException('expected a string in the form "[rfc2217=
://]<host>:<port>[/option[/option...]]": %s' % e)
-        return (host, port)
-
-    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -=
  -
-
-    def inWaiting(self):
-        """Return the number of characters currently in the input buffer."=
""
-        if not self._isOpen: raise portNotOpenError
-        return self._read_buffer.qsize()
-
-    def read(self, size=3D1):
-        """\
-        Read size bytes from the serial port. If a timeout is set it may
-        return less characters as requested. With no timeout it will block
-        until the requested number of bytes is read.
-        """
-        if not self._isOpen: raise portNotOpenError
-        data =3D bytearray()
-        try:
-            while len(data) < size:
-                if self._thread is None:
-                    raise SerialException('connection failed (reader threa=
d died)')
-                data.append(self._read_buffer.get(True, self._timeout))
-        except Queue.Empty: # -> timeout
-            pass
-        return bytes(data)
-
-    def write(self, data):
-        """\
-        Output the given string over the serial port. Can block if the
-        connection is blocked. May raise SerialException if the connection=
 is
-        closed.
-        """
-        if not self._isOpen: raise portNotOpenError
-        self._write_lock.acquire()
-        try:
-            try:
-                self._socket.sendall(to_bytes(data).replace(IAC, IAC_DOUBL=
ED))
-            except socket.error, e:
-                raise SerialException("connection failed (socket error): %=
s" % e) # XXX what exception if socket connection fails
-        finally:
-            self._write_lock.release()
-        return len(data)
-
-    def flushInput(self):
-        """Clear input buffer, discarding all that is in the buffer."""
-        if not self._isOpen: raise portNotOpenError
-        self.rfc2217SendPurge(PURGE_RECEIVE_BUFFER)
-        # empty read buffer
-        while self._read_buffer.qsize():
-            self._read_buffer.get(False)
-
-    def flushOutput(self):
-        """\
-        Clear output buffer, aborting the current output and
-        discarding all that is in the buffer.
-        """
-        if not self._isOpen: raise portNotOpenError
-        self.rfc2217SendPurge(PURGE_TRANSMIT_BUFFER)
-
-    def sendBreak(self, duration=3D0.25):
-        """\
-        Send break condition. Timed, returns to idle state after given
-        duration.
-        """
-        if not self._isOpen: raise portNotOpenError
-        self.setBreak(True)
-        time.sleep(duration)
-        self.setBreak(False)
-
-    def setBreak(self, level=3DTrue):
-        """\
-        Set break: Controls TXD. When active, to transmitting is
-        possible.
-        """
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('set BREAK to %s' % ('inactive', 'active')[bo=
ol(level)])
-        if level:
-            self.rfc2217SetControl(SET_CONTROL_BREAK_ON)
-        else:
-            self.rfc2217SetControl(SET_CONTROL_BREAK_OFF)
-
-    def setRTS(self, level=3DTrue):
-        """Set terminal status line: Request To Send."""
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('set RTS to %s' % ('inactive', 'active')[bool=
(level)])
-        if level:
-            self.rfc2217SetControl(SET_CONTROL_RTS_ON)
-        else:
-            self.rfc2217SetControl(SET_CONTROL_RTS_OFF)
-
-    def setDTR(self, level=3DTrue):
-        """Set terminal status line: Data Terminal Ready."""
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('set DTR to %s' % ('inactive', 'active')[bool=
(level)])
-        if level:
-            self.rfc2217SetControl(SET_CONTROL_DTR_ON)
-        else:
-            self.rfc2217SetControl(SET_CONTROL_DTR_OFF)
-
-    def getCTS(self):
-        """Read terminal status line: Clear To Send."""
-        if not self._isOpen: raise portNotOpenError
-        return bool(self.getModemState() & MODEMSTATE_MASK_CTS)
-
-    def getDSR(self):
-        """Read terminal status line: Data Set Ready."""
-        if not self._isOpen: raise portNotOpenError
-        return bool(self.getModemState() & MODEMSTATE_MASK_DSR)
-
-    def getRI(self):
-        """Read terminal status line: Ring Indicator."""
-        if not self._isOpen: raise portNotOpenError
-        return bool(self.getModemState() & MODEMSTATE_MASK_RI)
-
-    def getCD(self):
-        """Read terminal status line: Carrier Detect."""
-        if not self._isOpen: raise portNotOpenError
-        return bool(self.getModemState() & MODEMSTATE_MASK_CD)
-
-    # - - - platform specific - - -
-    # None so far
-
-    # - - - RFC2217 specific - - -
-
-    def _telnetReadLoop(self):
-        """Read loop for the socket."""
-        mode =3D M_NORMAL
-        suboption =3D None
-        try:
-            while self._socket is not None:
-                try:
-                    data =3D self._socket.recv(1024)
-                except socket.timeout:
-                    # just need to get out of recv form time to time to ch=
eck if
-                    # still alive
-                    continue
-                except socket.error, e:
-                    # connection fails -> terminate loop
-                    if self.logger:
-                        self.logger.debug("socket error in reader thread: =
%s" % (e,))
-                    break
-                if not data: break # lost connection
-                for byte in data:
-                    if mode =3D=3D M_NORMAL:
-                        # interpret as command or as data
-                        if byte =3D=3D IAC:
-                            mode =3D M_IAC_SEEN
-                        else:
-                            # store data in read buffer or sub option buff=
er
-                            # depending on state
-                            if suboption is not None:
-                                suboption.append(byte)
-                            else:
-                                self._read_buffer.put(byte)
-                    elif mode =3D=3D M_IAC_SEEN:
-                        if byte =3D=3D IAC:
-                            # interpret as command doubled -> insert chara=
cter
-                            # itself
-                            if suboption is not None:
-                                suboption.append(IAC)
-                            else:
-                                self._read_buffer.put(IAC)
-                            mode =3D M_NORMAL
-                        elif byte =3D=3D SB:
-                            # sub option start
-                            suboption =3D bytearray()
-                            mode =3D M_NORMAL
-                        elif byte =3D=3D SE:
-                            # sub option end -> process it now
-                            self._telnetProcessSubnegotiation(bytes(subopt=
ion))
-                            suboption =3D None
-                            mode =3D M_NORMAL
-                        elif byte in (DO, DONT, WILL, WONT):
-                            # negotiation
-                            telnet_command =3D byte
-                            mode =3D M_NEGOTIATE
-                        else:
-                            # other telnet commands
-                            self._telnetProcessCommand(byte)
-                            mode =3D M_NORMAL
-                    elif mode =3D=3D M_NEGOTIATE: # DO, DONT, WILL, WONT w=
as received, option now following
-                        self._telnetNegotiateOption(telnet_command, byte)
-                        mode =3D M_NORMAL
-        finally:
-            self._thread =3D None
-            if self.logger:
-                self.logger.debug("read thread terminated")
-
-    # - incoming telnet commands and options
-
-    def _telnetProcessCommand(self, command):
-        """Process commands other than DO, DONT, WILL, WONT."""
-        # Currently none. RFC2217 only uses negotiation and subnegotiation.
-        if self.logger:
-            self.logger.warning("ignoring Telnet command: %r" % (command,))
-
-    def _telnetNegotiateOption(self, command, option):
-        """Process incoming DO, DONT, WILL, WONT."""
-        # check our registered telnet options and forward command to them
-        # they know themselves if they have to answer or not
-        known =3D False
-        for item in self._telnet_options:
-            # can have more than one match! as some options are duplicated=
 for
-            # 'us' and 'them'
-            if item.option =3D=3D option:
-                item.process_incoming(command)
-                known =3D True
-        if not known:
-            # handle unknown options
-            # only answer to positive requests and deny them
-            if command =3D=3D WILL or command =3D=3D DO:
-                self.telnetSendOption((command =3D=3D WILL and DONT or WON=
T), option)
-                if self.logger:
-                    self.logger.warning("rejected Telnet option: %r" % (op=
tion,))
-
-
-    def _telnetProcessSubnegotiation(self, suboption):
-        """Process subnegotiation, the data between IAC SB and IAC SE."""
-        if suboption[0:1] =3D=3D COM_PORT_OPTION:
-            if suboption[1:2] =3D=3D SERVER_NOTIFY_LINESTATE and len(subop=
tion) >=3D 3:
-                self._linestate =3D ord(suboption[2:3]) # ensure it is a n=
umber
-                if self.logger:
-                    self.logger.info("NOTIFY_LINESTATE: %s" % self._linest=
ate)
-            elif suboption[1:2] =3D=3D SERVER_NOTIFY_MODEMSTATE and len(su=
boption) >=3D 3:
-                self._modemstate =3D ord(suboption[2:3]) # ensure it is a =
number
-                if self.logger:
-                    self.logger.info("NOTIFY_MODEMSTATE: %s" % self._modem=
state)
-                # update time when we think that a poll would make sense
-                self._modemstate_expires =3D time.time() + 0.3
-            elif suboption[1:2] =3D=3D FLOWCONTROL_SUSPEND:
-                self._remote_suspend_flow =3D True
-            elif suboption[1:2] =3D=3D FLOWCONTROL_RESUME:
-                self._remote_suspend_flow =3D False
-            else:
-                for item in self._rfc2217_options.values():
-                    if item.ack_option =3D=3D suboption[1:2]:
-                        #~ print "processing COM_PORT_OPTION: %r" % list(s=
uboption[1:])
-                        item.checkAnswer(bytes(suboption[2:]))
-                        break
-                else:
-                    if self.logger:
-                        self.logger.warning("ignoring COM_PORT_OPTION: %r"=
 % (suboption,))
-        else:
-            if self.logger:
-                self.logger.warning("ignoring subnegotiation: %r" % (subop=
tion,))
-
-    # - outgoing telnet commands and options
-
-    def _internal_raw_write(self, data):
-        """internal socket write with no data escaping. used to send telne=
t stuff."""
-        self._write_lock.acquire()
-        try:
-            self._socket.sendall(data)
-        finally:
-            self._write_lock.release()
-
-    def telnetSendOption(self, action, option):
-        """Send DO, DONT, WILL, WONT."""
-        self._internal_raw_write(to_bytes([IAC, action, option]))
-
-    def rfc2217SendSubnegotiation(self, option, value=3D''):
-        """Subnegotiation of RFC2217 parameters."""
-        value =3D value.replace(IAC, IAC_DOUBLED)
-        self._internal_raw_write(to_bytes([IAC, SB, COM_PORT_OPTION, optio=
n] + list(value) + [IAC, SE]))
-
-    def rfc2217SendPurge(self, value):
-        item =3D self._rfc2217_options['purge']
-        item.set(value) # transmit desired purge type
-        item.wait(self._network_timeout) # wait for acknowledge from the s=
erver
-
-    def rfc2217SetControl(self, value):
-        item =3D self._rfc2217_options['control']
-        item.set(value) # transmit desired control type
-        if self._ignore_set_control_answer:
-            # answers are ignored when option is set. compatibility mode f=
or
-            # servers that answer, but not the expected one... (or no answ=
er
-            # at all) i.e. sredird
-            time.sleep(0.1)  # this helps getting the unit tests passed
-        else:
-            item.wait(self._network_timeout)  # wait for acknowledge from =
the server
-
-    def rfc2217FlowServerReady(self):
-        """\
-        check if server is ready to receive data. block for some time when
-        not.
-        """
-        #~ if self._remote_suspend_flow:
-            #~ wait---
-
-    def getModemState(self):
-        """\
-        get last modem state (cached value. If value is "old", request a n=
ew
-        one. This cache helps that we don't issue to many requests when e.=
g. all
-        status lines, one after the other is queried by the user (getCTS, =
getDSR
-        etc.)
-        """
-        # active modem state polling enabled? is the value fresh enough?
-        if self._poll_modem_state and self._modemstate_expires < time.time=
():
-            if self.logger:
-                self.logger.debug('polling modem state')
-            # when it is older, request an update
-            self.rfc2217SendSubnegotiation(NOTIFY_MODEMSTATE)
-            timeout_time =3D time.time() + self._network_timeout
-            while time.time() < timeout_time:
-                # when expiration time is updated, it means that there is =
a new
-                # value
-                if self._modemstate_expires > time.time():
-                    if self.logger:
-                        self.logger.warning('poll for modem state failed')
-                    break
-                time.sleep(0.001)    # prevent 100% CPU load
-            # even when there is a timeout, do not generate an error just
-            # return the last known value. this way we can support buggy
-            # servers that do not respond to polls, but send automatic
-            # updates.
-        if self._modemstate is not None:
-            if self.logger:
-                self.logger.debug('using cached modem state')
-            return self._modemstate
-        else:
-            # never received a notification from the server
-            raise SerialException("remote sends no NOTIFY_MODEMSTATE")
-
-
-# assemble Serial class with the platform specific implementation and the =
base
-# for file-like behavior. for Python 2.6 and newer, that provide the new I=
/O
-# library, derive from io.RawIOBase
-try:
-    import io
-except ImportError:
-    # classic version with our own file-like emulation
-    class Serial(RFC2217Serial, FileLike):
-        pass
-else:
-    # io library present
-    class Serial(RFC2217Serial, io.RawIOBase):
-        pass
-
-
-##########################################################################=
###
-# The following is code that helps implementing an RFC 2217 server.
-
-class PortManager(object):
-    """\
-    This class manages the state of Telnet and RFC 2217. It needs a serial
-    instance and a connection to work with. Connection is expected to impl=
ement
-    a (thread safe) write function, that writes the string to the network.
-    """
-
-    def __init__(self, serial_port, connection, logger=3DNone):
-        self.serial =3D serial_port
-        self.connection =3D connection
-        self.logger =3D logger
-        self._client_is_rfc2217 =3D False
-
-        # filter state machine
-        self.mode =3D M_NORMAL
-        self.suboption =3D None
-        self.telnet_command =3D None
-
-        # states for modem/line control events
-        self.modemstate_mask =3D 255
-        self.last_modemstate =3D None
-        self.linstate_mask =3D 0
-
-        # all supported telnet options
-        self._telnet_options =3D [
-            TelnetOption(self, 'ECHO', ECHO, WILL, WONT, DO, DONT, REQUEST=
ED),
-            TelnetOption(self, 'we-SGA', SGA, WILL, WONT, DO, DONT, REQUES=
TED),
-            TelnetOption(self, 'they-SGA', SGA, DO, DONT, WILL, WONT, INAC=
TIVE),
-            TelnetOption(self, 'we-BINARY', BINARY, WILL, WONT, DO, DONT, =
INACTIVE),
-            TelnetOption(self, 'they-BINARY', BINARY, DO, DONT, WILL, WONT=
, REQUESTED),
-            TelnetOption(self, 'we-RFC2217', COM_PORT_OPTION, WILL, WONT, =
DO, DONT, REQUESTED, self._client_ok),
-            TelnetOption(self, 'they-RFC2217', COM_PORT_OPTION, DO, DONT, =
WILL, WONT, INACTIVE, self._client_ok),
-            ]
-
-        # negotiate Telnet/RFC2217 -> send initial requests
-        if self.logger:
-            self.logger.debug("requesting initial Telnet/RFC 2217 options")
-        for option in self._telnet_options:
-            if option.state is REQUESTED:
-                self.telnetSendOption(option.send_yes, option.option)
-        # issue 1st modem state notification
-
-    def _client_ok(self):
-        """\
-        callback of telnet option. It gets called when option is activated.
-        This one here is used to detect when the client agrees on RFC 2217=
. A
-        flag is set so that other functions like check_modem_lines know if=
 the
-        client is OK.
-        """
-        # The callback is used for we and they so if one party agrees, we'=
re
-        # already happy. it seems not all servers do the negotiation corre=
ctly
-        # and i guess there are incorrect clients too.. so be happy if cli=
ent
-        # answers one or the other positively.
-        self._client_is_rfc2217 =3D True
-        if self.logger:
-            self.logger.info("client accepts RFC 2217")
-        # this is to ensure that the client gets a notification, even if t=
here
-        # was no change
-        self.check_modem_lines(force_notification=3DTrue)
-
-    # - outgoing telnet commands and options
-
-    def telnetSendOption(self, action, option):
-        """Send DO, DONT, WILL, WONT."""
-        self.connection.write(to_bytes([IAC, action, option]))
-
-    def rfc2217SendSubnegotiation(self, option, value=3D''):
-        """Subnegotiation of RFC 2217 parameters."""
-        value =3D value.replace(IAC, IAC_DOUBLED)
-        self.connection.write(to_bytes([IAC, SB, COM_PORT_OPTION, option] =
+ list(value) + [IAC, SE]))
-
-    # - check modem lines, needs to be called periodically from user to
-    # establish polling
-
-    def check_modem_lines(self, force_notification=3DFalse):
-        modemstate =3D (
-            (self.serial.getCTS() and MODEMSTATE_MASK_CTS) |
-            (self.serial.getDSR() and MODEMSTATE_MASK_DSR) |
-            (self.serial.getRI() and MODEMSTATE_MASK_RI) |
-            (self.serial.getCD() and MODEMSTATE_MASK_CD)
-        )
-        # check what has changed
-        deltas =3D modemstate ^ (self.last_modemstate or 0) # when last is=
 None -> 0
-        if deltas & MODEMSTATE_MASK_CTS:
-            modemstate |=3D MODEMSTATE_MASK_CTS_CHANGE
-        if deltas & MODEMSTATE_MASK_DSR:
-            modemstate |=3D MODEMSTATE_MASK_DSR_CHANGE
-        if deltas & MODEMSTATE_MASK_RI:
-            modemstate |=3D MODEMSTATE_MASK_RI_CHANGE
-        if deltas & MODEMSTATE_MASK_CD:
-            modemstate |=3D MODEMSTATE_MASK_CD_CHANGE
-        # if new state is different and the mask allows this change, send
-        # notification. suppress notifications when client is not rfc2217
-        if modemstate !=3D self.last_modemstate or force_notification:
-            if (self._client_is_rfc2217 and (modemstate & self.modemstate_=
mask)) or force_notification:
-                self.rfc2217SendSubnegotiation(
-                    SERVER_NOTIFY_MODEMSTATE,
-                    to_bytes([modemstate & self.modemstate_mask])
-                    )
-                if self.logger:
-                    self.logger.info("NOTIFY_MODEMSTATE: %s" % (modemstate=
,))
-            # save last state, but forget about deltas.
-            # otherwise it would also notify about changing deltas which is
-            # probably not very useful
-            self.last_modemstate =3D modemstate & 0xf0
-
-    # - outgoing data escaping
-
-    def escape(self, data):
-        """\
-        This generator function is for the user. All outgoing data has to =
be
-        properly escaped, so that no IAC character in the data stream mess=
es up
-        the Telnet state machine in the server.
-
-        socket.sendall(escape(data))
-        """
-        for byte in data:
-            if byte =3D=3D IAC:
-                yield IAC
-                yield IAC
-            else:
-                yield byte
-
-    # - incoming data filter
-
-    def filter(self, data):
-        """\
-        Handle a bunch of incoming bytes. This is a generator. It will yie=
ld
-        all characters not of interest for Telnet/RFC 2217.
-
-        The idea is that the reader thread pushes data from the socket thr=
ough
-        this filter:
-
-        for byte in filter(socket.recv(1024)):
-            # do things like CR/LF conversion/whatever
-            # and write data to the serial port
-            serial.write(byte)
-
-        (socket error handling code left as exercise for the reader)
-        """
-        for byte in data:
-            if self.mode =3D=3D M_NORMAL:
-                # interpret as command or as data
-                if byte =3D=3D IAC:
-                    self.mode =3D M_IAC_SEEN
-                else:
-                    # store data in sub option buffer or pass it to our
-                    # consumer depending on state
-                    if self.suboption is not None:
-                        self.suboption.append(byte)
-                    else:
-                        yield byte
-            elif self.mode =3D=3D M_IAC_SEEN:
-                if byte =3D=3D IAC:
-                    # interpret as command doubled -> insert character
-                    # itself
-                    if self.suboption is not None:
-                        self.suboption.append(byte)
-                    else:
-                        yield byte
-                    self.mode =3D M_NORMAL
-                elif byte =3D=3D SB:
-                    # sub option start
-                    self.suboption =3D bytearray()
-                    self.mode =3D M_NORMAL
-                elif byte =3D=3D SE:
-                    # sub option end -> process it now
-                    self._telnetProcessSubnegotiation(bytes(self.suboption=
))
-                    self.suboption =3D None
-                    self.mode =3D M_NORMAL
-                elif byte in (DO, DONT, WILL, WONT):
-                    # negotiation
-                    self.telnet_command =3D byte
-                    self.mode =3D M_NEGOTIATE
-                else:
-                    # other telnet commands
-                    self._telnetProcessCommand(byte)
-                    self.mode =3D M_NORMAL
-            elif self.mode =3D=3D M_NEGOTIATE: # DO, DONT, WILL, WONT was =
received, option now following
-                self._telnetNegotiateOption(self.telnet_command, byte)
-                self.mode =3D M_NORMAL
-
-    # - incoming telnet commands and options
-
-    def _telnetProcessCommand(self, command):
-        """Process commands other than DO, DONT, WILL, WONT."""
-        # Currently none. RFC2217 only uses negotiation and subnegotiation.
-        if self.logger:
-            self.logger.warning("ignoring Telnet command: %r" % (command,))
-
-    def _telnetNegotiateOption(self, command, option):
-        """Process incoming DO, DONT, WILL, WONT."""
-        # check our registered telnet options and forward command to them
-        # they know themselves if they have to answer or not
-        known =3D False
-        for item in self._telnet_options:
-            # can have more than one match! as some options are duplicated=
 for
-            # 'us' and 'them'
-            if item.option =3D=3D option:
-                item.process_incoming(command)
-                known =3D True
-        if not known:
-            # handle unknown options
-            # only answer to positive requests and deny them
-            if command =3D=3D WILL or command =3D=3D DO:
-                self.telnetSendOption((command =3D=3D WILL and DONT or WON=
T), option)
-                if self.logger:
-                    self.logger.warning("rejected Telnet option: %r" % (op=
tion,))
-
-
-    def _telnetProcessSubnegotiation(self, suboption):
-        """Process subnegotiation, the data between IAC SB and IAC SE."""
-        if suboption[0:1] =3D=3D COM_PORT_OPTION:
-            if self.logger:
-                self.logger.debug('received COM_PORT_OPTION: %r' % (subopt=
ion,))
-            if suboption[1:2] =3D=3D SET_BAUDRATE:
-                backup =3D self.serial.baudrate
-                try:
-                    (baudrate,) =3D struct.unpack("!I", suboption[2:6])
-                    if baudrate !=3D 0:
-                        self.serial.baudrate =3D baudrate
-                except ValueError, e:
-                    if self.logger:
-                        self.logger.error("failed to set baud rate: %s" % =
(e,))
-                    self.serial.baudrate =3D backup
-                else:
-                    if self.logger:
-                        self.logger.info("%s baud rate: %s" % (baudrate an=
d 'set' or 'get', self.serial.baudrate))
-                self.rfc2217SendSubnegotiation(SERVER_SET_BAUDRATE, struct=
.pack("!I", self.serial.baudrate))
-            elif suboption[1:2] =3D=3D SET_DATASIZE:
-                backup =3D self.serial.bytesize
-                try:
-                    (datasize,) =3D struct.unpack("!B", suboption[2:3])
-                    if datasize !=3D 0:
-                        self.serial.bytesize =3D datasize
-                except ValueError, e:
-                    if self.logger:
-                        self.logger.error("failed to set data size: %s" % =
(e,))
-                    self.serial.bytesize =3D backup
-                else:
-                    if self.logger:
-                        self.logger.info("%s data size: %s" % (datasize an=
d 'set' or 'get', self.serial.bytesize))
-                self.rfc2217SendSubnegotiation(SERVER_SET_DATASIZE, struct=
.pack("!B", self.serial.bytesize))
-            elif suboption[1:2] =3D=3D SET_PARITY:
-                backup =3D self.serial.parity
-                try:
-                    parity =3D struct.unpack("!B", suboption[2:3])[0]
-                    if parity !=3D 0:
-                            self.serial.parity =3D RFC2217_REVERSE_PARITY_=
MAP[parity]
-                except ValueError, e:
-                    if self.logger:
-                        self.logger.error("failed to set parity: %s" % (e,=
))
-                    self.serial.parity =3D backup
-                else:
-                    if self.logger:
-                        self.logger.info("%s parity: %s" % (parity and 'se=
t' or 'get', self.serial.parity))
-                self.rfc2217SendSubnegotiation(
-                    SERVER_SET_PARITY,
-                    struct.pack("!B", RFC2217_PARITY_MAP[self.serial.parit=
y])
-                    )
-            elif suboption[1:2] =3D=3D SET_STOPSIZE:
-                backup =3D self.serial.stopbits
-                try:
-                    stopbits =3D struct.unpack("!B", suboption[2:3])[0]
-                    if stopbits !=3D 0:
-                        self.serial.stopbits =3D RFC2217_REVERSE_STOPBIT_M=
AP[stopbits]
-                except ValueError, e:
-                    if self.logger:
-                        self.logger.error("failed to set stop bits: %s" % =
(e,))
-                    self.serial.stopbits =3D backup
-                else:
-                    if self.logger:
-                        self.logger.info("%s stop bits: %s" % (stopbits an=
d 'set' or 'get', self.serial.stopbits))
-                self.rfc2217SendSubnegotiation(
-                    SERVER_SET_STOPSIZE,
-                    struct.pack("!B", RFC2217_STOPBIT_MAP[self.serial.stop=
bits])
-                    )
-            elif suboption[1:2] =3D=3D SET_CONTROL:
-                if suboption[2:3] =3D=3D SET_CONTROL_REQ_FLOW_SETTING:
-                    if self.serial.xonxoff:
-                        self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL,=
 SET_CONTROL_USE_SW_FLOW_CONTROL)
-                    elif self.serial.rtscts:
-                        self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL,=
 SET_CONTROL_USE_HW_FLOW_CONTROL)
-                    else:
-                        self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL,=
 SET_CONTROL_USE_NO_FLOW_CONTROL)
-                elif suboption[2:3] =3D=3D SET_CONTROL_USE_NO_FLOW_CONTROL:
-                    self.serial.xonxoff =3D False
-                    self.serial.rtscts =3D False
-                    if self.logger:
-                        self.logger.info("changed flow control to None")
-                    self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET=
_CONTROL_USE_NO_FLOW_CONTROL)
-                elif suboption[2:3] =3D=3D SET_CONTROL_USE_SW_FLOW_CONTROL:
-                    self.serial.xonxoff =3D True
-                    if self.logger:
-                        self.logger.info("changed flow control to XON/XOFF=
")
-                    self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET=
_CONTROL_USE_SW_FLOW_CONTROL)
-                elif suboption[2:3] =3D=3D SET_CONTROL_USE_HW_FLOW_CONTROL:
-                    self.serial.rtscts =3D True
-                    if self.logger:
-                        self.logger.info("changed flow control to RTS/CTS")
-                    self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET=
_CONTROL_USE_HW_FLOW_CONTROL)
-                elif suboption[2:3] =3D=3D SET_CONTROL_REQ_BREAK_STATE:
-                    if self.logger:
-                        self.logger.warning("requested break state - not i=
mplemented")
-                    pass # XXX needs cached value
-                elif suboption[2:3] =3D=3D SET_CONTROL_BREAK_ON:
-                    self.serial.setBreak(True)
-                    if self.logger:
-                        self.logger.info("changed BREAK to active")
-                    self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET=
_CONTROL_BREAK_ON)
-                elif suboption[2:3] =3D=3D SET_CONTROL_BREAK_OFF:
-                    self.serial.setBreak(False)
-                    if self.logger:
-                        self.logger.info("changed BREAK to inactive")
-                    self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET=
_CONTROL_BREAK_OFF)
-                elif suboption[2:3] =3D=3D SET_CONTROL_REQ_DTR:
-                    if self.logger:
-                        self.logger.warning("requested DTR state - not imp=
lemented")
-                    pass # XXX needs cached value
-                elif suboption[2:3] =3D=3D SET_CONTROL_DTR_ON:
-                    self.serial.setDTR(True)
-                    if self.logger:
-                        self.logger.info("changed DTR to active")
-                    self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET=
_CONTROL_DTR_ON)
-                elif suboption[2:3] =3D=3D SET_CONTROL_DTR_OFF:
-                    self.serial.setDTR(False)
-                    if self.logger:
-                        self.logger.info("changed DTR to inactive")
-                    self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET=
_CONTROL_DTR_OFF)
-                elif suboption[2:3] =3D=3D SET_CONTROL_REQ_RTS:
-                    if self.logger:
-                        self.logger.warning("requested RTS state - not imp=
lemented")
-                    pass # XXX needs cached value
-                    #~ self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, =
SET_CONTROL_RTS_ON)
-                elif suboption[2:3] =3D=3D SET_CONTROL_RTS_ON:
-                    self.serial.setRTS(True)
-                    if self.logger:
-                        self.logger.info("changed RTS to active")
-                    self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET=
_CONTROL_RTS_ON)
-                elif suboption[2:3] =3D=3D SET_CONTROL_RTS_OFF:
-                    self.serial.setRTS(False)
-                    if self.logger:
-                        self.logger.info("changed RTS to inactive")
-                    self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET=
_CONTROL_RTS_OFF)
-                #~ elif suboption[2:3] =3D=3D SET_CONTROL_REQ_FLOW_SETTING=
_IN:
-                #~ elif suboption[2:3] =3D=3D SET_CONTROL_USE_NO_FLOW_CONT=
ROL_IN:
-                #~ elif suboption[2:3] =3D=3D SET_CONTROL_USE_SW_FLOW_CONT=
OL_IN:
-                #~ elif suboption[2:3] =3D=3D SET_CONTROL_USE_HW_FLOW_CONT=
OL_IN:
-                #~ elif suboption[2:3] =3D=3D SET_CONTROL_USE_DCD_FLOW_CON=
TROL:
-                #~ elif suboption[2:3] =3D=3D SET_CONTROL_USE_DTR_FLOW_CON=
TROL:
-                #~ elif suboption[2:3] =3D=3D SET_CONTROL_USE_DSR_FLOW_CON=
TROL:
-            elif suboption[1:2] =3D=3D NOTIFY_LINESTATE:
-                # client polls for current state
-                self.rfc2217SendSubnegotiation(
-                    SERVER_NOTIFY_LINESTATE,
-                    to_bytes([0])   # sorry, nothing like that implemented
-                    )
-            elif suboption[1:2] =3D=3D NOTIFY_MODEMSTATE:
-                if self.logger:
-                    self.logger.info("request for modem state")
-                # client polls for current state
-                self.check_modem_lines(force_notification=3DTrue)
-            elif suboption[1:2] =3D=3D FLOWCONTROL_SUSPEND:
-                if self.logger:
-                    self.logger.info("suspend")
-                self._remote_suspend_flow =3D True
-            elif suboption[1:2] =3D=3D FLOWCONTROL_RESUME:
-                if self.logger:
-                    self.logger.info("resume")
-                self._remote_suspend_flow =3D False
-            elif suboption[1:2] =3D=3D SET_LINESTATE_MASK:
-                self.linstate_mask =3D ord(suboption[2:3]) # ensure it is =
a number
-                if self.logger:
-                    self.logger.info("line state mask: 0x%02x" % (self.lin=
state_mask,))
-            elif suboption[1:2] =3D=3D SET_MODEMSTATE_MASK:
-                self.modemstate_mask =3D ord(suboption[2:3]) # ensure it i=
s a number
-                if self.logger:
-                    self.logger.info("modem state mask: 0x%02x" % (self.mo=
demstate_mask,))
-            elif suboption[1:2] =3D=3D PURGE_DATA:
-                if suboption[2:3] =3D=3D PURGE_RECEIVE_BUFFER:
-                    self.serial.flushInput()
-                    if self.logger:
-                        self.logger.info("purge in")
-                    self.rfc2217SendSubnegotiation(SERVER_PURGE_DATA, PURG=
E_RECEIVE_BUFFER)
-                elif suboption[2:3] =3D=3D PURGE_TRANSMIT_BUFFER:
-                    self.serial.flushOutput()
-                    if self.logger:
-                        self.logger.info("purge out")
-                    self.rfc2217SendSubnegotiation(SERVER_PURGE_DATA, PURG=
E_TRANSMIT_BUFFER)
-                elif suboption[2:3] =3D=3D PURGE_BOTH_BUFFERS:
-                    self.serial.flushInput()
-                    self.serial.flushOutput()
-                    if self.logger:
-                        self.logger.info("purge both")
-                    self.rfc2217SendSubnegotiation(SERVER_PURGE_DATA, PURG=
E_BOTH_BUFFERS)
-                else:
-                    if self.logger:
-                        self.logger.error("undefined PURGE_DATA: %r" % lis=
t(suboption[2:]))
-            else:
-                if self.logger:
-                    self.logger.error("undefined COM_PORT_OPTION: %r" % li=
st(suboption[1:]))
-        else:
-            if self.logger:
-                self.logger.warning("unknown subnegotiation: %r" % (subopt=
ion,))
-
-
-# simple client test
-if __name__ =3D=3D '__main__':
-    import sys
-    s =3D Serial('rfc2217://localhost:7000', 115200)
-    sys.stdout.write('%s\n' % s)
-
-    #~ s.baudrate =3D 1898
-
-    sys.stdout.write("write...\n")
-    s.write("hello\n")
-    s.flush()
-    sys.stdout.write("read: %s\n" % s.read(5))
-
-    #~ s.baudrate =3D 19200
-    #~ s.databits =3D 7
-    s.close()
diff --git a/scripts/serial/serialcli.py b/scripts/serial/serialcli.py
deleted file mode 100644
index 9ab3876206..0000000000
--- a/scripts/serial/serialcli.py
+++ /dev/null
@@ -1,284 +0,0 @@
-#! python
-# Python Serial Port Extension for Win32, Linux, BSD, Jython and .NET/Mono
-# serial driver for .NET/Mono (IronPython), .NET >=3D 2
-# see __init__.py
-#
-# (C) 2008 Chris Liechti <cliechti@gmx.net>
-# this is distributed under a free software license, see license.txt
-
-import clr
-import System
-import System.IO.Ports
-from serial.serialutil import *
-
-
-def device(portnum):
-    """Turn a port number into a device name"""
-    return System.IO.Ports.SerialPort.GetPortNames()[portnum]
-
-
-# must invoke function with byte array, make a helper to convert strings
-# to byte arrays
-sab =3D System.Array[System.Byte]
-def as_byte_array(string):
-    return sab([ord(x) for x in string])  # XXX will require adaption when=
 run with a 3.x compatible IronPython
-
-class IronSerial(SerialBase):
-    """Serial port implementation for .NET/Mono."""
-
-    BAUDRATES =3D (50, 75, 110, 134, 150, 200, 300, 600, 1200, 1800, 2400,=
 4800,
-                9600, 19200, 38400, 57600, 115200)
-
-    def open(self):
-        """\
-        Open port with current settings. This may throw a SerialException
-        if the port cannot be opened.
-        """
-        if self._port is None:
-            raise SerialException("Port must be configured before it can b=
e used.")
-        if self._isOpen:
-            raise SerialException("Port is already open.")
-        try:
-            self._port_handle =3D System.IO.Ports.SerialPort(self.portstr)
-        except Exception, msg:
-            self._port_handle =3D None
-            raise SerialException("could not open port %s: %s" % (self.por=
tstr, msg))
-
-        self._reconfigurePort()
-        self._port_handle.Open()
-        self._isOpen =3D True
-        if not self._rtscts:
-            self.setRTS(True)
-            self.setDTR(True)
-        self.flushInput()
-        self.flushOutput()
-
-    def _reconfigurePort(self):
-        """Set communication parameters on opened port."""
-        if not self._port_handle:
-            raise SerialException("Can only operate on a valid port handle=
")
-
-        #~ self._port_handle.ReceivedBytesThreshold =3D 1
-
-        if self._timeout is None:
-            self._port_handle.ReadTimeout =3D System.IO.Ports.SerialPort.I=
nfiniteTimeout
-        else:
-            self._port_handle.ReadTimeout =3D int(self._timeout*1000)
-
-        # if self._timeout !=3D 0 and self._interCharTimeout is not None:
-            # timeouts =3D (int(self._interCharTimeout * 1000),) + timeout=
s[1:]
-
-        if self._writeTimeout is None:
-            self._port_handle.WriteTimeout =3D System.IO.Ports.SerialPort.=
InfiniteTimeout
-        else:
-            self._port_handle.WriteTimeout =3D int(self._writeTimeout*1000)
-
-
-        # Setup the connection info.
-        try:
-            self._port_handle.BaudRate =3D self._baudrate
-        except IOError, e:
-            # catch errors from illegal baudrate settings
-            raise ValueError(str(e))
-
-        if self._bytesize =3D=3D FIVEBITS:
-            self._port_handle.DataBits     =3D 5
-        elif self._bytesize =3D=3D SIXBITS:
-            self._port_handle.DataBits     =3D 6
-        elif self._bytesize =3D=3D SEVENBITS:
-            self._port_handle.DataBits     =3D 7
-        elif self._bytesize =3D=3D EIGHTBITS:
-            self._port_handle.DataBits     =3D 8
-        else:
-            raise ValueError("Unsupported number of data bits: %r" % self.=
_bytesize)
-
-        if self._parity =3D=3D PARITY_NONE:
-            self._port_handle.Parity       =3D getattr(System.IO.Ports.Par=
ity, 'None') # reserved keyword in Py3k
-        elif self._parity =3D=3D PARITY_EVEN:
-            self._port_handle.Parity       =3D System.IO.Ports.Parity.Even
-        elif self._parity =3D=3D PARITY_ODD:
-            self._port_handle.Parity       =3D System.IO.Ports.Parity.Odd
-        elif self._parity =3D=3D PARITY_MARK:
-            self._port_handle.Parity       =3D System.IO.Ports.Parity.Mark
-        elif self._parity =3D=3D PARITY_SPACE:
-            self._port_handle.Parity       =3D System.IO.Ports.Parity.Space
-        else:
-            raise ValueError("Unsupported parity mode: %r" % self._parity)
-
-        if self._stopbits =3D=3D STOPBITS_ONE:
-            self._port_handle.StopBits     =3D System.IO.Ports.StopBits.One
-        elif self._stopbits =3D=3D STOPBITS_ONE_POINT_FIVE:
-            self._port_handle.StopBits     =3D System.IO.Ports.StopBits.On=
ePointFive
-        elif self._stopbits =3D=3D STOPBITS_TWO:
-            self._port_handle.StopBits     =3D System.IO.Ports.StopBits.Two
-        else:
-            raise ValueError("Unsupported number of stop bits: %r" % self.=
_stopbits)
-
-        if self._rtscts and self._xonxoff:
-            self._port_handle.Handshake  =3D System.IO.Ports.Handshake.Req=
uestToSendXOnXOff
-        elif self._rtscts:
-            self._port_handle.Handshake  =3D System.IO.Ports.Handshake.Req=
uestToSend
-        elif self._xonxoff:
-            self._port_handle.Handshake  =3D System.IO.Ports.Handshake.XOn=
XOff
-        else:
-            self._port_handle.Handshake  =3D getattr(System.IO.Ports.Hands=
hake, 'None')   # reserved keyword in Py3k
-
-    #~ def __del__(self):
-        #~ self.close()
-
-    def close(self):
-        """Close port"""
-        if self._isOpen:
-            if self._port_handle:
-                try:
-                    self._port_handle.Close()
-                except System.IO.Ports.InvalidOperationException:
-                    # ignore errors. can happen for unplugged USB serial d=
evices
-                    pass
-                self._port_handle =3D None
-            self._isOpen =3D False
-
-    def makeDeviceName(self, port):
-        try:
-            return device(port)
-        except TypeError, e:
-            raise SerialException(str(e))
-
-    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -=
  -
-
-    def inWaiting(self):
-        """Return the number of characters currently in the input buffer."=
""
-        if not self._port_handle: raise portNotOpenError
-        return self._port_handle.BytesToRead
-
-    def read(self, size=3D1):
-        """\
-        Read size bytes from the serial port. If a timeout is set it may
-        return less characters as requested. With no timeout it will block
-        until the requested number of bytes is read.
-        """
-        if not self._port_handle: raise portNotOpenError
-        # must use single byte reads as this is the only way to read
-        # without applying encodings
-        data =3D bytearray()
-        while size:
-            try:
-                data.append(self._port_handle.ReadByte())
-            except System.TimeoutException, e:
-                break
-            else:
-                size -=3D 1
-        return bytes(data)
-
-    def write(self, data):
-        """Output the given string over the serial port."""
-        if not self._port_handle: raise portNotOpenError
-        #~ if not isinstance(data, (bytes, bytearray)):
-            #~ raise TypeError('expected %s or bytearray, got %s' % (bytes=
, type(data)))
-        try:
-            # must call overloaded method with byte array argument
-            # as this is the only one not applying encodings
-            self._port_handle.Write(as_byte_array(data), 0, len(data))
-        except System.TimeoutException, e:
-            raise writeTimeoutError
-        return len(data)
-
-    def flushInput(self):
-        """Clear input buffer, discarding all that is in the buffer."""
-        if not self._port_handle: raise portNotOpenError
-        self._port_handle.DiscardInBuffer()
-
-    def flushOutput(self):
-        """\
-        Clear output buffer, aborting the current output and
-        discarding all that is in the buffer.
-        """
-        if not self._port_handle: raise portNotOpenError
-        self._port_handle.DiscardOutBuffer()
-
-    def sendBreak(self, duration=3D0.25):
-        """\
-        Send break condition. Timed, returns to idle state after given
-        duration.
-        """
-        if not self._port_handle: raise portNotOpenError
-        import time
-        self._port_handle.BreakState =3D True
-        time.sleep(duration)
-        self._port_handle.BreakState =3D False
-
-    def setBreak(self, level=3DTrue):
-        """
-        Set break: Controls TXD. When active, to transmitting is possible.
-        """
-        if not self._port_handle: raise portNotOpenError
-        self._port_handle.BreakState =3D bool(level)
-
-    def setRTS(self, level=3DTrue):
-        """Set terminal status line: Request To Send"""
-        if not self._port_handle: raise portNotOpenError
-        self._port_handle.RtsEnable =3D bool(level)
-
-    def setDTR(self, level=3DTrue):
-        """Set terminal status line: Data Terminal Ready"""
-        if not self._port_handle: raise portNotOpenError
-        self._port_handle.DtrEnable =3D bool(level)
-
-    def getCTS(self):
-        """Read terminal status line: Clear To Send"""
-        if not self._port_handle: raise portNotOpenError
-        return self._port_handle.CtsHolding
-
-    def getDSR(self):
-        """Read terminal status line: Data Set Ready"""
-        if not self._port_handle: raise portNotOpenError
-        return self._port_handle.DsrHolding
-
-    def getRI(self):
-        """Read terminal status line: Ring Indicator"""
-        if not self._port_handle: raise portNotOpenError
-        #~ return self._port_handle.XXX
-        return False #XXX an error would be better
-
-    def getCD(self):
-        """Read terminal status line: Carrier Detect"""
-        if not self._port_handle: raise portNotOpenError
-        return self._port_handle.CDHolding
-
-    # - - platform specific - - - -
-    # none
-
-
-# assemble Serial class with the platform specific implementation and the =
base
-# for file-like behavior. for Python 2.6 and newer, that provide the new I=
/O
-# library, derive from io.RawIOBase
-try:
-    import io
-except ImportError:
-    # classic version with our own file-like emulation
-    class Serial(IronSerial, FileLike):
-        pass
-else:
-    # io library present
-    class Serial(IronSerial, io.RawIOBase):
-        pass
-
-
-# Nur Testfunktion!!
-if __name__ =3D=3D '__main__':
-    import sys
-
-    s =3D Serial(0)
-    sys.stdio.write('%s\n' % s)
-
-    s =3D Serial()
-    sys.stdio.write('%s\n' % s)
-
-
-    s.baudrate =3D 19200
-    s.databits =3D 7
-    s.close()
-    s.port =3D 0
-    s.open()
-    sys.stdio.write('%s\n' % s)
-
diff --git a/scripts/serial/serialposix.py b/scripts/serial/serialposix.py
deleted file mode 100644
index 359ad1b877..0000000000
--- a/scripts/serial/serialposix.py
+++ /dev/null
@@ -1,730 +0,0 @@
-#!/usr/bin/env python
-#
-# Python Serial Port Extension for Win32, Linux, BSD, Jython
-# module for serial IO for POSIX compatible systems, like Linux
-# see __init__.py
-#
-# (C) 2001-2010 Chris Liechti <cliechti@gmx.net>
-# this is distributed under a free software license, see license.txt
-#
-# parts based on code from Grant B. Edwards  <grante@visi.com>:
-#  ftp://ftp.visi.com/users/grante/python/PosixSerial.py
-#
-# references: http://www.easysw.com/~mike/serial/serial.html
-
-import sys, os, fcntl, termios, struct, select, errno, time
-from serial.serialutil import *
-
-# Do check the Python version as some constants have moved.
-if (sys.hexversion < 0x020100f0):
-    import TERMIOS
-else:
-    TERMIOS =3D termios
-
-if (sys.hexversion < 0x020200f0):
-    import FCNTL
-else:
-    FCNTL =3D fcntl
-
-# try to detect the OS so that a device can be selected...
-# this code block should supply a device() and set_special_baudrate() func=
tion
-# for the platform
-plat =3D sys.platform.lower()
-
-if   plat[:5] =3D=3D 'linux':    # Linux (confirmed)
-
-    def device(port):
-        return '/dev/ttyS%d' % port
-
-    TCGETS2 =3D 0x802C542A
-    TCSETS2 =3D 0x402C542B
-    BOTHER =3D 0o010000
-
-    def set_special_baudrate(port, baudrate):
-        # right size is 44 on x86_64, allow for some growth
-        import array
-        buf =3D array.array('i', [0] * 64)
-
-        try:
-            # get serial_struct
-            FCNTL.ioctl(port.fd, TCGETS2, buf)
-            # set custom speed
-            buf[2] &=3D ~TERMIOS.CBAUD
-            buf[2] |=3D BOTHER
-            buf[9] =3D buf[10] =3D baudrate
-
-            # set serial_struct
-            res =3D FCNTL.ioctl(port.fd, TCSETS2, buf)
-        except IOError, e:
-            raise ValueError('Failed to set custom baud rate (%s): %s' % (=
baudrate, e))
-
-    baudrate_constants =3D {
-        0:       0000000,  # hang up
-        50:      0000001,
-        75:      0000002,
-        110:     0000003,
-        134:     0000004,
-        150:     0000005,
-        200:     0000006,
-        300:     0000007,
-        600:     0000010,
-        1200:    0000011,
-        1800:    0000012,
-        2400:    0000013,
-        4800:    0000014,
-        9600:    0000015,
-        19200:   0000016,
-        38400:   0000017,
-        57600:   0010001,
-        115200:  0010002,
-        230400:  0010003,
-        460800:  0010004,
-        500000:  0010005,
-        576000:  0010006,
-        921600:  0010007,
-        1000000: 0010010,
-        1152000: 0010011,
-        1500000: 0010012,
-        2000000: 0010013,
-        2500000: 0010014,
-        3000000: 0010015,
-        3500000: 0010016,
-        4000000: 0010017
-    }
-
-elif plat =3D=3D 'cygwin':       # cygwin/win32 (confirmed)
-
-    def device(port):
-        return '/dev/com%d' % (port + 1)
-
-    def set_special_baudrate(port, baudrate):
-        raise ValueError("sorry don't know how to handle non standard baud=
 rate on this platform")
-
-    baudrate_constants =3D {
-        128000: 0x01003,
-        256000: 0x01005,
-        500000: 0x01007,
-        576000: 0x01008,
-        921600: 0x01009,
-        1000000: 0x0100a,
-        1152000: 0x0100b,
-        1500000: 0x0100c,
-        2000000: 0x0100d,
-        2500000: 0x0100e,
-        3000000: 0x0100f
-    }
-
-elif plat[:7] =3D=3D 'openbsd':    # OpenBSD
-
-    def device(port):
-        return '/dev/cua%02d' % port
-
-    def set_special_baudrate(port, baudrate):
-        raise ValueError("sorry don't know how to handle non standard baud=
 rate on this platform")
-
-    baudrate_constants =3D {}
-
-elif plat[:3] =3D=3D 'bsd' or  \
-    plat[:7] =3D=3D 'freebsd':
-
-    def device(port):
-        return '/dev/cuad%d' % port
-
-    def set_special_baudrate(port, baudrate):
-        raise ValueError("sorry don't know how to handle non standard baud=
 rate on this platform")
-
-    baudrate_constants =3D {}
-
-elif plat[:6] =3D=3D 'darwin':   # OS X
-
-    version =3D os.uname()[2].split('.')
-    # Tiger or above can support arbitrary serial speeds
-    if int(version[0]) >=3D 8:
-        def set_special_baudrate(port, baudrate):
-            # use IOKit-specific call to set up high speeds
-            import array, fcntl
-            buf =3D array.array('i', [baudrate])
-            IOSSIOSPEED =3D 0x80045402 #_IOW('T', 2, speed_t)
-            fcntl.ioctl(port.fd, IOSSIOSPEED, buf, 1)
-    else: # version < 8
-        def set_special_baudrate(port, baudrate):
-            raise ValueError("baud rate not supported")
-
-    def device(port):
-        return '/dev/cuad%d' % port
-
-    baudrate_constants =3D {}
-
-
-elif plat[:6] =3D=3D 'netbsd':   # NetBSD 1.6 testing by Erk
-
-    def device(port):
-        return '/dev/dty%02d' % port
-
-    def set_special_baudrate(port, baudrate):
-        raise ValueError("sorry don't know how to handle non standard baud=
 rate on this platform")
-
-    baudrate_constants =3D {}
-
-elif plat[:4] =3D=3D 'irix':     # IRIX (partially tested)
-
-    def device(port):
-        return '/dev/ttyf%d' % (port+1) #XXX different device names depend=
ing on flow control
-
-    def set_special_baudrate(port, baudrate):
-        raise ValueError("sorry don't know how to handle non standard baud=
 rate on this platform")
-
-    baudrate_constants =3D {}
-
-elif plat[:2] =3D=3D 'hp':       # HP-UX (not tested)
-
-    def device(port):
-        return '/dev/tty%dp0' % (port+1)
-
-    def set_special_baudrate(port, baudrate):
-        raise ValueError("sorry don't know how to handle non standard baud=
 rate on this platform")
-
-    baudrate_constants =3D {}
-
-elif plat[:5] =3D=3D 'sunos':    # Solaris/SunOS (confirmed)
-
-    def device(port):
-        return '/dev/tty%c' % (ord('a')+port)
-
-    def set_special_baudrate(port, baudrate):
-        raise ValueError("sorry don't know how to handle non standard baud=
 rate on this platform")
-
-    baudrate_constants =3D {}
-
-elif plat[:3] =3D=3D 'aix':      # AIX
-
-    def device(port):
-        return '/dev/tty%d' % (port)
-
-    def set_special_baudrate(port, baudrate):
-        raise ValueError("sorry don't know how to handle non standard baud=
 rate on this platform")
-
-    baudrate_constants =3D {}
-
-else:
-    # platform detection has failed...
-    sys.stderr.write("""\
-don't know how to number ttys on this system.
-! Use an explicit path (eg /dev/ttyS1) or send this information to
-! the author of this module:
-
-sys.platform =3D %r
-os.name =3D %r
-serialposix.py version =3D %s
-
-also add the device name of the serial port and where the
-counting starts for the first serial port.
-e.g. 'first serial port: /dev/ttyS0'
-and with a bit luck you can get this module running...
-""" % (sys.platform, os.name, VERSION))
-    # no exception, just continue with a brave attempt to build a device n=
ame
-    # even if the device name is not correct for the platform it has chanc=
es
-    # to work using a string with the real device name as port parameter.
-    def device(portum):
-        return '/dev/ttyS%d' % portnum
-    def set_special_baudrate(port, baudrate):
-        raise SerialException("sorry don't know how to handle non standard=
 baud rate on this platform")
-    baudrate_constants =3D {}
-    #~ raise Exception, "this module does not run on this platform, sorry."
-
-# whats up with "aix", "beos", ....
-# they should work, just need to know the device names.
-
-
-# load some constants for later use.
-# try to use values from TERMIOS, use defaults from linux otherwise
-TIOCMGET  =3D hasattr(TERMIOS, 'TIOCMGET') and TERMIOS.TIOCMGET or 0x5415
-TIOCMBIS  =3D hasattr(TERMIOS, 'TIOCMBIS') and TERMIOS.TIOCMBIS or 0x5416
-TIOCMBIC  =3D hasattr(TERMIOS, 'TIOCMBIC') and TERMIOS.TIOCMBIC or 0x5417
-TIOCMSET  =3D hasattr(TERMIOS, 'TIOCMSET') and TERMIOS.TIOCMSET or 0x5418
-
-#TIOCM_LE =3D hasattr(TERMIOS, 'TIOCM_LE') and TERMIOS.TIOCM_LE or 0x001
-TIOCM_DTR =3D hasattr(TERMIOS, 'TIOCM_DTR') and TERMIOS.TIOCM_DTR or 0x002
-TIOCM_RTS =3D hasattr(TERMIOS, 'TIOCM_RTS') and TERMIOS.TIOCM_RTS or 0x004
-#TIOCM_ST =3D hasattr(TERMIOS, 'TIOCM_ST') and TERMIOS.TIOCM_ST or 0x008
-#TIOCM_SR =3D hasattr(TERMIOS, 'TIOCM_SR') and TERMIOS.TIOCM_SR or 0x010
-
-TIOCM_CTS =3D hasattr(TERMIOS, 'TIOCM_CTS') and TERMIOS.TIOCM_CTS or 0x020
-TIOCM_CAR =3D hasattr(TERMIOS, 'TIOCM_CAR') and TERMIOS.TIOCM_CAR or 0x040
-TIOCM_RNG =3D hasattr(TERMIOS, 'TIOCM_RNG') and TERMIOS.TIOCM_RNG or 0x080
-TIOCM_DSR =3D hasattr(TERMIOS, 'TIOCM_DSR') and TERMIOS.TIOCM_DSR or 0x100
-TIOCM_CD  =3D hasattr(TERMIOS, 'TIOCM_CD') and TERMIOS.TIOCM_CD or TIOCM_C=
AR
-TIOCM_RI  =3D hasattr(TERMIOS, 'TIOCM_RI') and TERMIOS.TIOCM_RI or TIOCM_R=
NG
-#TIOCM_OUT1 =3D hasattr(TERMIOS, 'TIOCM_OUT1') and TERMIOS.TIOCM_OUT1 or 0=
x2000
-#TIOCM_OUT2 =3D hasattr(TERMIOS, 'TIOCM_OUT2') and TERMIOS.TIOCM_OUT2 or 0=
x4000
-if hasattr(TERMIOS, 'TIOCINQ'):
-    TIOCINQ =3D TERMIOS.TIOCINQ
-else:
-    TIOCINQ =3D hasattr(TERMIOS, 'FIONREAD') and TERMIOS.FIONREAD or 0x541B
-TIOCOUTQ   =3D hasattr(TERMIOS, 'TIOCOUTQ') and TERMIOS.TIOCOUTQ or 0x5411
-
-TIOCM_zero_str =3D struct.pack('I', 0)
-TIOCM_RTS_str =3D struct.pack('I', TIOCM_RTS)
-TIOCM_DTR_str =3D struct.pack('I', TIOCM_DTR)
-
-TIOCSBRK  =3D hasattr(TERMIOS, 'TIOCSBRK') and TERMIOS.TIOCSBRK or 0x5427
-TIOCCBRK  =3D hasattr(TERMIOS, 'TIOCCBRK') and TERMIOS.TIOCCBRK or 0x5428
-
-CMSPAR =3D 010000000000 # Use "stick" (mark/space) parity
-
-
-class PosixSerial(SerialBase):
-    """\
-    Serial port class POSIX implementation. Serial port configuration is=20
-    done with termios and fcntl. Runs on Linux and many other Un*x like
-    systems.
-    """
-
-    def open(self):
-        """\
-        Open port with current settings. This may throw a SerialException
-        if the port cannot be opened."""
-        if self._port is None:
-            raise SerialException("Port must be configured before it can b=
e used.")
-        if self._isOpen:
-            raise SerialException("Port is already open.")
-        self.fd =3D None
-        # open
-        try:
-            self.fd =3D os.open(self.portstr, os.O_RDWR|os.O_NOCTTY|os.O_N=
ONBLOCK)
-        except OSError, msg:
-            self.fd =3D None
-            raise SerialException(msg.errno, "could not open port %s: %s" =
% (self._port, msg))
-        #~ fcntl.fcntl(self.fd, FCNTL.F_SETFL, 0)  # set blocking
-
-        try:
-            self._reconfigurePort()
-        except:
-            try:
-                os.close(self.fd)
-            except:
-                # ignore any exception when closing the port
-                # also to keep original exception that happened when setti=
ng up
-                pass
-            self.fd =3D None
-            raise
-        else:
-            self._isOpen =3D True
-        self.flushInput()
-
-
-    def _reconfigurePort(self):
-        """Set communication parameters on opened port."""
-        if self.fd is None:
-            raise SerialException("Can only operate on a valid file descri=
ptor")
-        custom_baud =3D None
-
-        vmin =3D vtime =3D 0                # timeout is done via select
-        if self._interCharTimeout is not None:
-            vmin =3D 1
-            vtime =3D int(self._interCharTimeout * 10)
-        try:
-            orig_attr =3D termios.tcgetattr(self.fd)
-            iflag, oflag, cflag, lflag, ispeed, ospeed, cc =3D orig_attr
-        except termios.error, msg:      # if a port is nonexistent but has=
 a /dev file, it'll fail here
-            raise SerialException("Could not configure port: %s" % msg)
-        # set up raw mode / no echo / binary
-        cflag |=3D  (TERMIOS.CLOCAL|TERMIOS.CREAD)
-        lflag &=3D ~(TERMIOS.ICANON|TERMIOS.ECHO|TERMIOS.ECHOE|TERMIOS.ECH=
OK|TERMIOS.ECHONL|
-                     TERMIOS.ISIG|TERMIOS.IEXTEN) #|TERMIOS.ECHOPRT
-        for flag in ('ECHOCTL', 'ECHOKE'): # netbsd workaround for Erk
-            if hasattr(TERMIOS, flag):
-                lflag &=3D ~getattr(TERMIOS, flag)
-
-        oflag &=3D ~(TERMIOS.OPOST)
-        iflag &=3D ~(TERMIOS.INLCR|TERMIOS.IGNCR|TERMIOS.ICRNL|TERMIOS.IGN=
BRK)
-        if hasattr(TERMIOS, 'IUCLC'):
-            iflag &=3D ~TERMIOS.IUCLC
-        if hasattr(TERMIOS, 'PARMRK'):
-            iflag &=3D ~TERMIOS.PARMRK
-
-        # setup baud rate
-        try:
-            ispeed =3D ospeed =3D getattr(TERMIOS, 'B%s' % (self._baudrate=
))
-        except AttributeError:
-            try:
-                ispeed =3D ospeed =3D baudrate_constants[self._baudrate]
-            except KeyError:
-                #~ raise ValueError('Invalid baud rate: %r' % self._baudra=
te)
-                # may need custom baud rate, it isn't in our list.
-                ispeed =3D ospeed =3D getattr(TERMIOS, 'B38400')
-                try:
-                    custom_baud =3D int(self._baudrate) # store for later
-                except ValueError:
-                    raise ValueError('Invalid baud rate: %r' % self._baudr=
ate)
-                else:
-                    if custom_baud < 0:
-                        raise ValueError('Invalid baud rate: %r' % self._b=
audrate)
-
-        # setup char len
-        cflag &=3D ~TERMIOS.CSIZE
-        if self._bytesize =3D=3D 8:
-            cflag |=3D TERMIOS.CS8
-        elif self._bytesize =3D=3D 7:
-            cflag |=3D TERMIOS.CS7
-        elif self._bytesize =3D=3D 6:
-            cflag |=3D TERMIOS.CS6
-        elif self._bytesize =3D=3D 5:
-            cflag |=3D TERMIOS.CS5
-        else:
-            raise ValueError('Invalid char len: %r' % self._bytesize)
-        # setup stop bits
-        if self._stopbits =3D=3D STOPBITS_ONE:
-            cflag &=3D ~(TERMIOS.CSTOPB)
-        elif self._stopbits =3D=3D STOPBITS_ONE_POINT_FIVE:
-            cflag |=3D  (TERMIOS.CSTOPB)  # XXX same as TWO.. there is no =
POSIX support for 1.5
-        elif self._stopbits =3D=3D STOPBITS_TWO:
-            cflag |=3D  (TERMIOS.CSTOPB)
-        else:
-            raise ValueError('Invalid stop bit specification: %r' % self._=
stopbits)
-        # setup parity
-        iflag &=3D ~(TERMIOS.INPCK|TERMIOS.ISTRIP)
-        if self._parity =3D=3D PARITY_NONE:
-            cflag &=3D ~(TERMIOS.PARENB|TERMIOS.PARODD)
-        elif self._parity =3D=3D PARITY_EVEN:
-            cflag &=3D ~(TERMIOS.PARODD)
-            cflag |=3D  (TERMIOS.PARENB)
-        elif self._parity =3D=3D PARITY_ODD:
-            cflag |=3D  (TERMIOS.PARENB|TERMIOS.PARODD)
-        elif self._parity =3D=3D PARITY_MARK and plat[:5] =3D=3D 'linux':
-            cflag |=3D  (TERMIOS.PARENB|CMSPAR|TERMIOS.PARODD)
-        elif self._parity =3D=3D PARITY_SPACE and plat[:5] =3D=3D 'linux':
-            cflag |=3D  (TERMIOS.PARENB|CMSPAR)
-            cflag &=3D ~(TERMIOS.PARODD)
-        else:
-            raise ValueError('Invalid parity: %r' % self._parity)
-        # setup flow control
-        # xonxoff
-        if hasattr(TERMIOS, 'IXANY'):
-            if self._xonxoff:
-                iflag |=3D  (TERMIOS.IXON|TERMIOS.IXOFF) #|TERMIOS.IXANY)
-            else:
-                iflag &=3D ~(TERMIOS.IXON|TERMIOS.IXOFF|TERMIOS.IXANY)
-        else:
-            if self._xonxoff:
-                iflag |=3D  (TERMIOS.IXON|TERMIOS.IXOFF)
-            else:
-                iflag &=3D ~(TERMIOS.IXON|TERMIOS.IXOFF)
-        # rtscts
-        if hasattr(TERMIOS, 'CRTSCTS'):
-            if self._rtscts:
-                cflag |=3D  (TERMIOS.CRTSCTS)
-            else:
-                cflag &=3D ~(TERMIOS.CRTSCTS)
-        elif hasattr(TERMIOS, 'CNEW_RTSCTS'):   # try it with alternate co=
nstant name
-            if self._rtscts:
-                cflag |=3D  (TERMIOS.CNEW_RTSCTS)
-            else:
-                cflag &=3D ~(TERMIOS.CNEW_RTSCTS)
-        # XXX should there be a warning if setting up rtscts (and xonxoff =
etc) fails??
-
-        # buffer
-        # vmin "minimal number of characters to be read. 0 for non blockin=
g"
-        if vmin < 0 or vmin > 255:
-            raise ValueError('Invalid vmin: %r ' % vmin)
-        cc[TERMIOS.VMIN] =3D vmin
-        # vtime
-        if vtime < 0 or vtime > 255:
-            raise ValueError('Invalid vtime: %r' % vtime)
-        cc[TERMIOS.VTIME] =3D vtime
-        # activate settings
-        if [iflag, oflag, cflag, lflag, ispeed, ospeed, cc] !=3D orig_attr:
-            termios.tcsetattr(self.fd, TERMIOS.TCSANOW, [iflag, oflag, cfl=
ag, lflag, ispeed, ospeed, cc])
-
-        # apply custom baud rate, if any
-        if custom_baud is not None:
-            set_special_baudrate(self, custom_baud)
-
-    def close(self):
-        """Close port"""
-        if self._isOpen:
-            if self.fd is not None:
-                os.close(self.fd)
-                self.fd =3D None
-            self._isOpen =3D False
-
-    def makeDeviceName(self, port):
-        return device(port)
-
-    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -=
  -
-
-    def inWaiting(self):
-        """Return the number of characters currently in the input buffer."=
""
-        #~ s =3D fcntl.ioctl(self.fd, TERMIOS.FIONREAD, TIOCM_zero_str)
-        s =3D fcntl.ioctl(self.fd, TIOCINQ, TIOCM_zero_str)
-        return struct.unpack('I',s)[0]
-
-    # select based implementation, proved to work on many systems
-    def read(self, size=3D1):
-        """\
-        Read size bytes from the serial port. If a timeout is set it may
-        return less characters as requested. With no timeout it will block
-        until the requested number of bytes is read.
-        """
-        if not self._isOpen: raise portNotOpenError
-        read =3D bytearray()
-        while len(read) < size:
-            try:
-                ready,_,_ =3D select.select([self.fd],[],[], self._timeout)
-                # If select was used with a timeout, and the timeout occur=
s, it
-                # returns with empty lists -> thus abort read operation.
-                # For timeout =3D=3D 0 (non-blocking operation) also abort=
 when there
-                # is nothing to read.
-                if not ready:
-                    break   # timeout
-                buf =3D os.read(self.fd, size-len(read))
-                # read should always return some data as select reported i=
t was
-                # ready to read when we get to this point.
-                if not buf:
-                    # Disconnected devices, at least on Linux, show the
-                    # behavior that they are always ready to read immediat=
ely
-                    # but reading returns nothing.
-                    raise SerialException('device reports readiness to rea=
d but returned no data (device disconnected or multiple access on port?)')
-                read.extend(buf)
-            except OSError, e:
-                # this is for Python 3.x where select.error is a subclass =
of OSError
-                # ignore EAGAIN errors. all other errors are shown
-                if e.errno !=3D errno.EAGAIN:
-                    raise SerialException('read failed: %s' % (e,))
-            except select.error, e:
-                # this is for Python 2.x
-                # ignore EAGAIN errors. all other errors are shown
-                # see also http://www.python.org/dev/peps/pep-3151/#select
-                if e[0] !=3D errno.EAGAIN:
-                    raise SerialException('read failed: %s' % (e,))
-        return bytes(read)
-
-    def write(self, data):
-        """Output the given string over the serial port."""
-        if not self._isOpen: raise portNotOpenError
-        d =3D to_bytes(data)
-        tx_len =3D len(d)
-        if self._writeTimeout is not None and self._writeTimeout > 0:
-            timeout =3D time.time() + self._writeTimeout
-        else:
-            timeout =3D None
-        while tx_len > 0:
-            try:
-                n =3D os.write(self.fd, d)
-                if timeout:
-                    # when timeout is set, use select to wait for being re=
ady
-                    # with the time left as timeout
-                    timeleft =3D timeout - time.time()
-                    if timeleft < 0:
-                        raise writeTimeoutError
-                    _, ready, _ =3D select.select([], [self.fd], [], timel=
eft)
-                    if not ready:
-                        raise writeTimeoutError
-                else:
-                    # wait for write operation
-                    _, ready, _ =3D select.select([], [self.fd], [], None)
-                    if not ready:
-                        raise SerialException('write failed (select)')
-                d =3D d[n:]
-                tx_len -=3D n
-            except OSError, v:
-                if v.errno !=3D errno.EAGAIN:
-                    raise SerialException('write failed: %s' % (v,))
-        return len(data)
-
-    def flush(self):
-        """\
-        Flush of file like objects. In this case, wait until all data
-        is written.
-        """
-        self.drainOutput()
-
-    def flushInput(self):
-        """Clear input buffer, discarding all that is in the buffer."""
-        if not self._isOpen: raise portNotOpenError
-        termios.tcflush(self.fd, TERMIOS.TCIFLUSH)
-
-    def flushOutput(self):
-        """\
-        Clear output buffer, aborting the current output and discarding all
-        that is in the buffer.
-        """
-        if not self._isOpen: raise portNotOpenError
-        termios.tcflush(self.fd, TERMIOS.TCOFLUSH)
-
-    def sendBreak(self, duration=3D0.25):
-        """\
-        Send break condition. Timed, returns to idle state after given
-        duration.
-        """
-        if not self._isOpen: raise portNotOpenError
-        termios.tcsendbreak(self.fd, int(duration/0.25))
-
-    def setBreak(self, level=3D1):
-        """\
-        Set break: Controls TXD. When active, no transmitting is possible.
-        """
-        if self.fd is None: raise portNotOpenError
-        if level:
-            fcntl.ioctl(self.fd, TIOCSBRK)
-        else:
-            fcntl.ioctl(self.fd, TIOCCBRK)
-
-    def setRTS(self, level=3D1):
-        """Set terminal status line: Request To Send"""
-        if not self._isOpen: raise portNotOpenError
-        if level:
-            fcntl.ioctl(self.fd, TIOCMBIS, TIOCM_RTS_str)
-        else:
-            fcntl.ioctl(self.fd, TIOCMBIC, TIOCM_RTS_str)
-
-    def setDTR(self, level=3D1):
-        """Set terminal status line: Data Terminal Ready"""
-        if not self._isOpen: raise portNotOpenError
-        if level:
-            fcntl.ioctl(self.fd, TIOCMBIS, TIOCM_DTR_str)
-        else:
-            fcntl.ioctl(self.fd, TIOCMBIC, TIOCM_DTR_str)
-
-    def getCTS(self):
-        """Read terminal status line: Clear To Send"""
-        if not self._isOpen: raise portNotOpenError
-        s =3D fcntl.ioctl(self.fd, TIOCMGET, TIOCM_zero_str)
-        return struct.unpack('I',s)[0] & TIOCM_CTS !=3D 0
-
-    def getDSR(self):
-        """Read terminal status line: Data Set Ready"""
-        if not self._isOpen: raise portNotOpenError
-        s =3D fcntl.ioctl(self.fd, TIOCMGET, TIOCM_zero_str)
-        return struct.unpack('I',s)[0] & TIOCM_DSR !=3D 0
-
-    def getRI(self):
-        """Read terminal status line: Ring Indicator"""
-        if not self._isOpen: raise portNotOpenError
-        s =3D fcntl.ioctl(self.fd, TIOCMGET, TIOCM_zero_str)
-        return struct.unpack('I',s)[0] & TIOCM_RI !=3D 0
-
-    def getCD(self):
-        """Read terminal status line: Carrier Detect"""
-        if not self._isOpen: raise portNotOpenError
-        s =3D fcntl.ioctl(self.fd, TIOCMGET, TIOCM_zero_str)
-        return struct.unpack('I',s)[0] & TIOCM_CD !=3D 0
-
-    # - - platform specific - - - -
-
-    def outWaiting(self):
-        """Return the number of characters currently in the output buffer.=
"""
-        #~ s =3D fcntl.ioctl(self.fd, TERMIOS.FIONREAD, TIOCM_zero_str)
-        s =3D fcntl.ioctl(self.fd, TIOCOUTQ, TIOCM_zero_str)
-        return struct.unpack('I',s)[0]
-
-    def drainOutput(self):
-        """internal - not portable!"""
-        if not self._isOpen: raise portNotOpenError
-        termios.tcdrain(self.fd)
-
-    def nonblocking(self):
-        """internal - not portable!"""
-        if not self._isOpen: raise portNotOpenError
-        fcntl.fcntl(self.fd, FCNTL.F_SETFL, os.O_NONBLOCK)
-
-    def fileno(self):
-        """\
-        For easier use of the serial port instance with select.
-        WARNING: this function is not portable to different platforms!
-        """
-        if not self._isOpen: raise portNotOpenError
-        return self.fd
-
-    def setXON(self, level=3DTrue):
-        """\
-        Manually control flow - when software flow control is enabled.
-        This will send XON (true) and XOFF (false) to the other device.
-        WARNING: this function is not portable to different platforms!
-        """
-        if not self.hComPort: raise portNotOpenError
-        if enable:
-            termios.tcflow(self.fd, TERMIOS.TCION)
-        else:
-            termios.tcflow(self.fd, TERMIOS.TCIOFF)
-
-    def flowControlOut(self, enable):
-        """\
-        Manually control flow of outgoing data - when hardware or software=
 flow
-        control is enabled.
-        WARNING: this function is not portable to different platforms!
-        """
-        if not self._isOpen: raise portNotOpenError
-        if enable:
-            termios.tcflow(self.fd, TERMIOS.TCOON)
-        else:
-            termios.tcflow(self.fd, TERMIOS.TCOOFF)
-
-
-# assemble Serial class with the platform specific implementation and the =
base
-# for file-like behavior. for Python 2.6 and newer, that provide the new I=
/O
-# library, derive from io.RawIOBase
-try:
-    import io
-except ImportError:
-    # classic version with our own file-like emulation
-    class Serial(PosixSerial, FileLike):
-        pass
-else:
-    # io library present
-    class Serial(PosixSerial, io.RawIOBase):
-        pass
-
-class PosixPollSerial(Serial):
-    """\
-    Poll based read implementation. Not all systems support poll properly.
-    However this one has better handling of errors, such as a device
-    disconnecting while it's in use (e.g. USB-serial unplugged).
-    """
-
-    def read(self, size=3D1):
-        """\
-        Read size bytes from the serial port. If a timeout is set it may
-        return less characters as requested. With no timeout it will block
-        until the requested number of bytes is read.
-        """
-        if self.fd is None: raise portNotOpenError
-        read =3D bytearray()
-        poll =3D select.poll()
-        poll.register(self.fd, select.POLLIN|select.POLLERR|select.POLLHUP=
|select.POLLNVAL)
-        if size > 0:
-            while len(read) < size:
-                # print "\tread(): size",size, "have", len(read)    #debug
-                # wait until device becomes ready to read (or something fa=
ils)
-                for fd, event in poll.poll(self._timeout*1000):
-                    if event & (select.POLLERR|select.POLLHUP|select.POLLN=
VAL):
-                        raise SerialException('device reports error (poll)=
')
-                    #  we don't care if it is select.POLLIN or timeout, th=
at's
-                    #  handled below
-                buf =3D os.read(self.fd, size - len(read))
-                read.extend(buf)
-                if ((self._timeout is not None and self._timeout >=3D 0) o=
r=20
-                    (self._interCharTimeout is not None and self._interCha=
rTimeout > 0)) and not buf:
-                    break   # early abort on timeout
-        return bytes(read)
-
-
-if __name__ =3D=3D '__main__':
-    s =3D Serial(0,
-                 baudrate=3D19200,        # baud rate
-                 bytesize=3DEIGHTBITS,    # number of data bits
-                 parity=3DPARITY_EVEN,    # enable parity checking
-                 stopbits=3DSTOPBITS_ONE, # number of stop bits
-                 timeout=3D3,             # set a timeout value, None for =
waiting forever
-                 xonxoff=3D0,             # enable software flow control
-                 rtscts=3D0,              # enable RTS/CTS flow control
-               )
-    s.setRTS(1)
-    s.setDTR(1)
-    s.flushInput()
-    s.flushOutput()
-    s.write('hello')
-    sys.stdout.write('%r\n' % s.read(5))
-    sys.stdout.write('%s\n' % s.inWaiting())
-    del s
-
diff --git a/scripts/serial/serialutil.py b/scripts/serial/serialutil.py
deleted file mode 100644
index af0d2f6402..0000000000
--- a/scripts/serial/serialutil.py
+++ /dev/null
@@ -1,572 +0,0 @@
-#! python
-# Python Serial Port Extension for Win32, Linux, BSD, Jython
-# see __init__.py
-#
-# (C) 2001-2010 Chris Liechti <cliechti@gmx.net>
-# this is distributed under a free software license, see license.txt
-
-# compatibility for older Python < 2.6
-try:
-    bytes
-    bytearray
-except (NameError, AttributeError):
-    # Python older than 2.6 do not have these types. Like for Python 2.6 t=
hey
-    # should behave like str. For Python older than 3.0 we want to work wi=
th
-    # strings anyway, only later versions have a true bytes type.
-    bytes =3D str
-    # bytearray is a mutable type that is easily turned into an instance of
-    # bytes
-    class bytearray(list):
-        # for bytes(bytearray()) usage
-        def __str__(self): return ''.join(self)
-        def __repr__(self): return 'bytearray(%r)' % ''.join(self)
-        # append automatically converts integers to characters
-        def append(self, item):
-            if isinstance(item, str):
-                list.append(self, item)
-            else:
-                list.append(self, chr(item))
-        # +=3D
-        def __iadd__(self, other):
-            for byte in other:
-                self.append(byte)
-            return self
-
-        def __getslice__(self, i, j):
-            return bytearray(list.__getslice__(self, i, j))
-
-        def __getitem__(self, item):
-            if isinstance(item, slice):
-                return bytearray(list.__getitem__(self, item))
-            else:
-                return ord(list.__getitem__(self, item))
-
-        def __eq__(self, other):
-            if isinstance(other, basestring):
-                other =3D bytearray(other)
-            return list.__eq__(self, other)
-
-# ``memoryview`` was introduced in Python 2.7 and ``bytes(some_memoryview)=
``
-# isn't returning the contents (very unfortunate). Therefore we need speci=
al
-# cases and test for it. Ensure that there is a ``memoryview`` object for =
older
-# Python versions. This is easier than making every test dependent on its
-# existence.
-try:
-    memoryview
-except (NameError, AttributeError):
-    # implementation does not matter as we do not realy use it.
-    # it just must not inherit from something else we might care for.
-    class memoryview:
-        pass
-
-
-# all Python versions prior 3.x convert ``str([17])`` to '[17]' instead of=
 '\x11'
-# so a simple ``bytes(sequence)`` doesn't work for all versions
-def to_bytes(seq):
-    """convert a sequence to a bytes type"""
-    if isinstance(seq, bytes):
-        return seq
-    elif isinstance(seq, bytearray):
-        return bytes(seq)
-    elif isinstance(seq, memoryview):
-        return seq.tobytes()
-    else:
-        b =3D bytearray()
-        for item in seq:
-            b.append(item)  # this one handles int and str for our emulati=
on and ints for Python 3.x
-        return bytes(b)
-
-# create control bytes
-XON  =3D to_bytes([17])
-XOFF =3D to_bytes([19])
-
-CR =3D to_bytes([13])
-LF =3D to_bytes([10])
-
-
-PARITY_NONE, PARITY_EVEN, PARITY_ODD, PARITY_MARK, PARITY_SPACE =3D 'N', '=
E', 'O', 'M', 'S'
-STOPBITS_ONE, STOPBITS_ONE_POINT_FIVE, STOPBITS_TWO =3D (1, 1.5, 2)
-FIVEBITS, SIXBITS, SEVENBITS, EIGHTBITS =3D (5, 6, 7, 8)
-
-PARITY_NAMES =3D {
-    PARITY_NONE:  'None',
-    PARITY_EVEN:  'Even',
-    PARITY_ODD:   'Odd',
-    PARITY_MARK:  'Mark',
-    PARITY_SPACE: 'Space',
-}
-
-
-class SerialException(IOError):
-    """Base class for serial port related exceptions."""
-
-
-class SerialTimeoutException(SerialException):
-    """Write timeouts give an exception"""
-
-
-writeTimeoutError =3D SerialTimeoutException('Write timeout')
-portNotOpenError =3D SerialException('Attempting to use a port that is not=
 open')
-
-
-class FileLike(object):
-    """\
-    An abstract file like class.
-
-    This class implements readline and readlines based on read and
-    writelines based on write.
-    This class is used to provide the above functions for to Serial
-    port objects.
-
-    Note that when the serial port was opened with _NO_ timeout that
-    readline blocks until it sees a newline (or the specified size is
-    reached) and that readlines would never return and therefore
-    refuses to work (it raises an exception in this case)!
-    """
-
-    def __init__(self):
-        self.closed =3D True
-
-    def close(self):
-        self.closed =3D True
-
-    # so that ports are closed when objects are discarded
-    def __del__(self):
-        """Destructor.  Calls close()."""
-        # The try/except block is in case this is called at program
-        # exit time, when it's possible that globals have already been
-        # deleted, and then the close() call might fail.  Since
-        # there's nothing we can do about such failures and they annoy
-        # the end users, we suppress the traceback.
-        try:
-            self.close()
-        except:
-            pass
-
-    def writelines(self, sequence):
-        for line in sequence:
-            self.write(line)
-
-    def flush(self):
-        """flush of file like objects"""
-        pass
-
-    # iterator for e.g. "for line in Serial(0): ..." usage
-    def next(self):
-        line =3D self.readline()
-        if not line: raise StopIteration
-        return line
-
-    def __iter__(self):
-        return self
-
-    def readline(self, size=3DNone, eol=3DLF):
-        """\
-        Read a line which is terminated with end-of-line (eol) character
-        ('\n' by default) or until timeout.
-        """
-        leneol =3D len(eol)
-        line =3D bytearray()
-        while True:
-            c =3D self.read(1)
-            if c:
-                line +=3D c
-                if line[-leneol:] =3D=3D eol:
-                    break
-                if size is not None and len(line) >=3D size:
-                    break
-            else:
-                break
-        return bytes(line)
-
-    def readlines(self, sizehint=3DNone, eol=3DLF):
-        """\
-        Read a list of lines, until timeout.
-        sizehint is ignored.
-        """
-        if self.timeout is None:
-            raise ValueError("Serial port MUST have enabled timeout for th=
is function!")
-        leneol =3D len(eol)
-        lines =3D []
-        while True:
-            line =3D self.readline(eol=3Deol)
-            if line:
-                lines.append(line)
-                if line[-leneol:] !=3D eol:    # was the line received wit=
h a timeout?
-                    break
-            else:
-                break
-        return lines
-
-    def xreadlines(self, sizehint=3DNone):
-        """\
-        Read lines, implemented as generator. It will raise StopIteration =
on
-        timeout (empty read). sizehint is ignored.
-        """
-        while True:
-            line =3D self.readline()
-            if not line: break
-            yield line
-
-    # other functions of file-likes - not used by pySerial
-
-    #~ readinto(b)
-
-    def seek(self, pos, whence=3D0):
-        raise IOError("file is not seekable")
-
-    def tell(self):
-        raise IOError("file is not seekable")
-
-    def truncate(self, n=3DNone):
-        raise IOError("file is not seekable")
-
-    def isatty(self):
-        return False
-
-
-class SerialBase(object):
-    """\
-    Serial port base class. Provides __init__ function and properties to
-    get/set port settings.
-    """
-
-    # default values, may be overridden in subclasses that do not support =
all values
-    BAUDRATES =3D (50, 75, 110, 134, 150, 200, 300, 600, 1200, 1800, 2400,=
 4800,
-                 9600, 19200, 38400, 57600, 115200, 230400, 460800, 500000,
-                 576000, 921600, 1000000, 1152000, 1500000, 2000000, 25000=
00,
-                 3000000, 3500000, 4000000)
-    BYTESIZES =3D (FIVEBITS, SIXBITS, SEVENBITS, EIGHTBITS)
-    PARITIES  =3D (PARITY_NONE, PARITY_EVEN, PARITY_ODD, PARITY_MARK, PARI=
TY_SPACE)
-    STOPBITS  =3D (STOPBITS_ONE, STOPBITS_ONE_POINT_FIVE, STOPBITS_TWO)
-
-    def __init__(self,
-                 port =3D None,           # number of device, numbering st=
arts at
-                                        # zero. if everything fails, the u=
ser
-                                        # can specify a device string, note
-                                        # that this isn't portable anymore
-                                        # port will be opened if one is sp=
ecified
-                 baudrate=3D9600,         # baud rate
-                 bytesize=3DEIGHTBITS,    # number of data bits
-                 parity=3DPARITY_NONE,    # enable parity checking
-                 stopbits=3DSTOPBITS_ONE, # number of stop bits
-                 timeout=3DNone,          # set a timeout value, None to w=
ait forever
-                 xonxoff=3DFalse,         # enable software flow control
-                 rtscts=3DFalse,          # enable RTS/CTS flow control
-                 writeTimeout=3DNone,     # set a timeout for writes
-                 dsrdtr=3DFalse,          # None: use rtscts setting, dsrd=
tr override if True or False
-                 interCharTimeout=3DNone  # Inter-character timeout, None =
to disable
-                 ):
-        """\
-        Initialize comm port object. If a port is given, then the port wil=
l be
-        opened immediately. Otherwise a Serial port object in closed state
-        is returned.
-        """
-
-        self._isOpen   =3D False
-        self._port     =3D None           # correct value is assigned belo=
w through properties
-        self._baudrate =3D None           # correct value is assigned belo=
w through properties
-        self._bytesize =3D None           # correct value is assigned belo=
w through properties
-        self._parity   =3D None           # correct value is assigned belo=
w through properties
-        self._stopbits =3D None           # correct value is assigned belo=
w through properties
-        self._timeout  =3D None           # correct value is assigned belo=
w through properties
-        self._writeTimeout =3D None       # correct value is assigned belo=
w through properties
-        self._xonxoff  =3D None           # correct value is assigned belo=
w through properties
-        self._rtscts   =3D None           # correct value is assigned belo=
w through properties
-        self._dsrdtr   =3D None           # correct value is assigned belo=
w through properties
-        self._interCharTimeout =3D None   # correct value is assigned belo=
w through properties
-
-        # assign values using get/set methods using the properties feature
-        self.port     =3D port
-        self.baudrate =3D baudrate
-        self.bytesize =3D bytesize
-        self.parity   =3D parity
-        self.stopbits =3D stopbits
-        self.timeout  =3D timeout
-        self.writeTimeout =3D writeTimeout
-        self.xonxoff  =3D xonxoff
-        self.rtscts   =3D rtscts
-        self.dsrdtr   =3D dsrdtr
-        self.interCharTimeout =3D interCharTimeout
-
-        if port is not None:
-            self.open()
-
-    def isOpen(self):
-        """Check if the port is opened."""
-        return self._isOpen
-
-    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -=
  -
-
-    # TODO: these are not really needed as the is the BAUDRATES etc. attri=
bute...
-    # maybe i remove them before the final release...
-
-    def getSupportedBaudrates(self):
-        return [(str(b), b) for b in self.BAUDRATES]
-
-    def getSupportedByteSizes(self):
-        return [(str(b), b) for b in self.BYTESIZES]
-
-    def getSupportedStopbits(self):
-        return [(str(b), b) for b in self.STOPBITS]
-
-    def getSupportedParities(self):
-        return [(PARITY_NAMES[b], b) for b in self.PARITIES]
-
-    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -=
  -
-
-    def setPort(self, port):
-        """\
-        Change the port. The attribute portstr is set to a string that
-        contains the name of the port.
-        """
-
-        was_open =3D self._isOpen
-        if was_open: self.close()
-        if port is not None:
-            if isinstance(port, basestring):
-                self.portstr =3D port
-            else:
-                self.portstr =3D self.makeDeviceName(port)
-        else:
-            self.portstr =3D None
-        self._port =3D port
-        self.name =3D self.portstr
-        if was_open: self.open()
-
-    def getPort(self):
-        """\
-        Get the current port setting. The value that was passed on init or=
 using
-        setPort() is passed back. See also the attribute portstr which con=
tains
-        the name of the port as a string.
-        """
-        return self._port
-
-    port =3D property(getPort, setPort, doc=3D"Port setting")
-
-
-    def setBaudrate(self, baudrate):
-        """\
-        Change baud rate. It raises a ValueError if the port is open and t=
he
-        baud rate is not possible. If the port is closed, then the value is
-        accepted and the exception is raised when the port is opened.
-        """
-        try:
-            b =3D int(baudrate)
-        except TypeError:
-            raise ValueError("Not a valid baudrate: %r" % (baudrate,))
-        else:
-            if b <=3D 0:
-                raise ValueError("Not a valid baudrate: %r" % (baudrate,))
-            self._baudrate =3D b
-            if self._isOpen:  self._reconfigurePort()
-
-    def getBaudrate(self):
-        """Get the current baud rate setting."""
-        return self._baudrate
-
-    baudrate =3D property(getBaudrate, setBaudrate, doc=3D"Baud rate setti=
ng")
-
-
-    def setByteSize(self, bytesize):
-        """Change byte size."""
-        if bytesize not in self.BYTESIZES: raise ValueError("Not a valid b=
yte size: %r" % (bytesize,))
-        self._bytesize =3D bytesize
-        if self._isOpen: self._reconfigurePort()
-
-    def getByteSize(self):
-        """Get the current byte size setting."""
-        return self._bytesize
-
-    bytesize =3D property(getByteSize, setByteSize, doc=3D"Byte size setti=
ng")
-
-
-    def setParity(self, parity):
-        """Change parity setting."""
-        if parity not in self.PARITIES: raise ValueError("Not a valid pari=
ty: %r" % (parity,))
-        self._parity =3D parity
-        if self._isOpen: self._reconfigurePort()
-
-    def getParity(self):
-        """Get the current parity setting."""
-        return self._parity
-
-    parity =3D property(getParity, setParity, doc=3D"Parity setting")
-
-
-    def setStopbits(self, stopbits):
-        """Change stop bits size."""
-        if stopbits not in self.STOPBITS: raise ValueError("Not a valid st=
op bit size: %r" % (stopbits,))
-        self._stopbits =3D stopbits
-        if self._isOpen: self._reconfigurePort()
-
-    def getStopbits(self):
-        """Get the current stop bits setting."""
-        return self._stopbits
-
-    stopbits =3D property(getStopbits, setStopbits, doc=3D"Stop bits setti=
ng")
-
-
-    def setTimeout(self, timeout):
-        """Change timeout setting."""
-        if timeout is not None:
-            try:
-                timeout + 1     # test if it's a number, will throw a Type=
Error if not...
-            except TypeError:
-                raise ValueError("Not a valid timeout: %r" % (timeout,))
-            if timeout < 0: raise ValueError("Not a valid timeout: %r" % (=
timeout,))
-        self._timeout =3D timeout
-        if self._isOpen: self._reconfigurePort()
-
-    def getTimeout(self):
-        """Get the current timeout setting."""
-        return self._timeout
-
-    timeout =3D property(getTimeout, setTimeout, doc=3D"Timeout setting fo=
r read()")
-
-
-    def setWriteTimeout(self, timeout):
-        """Change timeout setting."""
-        if timeout is not None:
-            if timeout < 0: raise ValueError("Not a valid timeout: %r" % (=
timeout,))
-            try:
-                timeout + 1     #test if it's a number, will throw a TypeE=
rror if not...
-            except TypeError:
-                raise ValueError("Not a valid timeout: %r" % timeout)
-
-        self._writeTimeout =3D timeout
-        if self._isOpen: self._reconfigurePort()
-
-    def getWriteTimeout(self):
-        """Get the current timeout setting."""
-        return self._writeTimeout
-
-    writeTimeout =3D property(getWriteTimeout, setWriteTimeout, doc=3D"Tim=
eout setting for write()")
-
-
-    def setXonXoff(self, xonxoff):
-        """Change XON/XOFF setting."""
-        self._xonxoff =3D xonxoff
-        if self._isOpen: self._reconfigurePort()
-
-    def getXonXoff(self):
-        """Get the current XON/XOFF setting."""
-        return self._xonxoff
-
-    xonxoff =3D property(getXonXoff, setXonXoff, doc=3D"XON/XOFF setting")
-
-    def setRtsCts(self, rtscts):
-        """Change RTS/CTS flow control setting."""
-        self._rtscts =3D rtscts
-        if self._isOpen: self._reconfigurePort()
-
-    def getRtsCts(self):
-        """Get the current RTS/CTS flow control setting."""
-        return self._rtscts
-
-    rtscts =3D property(getRtsCts, setRtsCts, doc=3D"RTS/CTS flow control =
setting")
-
-    def setDsrDtr(self, dsrdtr=3DNone):
-        """Change DsrDtr flow control setting."""
-        if dsrdtr is None:
-            # if not set, keep backwards compatibility and follow rtscts s=
etting
-            self._dsrdtr =3D self._rtscts
-        else:
-            # if defined independently, follow its value
-            self._dsrdtr =3D dsrdtr
-        if self._isOpen: self._reconfigurePort()
-
-    def getDsrDtr(self):
-        """Get the current DSR/DTR flow control setting."""
-        return self._dsrdtr
-
-    dsrdtr =3D property(getDsrDtr, setDsrDtr, "DSR/DTR flow control settin=
g")
-
-    def setInterCharTimeout(self, interCharTimeout):
-        """Change inter-character timeout setting."""
-        if interCharTimeout is not None:
-            if interCharTimeout < 0: raise ValueError("Not a valid timeout=
: %r" % interCharTimeout)
-            try:
-                interCharTimeout + 1     # test if it's a number, will thr=
ow a TypeError if not...
-            except TypeError:
-                raise ValueError("Not a valid timeout: %r" % interCharTime=
out)
-
-        self._interCharTimeout =3D interCharTimeout
-        if self._isOpen: self._reconfigurePort()
-
-    def getInterCharTimeout(self):
-        """Get the current inter-character timeout setting."""
-        return self._interCharTimeout
-
-    interCharTimeout =3D property(getInterCharTimeout, setInterCharTimeout=
, doc=3D"Inter-character timeout setting for read()")
-
-    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -=
  -
-
-    _SETTINGS =3D ('baudrate', 'bytesize', 'parity', 'stopbits', 'xonxoff',
-            'dsrdtr', 'rtscts', 'timeout', 'writeTimeout', 'interCharTimeo=
ut')
-
-    def getSettingsDict(self):
-        """\
-        Get current port settings as a dictionary. For use with
-        applySettingsDict.
-        """
-        return dict([(key, getattr(self, '_'+key)) for key in self._SETTIN=
GS])
-
-    def applySettingsDict(self, d):
-        """\
-        apply stored settings from a dictionary returned from
-        getSettingsDict. it's allowed to delete keys from the dictionary. =
these
-        values will simply left unchanged.
-        """
-        for key in self._SETTINGS:
-            if d[key] !=3D getattr(self, '_'+key):   # check against inter=
nal "_" value
-                setattr(self, key, d[key])          # set non "_" value to=
 use properties write function
-
-    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -=
  -
-
-    def __repr__(self):
-        """String representation of the current port settings and its stat=
e."""
-        return "%s<id=3D0x%x, open=3D%s>(port=3D%r, baudrate=3D%r, bytesiz=
e=3D%r, parity=3D%r, stopbits=3D%r, timeout=3D%r, xonxoff=3D%r, rtscts=3D%r=
, dsrdtr=3D%r)" % (
-            self.__class__.__name__,
-            id(self),
-            self._isOpen,
-            self.portstr,
-            self.baudrate,
-            self.bytesize,
-            self.parity,
-            self.stopbits,
-            self.timeout,
-            self.xonxoff,
-            self.rtscts,
-            self.dsrdtr,
-        )
-
-
-    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -=
  -
-    # compatibility with io library
-
-    def readable(self): return True
-    def writable(self): return True
-    def seekable(self): return False
-    def readinto(self, b):
-        data =3D self.read(len(b))
-        n =3D len(data)
-        try:
-            b[:n] =3D data
-        except TypeError, err:
-            import array
-            if not isinstance(b, array.array):
-                raise err
-            b[:n] =3D array.array('b', data)
-        return n
-
-
-if __name__ =3D=3D '__main__':
-    import sys
-    s =3D SerialBase()
-    sys.stdout.write('port name:  %s\n' % s.portstr)
-    sys.stdout.write('baud rates: %s\n' % s.getSupportedBaudrates())
-    sys.stdout.write('byte sizes: %s\n' % s.getSupportedByteSizes())
-    sys.stdout.write('parities:   %s\n' % s.getSupportedParities())
-    sys.stdout.write('stop bits:  %s\n' % s.getSupportedStopbits())
-    sys.stdout.write('%s\n' % s)
diff --git a/scripts/serial/tools/__init__.py b/scripts/serial/tools/__init=
__.py
deleted file mode 100644
index 0efe34b218..0000000000
--- a/scripts/serial/tools/__init__.py
+++ /dev/null
@@ -1 +0,0 @@
-# empty #
\ No newline at end of file
diff --git a/scripts/serial/tools/list_ports.py b/scripts/serial/tools/list=
_ports.py
deleted file mode 100644
index d373a5566d..0000000000
--- a/scripts/serial/tools/list_ports.py
+++ /dev/null
@@ -1,103 +0,0 @@
-#!/usr/bin/env python
-
-# portable serial port access with python
-# this is a wrapper module for different platform implementations of the
-# port enumeration feature
-#
-# (C) 2011-2013 Chris Liechti <cliechti@gmx.net>
-# this is distributed under a free software license, see license.txt
-
-"""\
-This module will provide a function called comports that returns an
-iterable (generator or list) that will enumerate available com ports. Note=
 that
-on some systems non-existent ports may be listed.
-
-Additionally a grep function is supplied that can be used to search for po=
rts
-based on their descriptions or hardware ID.
-"""
-
-import sys, os, re
-
-# chose an implementation, depending on os
-#~ if sys.platform =3D=3D 'cli':
-#~ else:
-import os
-# chose an implementation, depending on os
-if os.name =3D=3D 'nt': #sys.platform =3D=3D 'win32':
-    from serial.tools.list_ports_windows import *
-elif os.name =3D=3D 'posix':
-    from serial.tools.list_ports_posix import *
-#~ elif os.name =3D=3D 'java':
-else:
-    raise ImportError("Sorry: no implementation for your platform ('%s') a=
vailable" % (os.name,))
-
-# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - =
- - -
-
-def grep(regexp):
-    """\
-    Search for ports using a regular expression. Port name, description and
-    hardware ID are searched. The function returns an iterable that return=
s the
-    same tuples as comport() would do.
-    """
-    r =3D re.compile(regexp, re.I)
-    for port, desc, hwid in comports():
-        if r.search(port) or r.search(desc) or r.search(hwid):
-            yield port, desc, hwid
-
-
-# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - =
- - -
-def main():
-    import optparse
-
-    parser =3D optparse.OptionParser(
-        usage =3D "%prog [options] [<regexp>]",
-        description =3D "Miniterm - A simple terminal program for the seri=
al port."
-    )
-
-    parser.add_option("--debug",
-            help=3D"print debug messages and tracebacks (development mode)=
",
-            dest=3D"debug",
-            default=3DFalse,
-            action=3D'store_true')
-
-    parser.add_option("-v", "--verbose",
-            help=3D"show more messages (can be given multiple times)",
-            dest=3D"verbose",
-            default=3D1,
-            action=3D'count')
-
-    parser.add_option("-q", "--quiet",
-            help=3D"suppress all messages",
-            dest=3D"verbose",
-            action=3D'store_const',
-            const=3D0)
-
-    (options, args) =3D parser.parse_args()
-
-
-    hits =3D 0
-    # get iteraror w/ or w/o filter
-    if args:
-        if len(args) > 1:
-            parser.error('more than one regexp not supported')
-        print "Filtered list with regexp: %r" % (args[0],)
-        iterator =3D sorted(grep(args[0]))
-    else:
-        iterator =3D sorted(comports())
-    # list them
-    for port, desc, hwid in iterator:
-        print("%-20s" % (port,))
-        if options.verbose > 1:
-            print("    desc: %s" % (desc,))
-            print("    hwid: %s" % (hwid,))
-        hits +=3D 1
-    if options.verbose:
-        if hits:
-            print("%d ports found" % (hits,))
-        else:
-            print("no ports found")
-
-# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - =
- - -
-# test
-if __name__ =3D=3D '__main__':
-    main()
diff --git a/scripts/serial/tools/list_ports_linux.py b/scripts/serial/tool=
s/list_ports_linux.py
deleted file mode 100644
index 955761eaa4..0000000000
--- a/scripts/serial/tools/list_ports_linux.py
+++ /dev/null
@@ -1,152 +0,0 @@
-#!/usr/bin/env python=0D
-=0D
-# portable serial port access with python=0D
-#=0D
-# This is a module that gathers a list of serial ports including details o=
n=0D
-# GNU/Linux systems=0D
-#=0D
-# (C) 2011-2013 Chris Liechti <cliechti@gmx.net>=0D
-# this is distributed under a free software license, see license.txt=0D
-=0D
-import glob=0D
-import sys=0D
-import os=0D
-import re=0D
-=0D
-try:=0D
-    import subprocess=0D
-except ImportError:=0D
-    def popen(argv):=0D
-        try:=0D
-            si, so =3D  os.popen4(' '.join(argv))=0D
-            return so.read().strip()=0D
-        except:=0D
-            raise IOError('lsusb failed')=0D
-else:=0D
-    def popen(argv):=0D
-        try:=0D
-            return subprocess.check_output(argv, stderr=3Dsubprocess.STDOU=
T).strip()=0D
-        except:=0D
-            raise IOError('lsusb failed')=0D
-=0D
-=0D
-# The comports function is expected to return an iterable that yields tupl=
es of=0D
-# 3 strings: port name, human readable description and a hardware ID.=0D
-#=0D
-# as currently no method is known to get the second two strings easily, th=
ey=0D
-# are currently just identical to the port name.=0D
-=0D
-# try to detect the OS so that a device can be selected...=0D
-plat =3D sys.platform.lower()=0D
-=0D
-def read_line(filename):=0D
-    """\=0D
-    Helper function to read a single line from a file.=0D
-    Returns None on errors..=0D
-    """=0D
-    try:=0D
-        f =3D open(filename)=0D
-        line =3D f.readline().strip()=0D
-        f.close()=0D
-        return line=0D
-    except IOError:=0D
-        return None=0D
-=0D
-def re_group(regexp, text):=0D
-    """search for regexp in text, return 1st group on match"""=0D
-    if sys.version < '3':=0D
-        m =3D re.search(regexp, text)=0D
-    else:=0D
-        # text is bytes-like=0D
-        m =3D re.search(regexp, text.decode('ascii', 'replace'))=0D
-    if m: return m.group(1)=0D
-=0D
-=0D
-# try to extract descriptions from sysfs. this was done by experimenting,=
=0D
-# no guarantee that it works for all devices or in the future...=0D
-=0D
-def usb_sysfs_hw_string(sysfs_path):=0D
-    """given a path to a usb device in sysfs, return a string describing i=
t"""=0D
-    bus, dev =3D os.path.basename(os.path.realpath(sysfs_path)).split('-')=
=0D
-    snr =3D read_line(sysfs_path+'/serial')=0D
-    if snr:=0D
-        snr_txt =3D ' SNR=3D%s' % (snr,)=0D
-    else:=0D
-        snr_txt =3D ''=0D
-    return 'USB VID:PID=3D%s:%s%s' % (=0D
-            read_line(sysfs_path+'/idVendor'),=0D
-            read_line(sysfs_path+'/idProduct'),=0D
-            snr_txt=0D
-            )=0D
-=0D
-def usb_lsusb_string(sysfs_path):=0D
-    base =3D os.path.basename(os.path.realpath(sysfs_path))=0D
-    bus =3D base.split('-')[0]=0D
-    try:=0D
-        dev =3D int(read_line(os.path.join(sysfs_path, 'devnum')))=0D
-        desc =3D popen(['lsusb', '-v', '-s', '%s:%s' % (bus, dev)])=0D
-        # descriptions from device=0D
-        iManufacturer =3D re_group('iManufacturer\s+\w+ (.+)', desc)=0D
-        iProduct =3D re_group('iProduct\s+\w+ (.+)', desc)=0D
-        iSerial =3D re_group('iSerial\s+\w+ (.+)', desc) or ''=0D
-        # descriptions from kernel=0D
-        idVendor =3D re_group('idVendor\s+0x\w+ (.+)', desc)=0D
-        idProduct =3D re_group('idProduct\s+0x\w+ (.+)', desc)=0D
-        # create descriptions. prefer text from device, fall back to the o=
thers=0D
-        return '%s %s %s' % (iManufacturer or idVendor, iProduct or idProd=
uct, iSerial)=0D
-    except IOError:=0D
-        return base=0D
-=0D
-def describe(device):=0D
-    """\=0D
-    Get a human readable description.=0D
-    For USB-Serial devices try to run lsusb to get a human readable descri=
ption.=0D
-    For USB-CDC devices read the description from sysfs.=0D
-    """=0D
-    base =3D os.path.basename(device)=0D
-    # USB-Serial devices=0D
-    sys_dev_path =3D '/sys/class/tty/%s/device/driver/%s' % (base, base)=0D
-    if os.path.exists(sys_dev_path):=0D
-        sys_usb =3D os.path.dirname(os.path.dirname(os.path.realpath(sys_d=
ev_path)))=0D
-        return usb_lsusb_string(sys_usb)=0D
-    # USB-CDC devices=0D
-    sys_dev_path =3D '/sys/class/tty/%s/device/interface' % (base,)=0D
-    if os.path.exists(sys_dev_path):=0D
-        return read_line(sys_dev_path)=0D
-    # USB Product Information=0D
-    sys_dev_path =3D '/sys/class/tty/%s/device' % (base,)=0D
-    if os.path.exists(sys_dev_path):=0D
-        product_name_file =3D os.path.dirname(os.path.realpath(sys_dev_pat=
h)) + "/product"=0D
-        if os.path.exists(product_name_file):=0D
-            return read_line(product_name_file)=0D
-    return base=0D
-=0D
-def hwinfo(device):=0D
-    """Try to get a HW identification using sysfs"""=0D
-    base =3D os.path.basename(device)=0D
-    if os.path.exists('/sys/class/tty/%s/device' % (base,)):=0D
-        # PCI based devices=0D
-        sys_id_path =3D '/sys/class/tty/%s/device/id' % (base,)=0D
-        if os.path.exists(sys_id_path):=0D
-            return read_line(sys_id_path)=0D
-        # USB-Serial devices=0D
-        sys_dev_path =3D '/sys/class/tty/%s/device/driver/%s' % (base, bas=
e)=0D
-        if os.path.exists(sys_dev_path):=0D
-            sys_usb =3D os.path.dirname(os.path.dirname(os.path.realpath(s=
ys_dev_path)))=0D
-            return usb_sysfs_hw_string(sys_usb)=0D
-        # USB-CDC devices=0D
-        if base.startswith('ttyACM'):=0D
-            sys_dev_path =3D '/sys/class/tty/%s/device' % (base,)=0D
-            if os.path.exists(sys_dev_path):=0D
-                return usb_sysfs_hw_string(sys_dev_path + '/..')=0D
-    return 'n/a'    # XXX directly remove these from the list?=0D
-=0D
-def comports():=0D
-    devices =3D glob.glob('/dev/ttyS*') + glob.glob('/dev/ttyUSB*') + glob=
.glob('/dev/ttyACM*')=0D
-    return [(d, describe(d), hwinfo(d)) for d in devices]=0D
-=0D
-# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - =
- - -=0D
-# test=0D
-if __name__ =3D=3D '__main__':=0D
-    for port, desc, hwid in sorted(comports()):=0D
-        print "%s: %s [%s]" % (port, desc, hwid)=0D
diff --git a/scripts/serial/urlhandler/__init__.py b/scripts/serial/urlhand=
ler/__init__.py
deleted file mode 100644
index 0efe34b218..0000000000
--- a/scripts/serial/urlhandler/__init__.py
+++ /dev/null
@@ -1 +0,0 @@
-# empty #
\ No newline at end of file
diff --git a/scripts/serial/urlhandler/protocol_hwgrep.py b/scripts/serial/=
urlhandler/protocol_hwgrep.py
deleted file mode 100644
index 62cda43aa7..0000000000
--- a/scripts/serial/urlhandler/protocol_hwgrep.py
+++ /dev/null
@@ -1,45 +0,0 @@
-#! python
-#
-# Python Serial Port Extension for Win32, Linux, BSD, Jython
-# see __init__.py
-#
-# This module implements a special URL handler that uses the port listing =
to
-# find ports by searching the string descriptions.
-#
-# (C) 2011 Chris Liechti <cliechti@gmx.net>
-# this is distributed under a free software license, see license.txt
-#
-# URL format:    hwgrep://regexp
-
-import serial
-import serial.tools.list_ports
-
-class Serial(serial.Serial):
-    """Just inherit the native Serial port implementation and patch the op=
en function."""
-
-    def setPort(self, value):
-        """translate port name before storing it"""
-        if isinstance(value, basestring) and value.startswith('hwgrep://'):
-            serial.Serial.setPort(self, self.fromURL(value))
-        else:
-            serial.Serial.setPort(self, value)
-
-    def fromURL(self, url):
-        """extract host and port from an URL string"""
-        if url.lower().startswith("hwgrep://"): url =3D url[9:]
-        # use a for loop to get the 1st element from the generator
-        for port, desc, hwid in serial.tools.list_ports.grep(url):
-            return port
-        else:
-            raise serial.SerialException('no ports found matching regexp %=
r' % (url,))
-
-    # override property
-    port =3D property(serial.Serial.getPort, setPort, doc=3D"Port setting")
-
-# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - =
- -
-if __name__ =3D=3D '__main__':
-    #~ s =3D Serial('hwgrep://ttyS0')
-    s =3D Serial(None)
-    s.port =3D 'hwgrep://ttyS0'
-    print s
-
diff --git a/scripts/serial/urlhandler/protocol_loop.py b/scripts/serial/ur=
lhandler/protocol_loop.py
deleted file mode 100644
index a414839761..0000000000
--- a/scripts/serial/urlhandler/protocol_loop.py
+++ /dev/null
@@ -1,279 +0,0 @@
-#! python
-#
-# Python Serial Port Extension for Win32, Linux, BSD, Jython
-# see __init__.py
-#
-# This module implements a loop back connection receiving itself what it s=
ent.
-#
-# The purpose of this module is.. well... You can run the unit tests with =
it.
-# and it was so easy to implement ;-)
-#
-# (C) 2001-2011 Chris Liechti <cliechti@gmx.net>
-# this is distributed under a free software license, see license.txt
-#
-# URL format:    loop://[option[/option...]]
-# options:
-# - "debug" print diagnostic messages
-
-from serial.serialutil import *
-import threading
-import time
-import logging
-
-# map log level names to constants. used in fromURL()
-LOGGER_LEVELS =3D {
-    'debug': logging.DEBUG,
-    'info': logging.INFO,
-    'warning': logging.WARNING,
-    'error': logging.ERROR,
-    }
-
-
-class LoopbackSerial(SerialBase):
-    """Serial port implementation that simulates a loop back connection in=
 plain software."""
-
-    BAUDRATES =3D (50, 75, 110, 134, 150, 200, 300, 600, 1200, 1800, 2400,=
 4800,
-                 9600, 19200, 38400, 57600, 115200)
-
-    def open(self):
-        """\
-        Open port with current settings. This may throw a SerialException
-        if the port cannot be opened.
-        """
-        if self._isOpen:
-            raise SerialException("Port is already open.")
-        self.logger =3D None
-        self.buffer_lock =3D threading.Lock()
-        self.loop_buffer =3D bytearray()
-        self.cts =3D False
-        self.dsr =3D False
-
-        if self._port is None:
-            raise SerialException("Port must be configured before it can b=
e used.")
-        # not that there is anything to open, but the function applies the
-        # options found in the URL
-        self.fromURL(self.port)
-
-        # not that there anything to configure...
-        self._reconfigurePort()
-        # all things set up get, now a clean start
-        self._isOpen =3D True
-        if not self._rtscts:
-            self.setRTS(True)
-            self.setDTR(True)
-        self.flushInput()
-        self.flushOutput()
-
-    def _reconfigurePort(self):
-        """\
-        Set communication parameters on opened port. For the loop://
-        protocol all settings are ignored!
-        """
-        # not that's it of any real use, but it helps in the unit tests
-        if not isinstance(self._baudrate, (int, long)) or not 0 < self._ba=
udrate < 2**32:
-            raise ValueError("invalid baudrate: %r" % (self._baudrate))
-        if self.logger:
-            self.logger.info('_reconfigurePort()')
-
-    def close(self):
-        """Close port"""
-        if self._isOpen:
-            self._isOpen =3D False
-            # in case of quick reconnects, give the server some time
-            time.sleep(0.3)
-
-    def makeDeviceName(self, port):
-        raise SerialException("there is no sensible way to turn numbers in=
to URLs")
-
-    def fromURL(self, url):
-        """extract host and port from an URL string"""
-        if url.lower().startswith("loop://"): url =3D url[7:]
-        try:
-            # process options now, directly altering self
-            for option in url.split('/'):
-                if '=3D' in option:
-                    option, value =3D option.split('=3D', 1)
-                else:
-                    value =3D None
-                if not option:
-                    pass
-                elif option =3D=3D 'logging':
-                    logging.basicConfig()   # XXX is that good to call it =
here?
-                    self.logger =3D logging.getLogger('pySerial.loop')
-                    self.logger.setLevel(LOGGER_LEVELS[value])
-                    self.logger.debug('enabled logging')
-                else:
-                    raise ValueError('unknown option: %r' % (option,))
-        except ValueError, e:
-            raise SerialException('expected a string in the form "[loop://=
][option[/option...]]": %s' % e)
-
-    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -=
  -
-
-    def inWaiting(self):
-        """Return the number of characters currently in the input buffer."=
""
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            # attention the logged value can differ from return value in
-            # threaded environments...
-            self.logger.debug('inWaiting() -> %d' % (len(self.loop_buffer)=
,))
-        return len(self.loop_buffer)
-
-    def read(self, size=3D1):
-        """\
-        Read size bytes from the serial port. If a timeout is set it may
-        return less characters as requested. With no timeout it will block
-        until the requested number of bytes is read.
-        """
-        if not self._isOpen: raise portNotOpenError
-        if self._timeout is not None:
-            timeout =3D time.time() + self._timeout
-        else:
-            timeout =3D None
-        data =3D bytearray()
-        while size > 0:
-            self.buffer_lock.acquire()
-            try:
-                block =3D to_bytes(self.loop_buffer[:size])
-                del self.loop_buffer[:size]
-            finally:
-                self.buffer_lock.release()
-            data +=3D block
-            size -=3D len(block)
-            # check for timeout now, after data has been read.
-            # useful for timeout =3D 0 (non blocking) read
-            if timeout and time.time() > timeout:
-                break
-        return bytes(data)
-
-    def write(self, data):
-        """\
-        Output the given string over the serial port. Can block if the
-        connection is blocked. May raise SerialException if the connection=
 is
-        closed.
-        """
-        if not self._isOpen: raise portNotOpenError
-        # ensure we're working with bytes
-        data =3D to_bytes(data)
-        # calculate aprox time that would be used to send the data
-        time_used_to_send =3D 10.0*len(data) / self._baudrate
-        # when a write timeout is configured check if we would be successf=
ul
-        # (not sending anything, not even the part that would have time)
-        if self._writeTimeout is not None and time_used_to_send > self._wr=
iteTimeout:
-            time.sleep(self._writeTimeout) # must wait so that unit test s=
ucceeds
-            raise writeTimeoutError
-        self.buffer_lock.acquire()
-        try:
-            self.loop_buffer +=3D data
-        finally:
-            self.buffer_lock.release()
-        return len(data)
-
-    def flushInput(self):
-        """Clear input buffer, discarding all that is in the buffer."""
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('flushInput()')
-        self.buffer_lock.acquire()
-        try:
-            del self.loop_buffer[:]
-        finally:
-            self.buffer_lock.release()
-
-    def flushOutput(self):
-        """\
-        Clear output buffer, aborting the current output and
-        discarding all that is in the buffer.
-        """
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('flushOutput()')
-
-    def sendBreak(self, duration=3D0.25):
-        """\
-        Send break condition. Timed, returns to idle state after given
-        duration.
-        """
-        if not self._isOpen: raise portNotOpenError
-
-    def setBreak(self, level=3DTrue):
-        """\
-        Set break: Controls TXD. When active, to transmitting is
-        possible.
-        """
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('setBreak(%r)' % (level,))
-
-    def setRTS(self, level=3DTrue):
-        """Set terminal status line: Request To Send"""
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('setRTS(%r) -> state of CTS' % (level,))
-        self.cts =3D level
-
-    def setDTR(self, level=3DTrue):
-        """Set terminal status line: Data Terminal Ready"""
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('setDTR(%r) -> state of DSR' % (level,))
-        self.dsr =3D level
-
-    def getCTS(self):
-        """Read terminal status line: Clear To Send"""
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('getCTS() -> state of RTS (%r)' % (self.cts,))
-        return self.cts
-
-    def getDSR(self):
-        """Read terminal status line: Data Set Ready"""
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('getDSR() -> state of DTR (%r)' % (self.dsr,))
-        return self.dsr
-
-    def getRI(self):
-        """Read terminal status line: Ring Indicator"""
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('returning dummy for getRI()')
-        return False
-
-    def getCD(self):
-        """Read terminal status line: Carrier Detect"""
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('returning dummy for getCD()')
-        return True
-
-    # - - - platform specific - - -
-    # None so far
-
-
-# assemble Serial class with the platform specific implementation and the =
base
-# for file-like behavior. for Python 2.6 and newer, that provide the new I=
/O
-# library, derive from io.RawIOBase
-try:
-    import io
-except ImportError:
-    # classic version with our own file-like emulation
-    class Serial(LoopbackSerial, FileLike):
-        pass
-else:
-    # io library present
-    class Serial(LoopbackSerial, io.RawIOBase):
-        pass
-
-
-# simple client test
-if __name__ =3D=3D '__main__':
-    import sys
-    s =3D Serial('loop://')
-    sys.stdout.write('%s\n' % s)
-
-    sys.stdout.write("write...\n")
-    s.write("hello\n")
-    s.flush()
-    sys.stdout.write("read: %s\n" % s.read(5))
-
-    s.close()
diff --git a/scripts/serial/urlhandler/protocol_rfc2217.py b/scripts/serial=
/urlhandler/protocol_rfc2217.py
deleted file mode 100644
index 981ba45fea..0000000000
--- a/scripts/serial/urlhandler/protocol_rfc2217.py
+++ /dev/null
@@ -1,11 +0,0 @@
-#! python
-#
-# Python Serial Port Extension for Win32, Linux, BSD, Jython
-# see ../__init__.py
-#
-# This is a thin wrapper to load the rfc2271 implementation.
-#
-# (C) 2011 Chris Liechti <cliechti@gmx.net>
-# this is distributed under a free software license, see license.txt
-
-from serial.rfc2217 import Serial
diff --git a/scripts/serial/urlhandler/protocol_socket.py b/scripts/serial/=
urlhandler/protocol_socket.py
deleted file mode 100644
index dc5992342c..0000000000
--- a/scripts/serial/urlhandler/protocol_socket.py
+++ /dev/null
@@ -1,291 +0,0 @@
-#! python
-#
-# Python Serial Port Extension for Win32, Linux, BSD, Jython
-# see __init__.py
-#
-# This module implements a simple socket based client.
-# It does not support changing any port parameters and will silently ignor=
e any
-# requests to do so.
-#
-# The purpose of this module is that applications using pySerial can conne=
ct to
-# TCP/IP to serial port converters that do not support RFC 2217.
-#
-# (C) 2001-2011 Chris Liechti <cliechti@gmx.net>
-# this is distributed under a free software license, see license.txt
-#
-# URL format:    socket://<host>:<port>[/option[/option...]]
-# options:
-# - "debug" print diagnostic messages
-
-from serial.serialutil import *
-import time
-import socket
-import select
-import logging
-
-# map log level names to constants. used in fromURL()
-LOGGER_LEVELS =3D {
-    'debug': logging.DEBUG,
-    'info': logging.INFO,
-    'warning': logging.WARNING,
-    'error': logging.ERROR,
-    }
-
-POLL_TIMEOUT =3D 2
-
-class SocketSerial(SerialBase):
-    """Serial port implementation for plain sockets."""
-
-    BAUDRATES =3D (50, 75, 110, 134, 150, 200, 300, 600, 1200, 1800, 2400,=
 4800,
-                 9600, 19200, 38400, 57600, 115200)
-
-    def open(self):
-        """\
-        Open port with current settings. This may throw a SerialException
-        if the port cannot be opened.
-        """
-        self.logger =3D None
-        if self._port is None:
-            raise SerialException("Port must be configured before it can b=
e used.")
-        if self._isOpen:
-            raise SerialException("Port is already open.")
-        try:
-            # XXX in future replace with create_connection (py >=3D2.6)
-            self._socket =3D socket.socket(socket.AF_INET, socket.SOCK_STR=
EAM)
-            self._socket.connect(self.fromURL(self.portstr))
-        except Exception, msg:
-            self._socket =3D None
-            raise SerialException("Could not open port %s: %s" % (self.por=
tstr, msg))
-
-        self._socket.settimeout(POLL_TIMEOUT) # used for write timeout sup=
port :/
-
-        # not that there anything to configure...
-        self._reconfigurePort()
-        # all things set up get, now a clean start
-        self._isOpen =3D True
-        if not self._rtscts:
-            self.setRTS(True)
-            self.setDTR(True)
-        self.flushInput()
-        self.flushOutput()
-
-    def _reconfigurePort(self):
-        """\
-        Set communication parameters on opened port. For the socket://
-        protocol all settings are ignored!
-        """
-        if self._socket is None:
-            raise SerialException("Can only operate on open ports")
-        if self.logger:
-            self.logger.info('ignored port configuration change')
-
-    def close(self):
-        """Close port"""
-        if self._isOpen:
-            if self._socket:
-                try:
-                    self._socket.shutdown(socket.SHUT_RDWR)
-                    self._socket.close()
-                except:
-                    # ignore errors.
-                    pass
-                self._socket =3D None
-            self._isOpen =3D False
-            # in case of quick reconnects, give the server some time
-            time.sleep(0.3)
-
-    def makeDeviceName(self, port):
-        raise SerialException("there is no sensible way to turn numbers in=
to URLs")
-
-    def fromURL(self, url):
-        """extract host and port from an URL string"""
-        if url.lower().startswith("socket://"): url =3D url[9:]
-        try:
-            # is there a "path" (our options)?
-            if '/' in url:
-                # cut away options
-                url, options =3D url.split('/', 1)
-                # process options now, directly altering self
-                for option in options.split('/'):
-                    if '=3D' in option:
-                        option, value =3D option.split('=3D', 1)
-                    else:
-                        value =3D None
-                    if option =3D=3D 'logging':
-                        logging.basicConfig()   # XXX is that good to call=
 it here?
-                        self.logger =3D logging.getLogger('pySerial.socket=
')
-                        self.logger.setLevel(LOGGER_LEVELS[value])
-                        self.logger.debug('enabled logging')
-                    else:
-                        raise ValueError('unknown option: %r' % (option,))
-            # get host and port
-            host, port =3D url.split(':', 1) # may raise ValueError becaus=
e of unpacking
-            port =3D int(port)               # and this if it's not a numb=
er
-            if not 0 <=3D port < 65536: raise ValueError("port not in rang=
e 0...65535")
-        except ValueError, e:
-            raise SerialException('expected a string in the form "[rfc2217=
://]<host>:<port>[/option[/option...]]": %s' % e)
-        return (host, port)
-
-    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -=
  -
-
-    def inWaiting(self):
-        """Return the number of characters currently in the input buffer."=
""
-        if not self._isOpen: raise portNotOpenError
-        # Poll the socket to see if it is ready for reading.
-        # If ready, at least one byte will be to read.
-        lr, lw, lx =3D select.select([self._socket], [], [], 0)
-        return len(lr)
-
-    def read(self, size=3D1):
-        """\
-        Read size bytes from the serial port. If a timeout is set it may
-        return less characters as requested. With no timeout it will block
-        until the requested number of bytes is read.
-        """
-        if not self._isOpen: raise portNotOpenError
-        data =3D bytearray()
-        if self._timeout is not None:
-            timeout =3D time.time() + self._timeout
-        else:
-            timeout =3D None
-        while len(data) < size and (timeout is None or time.time() < timeo=
ut):
-            try:
-                # an implementation with internal buffer would be better
-                # performing...
-                t =3D time.time()
-                block =3D self._socket.recv(size - len(data))
-                duration =3D time.time() - t
-                if block:
-                    data.extend(block)
-                else:
-                    # no data -> EOF (connection probably closed)
-                    break
-            except socket.timeout:
-                # just need to get out of recv from time to time to check =
if
-                # still alive
-                continue
-            except socket.error, e:
-                # connection fails -> terminate loop
-                raise SerialException('connection failed (%s)' % e)
-        return bytes(data)
-
-    def write(self, data):
-        """\
-        Output the given string over the serial port. Can block if the
-        connection is blocked. May raise SerialException if the connection=
 is
-        closed.
-        """
-        if not self._isOpen: raise portNotOpenError
-        try:
-            self._socket.sendall(to_bytes(data))
-        except socket.error, e:
-            # XXX what exception if socket connection fails
-            raise SerialException("socket connection failed: %s" % e)
-        return len(data)
-
-    def flushInput(self):
-        """Clear input buffer, discarding all that is in the buffer."""
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('ignored flushInput')
-
-    def flushOutput(self):
-        """\
-        Clear output buffer, aborting the current output and
-        discarding all that is in the buffer.
-        """
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('ignored flushOutput')
-
-    def sendBreak(self, duration=3D0.25):
-        """\
-        Send break condition. Timed, returns to idle state after given
-        duration.
-        """
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('ignored sendBreak(%r)' % (duration,))
-
-    def setBreak(self, level=3DTrue):
-        """Set break: Controls TXD. When active, to transmitting is
-        possible."""
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('ignored setBreak(%r)' % (level,))
-
-    def setRTS(self, level=3DTrue):
-        """Set terminal status line: Request To Send"""
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('ignored setRTS(%r)' % (level,))
-
-    def setDTR(self, level=3DTrue):
-        """Set terminal status line: Data Terminal Ready"""
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('ignored setDTR(%r)' % (level,))
-
-    def getCTS(self):
-        """Read terminal status line: Clear To Send"""
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('returning dummy for getCTS()')
-        return True
-
-    def getDSR(self):
-        """Read terminal status line: Data Set Ready"""
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('returning dummy for getDSR()')
-        return True
-
-    def getRI(self):
-        """Read terminal status line: Ring Indicator"""
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('returning dummy for getRI()')
-        return False
-
-    def getCD(self):
-        """Read terminal status line: Carrier Detect"""
-        if not self._isOpen: raise portNotOpenError
-        if self.logger:
-            self.logger.info('returning dummy for getCD()')
-        return True
-
-    # - - - platform specific - - -
-
-    # works on Linux and probably all the other POSIX systems
-    def fileno(self):
-        """Get the file handle of the underlying socket for use with selec=
t"""
-        return self._socket.fileno()
-
-
-# assemble Serial class with the platform specific implementation and the =
base
-# for file-like behavior. for Python 2.6 and newer, that provide the new I=
/O
-# library, derive from io.RawIOBase
-try:
-    import io
-except ImportError:
-    # classic version with our own file-like emulation
-    class Serial(SocketSerial, FileLike):
-        pass
-else:
-    # io library present
-    class Serial(SocketSerial, io.RawIOBase):
-        pass
-
-
-# simple client test
-if __name__ =3D=3D '__main__':
-    import sys
-    s =3D Serial('socket://localhost:7000')
-    sys.stdout.write('%s\n' % s)
-
-    sys.stdout.write("write...\n")
-    s.write("hello\n")
-    s.flush()
-    sys.stdout.write("read: %s\n" % s.read(5))
-
-    s.close()
--=20
2.30.2



