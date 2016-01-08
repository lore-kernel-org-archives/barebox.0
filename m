Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aHUzw-0003KS-5c
 for barebox@lists.infradead.ORg; Fri, 08 Jan 2016 11:15:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Jan 2016 12:13:51 +0100
Message-Id: <1452251635-14689-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1452251635-14689-1-git-send-email-s.hauer@pengutronix.de>
References: <1452251635-14689-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] include pyserial trunk
To: Barebox List <barebox@lists.infradead.org>

From: Jan Luebbe <jlu@pengutronix.de>

The current pyserial is broken, this version contains the fix for:
http://sourceforge.net/p/pyserial/bugs/166/

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 .gitignore                                    |    1 +
 scripts/serial/__init__.py                    |   79 ++
 scripts/serial/rfc2217.py                     | 1327 +++++++++++++++++++++++++
 scripts/serial/serialcli.py                   |  284 ++++++
 scripts/serial/serialposix.py                 |  730 ++++++++++++++
 scripts/serial/serialutil.py                  |  572 +++++++++++
 scripts/serial/tools/__init__.py              |    0
 scripts/serial/tools/list_ports.py            |  103 ++
 scripts/serial/tools/list_ports_linux.py      |  152 +++
 scripts/serial/urlhandler/__init__.py         |    0
 scripts/serial/urlhandler/protocol_hwgrep.py  |   45 +
 scripts/serial/urlhandler/protocol_loop.py    |  279 ++++++
 scripts/serial/urlhandler/protocol_rfc2217.py |   11 +
 scripts/serial/urlhandler/protocol_socket.py  |  291 ++++++
 14 files changed, 3874 insertions(+)
 create mode 100644 scripts/serial/__init__.py
 create mode 100644 scripts/serial/rfc2217.py
 create mode 100644 scripts/serial/serialcli.py
 create mode 100644 scripts/serial/serialposix.py
 create mode 100644 scripts/serial/serialutil.py
 create mode 100644 scripts/serial/tools/__init__.py
 create mode 100644 scripts/serial/tools/list_ports.py
 create mode 100644 scripts/serial/tools/list_ports_linux.py
 create mode 100644 scripts/serial/urlhandler/__init__.py
 create mode 100644 scripts/serial/urlhandler/protocol_hwgrep.py
 create mode 100644 scripts/serial/urlhandler/protocol_loop.py
 create mode 100644 scripts/serial/urlhandler/protocol_rfc2217.py
 create mode 100644 scripts/serial/urlhandler/protocol_socket.py

diff --git a/.gitignore b/.gitignore
index ce2be8a..bbcfa22 100644
--- a/.gitignore
+++ b/.gitignore
@@ -23,6 +23,7 @@
 *.symtypes
 *.elf
 *.patch
+*.pyc
 *.mcp
 *.bct
 *.dcd
diff --git a/scripts/serial/__init__.py b/scripts/serial/__init__.py
new file mode 100644
index 0000000..33ae52e
--- /dev/null
+++ b/scripts/serial/__init__.py
@@ -0,0 +1,79 @@
+#!/usr/bin/env python 
+
+# portable serial port access with python
+# this is a wrapper module for different platform implementations
+#
+# (C) 2001-2010 Chris Liechti <cliechti@gmx.net>
+# this is distributed under a free software license, see license.txt
+
+VERSION = '2.7'
+
+import sys
+
+if sys.platform == 'cli':
+    from serial.serialcli import *
+else:
+    import os
+    # chose an implementation, depending on os
+    if os.name == 'nt': #sys.platform == 'win32':
+        from serial.serialwin32 import *
+    elif os.name == 'posix':
+        from serial.serialposix import *
+    elif os.name == 'java':
+        from serial.serialjava import *
+    else:
+        raise ImportError("Sorry: no implementation for your platform ('%s') available" % (os.name,))
+
+
+protocol_handler_packages = [
+        'serial.urlhandler',
+        ]
+
+def serial_for_url(url, *args, **kwargs):
+    """\
+    Get an instance of the Serial class, depending on port/url. The port is not
+    opened when the keyword parameter 'do_not_open' is true, by default it
+    is. All other parameters are directly passed to the __init__ method when
+    the port is instantiated.
+
+    The list of package names that is searched for protocol handlers is kept in
+    ``protocol_handler_packages``.
+
+    e.g. we want to support a URL ``foobar://``. A module
+    ``my_handlers.protocol_foobar`` is provided by the user. Then
+    ``protocol_handler_packages.append("my_handlers")`` would extend the search
+    path so that ``serial_for_url("foobar://"))`` would work.
+    """
+    # check remove extra parameter to not confuse the Serial class
+    do_open = 'do_not_open' not in kwargs or not kwargs['do_not_open']
+    if 'do_not_open' in kwargs: del kwargs['do_not_open']
+    # the default is to use the native version
+    klass = Serial   # 'native' implementation
+    # check port type and get class
+    try:
+        url_nocase = url.lower()
+    except AttributeError:
+        # it's not a string, use default
+        pass
+    else:
+        if '://' in url_nocase:
+            protocol = url_nocase.split('://', 1)[0]
+            for package_name in protocol_handler_packages:
+                module_name = '%s.protocol_%s' % (package_name, protocol,)
+                try:
+                    handler_module = __import__(module_name)
+                except ImportError:
+                    pass
+                else:
+                    klass = sys.modules[module_name].Serial
+                    break
+            else:
+                raise ValueError('invalid URL, protocol %r not known' % (protocol,))
+        else:
+            klass = Serial   # 'native' implementation
+    # instantiate and open when desired
+    instance = klass(None, *args, **kwargs)
+    instance.port = url
+    if do_open:
+        instance.open()
+    return instance
diff --git a/scripts/serial/rfc2217.py b/scripts/serial/rfc2217.py
new file mode 100644
index 0000000..4fe1a72
--- /dev/null
+++ b/scripts/serial/rfc2217.py
@@ -0,0 +1,1327 @@
+#! python
+#
+# Python Serial Port Extension for Win32, Linux, BSD, Jython
+# see __init__.py
+#
+# This module implements a RFC2217 compatible client. RF2217 descibes a
+# protocol to access serial ports over TCP/IP and allows setting the baud rate,
+# modem control lines etc.
+#
+# (C) 2001-2013 Chris Liechti <cliechti@gmx.net>
+# this is distributed under a free software license, see license.txt
+
+# TODO:
+# - setting control line -> answer is not checked (had problems with one of the
+#   severs). consider implementing a compatibility mode flag to make check
+#   conditional
+# - write timeout not implemented at all
+
+##############################################################################
+# observations and issues with servers
+#=============================================================================
+# sredird V2.2.1
+# - http://www.ibiblio.org/pub/Linux/system/serial/   sredird-2.2.2.tar.gz
+# - does not acknowledge SET_CONTROL (RTS/DTR) correctly, always responding
+#   [105 1] instead of the actual value.
+# - SET_BAUDRATE answer contains 4 extra null bytes -> probably for larger
+#   numbers than 2**32?
+# - To get the signature [COM_PORT_OPTION 0] has to be sent.
+# - run a server: while true; do nc -l -p 7000 -c "sredird debug /dev/ttyUSB0 /var/lock/sredir"; done
+#=============================================================================
+# telnetcpcd (untested)
+# - http://ftp.wayne.edu/kermit/sredird/telnetcpcd-1.09.tar.gz
+# - To get the signature [COM_PORT_OPTION] w/o data has to be sent.
+#=============================================================================
+# ser2net
+# - does not negotiate BINARY or COM_PORT_OPTION for his side but at least
+#   acknowledges that the client activates these options
+# - The configuration may be that the server prints a banner. As this client
+#   implementation does a flushInput on connect, this banner is hidden from
+#   the user application.
+# - NOTIFY_MODEMSTATE: the poll interval of the server seems to be one
+#   second.
+# - To get the signature [COM_PORT_OPTION 0] has to be sent.
+# - run a server: run ser2net daemon, in /etc/ser2net.conf:
+#     2000:telnet:0:/dev/ttyS0:9600 remctl banner
+##############################################################################
+
+# How to identify ports? pySerial might want to support other protocols in the
+# future, so lets use an URL scheme.
+# for RFC2217 compliant servers we will use this:
+#    rfc2217://<host>:<port>[/option[/option...]]
+#
+# options:
+# - "debug" print diagnostic messages
+# - "ign_set_control": do not look at the answers to SET_CONTROL
+# - "poll_modem": issue NOTIFY_MODEMSTATE requests when CTS/DTR/RI/CD is read.
+#   Without this option it expects that the server sends notifications
+#   automatically on change (which most servers do and is according to the
+#   RFC).
+# the order of the options is not relevant
+
+from serial.serialutil import *
+import time
+import struct
+import socket
+import threading
+import Queue
+import logging
+
+# port string is expected to be something like this:
+# rfc2217://host:port
+# host may be an IP or including domain, whatever.
+# port is 0...65535
+
+# map log level names to constants. used in fromURL()
+LOGGER_LEVELS = {
+    'debug': logging.DEBUG,
+    'info': logging.INFO,
+    'warning': logging.WARNING,
+    'error': logging.ERROR,
+    }
+
+
+# telnet protocol characters
+IAC  = to_bytes([255]) # Interpret As Command
+DONT = to_bytes([254])
+DO   = to_bytes([253])
+WONT = to_bytes([252])
+WILL = to_bytes([251])
+IAC_DOUBLED = to_bytes([IAC, IAC])
+
+SE  = to_bytes([240])  # Subnegotiation End
+NOP = to_bytes([241])  # No Operation
+DM  = to_bytes([242])  # Data Mark
+BRK = to_bytes([243])  # Break
+IP  = to_bytes([244])  # Interrupt process
+AO  = to_bytes([245])  # Abort output
+AYT = to_bytes([246])  # Are You There
+EC  = to_bytes([247])  # Erase Character
+EL  = to_bytes([248])  # Erase Line
+GA  = to_bytes([249])  # Go Ahead
+SB =  to_bytes([250])  # Subnegotiation Begin
+
+# selected telnet options
+BINARY = to_bytes([0]) # 8-bit data path
+ECHO = to_bytes([1])   # echo
+SGA = to_bytes([3])    # suppress go ahead
+
+# RFC2217
+COM_PORT_OPTION = to_bytes([44])
+
+# Client to Access Server
+SET_BAUDRATE = to_bytes([1])
+SET_DATASIZE = to_bytes([2])
+SET_PARITY = to_bytes([3])
+SET_STOPSIZE = to_bytes([4])
+SET_CONTROL = to_bytes([5])
+NOTIFY_LINESTATE = to_bytes([6])
+NOTIFY_MODEMSTATE = to_bytes([7])
+FLOWCONTROL_SUSPEND = to_bytes([8])
+FLOWCONTROL_RESUME = to_bytes([9])
+SET_LINESTATE_MASK = to_bytes([10])
+SET_MODEMSTATE_MASK = to_bytes([11])
+PURGE_DATA = to_bytes([12])
+
+SERVER_SET_BAUDRATE = to_bytes([101])
+SERVER_SET_DATASIZE = to_bytes([102])
+SERVER_SET_PARITY = to_bytes([103])
+SERVER_SET_STOPSIZE = to_bytes([104])
+SERVER_SET_CONTROL = to_bytes([105])
+SERVER_NOTIFY_LINESTATE = to_bytes([106])
+SERVER_NOTIFY_MODEMSTATE = to_bytes([107])
+SERVER_FLOWCONTROL_SUSPEND = to_bytes([108])
+SERVER_FLOWCONTROL_RESUME = to_bytes([109])
+SERVER_SET_LINESTATE_MASK = to_bytes([110])
+SERVER_SET_MODEMSTATE_MASK = to_bytes([111])
+SERVER_PURGE_DATA = to_bytes([112])
+
+RFC2217_ANSWER_MAP = {
+    SET_BAUDRATE: SERVER_SET_BAUDRATE,
+    SET_DATASIZE: SERVER_SET_DATASIZE,
+    SET_PARITY: SERVER_SET_PARITY,
+    SET_STOPSIZE: SERVER_SET_STOPSIZE,
+    SET_CONTROL: SERVER_SET_CONTROL,
+    NOTIFY_LINESTATE: SERVER_NOTIFY_LINESTATE,
+    NOTIFY_MODEMSTATE: SERVER_NOTIFY_MODEMSTATE,
+    FLOWCONTROL_SUSPEND: SERVER_FLOWCONTROL_SUSPEND,
+    FLOWCONTROL_RESUME: SERVER_FLOWCONTROL_RESUME,
+    SET_LINESTATE_MASK: SERVER_SET_LINESTATE_MASK,
+    SET_MODEMSTATE_MASK: SERVER_SET_MODEMSTATE_MASK,
+    PURGE_DATA: SERVER_PURGE_DATA,
+}
+
+SET_CONTROL_REQ_FLOW_SETTING = to_bytes([0])        # Request Com Port Flow Control Setting (outbound/both)
+SET_CONTROL_USE_NO_FLOW_CONTROL = to_bytes([1])     # Use No Flow Control (outbound/both)
+SET_CONTROL_USE_SW_FLOW_CONTROL = to_bytes([2])     # Use XON/XOFF Flow Control (outbound/both)
+SET_CONTROL_USE_HW_FLOW_CONTROL = to_bytes([3])     # Use HARDWARE Flow Control (outbound/both)
+SET_CONTROL_REQ_BREAK_STATE = to_bytes([4])         # Request BREAK State
+SET_CONTROL_BREAK_ON = to_bytes([5])                # Set BREAK State ON
+SET_CONTROL_BREAK_OFF = to_bytes([6])               # Set BREAK State OFF
+SET_CONTROL_REQ_DTR = to_bytes([7])                 # Request DTR Signal State
+SET_CONTROL_DTR_ON = to_bytes([8])                  # Set DTR Signal State ON
+SET_CONTROL_DTR_OFF = to_bytes([9])                 # Set DTR Signal State OFF
+SET_CONTROL_REQ_RTS = to_bytes([10])                # Request RTS Signal State
+SET_CONTROL_RTS_ON = to_bytes([11])                 # Set RTS Signal State ON
+SET_CONTROL_RTS_OFF = to_bytes([12])                # Set RTS Signal State OFF
+SET_CONTROL_REQ_FLOW_SETTING_IN = to_bytes([13])    # Request Com Port Flow Control Setting (inbound)
+SET_CONTROL_USE_NO_FLOW_CONTROL_IN = to_bytes([14]) # Use No Flow Control (inbound)
+SET_CONTROL_USE_SW_FLOW_CONTOL_IN = to_bytes([15])  # Use XON/XOFF Flow Control (inbound)
+SET_CONTROL_USE_HW_FLOW_CONTOL_IN = to_bytes([16])  # Use HARDWARE Flow Control (inbound)
+SET_CONTROL_USE_DCD_FLOW_CONTROL = to_bytes([17])   # Use DCD Flow Control (outbound/both)
+SET_CONTROL_USE_DTR_FLOW_CONTROL = to_bytes([18])   # Use DTR Flow Control (inbound)
+SET_CONTROL_USE_DSR_FLOW_CONTROL = to_bytes([19])   # Use DSR Flow Control (outbound/both)
+
+LINESTATE_MASK_TIMEOUT = 128                # Time-out Error
+LINESTATE_MASK_SHIFTREG_EMPTY = 64          # Transfer Shift Register Empty
+LINESTATE_MASK_TRANSREG_EMPTY = 32          # Transfer Holding Register Empty
+LINESTATE_MASK_BREAK_DETECT = 16            # Break-detect Error
+LINESTATE_MASK_FRAMING_ERROR = 8            # Framing Error
+LINESTATE_MASK_PARTIY_ERROR = 4             # Parity Error
+LINESTATE_MASK_OVERRUN_ERROR = 2            # Overrun Error
+LINESTATE_MASK_DATA_READY = 1               # Data Ready
+
+MODEMSTATE_MASK_CD = 128                    # Receive Line Signal Detect (also known as Carrier Detect)
+MODEMSTATE_MASK_RI = 64                     # Ring Indicator
+MODEMSTATE_MASK_DSR = 32                    # Data-Set-Ready Signal State
+MODEMSTATE_MASK_CTS = 16                    # Clear-To-Send Signal State
+MODEMSTATE_MASK_CD_CHANGE = 8               # Delta Receive Line Signal Detect
+MODEMSTATE_MASK_RI_CHANGE = 4               # Trailing-edge Ring Detector
+MODEMSTATE_MASK_DSR_CHANGE = 2              # Delta Data-Set-Ready
+MODEMSTATE_MASK_CTS_CHANGE = 1              # Delta Clear-To-Send
+
+PURGE_RECEIVE_BUFFER = to_bytes([1])        # Purge access server receive data buffer
+PURGE_TRANSMIT_BUFFER = to_bytes([2])       # Purge access server transmit data buffer
+PURGE_BOTH_BUFFERS = to_bytes([3])          # Purge both the access server receive data buffer and the access server transmit data buffer
+
+
+RFC2217_PARITY_MAP = {
+    PARITY_NONE: 1,
+    PARITY_ODD: 2,
+    PARITY_EVEN: 3,
+    PARITY_MARK: 4,
+    PARITY_SPACE: 5,
+}
+RFC2217_REVERSE_PARITY_MAP = dict((v,k) for k,v in RFC2217_PARITY_MAP.items())
+
+RFC2217_STOPBIT_MAP = {
+    STOPBITS_ONE: 1,
+    STOPBITS_ONE_POINT_FIVE: 3,
+    STOPBITS_TWO: 2,
+}
+RFC2217_REVERSE_STOPBIT_MAP = dict((v,k) for k,v in RFC2217_STOPBIT_MAP.items())
+
+# Telnet filter states
+M_NORMAL = 0
+M_IAC_SEEN = 1
+M_NEGOTIATE = 2
+
+# TelnetOption and TelnetSubnegotiation states
+REQUESTED = 'REQUESTED'
+ACTIVE = 'ACTIVE'
+INACTIVE = 'INACTIVE'
+REALLY_INACTIVE = 'REALLY_INACTIVE'
+
+class TelnetOption(object):
+    """Manage a single telnet option, keeps track of DO/DONT WILL/WONT."""
+
+    def __init__(self, connection, name, option, send_yes, send_no, ack_yes, ack_no, initial_state, activation_callback=None):
+        """\
+        Initialize option.
+        :param connection: connection used to transmit answers
+        :param name: a readable name for debug outputs
+        :param send_yes: what to send when option is to be enabled.
+        :param send_no: what to send when option is to be disabled.
+        :param ack_yes: what to expect when remote agrees on option.
+        :param ack_no: what to expect when remote disagrees on option.
+        :param initial_state: options initialized with REQUESTED are tried to
+            be enabled on startup. use INACTIVE for all others.
+        """
+        self.connection = connection
+        self.name = name
+        self.option = option
+        self.send_yes = send_yes
+        self.send_no = send_no
+        self.ack_yes = ack_yes
+        self.ack_no = ack_no
+        self.state = initial_state
+        self.active = False
+        self.activation_callback = activation_callback
+
+    def __repr__(self):
+        """String for debug outputs"""
+        return "%s:%s(%s)" % (self.name, self.active, self.state)
+
+    def process_incoming(self, command):
+        """\
+        A DO/DONT/WILL/WONT was received for this option, update state and
+        answer when needed.
+        """
+        if command == self.ack_yes:
+            if self.state is REQUESTED:
+                self.state = ACTIVE
+                self.active = True
+                if self.activation_callback is not None:
+                    self.activation_callback()
+            elif self.state is ACTIVE:
+                pass
+            elif self.state is INACTIVE:
+                self.state = ACTIVE
+                self.connection.telnetSendOption(self.send_yes, self.option)
+                self.active = True
+                if self.activation_callback is not None:
+                    self.activation_callback()
+            elif self.state is REALLY_INACTIVE:
+                self.connection.telnetSendOption(self.send_no, self.option)
+            else:
+                raise ValueError('option in illegal state %r' % self)
+        elif command == self.ack_no:
+            if self.state is REQUESTED:
+                self.state = INACTIVE
+                self.active = False
+            elif self.state is ACTIVE:
+                self.state = INACTIVE
+                self.connection.telnetSendOption(self.send_no, self.option)
+                self.active = False
+            elif self.state is INACTIVE:
+                pass
+            elif self.state is REALLY_INACTIVE:
+                pass
+            else:
+                raise ValueError('option in illegal state %r' % self)
+
+
+class TelnetSubnegotiation(object):
+    """\
+    A object to handle subnegotiation of options. In this case actually
+    sub-sub options for RFC 2217. It is used to track com port options.
+    """
+
+    def __init__(self, connection, name, option, ack_option=None):
+        if ack_option is None: ack_option = option
+        self.connection = connection
+        self.name = name
+        self.option = option
+        self.value = None
+        self.ack_option = ack_option
+        self.state = INACTIVE
+
+    def __repr__(self):
+        """String for debug outputs."""
+        return "%s:%s" % (self.name, self.state)
+
+    def set(self, value):
+        """\
+        Request a change of the value. a request is sent to the server. if
+        the client needs to know if the change is performed he has to check the
+        state of this object.
+        """
+        self.value = value
+        self.state = REQUESTED
+        self.connection.rfc2217SendSubnegotiation(self.option, self.value)
+        if self.connection.logger:
+            self.connection.logger.debug("SB Requesting %s -> %r" % (self.name, self.value))
+
+    def isReady(self):
+        """\
+        Check if answer from server has been received. when server rejects
+        the change, raise a ValueError.
+        """
+        if self.state == REALLY_INACTIVE:
+            raise ValueError("remote rejected value for option %r" % (self.name))
+        return self.state == ACTIVE
+    # add property to have a similar interface as TelnetOption
+    active = property(isReady)
+
+    def wait(self, timeout=3):
+        """\
+        Wait until the subnegotiation has been acknowledged or timeout. It
+        can also throw a value error when the answer from the server does not
+        match the value sent.
+        """
+        timeout_time = time.time() + timeout
+        while time.time() < timeout_time:
+            time.sleep(0.05)    # prevent 100% CPU load
+            if self.isReady():
+                break
+        else:
+            raise SerialException("timeout while waiting for option %r" % (self.name))
+
+    def checkAnswer(self, suboption):
+        """\
+        Check an incoming subnegotiation block. The parameter already has
+        cut off the header like sub option number and com port option value.
+        """
+        if self.value == suboption[:len(self.value)]:
+            self.state = ACTIVE
+        else:
+            # error propagation done in isReady
+            self.state = REALLY_INACTIVE
+        if self.connection.logger:
+            self.connection.logger.debug("SB Answer %s -> %r -> %s" % (self.name, suboption, self.state))
+
+
+class RFC2217Serial(SerialBase):
+    """Serial port implementation for RFC 2217 remote serial ports."""
+
+    BAUDRATES = (50, 75, 110, 134, 150, 200, 300, 600, 1200, 1800, 2400, 4800,
+                 9600, 19200, 38400, 57600, 115200)
+
+    def open(self):
+        """\
+        Open port with current settings. This may throw a SerialException
+        if the port cannot be opened.
+        """
+        self.logger = None
+        self._ignore_set_control_answer = False
+        self._poll_modem_state = False
+        self._network_timeout = 3
+        if self._port is None:
+            raise SerialException("Port must be configured before it can be used.")
+        if self._isOpen:
+            raise SerialException("Port is already open.")
+        try:
+            self._socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
+            self._socket.connect(self.fromURL(self.portstr))
+            self._socket.setsockopt(socket.IPPROTO_TCP, socket.TCP_NODELAY, 1)
+        except Exception, msg:
+            self._socket = None
+            raise SerialException("Could not open port %s: %s" % (self.portstr, msg))
+
+        self._socket.settimeout(5) # XXX good value?
+
+        # use a thread save queue as buffer. it also simplifies implementing
+        # the read timeout
+        self._read_buffer = Queue.Queue()
+        # to ensure that user writes does not interfere with internal
+        # telnet/rfc2217 options establish a lock
+        self._write_lock = threading.Lock()
+        # name the following separately so that, below, a check can be easily done
+        mandadory_options = [
+            TelnetOption(self, 'we-BINARY', BINARY, WILL, WONT, DO, DONT, INACTIVE),
+            TelnetOption(self, 'we-RFC2217', COM_PORT_OPTION, WILL, WONT, DO, DONT, REQUESTED),
+        ]
+        # all supported telnet options
+        self._telnet_options = [
+            TelnetOption(self, 'ECHO', ECHO, DO, DONT, WILL, WONT, REQUESTED),
+            TelnetOption(self, 'we-SGA', SGA, WILL, WONT, DO, DONT, REQUESTED),
+            TelnetOption(self, 'they-SGA', SGA, DO, DONT, WILL, WONT, REQUESTED),
+            TelnetOption(self, 'they-BINARY', BINARY, DO, DONT, WILL, WONT, INACTIVE),
+            TelnetOption(self, 'they-RFC2217', COM_PORT_OPTION, DO, DONT, WILL, WONT, REQUESTED),
+        ] + mandadory_options
+        # RFC 2217 specific states
+        # COM port settings
+        self._rfc2217_port_settings = {
+            'baudrate': TelnetSubnegotiation(self, 'baudrate', SET_BAUDRATE, SERVER_SET_BAUDRATE),
+            'datasize': TelnetSubnegotiation(self, 'datasize', SET_DATASIZE, SERVER_SET_DATASIZE),
+            'parity':   TelnetSubnegotiation(self, 'parity',   SET_PARITY,   SERVER_SET_PARITY),
+            'stopsize': TelnetSubnegotiation(self, 'stopsize', SET_STOPSIZE, SERVER_SET_STOPSIZE),
+            }
+        # There are more subnegotiation objects, combine all in one dictionary
+        # for easy access
+        self._rfc2217_options = {
+            'purge':    TelnetSubnegotiation(self, 'purge',    PURGE_DATA,   SERVER_PURGE_DATA),
+            'control':  TelnetSubnegotiation(self, 'control',  SET_CONTROL,  SERVER_SET_CONTROL),
+            }
+        self._rfc2217_options.update(self._rfc2217_port_settings)
+        # cache for line and modem states that the server sends to us
+        self._linestate = 0
+        self._modemstate = None
+        self._modemstate_expires = 0
+        # RFC 2217 flow control between server and client
+        self._remote_suspend_flow = False
+
+        self._thread = threading.Thread(target=self._telnetReadLoop)
+        self._thread.setDaemon(True)
+        self._thread.setName('pySerial RFC 2217 reader thread for %s' % (self._port,))
+        self._thread.start()
+
+        # negotiate Telnet/RFC 2217 -> send initial requests
+        for option in self._telnet_options:
+            if option.state is REQUESTED:
+                self.telnetSendOption(option.send_yes, option.option)
+        # now wait until important options are negotiated
+        timeout_time = time.time() + self._network_timeout
+        while time.time() < timeout_time:
+            time.sleep(0.05)    # prevent 100% CPU load
+            if sum(o.active for o in mandadory_options) == sum(o.state != INACTIVE for o in mandadory_options):
+                break
+        else:
+            raise SerialException("Remote does not seem to support RFC2217 or BINARY mode %r" % mandadory_options)
+        if self.logger:
+            self.logger.info("Negotiated options: %s" % self._telnet_options)
+
+        # fine, go on, set RFC 2271 specific things
+        self._reconfigurePort()
+        # all things set up get, now a clean start
+        self._isOpen = True
+        if not self._rtscts:
+            self.setRTS(True)
+            self.setDTR(True)
+        self.flushInput()
+        self.flushOutput()
+
+    def _reconfigurePort(self):
+        """Set communication parameters on opened port."""
+        if self._socket is None:
+            raise SerialException("Can only operate on open ports")
+
+        # if self._timeout != 0 and self._interCharTimeout is not None:
+            # XXX
+
+        if self._writeTimeout is not None:
+            raise NotImplementedError('writeTimeout is currently not supported')
+            # XXX
+
+        # Setup the connection
+        # to get good performance, all parameter changes are sent first...
+        if not isinstance(self._baudrate, (int, long)) or not 0 < self._baudrate < 2**32:
+            raise ValueError("invalid baudrate: %r" % (self._baudrate))
+        self._rfc2217_port_settings['baudrate'].set(struct.pack('!I', self._baudrate))
+        self._rfc2217_port_settings['datasize'].set(struct.pack('!B', self._bytesize))
+        self._rfc2217_port_settings['parity'].set(struct.pack('!B', RFC2217_PARITY_MAP[self._parity]))
+        self._rfc2217_port_settings['stopsize'].set(struct.pack('!B', RFC2217_STOPBIT_MAP[self._stopbits]))
+
+        # and now wait until parameters are active
+        items = self._rfc2217_port_settings.values()
+        if self.logger:
+            self.logger.debug("Negotiating settings: %s" % (items,))
+        timeout_time = time.time() + self._network_timeout
+        while time.time() < timeout_time:
+            time.sleep(0.05)    # prevent 100% CPU load
+            if sum(o.active for o in items) == len(items):
+                break
+        else:
+            raise SerialException("Remote does not accept parameter change (RFC2217): %r" % items)
+        if self.logger:
+            self.logger.info("Negotiated settings: %s" % (items,))
+
+        if self._rtscts and self._xonxoff:
+            raise ValueError('xonxoff and rtscts together are not supported')
+        elif self._rtscts:
+            self.rfc2217SetControl(SET_CONTROL_USE_HW_FLOW_CONTROL)
+        elif self._xonxoff:
+            self.rfc2217SetControl(SET_CONTROL_USE_SW_FLOW_CONTROL)
+        else:
+            self.rfc2217SetControl(SET_CONTROL_USE_NO_FLOW_CONTROL)
+
+    def close(self):
+        """Close port"""
+        if self._isOpen:
+            if self._socket:
+                try:
+                    self._socket.shutdown(socket.SHUT_RDWR)
+                    self._socket.close()
+                except:
+                    # ignore errors.
+                    pass
+                self._socket = None
+            if self._thread:
+                self._thread.join()
+            self._isOpen = False
+            # in case of quick reconnects, give the server some time
+            time.sleep(0.3)
+
+    def makeDeviceName(self, port):
+        raise SerialException("there is no sensible way to turn numbers into URLs")
+
+    def fromURL(self, url):
+        """extract host and port from an URL string"""
+        if url.lower().startswith("rfc2217://"): url = url[10:]
+        try:
+            # is there a "path" (our options)?
+            if '/' in url:
+                # cut away options
+                url, options = url.split('/', 1)
+                # process options now, directly altering self
+                for option in options.split('/'):
+                    if '=' in option:
+                        option, value = option.split('=', 1)
+                    else:
+                        value = None
+                    if option == 'logging':
+                        logging.basicConfig()   # XXX is that good to call it here?
+                        self.logger = logging.getLogger('pySerial.rfc2217')
+                        self.logger.setLevel(LOGGER_LEVELS[value])
+                        self.logger.debug('enabled logging')
+                    elif option == 'ign_set_control':
+                        self._ignore_set_control_answer = True
+                    elif option == 'poll_modem':
+                        self._poll_modem_state = True
+                    elif option == 'timeout':
+                        self._network_timeout = float(value)
+                    else:
+                        raise ValueError('unknown option: %r' % (option,))
+            # get host and port
+            host, port = url.split(':', 1) # may raise ValueError because of unpacking
+            port = int(port)               # and this if it's not a number
+            if not 0 <= port < 65536: raise ValueError("port not in range 0...65535")
+        except ValueError, e:
+            raise SerialException('expected a string in the form "[rfc2217://]<host>:<port>[/option[/option...]]": %s' % e)
+        return (host, port)
+
+    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
+
+    def inWaiting(self):
+        """Return the number of characters currently in the input buffer."""
+        if not self._isOpen: raise portNotOpenError
+        return self._read_buffer.qsize()
+
+    def read(self, size=1):
+        """\
+        Read size bytes from the serial port. If a timeout is set it may
+        return less characters as requested. With no timeout it will block
+        until the requested number of bytes is read.
+        """
+        if not self._isOpen: raise portNotOpenError
+        data = bytearray()
+        try:
+            while len(data) < size:
+                if self._thread is None:
+                    raise SerialException('connection failed (reader thread died)')
+                data.append(self._read_buffer.get(True, self._timeout))
+        except Queue.Empty: # -> timeout
+            pass
+        return bytes(data)
+
+    def write(self, data):
+        """\
+        Output the given string over the serial port. Can block if the
+        connection is blocked. May raise SerialException if the connection is
+        closed.
+        """
+        if not self._isOpen: raise portNotOpenError
+        self._write_lock.acquire()
+        try:
+            try:
+                self._socket.sendall(to_bytes(data).replace(IAC, IAC_DOUBLED))
+            except socket.error, e:
+                raise SerialException("connection failed (socket error): %s" % e) # XXX what exception if socket connection fails
+        finally:
+            self._write_lock.release()
+        return len(data)
+
+    def flushInput(self):
+        """Clear input buffer, discarding all that is in the buffer."""
+        if not self._isOpen: raise portNotOpenError
+        self.rfc2217SendPurge(PURGE_RECEIVE_BUFFER)
+        # empty read buffer
+        while self._read_buffer.qsize():
+            self._read_buffer.get(False)
+
+    def flushOutput(self):
+        """\
+        Clear output buffer, aborting the current output and
+        discarding all that is in the buffer.
+        """
+        if not self._isOpen: raise portNotOpenError
+        self.rfc2217SendPurge(PURGE_TRANSMIT_BUFFER)
+
+    def sendBreak(self, duration=0.25):
+        """\
+        Send break condition. Timed, returns to idle state after given
+        duration.
+        """
+        if not self._isOpen: raise portNotOpenError
+        self.setBreak(True)
+        time.sleep(duration)
+        self.setBreak(False)
+
+    def setBreak(self, level=True):
+        """\
+        Set break: Controls TXD. When active, to transmitting is
+        possible.
+        """
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('set BREAK to %s' % ('inactive', 'active')[bool(level)])
+        if level:
+            self.rfc2217SetControl(SET_CONTROL_BREAK_ON)
+        else:
+            self.rfc2217SetControl(SET_CONTROL_BREAK_OFF)
+
+    def setRTS(self, level=True):
+        """Set terminal status line: Request To Send."""
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('set RTS to %s' % ('inactive', 'active')[bool(level)])
+        if level:
+            self.rfc2217SetControl(SET_CONTROL_RTS_ON)
+        else:
+            self.rfc2217SetControl(SET_CONTROL_RTS_OFF)
+
+    def setDTR(self, level=True):
+        """Set terminal status line: Data Terminal Ready."""
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('set DTR to %s' % ('inactive', 'active')[bool(level)])
+        if level:
+            self.rfc2217SetControl(SET_CONTROL_DTR_ON)
+        else:
+            self.rfc2217SetControl(SET_CONTROL_DTR_OFF)
+
+    def getCTS(self):
+        """Read terminal status line: Clear To Send."""
+        if not self._isOpen: raise portNotOpenError
+        return bool(self.getModemState() & MODEMSTATE_MASK_CTS)
+
+    def getDSR(self):
+        """Read terminal status line: Data Set Ready."""
+        if not self._isOpen: raise portNotOpenError
+        return bool(self.getModemState() & MODEMSTATE_MASK_DSR)
+
+    def getRI(self):
+        """Read terminal status line: Ring Indicator."""
+        if not self._isOpen: raise portNotOpenError
+        return bool(self.getModemState() & MODEMSTATE_MASK_RI)
+
+    def getCD(self):
+        """Read terminal status line: Carrier Detect."""
+        if not self._isOpen: raise portNotOpenError
+        return bool(self.getModemState() & MODEMSTATE_MASK_CD)
+
+    # - - - platform specific - - -
+    # None so far
+
+    # - - - RFC2217 specific - - -
+
+    def _telnetReadLoop(self):
+        """Read loop for the socket."""
+        mode = M_NORMAL
+        suboption = None
+        try:
+            while self._socket is not None:
+                try:
+                    data = self._socket.recv(1024)
+                except socket.timeout:
+                    # just need to get out of recv form time to time to check if
+                    # still alive
+                    continue
+                except socket.error, e:
+                    # connection fails -> terminate loop
+                    if self.logger:
+                        self.logger.debug("socket error in reader thread: %s" % (e,))
+                    break
+                if not data: break # lost connection
+                for byte in data:
+                    if mode == M_NORMAL:
+                        # interpret as command or as data
+                        if byte == IAC:
+                            mode = M_IAC_SEEN
+                        else:
+                            # store data in read buffer or sub option buffer
+                            # depending on state
+                            if suboption is not None:
+                                suboption.append(byte)
+                            else:
+                                self._read_buffer.put(byte)
+                    elif mode == M_IAC_SEEN:
+                        if byte == IAC:
+                            # interpret as command doubled -> insert character
+                            # itself
+                            if suboption is not None:
+                                suboption.append(IAC)
+                            else:
+                                self._read_buffer.put(IAC)
+                            mode = M_NORMAL
+                        elif byte == SB:
+                            # sub option start
+                            suboption = bytearray()
+                            mode = M_NORMAL
+                        elif byte == SE:
+                            # sub option end -> process it now
+                            self._telnetProcessSubnegotiation(bytes(suboption))
+                            suboption = None
+                            mode = M_NORMAL
+                        elif byte in (DO, DONT, WILL, WONT):
+                            # negotiation
+                            telnet_command = byte
+                            mode = M_NEGOTIATE
+                        else:
+                            # other telnet commands
+                            self._telnetProcessCommand(byte)
+                            mode = M_NORMAL
+                    elif mode == M_NEGOTIATE: # DO, DONT, WILL, WONT was received, option now following
+                        self._telnetNegotiateOption(telnet_command, byte)
+                        mode = M_NORMAL
+        finally:
+            self._thread = None
+            if self.logger:
+                self.logger.debug("read thread terminated")
+
+    # - incoming telnet commands and options
+
+    def _telnetProcessCommand(self, command):
+        """Process commands other than DO, DONT, WILL, WONT."""
+        # Currently none. RFC2217 only uses negotiation and subnegotiation.
+        if self.logger:
+            self.logger.warning("ignoring Telnet command: %r" % (command,))
+
+    def _telnetNegotiateOption(self, command, option):
+        """Process incoming DO, DONT, WILL, WONT."""
+        # check our registered telnet options and forward command to them
+        # they know themselves if they have to answer or not
+        known = False
+        for item in self._telnet_options:
+            # can have more than one match! as some options are duplicated for
+            # 'us' and 'them'
+            if item.option == option:
+                item.process_incoming(command)
+                known = True
+        if not known:
+            # handle unknown options
+            # only answer to positive requests and deny them
+            if command == WILL or command == DO:
+                self.telnetSendOption((command == WILL and DONT or WONT), option)
+                if self.logger:
+                    self.logger.warning("rejected Telnet option: %r" % (option,))
+
+
+    def _telnetProcessSubnegotiation(self, suboption):
+        """Process subnegotiation, the data between IAC SB and IAC SE."""
+        if suboption[0:1] == COM_PORT_OPTION:
+            if suboption[1:2] == SERVER_NOTIFY_LINESTATE and len(suboption) >= 3:
+                self._linestate = ord(suboption[2:3]) # ensure it is a number
+                if self.logger:
+                    self.logger.info("NOTIFY_LINESTATE: %s" % self._linestate)
+            elif suboption[1:2] == SERVER_NOTIFY_MODEMSTATE and len(suboption) >= 3:
+                self._modemstate = ord(suboption[2:3]) # ensure it is a number
+                if self.logger:
+                    self.logger.info("NOTIFY_MODEMSTATE: %s" % self._modemstate)
+                # update time when we think that a poll would make sense
+                self._modemstate_expires = time.time() + 0.3
+            elif suboption[1:2] == FLOWCONTROL_SUSPEND:
+                self._remote_suspend_flow = True
+            elif suboption[1:2] == FLOWCONTROL_RESUME:
+                self._remote_suspend_flow = False
+            else:
+                for item in self._rfc2217_options.values():
+                    if item.ack_option == suboption[1:2]:
+                        #~ print "processing COM_PORT_OPTION: %r" % list(suboption[1:])
+                        item.checkAnswer(bytes(suboption[2:]))
+                        break
+                else:
+                    if self.logger:
+                        self.logger.warning("ignoring COM_PORT_OPTION: %r" % (suboption,))
+        else:
+            if self.logger:
+                self.logger.warning("ignoring subnegotiation: %r" % (suboption,))
+
+    # - outgoing telnet commands and options
+
+    def _internal_raw_write(self, data):
+        """internal socket write with no data escaping. used to send telnet stuff."""
+        self._write_lock.acquire()
+        try:
+            self._socket.sendall(data)
+        finally:
+            self._write_lock.release()
+
+    def telnetSendOption(self, action, option):
+        """Send DO, DONT, WILL, WONT."""
+        self._internal_raw_write(to_bytes([IAC, action, option]))
+
+    def rfc2217SendSubnegotiation(self, option, value=''):
+        """Subnegotiation of RFC2217 parameters."""
+        value = value.replace(IAC, IAC_DOUBLED)
+        self._internal_raw_write(to_bytes([IAC, SB, COM_PORT_OPTION, option] + list(value) + [IAC, SE]))
+
+    def rfc2217SendPurge(self, value):
+        item = self._rfc2217_options['purge']
+        item.set(value) # transmit desired purge type
+        item.wait(self._network_timeout) # wait for acknowledge from the server
+
+    def rfc2217SetControl(self, value):
+        item = self._rfc2217_options['control']
+        item.set(value) # transmit desired control type
+        if self._ignore_set_control_answer:
+            # answers are ignored when option is set. compatibility mode for
+            # servers that answer, but not the expected one... (or no answer
+            # at all) i.e. sredird
+            time.sleep(0.1)  # this helps getting the unit tests passed
+        else:
+            item.wait(self._network_timeout)  # wait for acknowledge from the server
+
+    def rfc2217FlowServerReady(self):
+        """\
+        check if server is ready to receive data. block for some time when
+        not.
+        """
+        #~ if self._remote_suspend_flow:
+            #~ wait---
+
+    def getModemState(self):
+        """\
+        get last modem state (cached value. If value is "old", request a new
+        one. This cache helps that we don't issue to many requests when e.g. all
+        status lines, one after the other is queried by the user (getCTS, getDSR
+        etc.)
+        """
+        # active modem state polling enabled? is the value fresh enough?
+        if self._poll_modem_state and self._modemstate_expires < time.time():
+            if self.logger:
+                self.logger.debug('polling modem state')
+            # when it is older, request an update
+            self.rfc2217SendSubnegotiation(NOTIFY_MODEMSTATE)
+            timeout_time = time.time() + self._network_timeout
+            while time.time() < timeout_time:
+                time.sleep(0.05)    # prevent 100% CPU load
+                # when expiration time is updated, it means that there is a new
+                # value
+                if self._modemstate_expires > time.time():
+                    if self.logger:
+                        self.logger.warning('poll for modem state failed')
+                    break
+            # even when there is a timeout, do not generate an error just
+            # return the last known value. this way we can support buggy
+            # servers that do not respond to polls, but send automatic
+            # updates.
+        if self._modemstate is not None:
+            if self.logger:
+                self.logger.debug('using cached modem state')
+            return self._modemstate
+        else:
+            # never received a notification from the server
+            raise SerialException("remote sends no NOTIFY_MODEMSTATE")
+
+
+# assemble Serial class with the platform specific implementation and the base
+# for file-like behavior. for Python 2.6 and newer, that provide the new I/O
+# library, derive from io.RawIOBase
+try:
+    import io
+except ImportError:
+    # classic version with our own file-like emulation
+    class Serial(RFC2217Serial, FileLike):
+        pass
+else:
+    # io library present
+    class Serial(RFC2217Serial, io.RawIOBase):
+        pass
+
+
+#############################################################################
+# The following is code that helps implementing an RFC 2217 server.
+
+class PortManager(object):
+    """\
+    This class manages the state of Telnet and RFC 2217. It needs a serial
+    instance and a connection to work with. Connection is expected to implement
+    a (thread safe) write function, that writes the string to the network.
+    """
+
+    def __init__(self, serial_port, connection, logger=None):
+        self.serial = serial_port
+        self.connection = connection
+        self.logger = logger
+        self._client_is_rfc2217 = False
+
+        # filter state machine
+        self.mode = M_NORMAL
+        self.suboption = None
+        self.telnet_command = None
+
+        # states for modem/line control events
+        self.modemstate_mask = 255
+        self.last_modemstate = None
+        self.linstate_mask = 0
+
+        # all supported telnet options
+        self._telnet_options = [
+            TelnetOption(self, 'ECHO', ECHO, WILL, WONT, DO, DONT, REQUESTED),
+            TelnetOption(self, 'we-SGA', SGA, WILL, WONT, DO, DONT, REQUESTED),
+            TelnetOption(self, 'they-SGA', SGA, DO, DONT, WILL, WONT, INACTIVE),
+            TelnetOption(self, 'we-BINARY', BINARY, WILL, WONT, DO, DONT, INACTIVE),
+            TelnetOption(self, 'they-BINARY', BINARY, DO, DONT, WILL, WONT, REQUESTED),
+            TelnetOption(self, 'we-RFC2217', COM_PORT_OPTION, WILL, WONT, DO, DONT, REQUESTED, self._client_ok),
+            TelnetOption(self, 'they-RFC2217', COM_PORT_OPTION, DO, DONT, WILL, WONT, INACTIVE, self._client_ok),
+            ]
+
+        # negotiate Telnet/RFC2217 -> send initial requests
+        if self.logger:
+            self.logger.debug("requesting initial Telnet/RFC 2217 options")
+        for option in self._telnet_options:
+            if option.state is REQUESTED:
+                self.telnetSendOption(option.send_yes, option.option)
+        # issue 1st modem state notification
+
+    def _client_ok(self):
+        """\
+        callback of telnet option. It gets called when option is activated.
+        This one here is used to detect when the client agrees on RFC 2217. A
+        flag is set so that other functions like check_modem_lines know if the
+        client is OK.
+        """
+        # The callback is used for we and they so if one party agrees, we're
+        # already happy. it seems not all servers do the negotiation correctly
+        # and i guess there are incorrect clients too.. so be happy if client
+        # answers one or the other positively.
+        self._client_is_rfc2217 = True
+        if self.logger:
+            self.logger.info("client accepts RFC 2217")
+        # this is to ensure that the client gets a notification, even if there
+        # was no change
+        self.check_modem_lines(force_notification=True)
+
+    # - outgoing telnet commands and options
+
+    def telnetSendOption(self, action, option):
+        """Send DO, DONT, WILL, WONT."""
+        self.connection.write(to_bytes([IAC, action, option]))
+
+    def rfc2217SendSubnegotiation(self, option, value=''):
+        """Subnegotiation of RFC 2217 parameters."""
+        value = value.replace(IAC, IAC_DOUBLED)
+        self.connection.write(to_bytes([IAC, SB, COM_PORT_OPTION, option] + list(value) + [IAC, SE]))
+
+    # - check modem lines, needs to be called periodically from user to
+    # establish polling
+
+    def check_modem_lines(self, force_notification=False):
+        modemstate = (
+            (self.serial.getCTS() and MODEMSTATE_MASK_CTS) |
+            (self.serial.getDSR() and MODEMSTATE_MASK_DSR) |
+            (self.serial.getRI() and MODEMSTATE_MASK_RI) |
+            (self.serial.getCD() and MODEMSTATE_MASK_CD)
+        )
+        # check what has changed
+        deltas = modemstate ^ (self.last_modemstate or 0) # when last is None -> 0
+        if deltas & MODEMSTATE_MASK_CTS:
+            modemstate |= MODEMSTATE_MASK_CTS_CHANGE
+        if deltas & MODEMSTATE_MASK_DSR:
+            modemstate |= MODEMSTATE_MASK_DSR_CHANGE
+        if deltas & MODEMSTATE_MASK_RI:
+            modemstate |= MODEMSTATE_MASK_RI_CHANGE
+        if deltas & MODEMSTATE_MASK_CD:
+            modemstate |= MODEMSTATE_MASK_CD_CHANGE
+        # if new state is different and the mask allows this change, send
+        # notification. suppress notifications when client is not rfc2217
+        if modemstate != self.last_modemstate or force_notification:
+            if (self._client_is_rfc2217 and (modemstate & self.modemstate_mask)) or force_notification:
+                self.rfc2217SendSubnegotiation(
+                    SERVER_NOTIFY_MODEMSTATE,
+                    to_bytes([modemstate & self.modemstate_mask])
+                    )
+                if self.logger:
+                    self.logger.info("NOTIFY_MODEMSTATE: %s" % (modemstate,))
+            # save last state, but forget about deltas.
+            # otherwise it would also notify about changing deltas which is
+            # probably not very useful
+            self.last_modemstate = modemstate & 0xf0
+
+    # - outgoing data escaping
+
+    def escape(self, data):
+        """\
+        This generator function is for the user. All outgoing data has to be
+        properly escaped, so that no IAC character in the data stream messes up
+        the Telnet state machine in the server.
+
+        socket.sendall(escape(data))
+        """
+        for byte in data:
+            if byte == IAC:
+                yield IAC
+                yield IAC
+            else:
+                yield byte
+
+    # - incoming data filter
+
+    def filter(self, data):
+        """\
+        Handle a bunch of incoming bytes. This is a generator. It will yield
+        all characters not of interest for Telnet/RFC 2217.
+
+        The idea is that the reader thread pushes data from the socket through
+        this filter:
+
+        for byte in filter(socket.recv(1024)):
+            # do things like CR/LF conversion/whatever
+            # and write data to the serial port
+            serial.write(byte)
+
+        (socket error handling code left as exercise for the reader)
+        """
+        for byte in data:
+            if self.mode == M_NORMAL:
+                # interpret as command or as data
+                if byte == IAC:
+                    self.mode = M_IAC_SEEN
+                else:
+                    # store data in sub option buffer or pass it to our
+                    # consumer depending on state
+                    if self.suboption is not None:
+                        self.suboption.append(byte)
+                    else:
+                        yield byte
+            elif self.mode == M_IAC_SEEN:
+                if byte == IAC:
+                    # interpret as command doubled -> insert character
+                    # itself
+                    if self.suboption is not None:
+                        self.suboption.append(byte)
+                    else:
+                        yield byte
+                    self.mode = M_NORMAL
+                elif byte == SB:
+                    # sub option start
+                    self.suboption = bytearray()
+                    self.mode = M_NORMAL
+                elif byte == SE:
+                    # sub option end -> process it now
+                    self._telnetProcessSubnegotiation(bytes(self.suboption))
+                    self.suboption = None
+                    self.mode = M_NORMAL
+                elif byte in (DO, DONT, WILL, WONT):
+                    # negotiation
+                    self.telnet_command = byte
+                    self.mode = M_NEGOTIATE
+                else:
+                    # other telnet commands
+                    self._telnetProcessCommand(byte)
+                    self.mode = M_NORMAL
+            elif self.mode == M_NEGOTIATE: # DO, DONT, WILL, WONT was received, option now following
+                self._telnetNegotiateOption(self.telnet_command, byte)
+                self.mode = M_NORMAL
+
+    # - incoming telnet commands and options
+
+    def _telnetProcessCommand(self, command):
+        """Process commands other than DO, DONT, WILL, WONT."""
+        # Currently none. RFC2217 only uses negotiation and subnegotiation.
+        if self.logger:
+            self.logger.warning("ignoring Telnet command: %r" % (command,))
+
+    def _telnetNegotiateOption(self, command, option):
+        """Process incoming DO, DONT, WILL, WONT."""
+        # check our registered telnet options and forward command to them
+        # they know themselves if they have to answer or not
+        known = False
+        for item in self._telnet_options:
+            # can have more than one match! as some options are duplicated for
+            # 'us' and 'them'
+            if item.option == option:
+                item.process_incoming(command)
+                known = True
+        if not known:
+            # handle unknown options
+            # only answer to positive requests and deny them
+            if command == WILL or command == DO:
+                self.telnetSendOption((command == WILL and DONT or WONT), option)
+                if self.logger:
+                    self.logger.warning("rejected Telnet option: %r" % (option,))
+
+
+    def _telnetProcessSubnegotiation(self, suboption):
+        """Process subnegotiation, the data between IAC SB and IAC SE."""
+        if suboption[0:1] == COM_PORT_OPTION:
+            if self.logger:
+                self.logger.debug('received COM_PORT_OPTION: %r' % (suboption,))
+            if suboption[1:2] == SET_BAUDRATE:
+                backup = self.serial.baudrate
+                try:
+                    (baudrate,) = struct.unpack("!I", suboption[2:6])
+                    if baudrate != 0:
+                        self.serial.baudrate = baudrate
+                except ValueError, e:
+                    if self.logger:
+                        self.logger.error("failed to set baud rate: %s" % (e,))
+                    self.serial.baudrate = backup
+                else:
+                    if self.logger:
+                        self.logger.info("%s baud rate: %s" % (baudrate and 'set' or 'get', self.serial.baudrate))
+                self.rfc2217SendSubnegotiation(SERVER_SET_BAUDRATE, struct.pack("!I", self.serial.baudrate))
+            elif suboption[1:2] == SET_DATASIZE:
+                backup = self.serial.bytesize
+                try:
+                    (datasize,) = struct.unpack("!B", suboption[2:3])
+                    if datasize != 0:
+                        self.serial.bytesize = datasize
+                except ValueError, e:
+                    if self.logger:
+                        self.logger.error("failed to set data size: %s" % (e,))
+                    self.serial.bytesize = backup
+                else:
+                    if self.logger:
+                        self.logger.info("%s data size: %s" % (datasize and 'set' or 'get', self.serial.bytesize))
+                self.rfc2217SendSubnegotiation(SERVER_SET_DATASIZE, struct.pack("!B", self.serial.bytesize))
+            elif suboption[1:2] == SET_PARITY:
+                backup = self.serial.parity
+                try:
+                    parity = struct.unpack("!B", suboption[2:3])[0]
+                    if parity != 0:
+                            self.serial.parity = RFC2217_REVERSE_PARITY_MAP[parity]
+                except ValueError, e:
+                    if self.logger:
+                        self.logger.error("failed to set parity: %s" % (e,))
+                    self.serial.parity = backup
+                else:
+                    if self.logger:
+                        self.logger.info("%s parity: %s" % (parity and 'set' or 'get', self.serial.parity))
+                self.rfc2217SendSubnegotiation(
+                    SERVER_SET_PARITY,
+                    struct.pack("!B", RFC2217_PARITY_MAP[self.serial.parity])
+                    )
+            elif suboption[1:2] == SET_STOPSIZE:
+                backup = self.serial.stopbits
+                try:
+                    stopbits = struct.unpack("!B", suboption[2:3])[0]
+                    if stopbits != 0:
+                        self.serial.stopbits = RFC2217_REVERSE_STOPBIT_MAP[stopbits]
+                except ValueError, e:
+                    if self.logger:
+                        self.logger.error("failed to set stop bits: %s" % (e,))
+                    self.serial.stopbits = backup
+                else:
+                    if self.logger:
+                        self.logger.info("%s stop bits: %s" % (stopbits and 'set' or 'get', self.serial.stopbits))
+                self.rfc2217SendSubnegotiation(
+                    SERVER_SET_STOPSIZE,
+                    struct.pack("!B", RFC2217_STOPBIT_MAP[self.serial.stopbits])
+                    )
+            elif suboption[1:2] == SET_CONTROL:
+                if suboption[2:3] == SET_CONTROL_REQ_FLOW_SETTING:
+                    if self.serial.xonxoff:
+                        self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET_CONTROL_USE_SW_FLOW_CONTROL)
+                    elif self.serial.rtscts:
+                        self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET_CONTROL_USE_HW_FLOW_CONTROL)
+                    else:
+                        self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET_CONTROL_USE_NO_FLOW_CONTROL)
+                elif suboption[2:3] == SET_CONTROL_USE_NO_FLOW_CONTROL:
+                    self.serial.xonxoff = False
+                    self.serial.rtscts = False
+                    if self.logger:
+                        self.logger.info("changed flow control to None")
+                    self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET_CONTROL_USE_NO_FLOW_CONTROL)
+                elif suboption[2:3] == SET_CONTROL_USE_SW_FLOW_CONTROL:
+                    self.serial.xonxoff = True
+                    if self.logger:
+                        self.logger.info("changed flow control to XON/XOFF")
+                    self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET_CONTROL_USE_SW_FLOW_CONTROL)
+                elif suboption[2:3] == SET_CONTROL_USE_HW_FLOW_CONTROL:
+                    self.serial.rtscts = True
+                    if self.logger:
+                        self.logger.info("changed flow control to RTS/CTS")
+                    self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET_CONTROL_USE_HW_FLOW_CONTROL)
+                elif suboption[2:3] == SET_CONTROL_REQ_BREAK_STATE:
+                    if self.logger:
+                        self.logger.warning("requested break state - not implemented")
+                    pass # XXX needs cached value
+                elif suboption[2:3] == SET_CONTROL_BREAK_ON:
+                    self.serial.setBreak(True)
+                    if self.logger:
+                        self.logger.info("changed BREAK to active")
+                    self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET_CONTROL_BREAK_ON)
+                elif suboption[2:3] == SET_CONTROL_BREAK_OFF:
+                    self.serial.setBreak(False)
+                    if self.logger:
+                        self.logger.info("changed BREAK to inactive")
+                    self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET_CONTROL_BREAK_OFF)
+                elif suboption[2:3] == SET_CONTROL_REQ_DTR:
+                    if self.logger:
+                        self.logger.warning("requested DTR state - not implemented")
+                    pass # XXX needs cached value
+                elif suboption[2:3] == SET_CONTROL_DTR_ON:
+                    self.serial.setDTR(True)
+                    if self.logger:
+                        self.logger.info("changed DTR to active")
+                    self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET_CONTROL_DTR_ON)
+                elif suboption[2:3] == SET_CONTROL_DTR_OFF:
+                    self.serial.setDTR(False)
+                    if self.logger:
+                        self.logger.info("changed DTR to inactive")
+                    self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET_CONTROL_DTR_OFF)
+                elif suboption[2:3] == SET_CONTROL_REQ_RTS:
+                    if self.logger:
+                        self.logger.warning("requested RTS state - not implemented")
+                    pass # XXX needs cached value
+                    #~ self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET_CONTROL_RTS_ON)
+                elif suboption[2:3] == SET_CONTROL_RTS_ON:
+                    self.serial.setRTS(True)
+                    if self.logger:
+                        self.logger.info("changed RTS to active")
+                    self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET_CONTROL_RTS_ON)
+                elif suboption[2:3] == SET_CONTROL_RTS_OFF:
+                    self.serial.setRTS(False)
+                    if self.logger:
+                        self.logger.info("changed RTS to inactive")
+                    self.rfc2217SendSubnegotiation(SERVER_SET_CONTROL, SET_CONTROL_RTS_OFF)
+                #~ elif suboption[2:3] == SET_CONTROL_REQ_FLOW_SETTING_IN:
+                #~ elif suboption[2:3] == SET_CONTROL_USE_NO_FLOW_CONTROL_IN:
+                #~ elif suboption[2:3] == SET_CONTROL_USE_SW_FLOW_CONTOL_IN:
+                #~ elif suboption[2:3] == SET_CONTROL_USE_HW_FLOW_CONTOL_IN:
+                #~ elif suboption[2:3] == SET_CONTROL_USE_DCD_FLOW_CONTROL:
+                #~ elif suboption[2:3] == SET_CONTROL_USE_DTR_FLOW_CONTROL:
+                #~ elif suboption[2:3] == SET_CONTROL_USE_DSR_FLOW_CONTROL:
+            elif suboption[1:2] == NOTIFY_LINESTATE:
+                # client polls for current state
+                self.rfc2217SendSubnegotiation(
+                    SERVER_NOTIFY_LINESTATE,
+                    to_bytes([0])   # sorry, nothing like that implemented
+                    )
+            elif suboption[1:2] == NOTIFY_MODEMSTATE:
+                if self.logger:
+                    self.logger.info("request for modem state")
+                # client polls for current state
+                self.check_modem_lines(force_notification=True)
+            elif suboption[1:2] == FLOWCONTROL_SUSPEND:
+                if self.logger:
+                    self.logger.info("suspend")
+                self._remote_suspend_flow = True
+            elif suboption[1:2] == FLOWCONTROL_RESUME:
+                if self.logger:
+                    self.logger.info("resume")
+                self._remote_suspend_flow = False
+            elif suboption[1:2] == SET_LINESTATE_MASK:
+                self.linstate_mask = ord(suboption[2:3]) # ensure it is a number
+                if self.logger:
+                    self.logger.info("line state mask: 0x%02x" % (self.linstate_mask,))
+            elif suboption[1:2] == SET_MODEMSTATE_MASK:
+                self.modemstate_mask = ord(suboption[2:3]) # ensure it is a number
+                if self.logger:
+                    self.logger.info("modem state mask: 0x%02x" % (self.modemstate_mask,))
+            elif suboption[1:2] == PURGE_DATA:
+                if suboption[2:3] == PURGE_RECEIVE_BUFFER:
+                    self.serial.flushInput()
+                    if self.logger:
+                        self.logger.info("purge in")
+                    self.rfc2217SendSubnegotiation(SERVER_PURGE_DATA, PURGE_RECEIVE_BUFFER)
+                elif suboption[2:3] == PURGE_TRANSMIT_BUFFER:
+                    self.serial.flushOutput()
+                    if self.logger:
+                        self.logger.info("purge out")
+                    self.rfc2217SendSubnegotiation(SERVER_PURGE_DATA, PURGE_TRANSMIT_BUFFER)
+                elif suboption[2:3] == PURGE_BOTH_BUFFERS:
+                    self.serial.flushInput()
+                    self.serial.flushOutput()
+                    if self.logger:
+                        self.logger.info("purge both")
+                    self.rfc2217SendSubnegotiation(SERVER_PURGE_DATA, PURGE_BOTH_BUFFERS)
+                else:
+                    if self.logger:
+                        self.logger.error("undefined PURGE_DATA: %r" % list(suboption[2:]))
+            else:
+                if self.logger:
+                    self.logger.error("undefined COM_PORT_OPTION: %r" % list(suboption[1:]))
+        else:
+            if self.logger:
+                self.logger.warning("unknown subnegotiation: %r" % (suboption,))
+
+
+# simple client test
+if __name__ == '__main__':
+    import sys
+    s = Serial('rfc2217://localhost:7000', 115200)
+    sys.stdout.write('%s\n' % s)
+
+    #~ s.baudrate = 1898
+
+    sys.stdout.write("write...\n")
+    s.write("hello\n")
+    s.flush()
+    sys.stdout.write("read: %s\n" % s.read(5))
+
+    #~ s.baudrate = 19200
+    #~ s.databits = 7
+    s.close()
diff --git a/scripts/serial/serialcli.py b/scripts/serial/serialcli.py
new file mode 100644
index 0000000..9ab3876
--- /dev/null
+++ b/scripts/serial/serialcli.py
@@ -0,0 +1,284 @@
+#! python
+# Python Serial Port Extension for Win32, Linux, BSD, Jython and .NET/Mono
+# serial driver for .NET/Mono (IronPython), .NET >= 2
+# see __init__.py
+#
+# (C) 2008 Chris Liechti <cliechti@gmx.net>
+# this is distributed under a free software license, see license.txt
+
+import clr
+import System
+import System.IO.Ports
+from serial.serialutil import *
+
+
+def device(portnum):
+    """Turn a port number into a device name"""
+    return System.IO.Ports.SerialPort.GetPortNames()[portnum]
+
+
+# must invoke function with byte array, make a helper to convert strings
+# to byte arrays
+sab = System.Array[System.Byte]
+def as_byte_array(string):
+    return sab([ord(x) for x in string])  # XXX will require adaption when run with a 3.x compatible IronPython
+
+class IronSerial(SerialBase):
+    """Serial port implementation for .NET/Mono."""
+
+    BAUDRATES = (50, 75, 110, 134, 150, 200, 300, 600, 1200, 1800, 2400, 4800,
+                9600, 19200, 38400, 57600, 115200)
+
+    def open(self):
+        """\
+        Open port with current settings. This may throw a SerialException
+        if the port cannot be opened.
+        """
+        if self._port is None:
+            raise SerialException("Port must be configured before it can be used.")
+        if self._isOpen:
+            raise SerialException("Port is already open.")
+        try:
+            self._port_handle = System.IO.Ports.SerialPort(self.portstr)
+        except Exception, msg:
+            self._port_handle = None
+            raise SerialException("could not open port %s: %s" % (self.portstr, msg))
+
+        self._reconfigurePort()
+        self._port_handle.Open()
+        self._isOpen = True
+        if not self._rtscts:
+            self.setRTS(True)
+            self.setDTR(True)
+        self.flushInput()
+        self.flushOutput()
+
+    def _reconfigurePort(self):
+        """Set communication parameters on opened port."""
+        if not self._port_handle:
+            raise SerialException("Can only operate on a valid port handle")
+
+        #~ self._port_handle.ReceivedBytesThreshold = 1
+
+        if self._timeout is None:
+            self._port_handle.ReadTimeout = System.IO.Ports.SerialPort.InfiniteTimeout
+        else:
+            self._port_handle.ReadTimeout = int(self._timeout*1000)
+
+        # if self._timeout != 0 and self._interCharTimeout is not None:
+            # timeouts = (int(self._interCharTimeout * 1000),) + timeouts[1:]
+
+        if self._writeTimeout is None:
+            self._port_handle.WriteTimeout = System.IO.Ports.SerialPort.InfiniteTimeout
+        else:
+            self._port_handle.WriteTimeout = int(self._writeTimeout*1000)
+
+
+        # Setup the connection info.
+        try:
+            self._port_handle.BaudRate = self._baudrate
+        except IOError, e:
+            # catch errors from illegal baudrate settings
+            raise ValueError(str(e))
+
+        if self._bytesize == FIVEBITS:
+            self._port_handle.DataBits     = 5
+        elif self._bytesize == SIXBITS:
+            self._port_handle.DataBits     = 6
+        elif self._bytesize == SEVENBITS:
+            self._port_handle.DataBits     = 7
+        elif self._bytesize == EIGHTBITS:
+            self._port_handle.DataBits     = 8
+        else:
+            raise ValueError("Unsupported number of data bits: %r" % self._bytesize)
+
+        if self._parity == PARITY_NONE:
+            self._port_handle.Parity       = getattr(System.IO.Ports.Parity, 'None') # reserved keyword in Py3k
+        elif self._parity == PARITY_EVEN:
+            self._port_handle.Parity       = System.IO.Ports.Parity.Even
+        elif self._parity == PARITY_ODD:
+            self._port_handle.Parity       = System.IO.Ports.Parity.Odd
+        elif self._parity == PARITY_MARK:
+            self._port_handle.Parity       = System.IO.Ports.Parity.Mark
+        elif self._parity == PARITY_SPACE:
+            self._port_handle.Parity       = System.IO.Ports.Parity.Space
+        else:
+            raise ValueError("Unsupported parity mode: %r" % self._parity)
+
+        if self._stopbits == STOPBITS_ONE:
+            self._port_handle.StopBits     = System.IO.Ports.StopBits.One
+        elif self._stopbits == STOPBITS_ONE_POINT_FIVE:
+            self._port_handle.StopBits     = System.IO.Ports.StopBits.OnePointFive
+        elif self._stopbits == STOPBITS_TWO:
+            self._port_handle.StopBits     = System.IO.Ports.StopBits.Two
+        else:
+            raise ValueError("Unsupported number of stop bits: %r" % self._stopbits)
+
+        if self._rtscts and self._xonxoff:
+            self._port_handle.Handshake  = System.IO.Ports.Handshake.RequestToSendXOnXOff
+        elif self._rtscts:
+            self._port_handle.Handshake  = System.IO.Ports.Handshake.RequestToSend
+        elif self._xonxoff:
+            self._port_handle.Handshake  = System.IO.Ports.Handshake.XOnXOff
+        else:
+            self._port_handle.Handshake  = getattr(System.IO.Ports.Handshake, 'None')   # reserved keyword in Py3k
+
+    #~ def __del__(self):
+        #~ self.close()
+
+    def close(self):
+        """Close port"""
+        if self._isOpen:
+            if self._port_handle:
+                try:
+                    self._port_handle.Close()
+                except System.IO.Ports.InvalidOperationException:
+                    # ignore errors. can happen for unplugged USB serial devices
+                    pass
+                self._port_handle = None
+            self._isOpen = False
+
+    def makeDeviceName(self, port):
+        try:
+            return device(port)
+        except TypeError, e:
+            raise SerialException(str(e))
+
+    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
+
+    def inWaiting(self):
+        """Return the number of characters currently in the input buffer."""
+        if not self._port_handle: raise portNotOpenError
+        return self._port_handle.BytesToRead
+
+    def read(self, size=1):
+        """\
+        Read size bytes from the serial port. If a timeout is set it may
+        return less characters as requested. With no timeout it will block
+        until the requested number of bytes is read.
+        """
+        if not self._port_handle: raise portNotOpenError
+        # must use single byte reads as this is the only way to read
+        # without applying encodings
+        data = bytearray()
+        while size:
+            try:
+                data.append(self._port_handle.ReadByte())
+            except System.TimeoutException, e:
+                break
+            else:
+                size -= 1
+        return bytes(data)
+
+    def write(self, data):
+        """Output the given string over the serial port."""
+        if not self._port_handle: raise portNotOpenError
+        #~ if not isinstance(data, (bytes, bytearray)):
+            #~ raise TypeError('expected %s or bytearray, got %s' % (bytes, type(data)))
+        try:
+            # must call overloaded method with byte array argument
+            # as this is the only one not applying encodings
+            self._port_handle.Write(as_byte_array(data), 0, len(data))
+        except System.TimeoutException, e:
+            raise writeTimeoutError
+        return len(data)
+
+    def flushInput(self):
+        """Clear input buffer, discarding all that is in the buffer."""
+        if not self._port_handle: raise portNotOpenError
+        self._port_handle.DiscardInBuffer()
+
+    def flushOutput(self):
+        """\
+        Clear output buffer, aborting the current output and
+        discarding all that is in the buffer.
+        """
+        if not self._port_handle: raise portNotOpenError
+        self._port_handle.DiscardOutBuffer()
+
+    def sendBreak(self, duration=0.25):
+        """\
+        Send break condition. Timed, returns to idle state after given
+        duration.
+        """
+        if not self._port_handle: raise portNotOpenError
+        import time
+        self._port_handle.BreakState = True
+        time.sleep(duration)
+        self._port_handle.BreakState = False
+
+    def setBreak(self, level=True):
+        """
+        Set break: Controls TXD. When active, to transmitting is possible.
+        """
+        if not self._port_handle: raise portNotOpenError
+        self._port_handle.BreakState = bool(level)
+
+    def setRTS(self, level=True):
+        """Set terminal status line: Request To Send"""
+        if not self._port_handle: raise portNotOpenError
+        self._port_handle.RtsEnable = bool(level)
+
+    def setDTR(self, level=True):
+        """Set terminal status line: Data Terminal Ready"""
+        if not self._port_handle: raise portNotOpenError
+        self._port_handle.DtrEnable = bool(level)
+
+    def getCTS(self):
+        """Read terminal status line: Clear To Send"""
+        if not self._port_handle: raise portNotOpenError
+        return self._port_handle.CtsHolding
+
+    def getDSR(self):
+        """Read terminal status line: Data Set Ready"""
+        if not self._port_handle: raise portNotOpenError
+        return self._port_handle.DsrHolding
+
+    def getRI(self):
+        """Read terminal status line: Ring Indicator"""
+        if not self._port_handle: raise portNotOpenError
+        #~ return self._port_handle.XXX
+        return False #XXX an error would be better
+
+    def getCD(self):
+        """Read terminal status line: Carrier Detect"""
+        if not self._port_handle: raise portNotOpenError
+        return self._port_handle.CDHolding
+
+    # - - platform specific - - - -
+    # none
+
+
+# assemble Serial class with the platform specific implementation and the base
+# for file-like behavior. for Python 2.6 and newer, that provide the new I/O
+# library, derive from io.RawIOBase
+try:
+    import io
+except ImportError:
+    # classic version with our own file-like emulation
+    class Serial(IronSerial, FileLike):
+        pass
+else:
+    # io library present
+    class Serial(IronSerial, io.RawIOBase):
+        pass
+
+
+# Nur Testfunktion!!
+if __name__ == '__main__':
+    import sys
+
+    s = Serial(0)
+    sys.stdio.write('%s\n' % s)
+
+    s = Serial()
+    sys.stdio.write('%s\n' % s)
+
+
+    s.baudrate = 19200
+    s.databits = 7
+    s.close()
+    s.port = 0
+    s.open()
+    sys.stdio.write('%s\n' % s)
+
diff --git a/scripts/serial/serialposix.py b/scripts/serial/serialposix.py
new file mode 100644
index 0000000..359ad1b
--- /dev/null
+++ b/scripts/serial/serialposix.py
@@ -0,0 +1,730 @@
+#!/usr/bin/env python
+#
+# Python Serial Port Extension for Win32, Linux, BSD, Jython
+# module for serial IO for POSIX compatible systems, like Linux
+# see __init__.py
+#
+# (C) 2001-2010 Chris Liechti <cliechti@gmx.net>
+# this is distributed under a free software license, see license.txt
+#
+# parts based on code from Grant B. Edwards  <grante@visi.com>:
+#  ftp://ftp.visi.com/users/grante/python/PosixSerial.py
+#
+# references: http://www.easysw.com/~mike/serial/serial.html
+
+import sys, os, fcntl, termios, struct, select, errno, time
+from serial.serialutil import *
+
+# Do check the Python version as some constants have moved.
+if (sys.hexversion < 0x020100f0):
+    import TERMIOS
+else:
+    TERMIOS = termios
+
+if (sys.hexversion < 0x020200f0):
+    import FCNTL
+else:
+    FCNTL = fcntl
+
+# try to detect the OS so that a device can be selected...
+# this code block should supply a device() and set_special_baudrate() function
+# for the platform
+plat = sys.platform.lower()
+
+if   plat[:5] == 'linux':    # Linux (confirmed)
+
+    def device(port):
+        return '/dev/ttyS%d' % port
+
+    TCGETS2 = 0x802C542A
+    TCSETS2 = 0x402C542B
+    BOTHER = 0o010000
+
+    def set_special_baudrate(port, baudrate):
+        # right size is 44 on x86_64, allow for some growth
+        import array
+        buf = array.array('i', [0] * 64)
+
+        try:
+            # get serial_struct
+            FCNTL.ioctl(port.fd, TCGETS2, buf)
+            # set custom speed
+            buf[2] &= ~TERMIOS.CBAUD
+            buf[2] |= BOTHER
+            buf[9] = buf[10] = baudrate
+
+            # set serial_struct
+            res = FCNTL.ioctl(port.fd, TCSETS2, buf)
+        except IOError, e:
+            raise ValueError('Failed to set custom baud rate (%s): %s' % (baudrate, e))
+
+    baudrate_constants = {
+        0:       0000000,  # hang up
+        50:      0000001,
+        75:      0000002,
+        110:     0000003,
+        134:     0000004,
+        150:     0000005,
+        200:     0000006,
+        300:     0000007,
+        600:     0000010,
+        1200:    0000011,
+        1800:    0000012,
+        2400:    0000013,
+        4800:    0000014,
+        9600:    0000015,
+        19200:   0000016,
+        38400:   0000017,
+        57600:   0010001,
+        115200:  0010002,
+        230400:  0010003,
+        460800:  0010004,
+        500000:  0010005,
+        576000:  0010006,
+        921600:  0010007,
+        1000000: 0010010,
+        1152000: 0010011,
+        1500000: 0010012,
+        2000000: 0010013,
+        2500000: 0010014,
+        3000000: 0010015,
+        3500000: 0010016,
+        4000000: 0010017
+    }
+
+elif plat == 'cygwin':       # cygwin/win32 (confirmed)
+
+    def device(port):
+        return '/dev/com%d' % (port + 1)
+
+    def set_special_baudrate(port, baudrate):
+        raise ValueError("sorry don't know how to handle non standard baud rate on this platform")
+
+    baudrate_constants = {
+        128000: 0x01003,
+        256000: 0x01005,
+        500000: 0x01007,
+        576000: 0x01008,
+        921600: 0x01009,
+        1000000: 0x0100a,
+        1152000: 0x0100b,
+        1500000: 0x0100c,
+        2000000: 0x0100d,
+        2500000: 0x0100e,
+        3000000: 0x0100f
+    }
+
+elif plat[:7] == 'openbsd':    # OpenBSD
+
+    def device(port):
+        return '/dev/cua%02d' % port
+
+    def set_special_baudrate(port, baudrate):
+        raise ValueError("sorry don't know how to handle non standard baud rate on this platform")
+
+    baudrate_constants = {}
+
+elif plat[:3] == 'bsd' or  \
+    plat[:7] == 'freebsd':
+
+    def device(port):
+        return '/dev/cuad%d' % port
+
+    def set_special_baudrate(port, baudrate):
+        raise ValueError("sorry don't know how to handle non standard baud rate on this platform")
+
+    baudrate_constants = {}
+
+elif plat[:6] == 'darwin':   # OS X
+
+    version = os.uname()[2].split('.')
+    # Tiger or above can support arbitrary serial speeds
+    if int(version[0]) >= 8:
+        def set_special_baudrate(port, baudrate):
+            # use IOKit-specific call to set up high speeds
+            import array, fcntl
+            buf = array.array('i', [baudrate])
+            IOSSIOSPEED = 0x80045402 #_IOW('T', 2, speed_t)
+            fcntl.ioctl(port.fd, IOSSIOSPEED, buf, 1)
+    else: # version < 8
+        def set_special_baudrate(port, baudrate):
+            raise ValueError("baud rate not supported")
+
+    def device(port):
+        return '/dev/cuad%d' % port
+
+    baudrate_constants = {}
+
+
+elif plat[:6] == 'netbsd':   # NetBSD 1.6 testing by Erk
+
+    def device(port):
+        return '/dev/dty%02d' % port
+
+    def set_special_baudrate(port, baudrate):
+        raise ValueError("sorry don't know how to handle non standard baud rate on this platform")
+
+    baudrate_constants = {}
+
+elif plat[:4] == 'irix':     # IRIX (partially tested)
+
+    def device(port):
+        return '/dev/ttyf%d' % (port+1) #XXX different device names depending on flow control
+
+    def set_special_baudrate(port, baudrate):
+        raise ValueError("sorry don't know how to handle non standard baud rate on this platform")
+
+    baudrate_constants = {}
+
+elif plat[:2] == 'hp':       # HP-UX (not tested)
+
+    def device(port):
+        return '/dev/tty%dp0' % (port+1)
+
+    def set_special_baudrate(port, baudrate):
+        raise ValueError("sorry don't know how to handle non standard baud rate on this platform")
+
+    baudrate_constants = {}
+
+elif plat[:5] == 'sunos':    # Solaris/SunOS (confirmed)
+
+    def device(port):
+        return '/dev/tty%c' % (ord('a')+port)
+
+    def set_special_baudrate(port, baudrate):
+        raise ValueError("sorry don't know how to handle non standard baud rate on this platform")
+
+    baudrate_constants = {}
+
+elif plat[:3] == 'aix':      # AIX
+
+    def device(port):
+        return '/dev/tty%d' % (port)
+
+    def set_special_baudrate(port, baudrate):
+        raise ValueError("sorry don't know how to handle non standard baud rate on this platform")
+
+    baudrate_constants = {}
+
+else:
+    # platform detection has failed...
+    sys.stderr.write("""\
+don't know how to number ttys on this system.
+! Use an explicit path (eg /dev/ttyS1) or send this information to
+! the author of this module:
+
+sys.platform = %r
+os.name = %r
+serialposix.py version = %s
+
+also add the device name of the serial port and where the
+counting starts for the first serial port.
+e.g. 'first serial port: /dev/ttyS0'
+and with a bit luck you can get this module running...
+""" % (sys.platform, os.name, VERSION))
+    # no exception, just continue with a brave attempt to build a device name
+    # even if the device name is not correct for the platform it has chances
+    # to work using a string with the real device name as port parameter.
+    def device(portum):
+        return '/dev/ttyS%d' % portnum
+    def set_special_baudrate(port, baudrate):
+        raise SerialException("sorry don't know how to handle non standard baud rate on this platform")
+    baudrate_constants = {}
+    #~ raise Exception, "this module does not run on this platform, sorry."
+
+# whats up with "aix", "beos", ....
+# they should work, just need to know the device names.
+
+
+# load some constants for later use.
+# try to use values from TERMIOS, use defaults from linux otherwise
+TIOCMGET  = hasattr(TERMIOS, 'TIOCMGET') and TERMIOS.TIOCMGET or 0x5415
+TIOCMBIS  = hasattr(TERMIOS, 'TIOCMBIS') and TERMIOS.TIOCMBIS or 0x5416
+TIOCMBIC  = hasattr(TERMIOS, 'TIOCMBIC') and TERMIOS.TIOCMBIC or 0x5417
+TIOCMSET  = hasattr(TERMIOS, 'TIOCMSET') and TERMIOS.TIOCMSET or 0x5418
+
+#TIOCM_LE = hasattr(TERMIOS, 'TIOCM_LE') and TERMIOS.TIOCM_LE or 0x001
+TIOCM_DTR = hasattr(TERMIOS, 'TIOCM_DTR') and TERMIOS.TIOCM_DTR or 0x002
+TIOCM_RTS = hasattr(TERMIOS, 'TIOCM_RTS') and TERMIOS.TIOCM_RTS or 0x004
+#TIOCM_ST = hasattr(TERMIOS, 'TIOCM_ST') and TERMIOS.TIOCM_ST or 0x008
+#TIOCM_SR = hasattr(TERMIOS, 'TIOCM_SR') and TERMIOS.TIOCM_SR or 0x010
+
+TIOCM_CTS = hasattr(TERMIOS, 'TIOCM_CTS') and TERMIOS.TIOCM_CTS or 0x020
+TIOCM_CAR = hasattr(TERMIOS, 'TIOCM_CAR') and TERMIOS.TIOCM_CAR or 0x040
+TIOCM_RNG = hasattr(TERMIOS, 'TIOCM_RNG') and TERMIOS.TIOCM_RNG or 0x080
+TIOCM_DSR = hasattr(TERMIOS, 'TIOCM_DSR') and TERMIOS.TIOCM_DSR or 0x100
+TIOCM_CD  = hasattr(TERMIOS, 'TIOCM_CD') and TERMIOS.TIOCM_CD or TIOCM_CAR
+TIOCM_RI  = hasattr(TERMIOS, 'TIOCM_RI') and TERMIOS.TIOCM_RI or TIOCM_RNG
+#TIOCM_OUT1 = hasattr(TERMIOS, 'TIOCM_OUT1') and TERMIOS.TIOCM_OUT1 or 0x2000
+#TIOCM_OUT2 = hasattr(TERMIOS, 'TIOCM_OUT2') and TERMIOS.TIOCM_OUT2 or 0x4000
+if hasattr(TERMIOS, 'TIOCINQ'):
+    TIOCINQ = TERMIOS.TIOCINQ
+else:
+    TIOCINQ = hasattr(TERMIOS, 'FIONREAD') and TERMIOS.FIONREAD or 0x541B
+TIOCOUTQ   = hasattr(TERMIOS, 'TIOCOUTQ') and TERMIOS.TIOCOUTQ or 0x5411
+
+TIOCM_zero_str = struct.pack('I', 0)
+TIOCM_RTS_str = struct.pack('I', TIOCM_RTS)
+TIOCM_DTR_str = struct.pack('I', TIOCM_DTR)
+
+TIOCSBRK  = hasattr(TERMIOS, 'TIOCSBRK') and TERMIOS.TIOCSBRK or 0x5427
+TIOCCBRK  = hasattr(TERMIOS, 'TIOCCBRK') and TERMIOS.TIOCCBRK or 0x5428
+
+CMSPAR = 010000000000 # Use "stick" (mark/space) parity
+
+
+class PosixSerial(SerialBase):
+    """\
+    Serial port class POSIX implementation. Serial port configuration is 
+    done with termios and fcntl. Runs on Linux and many other Un*x like
+    systems.
+    """
+
+    def open(self):
+        """\
+        Open port with current settings. This may throw a SerialException
+        if the port cannot be opened."""
+        if self._port is None:
+            raise SerialException("Port must be configured before it can be used.")
+        if self._isOpen:
+            raise SerialException("Port is already open.")
+        self.fd = None
+        # open
+        try:
+            self.fd = os.open(self.portstr, os.O_RDWR|os.O_NOCTTY|os.O_NONBLOCK)
+        except OSError, msg:
+            self.fd = None
+            raise SerialException(msg.errno, "could not open port %s: %s" % (self._port, msg))
+        #~ fcntl.fcntl(self.fd, FCNTL.F_SETFL, 0)  # set blocking
+
+        try:
+            self._reconfigurePort()
+        except:
+            try:
+                os.close(self.fd)
+            except:
+                # ignore any exception when closing the port
+                # also to keep original exception that happened when setting up
+                pass
+            self.fd = None
+            raise
+        else:
+            self._isOpen = True
+        self.flushInput()
+
+
+    def _reconfigurePort(self):
+        """Set communication parameters on opened port."""
+        if self.fd is None:
+            raise SerialException("Can only operate on a valid file descriptor")
+        custom_baud = None
+
+        vmin = vtime = 0                # timeout is done via select
+        if self._interCharTimeout is not None:
+            vmin = 1
+            vtime = int(self._interCharTimeout * 10)
+        try:
+            orig_attr = termios.tcgetattr(self.fd)
+            iflag, oflag, cflag, lflag, ispeed, ospeed, cc = orig_attr
+        except termios.error, msg:      # if a port is nonexistent but has a /dev file, it'll fail here
+            raise SerialException("Could not configure port: %s" % msg)
+        # set up raw mode / no echo / binary
+        cflag |=  (TERMIOS.CLOCAL|TERMIOS.CREAD)
+        lflag &= ~(TERMIOS.ICANON|TERMIOS.ECHO|TERMIOS.ECHOE|TERMIOS.ECHOK|TERMIOS.ECHONL|
+                     TERMIOS.ISIG|TERMIOS.IEXTEN) #|TERMIOS.ECHOPRT
+        for flag in ('ECHOCTL', 'ECHOKE'): # netbsd workaround for Erk
+            if hasattr(TERMIOS, flag):
+                lflag &= ~getattr(TERMIOS, flag)
+
+        oflag &= ~(TERMIOS.OPOST)
+        iflag &= ~(TERMIOS.INLCR|TERMIOS.IGNCR|TERMIOS.ICRNL|TERMIOS.IGNBRK)
+        if hasattr(TERMIOS, 'IUCLC'):
+            iflag &= ~TERMIOS.IUCLC
+        if hasattr(TERMIOS, 'PARMRK'):
+            iflag &= ~TERMIOS.PARMRK
+
+        # setup baud rate
+        try:
+            ispeed = ospeed = getattr(TERMIOS, 'B%s' % (self._baudrate))
+        except AttributeError:
+            try:
+                ispeed = ospeed = baudrate_constants[self._baudrate]
+            except KeyError:
+                #~ raise ValueError('Invalid baud rate: %r' % self._baudrate)
+                # may need custom baud rate, it isn't in our list.
+                ispeed = ospeed = getattr(TERMIOS, 'B38400')
+                try:
+                    custom_baud = int(self._baudrate) # store for later
+                except ValueError:
+                    raise ValueError('Invalid baud rate: %r' % self._baudrate)
+                else:
+                    if custom_baud < 0:
+                        raise ValueError('Invalid baud rate: %r' % self._baudrate)
+
+        # setup char len
+        cflag &= ~TERMIOS.CSIZE
+        if self._bytesize == 8:
+            cflag |= TERMIOS.CS8
+        elif self._bytesize == 7:
+            cflag |= TERMIOS.CS7
+        elif self._bytesize == 6:
+            cflag |= TERMIOS.CS6
+        elif self._bytesize == 5:
+            cflag |= TERMIOS.CS5
+        else:
+            raise ValueError('Invalid char len: %r' % self._bytesize)
+        # setup stop bits
+        if self._stopbits == STOPBITS_ONE:
+            cflag &= ~(TERMIOS.CSTOPB)
+        elif self._stopbits == STOPBITS_ONE_POINT_FIVE:
+            cflag |=  (TERMIOS.CSTOPB)  # XXX same as TWO.. there is no POSIX support for 1.5
+        elif self._stopbits == STOPBITS_TWO:
+            cflag |=  (TERMIOS.CSTOPB)
+        else:
+            raise ValueError('Invalid stop bit specification: %r' % self._stopbits)
+        # setup parity
+        iflag &= ~(TERMIOS.INPCK|TERMIOS.ISTRIP)
+        if self._parity == PARITY_NONE:
+            cflag &= ~(TERMIOS.PARENB|TERMIOS.PARODD)
+        elif self._parity == PARITY_EVEN:
+            cflag &= ~(TERMIOS.PARODD)
+            cflag |=  (TERMIOS.PARENB)
+        elif self._parity == PARITY_ODD:
+            cflag |=  (TERMIOS.PARENB|TERMIOS.PARODD)
+        elif self._parity == PARITY_MARK and plat[:5] == 'linux':
+            cflag |=  (TERMIOS.PARENB|CMSPAR|TERMIOS.PARODD)
+        elif self._parity == PARITY_SPACE and plat[:5] == 'linux':
+            cflag |=  (TERMIOS.PARENB|CMSPAR)
+            cflag &= ~(TERMIOS.PARODD)
+        else:
+            raise ValueError('Invalid parity: %r' % self._parity)
+        # setup flow control
+        # xonxoff
+        if hasattr(TERMIOS, 'IXANY'):
+            if self._xonxoff:
+                iflag |=  (TERMIOS.IXON|TERMIOS.IXOFF) #|TERMIOS.IXANY)
+            else:
+                iflag &= ~(TERMIOS.IXON|TERMIOS.IXOFF|TERMIOS.IXANY)
+        else:
+            if self._xonxoff:
+                iflag |=  (TERMIOS.IXON|TERMIOS.IXOFF)
+            else:
+                iflag &= ~(TERMIOS.IXON|TERMIOS.IXOFF)
+        # rtscts
+        if hasattr(TERMIOS, 'CRTSCTS'):
+            if self._rtscts:
+                cflag |=  (TERMIOS.CRTSCTS)
+            else:
+                cflag &= ~(TERMIOS.CRTSCTS)
+        elif hasattr(TERMIOS, 'CNEW_RTSCTS'):   # try it with alternate constant name
+            if self._rtscts:
+                cflag |=  (TERMIOS.CNEW_RTSCTS)
+            else:
+                cflag &= ~(TERMIOS.CNEW_RTSCTS)
+        # XXX should there be a warning if setting up rtscts (and xonxoff etc) fails??
+
+        # buffer
+        # vmin "minimal number of characters to be read. 0 for non blocking"
+        if vmin < 0 or vmin > 255:
+            raise ValueError('Invalid vmin: %r ' % vmin)
+        cc[TERMIOS.VMIN] = vmin
+        # vtime
+        if vtime < 0 or vtime > 255:
+            raise ValueError('Invalid vtime: %r' % vtime)
+        cc[TERMIOS.VTIME] = vtime
+        # activate settings
+        if [iflag, oflag, cflag, lflag, ispeed, ospeed, cc] != orig_attr:
+            termios.tcsetattr(self.fd, TERMIOS.TCSANOW, [iflag, oflag, cflag, lflag, ispeed, ospeed, cc])
+
+        # apply custom baud rate, if any
+        if custom_baud is not None:
+            set_special_baudrate(self, custom_baud)
+
+    def close(self):
+        """Close port"""
+        if self._isOpen:
+            if self.fd is not None:
+                os.close(self.fd)
+                self.fd = None
+            self._isOpen = False
+
+    def makeDeviceName(self, port):
+        return device(port)
+
+    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
+
+    def inWaiting(self):
+        """Return the number of characters currently in the input buffer."""
+        #~ s = fcntl.ioctl(self.fd, TERMIOS.FIONREAD, TIOCM_zero_str)
+        s = fcntl.ioctl(self.fd, TIOCINQ, TIOCM_zero_str)
+        return struct.unpack('I',s)[0]
+
+    # select based implementation, proved to work on many systems
+    def read(self, size=1):
+        """\
+        Read size bytes from the serial port. If a timeout is set it may
+        return less characters as requested. With no timeout it will block
+        until the requested number of bytes is read.
+        """
+        if not self._isOpen: raise portNotOpenError
+        read = bytearray()
+        while len(read) < size:
+            try:
+                ready,_,_ = select.select([self.fd],[],[], self._timeout)
+                # If select was used with a timeout, and the timeout occurs, it
+                # returns with empty lists -> thus abort read operation.
+                # For timeout == 0 (non-blocking operation) also abort when there
+                # is nothing to read.
+                if not ready:
+                    break   # timeout
+                buf = os.read(self.fd, size-len(read))
+                # read should always return some data as select reported it was
+                # ready to read when we get to this point.
+                if not buf:
+                    # Disconnected devices, at least on Linux, show the
+                    # behavior that they are always ready to read immediately
+                    # but reading returns nothing.
+                    raise SerialException('device reports readiness to read but returned no data (device disconnected or multiple access on port?)')
+                read.extend(buf)
+            except OSError, e:
+                # this is for Python 3.x where select.error is a subclass of OSError
+                # ignore EAGAIN errors. all other errors are shown
+                if e.errno != errno.EAGAIN:
+                    raise SerialException('read failed: %s' % (e,))
+            except select.error, e:
+                # this is for Python 2.x
+                # ignore EAGAIN errors. all other errors are shown
+                # see also http://www.python.org/dev/peps/pep-3151/#select
+                if e[0] != errno.EAGAIN:
+                    raise SerialException('read failed: %s' % (e,))
+        return bytes(read)
+
+    def write(self, data):
+        """Output the given string over the serial port."""
+        if not self._isOpen: raise portNotOpenError
+        d = to_bytes(data)
+        tx_len = len(d)
+        if self._writeTimeout is not None and self._writeTimeout > 0:
+            timeout = time.time() + self._writeTimeout
+        else:
+            timeout = None
+        while tx_len > 0:
+            try:
+                n = os.write(self.fd, d)
+                if timeout:
+                    # when timeout is set, use select to wait for being ready
+                    # with the time left as timeout
+                    timeleft = timeout - time.time()
+                    if timeleft < 0:
+                        raise writeTimeoutError
+                    _, ready, _ = select.select([], [self.fd], [], timeleft)
+                    if not ready:
+                        raise writeTimeoutError
+                else:
+                    # wait for write operation
+                    _, ready, _ = select.select([], [self.fd], [], None)
+                    if not ready:
+                        raise SerialException('write failed (select)')
+                d = d[n:]
+                tx_len -= n
+            except OSError, v:
+                if v.errno != errno.EAGAIN:
+                    raise SerialException('write failed: %s' % (v,))
+        return len(data)
+
+    def flush(self):
+        """\
+        Flush of file like objects. In this case, wait until all data
+        is written.
+        """
+        self.drainOutput()
+
+    def flushInput(self):
+        """Clear input buffer, discarding all that is in the buffer."""
+        if not self._isOpen: raise portNotOpenError
+        termios.tcflush(self.fd, TERMIOS.TCIFLUSH)
+
+    def flushOutput(self):
+        """\
+        Clear output buffer, aborting the current output and discarding all
+        that is in the buffer.
+        """
+        if not self._isOpen: raise portNotOpenError
+        termios.tcflush(self.fd, TERMIOS.TCOFLUSH)
+
+    def sendBreak(self, duration=0.25):
+        """\
+        Send break condition. Timed, returns to idle state after given
+        duration.
+        """
+        if not self._isOpen: raise portNotOpenError
+        termios.tcsendbreak(self.fd, int(duration/0.25))
+
+    def setBreak(self, level=1):
+        """\
+        Set break: Controls TXD. When active, no transmitting is possible.
+        """
+        if self.fd is None: raise portNotOpenError
+        if level:
+            fcntl.ioctl(self.fd, TIOCSBRK)
+        else:
+            fcntl.ioctl(self.fd, TIOCCBRK)
+
+    def setRTS(self, level=1):
+        """Set terminal status line: Request To Send"""
+        if not self._isOpen: raise portNotOpenError
+        if level:
+            fcntl.ioctl(self.fd, TIOCMBIS, TIOCM_RTS_str)
+        else:
+            fcntl.ioctl(self.fd, TIOCMBIC, TIOCM_RTS_str)
+
+    def setDTR(self, level=1):
+        """Set terminal status line: Data Terminal Ready"""
+        if not self._isOpen: raise portNotOpenError
+        if level:
+            fcntl.ioctl(self.fd, TIOCMBIS, TIOCM_DTR_str)
+        else:
+            fcntl.ioctl(self.fd, TIOCMBIC, TIOCM_DTR_str)
+
+    def getCTS(self):
+        """Read terminal status line: Clear To Send"""
+        if not self._isOpen: raise portNotOpenError
+        s = fcntl.ioctl(self.fd, TIOCMGET, TIOCM_zero_str)
+        return struct.unpack('I',s)[0] & TIOCM_CTS != 0
+
+    def getDSR(self):
+        """Read terminal status line: Data Set Ready"""
+        if not self._isOpen: raise portNotOpenError
+        s = fcntl.ioctl(self.fd, TIOCMGET, TIOCM_zero_str)
+        return struct.unpack('I',s)[0] & TIOCM_DSR != 0
+
+    def getRI(self):
+        """Read terminal status line: Ring Indicator"""
+        if not self._isOpen: raise portNotOpenError
+        s = fcntl.ioctl(self.fd, TIOCMGET, TIOCM_zero_str)
+        return struct.unpack('I',s)[0] & TIOCM_RI != 0
+
+    def getCD(self):
+        """Read terminal status line: Carrier Detect"""
+        if not self._isOpen: raise portNotOpenError
+        s = fcntl.ioctl(self.fd, TIOCMGET, TIOCM_zero_str)
+        return struct.unpack('I',s)[0] & TIOCM_CD != 0
+
+    # - - platform specific - - - -
+
+    def outWaiting(self):
+        """Return the number of characters currently in the output buffer."""
+        #~ s = fcntl.ioctl(self.fd, TERMIOS.FIONREAD, TIOCM_zero_str)
+        s = fcntl.ioctl(self.fd, TIOCOUTQ, TIOCM_zero_str)
+        return struct.unpack('I',s)[0]
+
+    def drainOutput(self):
+        """internal - not portable!"""
+        if not self._isOpen: raise portNotOpenError
+        termios.tcdrain(self.fd)
+
+    def nonblocking(self):
+        """internal - not portable!"""
+        if not self._isOpen: raise portNotOpenError
+        fcntl.fcntl(self.fd, FCNTL.F_SETFL, os.O_NONBLOCK)
+
+    def fileno(self):
+        """\
+        For easier use of the serial port instance with select.
+        WARNING: this function is not portable to different platforms!
+        """
+        if not self._isOpen: raise portNotOpenError
+        return self.fd
+
+    def setXON(self, level=True):
+        """\
+        Manually control flow - when software flow control is enabled.
+        This will send XON (true) and XOFF (false) to the other device.
+        WARNING: this function is not portable to different platforms!
+        """
+        if not self.hComPort: raise portNotOpenError
+        if enable:
+            termios.tcflow(self.fd, TERMIOS.TCION)
+        else:
+            termios.tcflow(self.fd, TERMIOS.TCIOFF)
+
+    def flowControlOut(self, enable):
+        """\
+        Manually control flow of outgoing data - when hardware or software flow
+        control is enabled.
+        WARNING: this function is not portable to different platforms!
+        """
+        if not self._isOpen: raise portNotOpenError
+        if enable:
+            termios.tcflow(self.fd, TERMIOS.TCOON)
+        else:
+            termios.tcflow(self.fd, TERMIOS.TCOOFF)
+
+
+# assemble Serial class with the platform specific implementation and the base
+# for file-like behavior. for Python 2.6 and newer, that provide the new I/O
+# library, derive from io.RawIOBase
+try:
+    import io
+except ImportError:
+    # classic version with our own file-like emulation
+    class Serial(PosixSerial, FileLike):
+        pass
+else:
+    # io library present
+    class Serial(PosixSerial, io.RawIOBase):
+        pass
+
+class PosixPollSerial(Serial):
+    """\
+    Poll based read implementation. Not all systems support poll properly.
+    However this one has better handling of errors, such as a device
+    disconnecting while it's in use (e.g. USB-serial unplugged).
+    """
+
+    def read(self, size=1):
+        """\
+        Read size bytes from the serial port. If a timeout is set it may
+        return less characters as requested. With no timeout it will block
+        until the requested number of bytes is read.
+        """
+        if self.fd is None: raise portNotOpenError
+        read = bytearray()
+        poll = select.poll()
+        poll.register(self.fd, select.POLLIN|select.POLLERR|select.POLLHUP|select.POLLNVAL)
+        if size > 0:
+            while len(read) < size:
+                # print "\tread(): size",size, "have", len(read)    #debug
+                # wait until device becomes ready to read (or something fails)
+                for fd, event in poll.poll(self._timeout*1000):
+                    if event & (select.POLLERR|select.POLLHUP|select.POLLNVAL):
+                        raise SerialException('device reports error (poll)')
+                    #  we don't care if it is select.POLLIN or timeout, that's
+                    #  handled below
+                buf = os.read(self.fd, size - len(read))
+                read.extend(buf)
+                if ((self._timeout is not None and self._timeout >= 0) or 
+                    (self._interCharTimeout is not None and self._interCharTimeout > 0)) and not buf:
+                    break   # early abort on timeout
+        return bytes(read)
+
+
+if __name__ == '__main__':
+    s = Serial(0,
+                 baudrate=19200,        # baud rate
+                 bytesize=EIGHTBITS,    # number of data bits
+                 parity=PARITY_EVEN,    # enable parity checking
+                 stopbits=STOPBITS_ONE, # number of stop bits
+                 timeout=3,             # set a timeout value, None for waiting forever
+                 xonxoff=0,             # enable software flow control
+                 rtscts=0,              # enable RTS/CTS flow control
+               )
+    s.setRTS(1)
+    s.setDTR(1)
+    s.flushInput()
+    s.flushOutput()
+    s.write('hello')
+    sys.stdout.write('%r\n' % s.read(5))
+    sys.stdout.write('%s\n' % s.inWaiting())
+    del s
+
diff --git a/scripts/serial/serialutil.py b/scripts/serial/serialutil.py
new file mode 100644
index 0000000..af0d2f6
--- /dev/null
+++ b/scripts/serial/serialutil.py
@@ -0,0 +1,572 @@
+#! python
+# Python Serial Port Extension for Win32, Linux, BSD, Jython
+# see __init__.py
+#
+# (C) 2001-2010 Chris Liechti <cliechti@gmx.net>
+# this is distributed under a free software license, see license.txt
+
+# compatibility for older Python < 2.6
+try:
+    bytes
+    bytearray
+except (NameError, AttributeError):
+    # Python older than 2.6 do not have these types. Like for Python 2.6 they
+    # should behave like str. For Python older than 3.0 we want to work with
+    # strings anyway, only later versions have a true bytes type.
+    bytes = str
+    # bytearray is a mutable type that is easily turned into an instance of
+    # bytes
+    class bytearray(list):
+        # for bytes(bytearray()) usage
+        def __str__(self): return ''.join(self)
+        def __repr__(self): return 'bytearray(%r)' % ''.join(self)
+        # append automatically converts integers to characters
+        def append(self, item):
+            if isinstance(item, str):
+                list.append(self, item)
+            else:
+                list.append(self, chr(item))
+        # +=
+        def __iadd__(self, other):
+            for byte in other:
+                self.append(byte)
+            return self
+
+        def __getslice__(self, i, j):
+            return bytearray(list.__getslice__(self, i, j))
+
+        def __getitem__(self, item):
+            if isinstance(item, slice):
+                return bytearray(list.__getitem__(self, item))
+            else:
+                return ord(list.__getitem__(self, item))
+
+        def __eq__(self, other):
+            if isinstance(other, basestring):
+                other = bytearray(other)
+            return list.__eq__(self, other)
+
+# ``memoryview`` was introduced in Python 2.7 and ``bytes(some_memoryview)``
+# isn't returning the contents (very unfortunate). Therefore we need special
+# cases and test for it. Ensure that there is a ``memoryview`` object for older
+# Python versions. This is easier than making every test dependent on its
+# existence.
+try:
+    memoryview
+except (NameError, AttributeError):
+    # implementation does not matter as we do not realy use it.
+    # it just must not inherit from something else we might care for.
+    class memoryview:
+        pass
+
+
+# all Python versions prior 3.x convert ``str([17])`` to '[17]' instead of '\x11'
+# so a simple ``bytes(sequence)`` doesn't work for all versions
+def to_bytes(seq):
+    """convert a sequence to a bytes type"""
+    if isinstance(seq, bytes):
+        return seq
+    elif isinstance(seq, bytearray):
+        return bytes(seq)
+    elif isinstance(seq, memoryview):
+        return seq.tobytes()
+    else:
+        b = bytearray()
+        for item in seq:
+            b.append(item)  # this one handles int and str for our emulation and ints for Python 3.x
+        return bytes(b)
+
+# create control bytes
+XON  = to_bytes([17])
+XOFF = to_bytes([19])
+
+CR = to_bytes([13])
+LF = to_bytes([10])
+
+
+PARITY_NONE, PARITY_EVEN, PARITY_ODD, PARITY_MARK, PARITY_SPACE = 'N', 'E', 'O', 'M', 'S'
+STOPBITS_ONE, STOPBITS_ONE_POINT_FIVE, STOPBITS_TWO = (1, 1.5, 2)
+FIVEBITS, SIXBITS, SEVENBITS, EIGHTBITS = (5, 6, 7, 8)
+
+PARITY_NAMES = {
+    PARITY_NONE:  'None',
+    PARITY_EVEN:  'Even',
+    PARITY_ODD:   'Odd',
+    PARITY_MARK:  'Mark',
+    PARITY_SPACE: 'Space',
+}
+
+
+class SerialException(IOError):
+    """Base class for serial port related exceptions."""
+
+
+class SerialTimeoutException(SerialException):
+    """Write timeouts give an exception"""
+
+
+writeTimeoutError = SerialTimeoutException('Write timeout')
+portNotOpenError = SerialException('Attempting to use a port that is not open')
+
+
+class FileLike(object):
+    """\
+    An abstract file like class.
+
+    This class implements readline and readlines based on read and
+    writelines based on write.
+    This class is used to provide the above functions for to Serial
+    port objects.
+
+    Note that when the serial port was opened with _NO_ timeout that
+    readline blocks until it sees a newline (or the specified size is
+    reached) and that readlines would never return and therefore
+    refuses to work (it raises an exception in this case)!
+    """
+
+    def __init__(self):
+        self.closed = True
+
+    def close(self):
+        self.closed = True
+
+    # so that ports are closed when objects are discarded
+    def __del__(self):
+        """Destructor.  Calls close()."""
+        # The try/except block is in case this is called at program
+        # exit time, when it's possible that globals have already been
+        # deleted, and then the close() call might fail.  Since
+        # there's nothing we can do about such failures and they annoy
+        # the end users, we suppress the traceback.
+        try:
+            self.close()
+        except:
+            pass
+
+    def writelines(self, sequence):
+        for line in sequence:
+            self.write(line)
+
+    def flush(self):
+        """flush of file like objects"""
+        pass
+
+    # iterator for e.g. "for line in Serial(0): ..." usage
+    def next(self):
+        line = self.readline()
+        if not line: raise StopIteration
+        return line
+
+    def __iter__(self):
+        return self
+
+    def readline(self, size=None, eol=LF):
+        """\
+        Read a line which is terminated with end-of-line (eol) character
+        ('\n' by default) or until timeout.
+        """
+        leneol = len(eol)
+        line = bytearray()
+        while True:
+            c = self.read(1)
+            if c:
+                line += c
+                if line[-leneol:] == eol:
+                    break
+                if size is not None and len(line) >= size:
+                    break
+            else:
+                break
+        return bytes(line)
+
+    def readlines(self, sizehint=None, eol=LF):
+        """\
+        Read a list of lines, until timeout.
+        sizehint is ignored.
+        """
+        if self.timeout is None:
+            raise ValueError("Serial port MUST have enabled timeout for this function!")
+        leneol = len(eol)
+        lines = []
+        while True:
+            line = self.readline(eol=eol)
+            if line:
+                lines.append(line)
+                if line[-leneol:] != eol:    # was the line received with a timeout?
+                    break
+            else:
+                break
+        return lines
+
+    def xreadlines(self, sizehint=None):
+        """\
+        Read lines, implemented as generator. It will raise StopIteration on
+        timeout (empty read). sizehint is ignored.
+        """
+        while True:
+            line = self.readline()
+            if not line: break
+            yield line
+
+    # other functions of file-likes - not used by pySerial
+
+    #~ readinto(b)
+
+    def seek(self, pos, whence=0):
+        raise IOError("file is not seekable")
+
+    def tell(self):
+        raise IOError("file is not seekable")
+
+    def truncate(self, n=None):
+        raise IOError("file is not seekable")
+
+    def isatty(self):
+        return False
+
+
+class SerialBase(object):
+    """\
+    Serial port base class. Provides __init__ function and properties to
+    get/set port settings.
+    """
+
+    # default values, may be overridden in subclasses that do not support all values
+    BAUDRATES = (50, 75, 110, 134, 150, 200, 300, 600, 1200, 1800, 2400, 4800,
+                 9600, 19200, 38400, 57600, 115200, 230400, 460800, 500000,
+                 576000, 921600, 1000000, 1152000, 1500000, 2000000, 2500000,
+                 3000000, 3500000, 4000000)
+    BYTESIZES = (FIVEBITS, SIXBITS, SEVENBITS, EIGHTBITS)
+    PARITIES  = (PARITY_NONE, PARITY_EVEN, PARITY_ODD, PARITY_MARK, PARITY_SPACE)
+    STOPBITS  = (STOPBITS_ONE, STOPBITS_ONE_POINT_FIVE, STOPBITS_TWO)
+
+    def __init__(self,
+                 port = None,           # number of device, numbering starts at
+                                        # zero. if everything fails, the user
+                                        # can specify a device string, note
+                                        # that this isn't portable anymore
+                                        # port will be opened if one is specified
+                 baudrate=9600,         # baud rate
+                 bytesize=EIGHTBITS,    # number of data bits
+                 parity=PARITY_NONE,    # enable parity checking
+                 stopbits=STOPBITS_ONE, # number of stop bits
+                 timeout=None,          # set a timeout value, None to wait forever
+                 xonxoff=False,         # enable software flow control
+                 rtscts=False,          # enable RTS/CTS flow control
+                 writeTimeout=None,     # set a timeout for writes
+                 dsrdtr=False,          # None: use rtscts setting, dsrdtr override if True or False
+                 interCharTimeout=None  # Inter-character timeout, None to disable
+                 ):
+        """\
+        Initialize comm port object. If a port is given, then the port will be
+        opened immediately. Otherwise a Serial port object in closed state
+        is returned.
+        """
+
+        self._isOpen   = False
+        self._port     = None           # correct value is assigned below through properties
+        self._baudrate = None           # correct value is assigned below through properties
+        self._bytesize = None           # correct value is assigned below through properties
+        self._parity   = None           # correct value is assigned below through properties
+        self._stopbits = None           # correct value is assigned below through properties
+        self._timeout  = None           # correct value is assigned below through properties
+        self._writeTimeout = None       # correct value is assigned below through properties
+        self._xonxoff  = None           # correct value is assigned below through properties
+        self._rtscts   = None           # correct value is assigned below through properties
+        self._dsrdtr   = None           # correct value is assigned below through properties
+        self._interCharTimeout = None   # correct value is assigned below through properties
+
+        # assign values using get/set methods using the properties feature
+        self.port     = port
+        self.baudrate = baudrate
+        self.bytesize = bytesize
+        self.parity   = parity
+        self.stopbits = stopbits
+        self.timeout  = timeout
+        self.writeTimeout = writeTimeout
+        self.xonxoff  = xonxoff
+        self.rtscts   = rtscts
+        self.dsrdtr   = dsrdtr
+        self.interCharTimeout = interCharTimeout
+
+        if port is not None:
+            self.open()
+
+    def isOpen(self):
+        """Check if the port is opened."""
+        return self._isOpen
+
+    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
+
+    # TODO: these are not really needed as the is the BAUDRATES etc. attribute...
+    # maybe i remove them before the final release...
+
+    def getSupportedBaudrates(self):
+        return [(str(b), b) for b in self.BAUDRATES]
+
+    def getSupportedByteSizes(self):
+        return [(str(b), b) for b in self.BYTESIZES]
+
+    def getSupportedStopbits(self):
+        return [(str(b), b) for b in self.STOPBITS]
+
+    def getSupportedParities(self):
+        return [(PARITY_NAMES[b], b) for b in self.PARITIES]
+
+    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
+
+    def setPort(self, port):
+        """\
+        Change the port. The attribute portstr is set to a string that
+        contains the name of the port.
+        """
+
+        was_open = self._isOpen
+        if was_open: self.close()
+        if port is not None:
+            if isinstance(port, basestring):
+                self.portstr = port
+            else:
+                self.portstr = self.makeDeviceName(port)
+        else:
+            self.portstr = None
+        self._port = port
+        self.name = self.portstr
+        if was_open: self.open()
+
+    def getPort(self):
+        """\
+        Get the current port setting. The value that was passed on init or using
+        setPort() is passed back. See also the attribute portstr which contains
+        the name of the port as a string.
+        """
+        return self._port
+
+    port = property(getPort, setPort, doc="Port setting")
+
+
+    def setBaudrate(self, baudrate):
+        """\
+        Change baud rate. It raises a ValueError if the port is open and the
+        baud rate is not possible. If the port is closed, then the value is
+        accepted and the exception is raised when the port is opened.
+        """
+        try:
+            b = int(baudrate)
+        except TypeError:
+            raise ValueError("Not a valid baudrate: %r" % (baudrate,))
+        else:
+            if b <= 0:
+                raise ValueError("Not a valid baudrate: %r" % (baudrate,))
+            self._baudrate = b
+            if self._isOpen:  self._reconfigurePort()
+
+    def getBaudrate(self):
+        """Get the current baud rate setting."""
+        return self._baudrate
+
+    baudrate = property(getBaudrate, setBaudrate, doc="Baud rate setting")
+
+
+    def setByteSize(self, bytesize):
+        """Change byte size."""
+        if bytesize not in self.BYTESIZES: raise ValueError("Not a valid byte size: %r" % (bytesize,))
+        self._bytesize = bytesize
+        if self._isOpen: self._reconfigurePort()
+
+    def getByteSize(self):
+        """Get the current byte size setting."""
+        return self._bytesize
+
+    bytesize = property(getByteSize, setByteSize, doc="Byte size setting")
+
+
+    def setParity(self, parity):
+        """Change parity setting."""
+        if parity not in self.PARITIES: raise ValueError("Not a valid parity: %r" % (parity,))
+        self._parity = parity
+        if self._isOpen: self._reconfigurePort()
+
+    def getParity(self):
+        """Get the current parity setting."""
+        return self._parity
+
+    parity = property(getParity, setParity, doc="Parity setting")
+
+
+    def setStopbits(self, stopbits):
+        """Change stop bits size."""
+        if stopbits not in self.STOPBITS: raise ValueError("Not a valid stop bit size: %r" % (stopbits,))
+        self._stopbits = stopbits
+        if self._isOpen: self._reconfigurePort()
+
+    def getStopbits(self):
+        """Get the current stop bits setting."""
+        return self._stopbits
+
+    stopbits = property(getStopbits, setStopbits, doc="Stop bits setting")
+
+
+    def setTimeout(self, timeout):
+        """Change timeout setting."""
+        if timeout is not None:
+            try:
+                timeout + 1     # test if it's a number, will throw a TypeError if not...
+            except TypeError:
+                raise ValueError("Not a valid timeout: %r" % (timeout,))
+            if timeout < 0: raise ValueError("Not a valid timeout: %r" % (timeout,))
+        self._timeout = timeout
+        if self._isOpen: self._reconfigurePort()
+
+    def getTimeout(self):
+        """Get the current timeout setting."""
+        return self._timeout
+
+    timeout = property(getTimeout, setTimeout, doc="Timeout setting for read()")
+
+
+    def setWriteTimeout(self, timeout):
+        """Change timeout setting."""
+        if timeout is not None:
+            if timeout < 0: raise ValueError("Not a valid timeout: %r" % (timeout,))
+            try:
+                timeout + 1     #test if it's a number, will throw a TypeError if not...
+            except TypeError:
+                raise ValueError("Not a valid timeout: %r" % timeout)
+
+        self._writeTimeout = timeout
+        if self._isOpen: self._reconfigurePort()
+
+    def getWriteTimeout(self):
+        """Get the current timeout setting."""
+        return self._writeTimeout
+
+    writeTimeout = property(getWriteTimeout, setWriteTimeout, doc="Timeout setting for write()")
+
+
+    def setXonXoff(self, xonxoff):
+        """Change XON/XOFF setting."""
+        self._xonxoff = xonxoff
+        if self._isOpen: self._reconfigurePort()
+
+    def getXonXoff(self):
+        """Get the current XON/XOFF setting."""
+        return self._xonxoff
+
+    xonxoff = property(getXonXoff, setXonXoff, doc="XON/XOFF setting")
+
+    def setRtsCts(self, rtscts):
+        """Change RTS/CTS flow control setting."""
+        self._rtscts = rtscts
+        if self._isOpen: self._reconfigurePort()
+
+    def getRtsCts(self):
+        """Get the current RTS/CTS flow control setting."""
+        return self._rtscts
+
+    rtscts = property(getRtsCts, setRtsCts, doc="RTS/CTS flow control setting")
+
+    def setDsrDtr(self, dsrdtr=None):
+        """Change DsrDtr flow control setting."""
+        if dsrdtr is None:
+            # if not set, keep backwards compatibility and follow rtscts setting
+            self._dsrdtr = self._rtscts
+        else:
+            # if defined independently, follow its value
+            self._dsrdtr = dsrdtr
+        if self._isOpen: self._reconfigurePort()
+
+    def getDsrDtr(self):
+        """Get the current DSR/DTR flow control setting."""
+        return self._dsrdtr
+
+    dsrdtr = property(getDsrDtr, setDsrDtr, "DSR/DTR flow control setting")
+
+    def setInterCharTimeout(self, interCharTimeout):
+        """Change inter-character timeout setting."""
+        if interCharTimeout is not None:
+            if interCharTimeout < 0: raise ValueError("Not a valid timeout: %r" % interCharTimeout)
+            try:
+                interCharTimeout + 1     # test if it's a number, will throw a TypeError if not...
+            except TypeError:
+                raise ValueError("Not a valid timeout: %r" % interCharTimeout)
+
+        self._interCharTimeout = interCharTimeout
+        if self._isOpen: self._reconfigurePort()
+
+    def getInterCharTimeout(self):
+        """Get the current inter-character timeout setting."""
+        return self._interCharTimeout
+
+    interCharTimeout = property(getInterCharTimeout, setInterCharTimeout, doc="Inter-character timeout setting for read()")
+
+    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
+
+    _SETTINGS = ('baudrate', 'bytesize', 'parity', 'stopbits', 'xonxoff',
+            'dsrdtr', 'rtscts', 'timeout', 'writeTimeout', 'interCharTimeout')
+
+    def getSettingsDict(self):
+        """\
+        Get current port settings as a dictionary. For use with
+        applySettingsDict.
+        """
+        return dict([(key, getattr(self, '_'+key)) for key in self._SETTINGS])
+
+    def applySettingsDict(self, d):
+        """\
+        apply stored settings from a dictionary returned from
+        getSettingsDict. it's allowed to delete keys from the dictionary. these
+        values will simply left unchanged.
+        """
+        for key in self._SETTINGS:
+            if d[key] != getattr(self, '_'+key):   # check against internal "_" value
+                setattr(self, key, d[key])          # set non "_" value to use properties write function
+
+    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
+
+    def __repr__(self):
+        """String representation of the current port settings and its state."""
+        return "%s<id=0x%x, open=%s>(port=%r, baudrate=%r, bytesize=%r, parity=%r, stopbits=%r, timeout=%r, xonxoff=%r, rtscts=%r, dsrdtr=%r)" % (
+            self.__class__.__name__,
+            id(self),
+            self._isOpen,
+            self.portstr,
+            self.baudrate,
+            self.bytesize,
+            self.parity,
+            self.stopbits,
+            self.timeout,
+            self.xonxoff,
+            self.rtscts,
+            self.dsrdtr,
+        )
+
+
+    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
+    # compatibility with io library
+
+    def readable(self): return True
+    def writable(self): return True
+    def seekable(self): return False
+    def readinto(self, b):
+        data = self.read(len(b))
+        n = len(data)
+        try:
+            b[:n] = data
+        except TypeError, err:
+            import array
+            if not isinstance(b, array.array):
+                raise err
+            b[:n] = array.array('b', data)
+        return n
+
+
+if __name__ == '__main__':
+    import sys
+    s = SerialBase()
+    sys.stdout.write('port name:  %s\n' % s.portstr)
+    sys.stdout.write('baud rates: %s\n' % s.getSupportedBaudrates())
+    sys.stdout.write('byte sizes: %s\n' % s.getSupportedByteSizes())
+    sys.stdout.write('parities:   %s\n' % s.getSupportedParities())
+    sys.stdout.write('stop bits:  %s\n' % s.getSupportedStopbits())
+    sys.stdout.write('%s\n' % s)
diff --git a/scripts/serial/tools/__init__.py b/scripts/serial/tools/__init__.py
new file mode 100644
index 0000000..e69de29
diff --git a/scripts/serial/tools/list_ports.py b/scripts/serial/tools/list_ports.py
new file mode 100644
index 0000000..d373a55
--- /dev/null
+++ b/scripts/serial/tools/list_ports.py
@@ -0,0 +1,103 @@
+#!/usr/bin/env python
+
+# portable serial port access with python
+# this is a wrapper module for different platform implementations of the
+# port enumeration feature
+#
+# (C) 2011-2013 Chris Liechti <cliechti@gmx.net>
+# this is distributed under a free software license, see license.txt
+
+"""\
+This module will provide a function called comports that returns an
+iterable (generator or list) that will enumerate available com ports. Note that
+on some systems non-existent ports may be listed.
+
+Additionally a grep function is supplied that can be used to search for ports
+based on their descriptions or hardware ID.
+"""
+
+import sys, os, re
+
+# chose an implementation, depending on os
+#~ if sys.platform == 'cli':
+#~ else:
+import os
+# chose an implementation, depending on os
+if os.name == 'nt': #sys.platform == 'win32':
+    from serial.tools.list_ports_windows import *
+elif os.name == 'posix':
+    from serial.tools.list_ports_posix import *
+#~ elif os.name == 'java':
+else:
+    raise ImportError("Sorry: no implementation for your platform ('%s') available" % (os.name,))
+
+# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
+
+def grep(regexp):
+    """\
+    Search for ports using a regular expression. Port name, description and
+    hardware ID are searched. The function returns an iterable that returns the
+    same tuples as comport() would do.
+    """
+    r = re.compile(regexp, re.I)
+    for port, desc, hwid in comports():
+        if r.search(port) or r.search(desc) or r.search(hwid):
+            yield port, desc, hwid
+
+
+# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
+def main():
+    import optparse
+
+    parser = optparse.OptionParser(
+        usage = "%prog [options] [<regexp>]",
+        description = "Miniterm - A simple terminal program for the serial port."
+    )
+
+    parser.add_option("--debug",
+            help="print debug messages and tracebacks (development mode)",
+            dest="debug",
+            default=False,
+            action='store_true')
+
+    parser.add_option("-v", "--verbose",
+            help="show more messages (can be given multiple times)",
+            dest="verbose",
+            default=1,
+            action='count')
+
+    parser.add_option("-q", "--quiet",
+            help="suppress all messages",
+            dest="verbose",
+            action='store_const',
+            const=0)
+
+    (options, args) = parser.parse_args()
+
+
+    hits = 0
+    # get iteraror w/ or w/o filter
+    if args:
+        if len(args) > 1:
+            parser.error('more than one regexp not supported')
+        print "Filtered list with regexp: %r" % (args[0],)
+        iterator = sorted(grep(args[0]))
+    else:
+        iterator = sorted(comports())
+    # list them
+    for port, desc, hwid in iterator:
+        print("%-20s" % (port,))
+        if options.verbose > 1:
+            print("    desc: %s" % (desc,))
+            print("    hwid: %s" % (hwid,))
+        hits += 1
+    if options.verbose:
+        if hits:
+            print("%d ports found" % (hits,))
+        else:
+            print("no ports found")
+
+# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
+# test
+if __name__ == '__main__':
+    main()
diff --git a/scripts/serial/tools/list_ports_linux.py b/scripts/serial/tools/list_ports_linux.py
new file mode 100644
index 0000000..955761e
--- /dev/null
+++ b/scripts/serial/tools/list_ports_linux.py
@@ -0,0 +1,152 @@
+#!/usr/bin/env python
+
+# portable serial port access with python
+#
+# This is a module that gathers a list of serial ports including details on
+# GNU/Linux systems
+#
+# (C) 2011-2013 Chris Liechti <cliechti@gmx.net>
+# this is distributed under a free software license, see license.txt
+
+import glob
+import sys
+import os
+import re
+
+try:
+    import subprocess
+except ImportError:
+    def popen(argv):
+        try:
+            si, so =  os.popen4(' '.join(argv))
+            return so.read().strip()
+        except:
+            raise IOError('lsusb failed')
+else:
+    def popen(argv):
+        try:
+            return subprocess.check_output(argv, stderr=subprocess.STDOUT).strip()
+        except:
+            raise IOError('lsusb failed')
+
+
+# The comports function is expected to return an iterable that yields tuples of
+# 3 strings: port name, human readable description and a hardware ID.
+#
+# as currently no method is known to get the second two strings easily, they
+# are currently just identical to the port name.
+
+# try to detect the OS so that a device can be selected...
+plat = sys.platform.lower()
+
+def read_line(filename):
+    """\
+    Helper function to read a single line from a file.
+    Returns None on errors..
+    """
+    try:
+        f = open(filename)
+        line = f.readline().strip()
+        f.close()
+        return line
+    except IOError:
+        return None
+
+def re_group(regexp, text):
+    """search for regexp in text, return 1st group on match"""
+    if sys.version < '3':
+        m = re.search(regexp, text)
+    else:
+        # text is bytes-like
+        m = re.search(regexp, text.decode('ascii', 'replace'))
+    if m: return m.group(1)
+
+
+# try to extract descriptions from sysfs. this was done by experimenting,
+# no guarantee that it works for all devices or in the future...
+
+def usb_sysfs_hw_string(sysfs_path):
+    """given a path to a usb device in sysfs, return a string describing it"""
+    bus, dev = os.path.basename(os.path.realpath(sysfs_path)).split('-')
+    snr = read_line(sysfs_path+'/serial')
+    if snr:
+        snr_txt = ' SNR=%s' % (snr,)
+    else:
+        snr_txt = ''
+    return 'USB VID:PID=%s:%s%s' % (
+            read_line(sysfs_path+'/idVendor'),
+            read_line(sysfs_path+'/idProduct'),
+            snr_txt
+            )
+
+def usb_lsusb_string(sysfs_path):
+    base = os.path.basename(os.path.realpath(sysfs_path))
+    bus = base.split('-')[0]
+    try:
+        dev = int(read_line(os.path.join(sysfs_path, 'devnum')))
+        desc = popen(['lsusb', '-v', '-s', '%s:%s' % (bus, dev)])
+        # descriptions from device
+        iManufacturer = re_group('iManufacturer\s+\w+ (.+)', desc)
+        iProduct = re_group('iProduct\s+\w+ (.+)', desc)
+        iSerial = re_group('iSerial\s+\w+ (.+)', desc) or ''
+        # descriptions from kernel
+        idVendor = re_group('idVendor\s+0x\w+ (.+)', desc)
+        idProduct = re_group('idProduct\s+0x\w+ (.+)', desc)
+        # create descriptions. prefer text from device, fall back to the others
+        return '%s %s %s' % (iManufacturer or idVendor, iProduct or idProduct, iSerial)
+    except IOError:
+        return base
+
+def describe(device):
+    """\
+    Get a human readable description.
+    For USB-Serial devices try to run lsusb to get a human readable description.
+    For USB-CDC devices read the description from sysfs.
+    """
+    base = os.path.basename(device)
+    # USB-Serial devices
+    sys_dev_path = '/sys/class/tty/%s/device/driver/%s' % (base, base)
+    if os.path.exists(sys_dev_path):
+        sys_usb = os.path.dirname(os.path.dirname(os.path.realpath(sys_dev_path)))
+        return usb_lsusb_string(sys_usb)
+    # USB-CDC devices
+    sys_dev_path = '/sys/class/tty/%s/device/interface' % (base,)
+    if os.path.exists(sys_dev_path):
+        return read_line(sys_dev_path)
+    # USB Product Information
+    sys_dev_path = '/sys/class/tty/%s/device' % (base,)
+    if os.path.exists(sys_dev_path):
+        product_name_file = os.path.dirname(os.path.realpath(sys_dev_path)) + "/product"
+        if os.path.exists(product_name_file):
+            return read_line(product_name_file)
+    return base
+
+def hwinfo(device):
+    """Try to get a HW identification using sysfs"""
+    base = os.path.basename(device)
+    if os.path.exists('/sys/class/tty/%s/device' % (base,)):
+        # PCI based devices
+        sys_id_path = '/sys/class/tty/%s/device/id' % (base,)
+        if os.path.exists(sys_id_path):
+            return read_line(sys_id_path)
+        # USB-Serial devices
+        sys_dev_path = '/sys/class/tty/%s/device/driver/%s' % (base, base)
+        if os.path.exists(sys_dev_path):
+            sys_usb = os.path.dirname(os.path.dirname(os.path.realpath(sys_dev_path)))
+            return usb_sysfs_hw_string(sys_usb)
+        # USB-CDC devices
+        if base.startswith('ttyACM'):
+            sys_dev_path = '/sys/class/tty/%s/device' % (base,)
+            if os.path.exists(sys_dev_path):
+                return usb_sysfs_hw_string(sys_dev_path + '/..')
+    return 'n/a'    # XXX directly remove these from the list?
+
+def comports():
+    devices = glob.glob('/dev/ttyS*') + glob.glob('/dev/ttyUSB*') + glob.glob('/dev/ttyACM*')
+    return [(d, describe(d), hwinfo(d)) for d in devices]
+
+# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
+# test
+if __name__ == '__main__':
+    for port, desc, hwid in sorted(comports()):
+        print "%s: %s [%s]" % (port, desc, hwid)
diff --git a/scripts/serial/urlhandler/__init__.py b/scripts/serial/urlhandler/__init__.py
new file mode 100644
index 0000000..e69de29
diff --git a/scripts/serial/urlhandler/protocol_hwgrep.py b/scripts/serial/urlhandler/protocol_hwgrep.py
new file mode 100644
index 0000000..62cda43
--- /dev/null
+++ b/scripts/serial/urlhandler/protocol_hwgrep.py
@@ -0,0 +1,45 @@
+#! python
+#
+# Python Serial Port Extension for Win32, Linux, BSD, Jython
+# see __init__.py
+#
+# This module implements a special URL handler that uses the port listing to
+# find ports by searching the string descriptions.
+#
+# (C) 2011 Chris Liechti <cliechti@gmx.net>
+# this is distributed under a free software license, see license.txt
+#
+# URL format:    hwgrep://regexp
+
+import serial
+import serial.tools.list_ports
+
+class Serial(serial.Serial):
+    """Just inherit the native Serial port implementation and patch the open function."""
+
+    def setPort(self, value):
+        """translate port name before storing it"""
+        if isinstance(value, basestring) and value.startswith('hwgrep://'):
+            serial.Serial.setPort(self, self.fromURL(value))
+        else:
+            serial.Serial.setPort(self, value)
+
+    def fromURL(self, url):
+        """extract host and port from an URL string"""
+        if url.lower().startswith("hwgrep://"): url = url[9:]
+        # use a for loop to get the 1st element from the generator
+        for port, desc, hwid in serial.tools.list_ports.grep(url):
+            return port
+        else:
+            raise serial.SerialException('no ports found matching regexp %r' % (url,))
+
+    # override property
+    port = property(serial.Serial.getPort, setPort, doc="Port setting")
+
+# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
+if __name__ == '__main__':
+    #~ s = Serial('hwgrep://ttyS0')
+    s = Serial(None)
+    s.port = 'hwgrep://ttyS0'
+    print s
+
diff --git a/scripts/serial/urlhandler/protocol_loop.py b/scripts/serial/urlhandler/protocol_loop.py
new file mode 100644
index 0000000..a414839
--- /dev/null
+++ b/scripts/serial/urlhandler/protocol_loop.py
@@ -0,0 +1,279 @@
+#! python
+#
+# Python Serial Port Extension for Win32, Linux, BSD, Jython
+# see __init__.py
+#
+# This module implements a loop back connection receiving itself what it sent.
+#
+# The purpose of this module is.. well... You can run the unit tests with it.
+# and it was so easy to implement ;-)
+#
+# (C) 2001-2011 Chris Liechti <cliechti@gmx.net>
+# this is distributed under a free software license, see license.txt
+#
+# URL format:    loop://[option[/option...]]
+# options:
+# - "debug" print diagnostic messages
+
+from serial.serialutil import *
+import threading
+import time
+import logging
+
+# map log level names to constants. used in fromURL()
+LOGGER_LEVELS = {
+    'debug': logging.DEBUG,
+    'info': logging.INFO,
+    'warning': logging.WARNING,
+    'error': logging.ERROR,
+    }
+
+
+class LoopbackSerial(SerialBase):
+    """Serial port implementation that simulates a loop back connection in plain software."""
+
+    BAUDRATES = (50, 75, 110, 134, 150, 200, 300, 600, 1200, 1800, 2400, 4800,
+                 9600, 19200, 38400, 57600, 115200)
+
+    def open(self):
+        """\
+        Open port with current settings. This may throw a SerialException
+        if the port cannot be opened.
+        """
+        if self._isOpen:
+            raise SerialException("Port is already open.")
+        self.logger = None
+        self.buffer_lock = threading.Lock()
+        self.loop_buffer = bytearray()
+        self.cts = False
+        self.dsr = False
+
+        if self._port is None:
+            raise SerialException("Port must be configured before it can be used.")
+        # not that there is anything to open, but the function applies the
+        # options found in the URL
+        self.fromURL(self.port)
+
+        # not that there anything to configure...
+        self._reconfigurePort()
+        # all things set up get, now a clean start
+        self._isOpen = True
+        if not self._rtscts:
+            self.setRTS(True)
+            self.setDTR(True)
+        self.flushInput()
+        self.flushOutput()
+
+    def _reconfigurePort(self):
+        """\
+        Set communication parameters on opened port. For the loop://
+        protocol all settings are ignored!
+        """
+        # not that's it of any real use, but it helps in the unit tests
+        if not isinstance(self._baudrate, (int, long)) or not 0 < self._baudrate < 2**32:
+            raise ValueError("invalid baudrate: %r" % (self._baudrate))
+        if self.logger:
+            self.logger.info('_reconfigurePort()')
+
+    def close(self):
+        """Close port"""
+        if self._isOpen:
+            self._isOpen = False
+            # in case of quick reconnects, give the server some time
+            time.sleep(0.3)
+
+    def makeDeviceName(self, port):
+        raise SerialException("there is no sensible way to turn numbers into URLs")
+
+    def fromURL(self, url):
+        """extract host and port from an URL string"""
+        if url.lower().startswith("loop://"): url = url[7:]
+        try:
+            # process options now, directly altering self
+            for option in url.split('/'):
+                if '=' in option:
+                    option, value = option.split('=', 1)
+                else:
+                    value = None
+                if not option:
+                    pass
+                elif option == 'logging':
+                    logging.basicConfig()   # XXX is that good to call it here?
+                    self.logger = logging.getLogger('pySerial.loop')
+                    self.logger.setLevel(LOGGER_LEVELS[value])
+                    self.logger.debug('enabled logging')
+                else:
+                    raise ValueError('unknown option: %r' % (option,))
+        except ValueError, e:
+            raise SerialException('expected a string in the form "[loop://][option[/option...]]": %s' % e)
+
+    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
+
+    def inWaiting(self):
+        """Return the number of characters currently in the input buffer."""
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            # attention the logged value can differ from return value in
+            # threaded environments...
+            self.logger.debug('inWaiting() -> %d' % (len(self.loop_buffer),))
+        return len(self.loop_buffer)
+
+    def read(self, size=1):
+        """\
+        Read size bytes from the serial port. If a timeout is set it may
+        return less characters as requested. With no timeout it will block
+        until the requested number of bytes is read.
+        """
+        if not self._isOpen: raise portNotOpenError
+        if self._timeout is not None:
+            timeout = time.time() + self._timeout
+        else:
+            timeout = None
+        data = bytearray()
+        while size > 0:
+            self.buffer_lock.acquire()
+            try:
+                block = to_bytes(self.loop_buffer[:size])
+                del self.loop_buffer[:size]
+            finally:
+                self.buffer_lock.release()
+            data += block
+            size -= len(block)
+            # check for timeout now, after data has been read.
+            # useful for timeout = 0 (non blocking) read
+            if timeout and time.time() > timeout:
+                break
+        return bytes(data)
+
+    def write(self, data):
+        """\
+        Output the given string over the serial port. Can block if the
+        connection is blocked. May raise SerialException if the connection is
+        closed.
+        """
+        if not self._isOpen: raise portNotOpenError
+        # ensure we're working with bytes
+        data = to_bytes(data)
+        # calculate aprox time that would be used to send the data
+        time_used_to_send = 10.0*len(data) / self._baudrate
+        # when a write timeout is configured check if we would be successful
+        # (not sending anything, not even the part that would have time)
+        if self._writeTimeout is not None and time_used_to_send > self._writeTimeout:
+            time.sleep(self._writeTimeout) # must wait so that unit test succeeds
+            raise writeTimeoutError
+        self.buffer_lock.acquire()
+        try:
+            self.loop_buffer += data
+        finally:
+            self.buffer_lock.release()
+        return len(data)
+
+    def flushInput(self):
+        """Clear input buffer, discarding all that is in the buffer."""
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('flushInput()')
+        self.buffer_lock.acquire()
+        try:
+            del self.loop_buffer[:]
+        finally:
+            self.buffer_lock.release()
+
+    def flushOutput(self):
+        """\
+        Clear output buffer, aborting the current output and
+        discarding all that is in the buffer.
+        """
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('flushOutput()')
+
+    def sendBreak(self, duration=0.25):
+        """\
+        Send break condition. Timed, returns to idle state after given
+        duration.
+        """
+        if not self._isOpen: raise portNotOpenError
+
+    def setBreak(self, level=True):
+        """\
+        Set break: Controls TXD. When active, to transmitting is
+        possible.
+        """
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('setBreak(%r)' % (level,))
+
+    def setRTS(self, level=True):
+        """Set terminal status line: Request To Send"""
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('setRTS(%r) -> state of CTS' % (level,))
+        self.cts = level
+
+    def setDTR(self, level=True):
+        """Set terminal status line: Data Terminal Ready"""
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('setDTR(%r) -> state of DSR' % (level,))
+        self.dsr = level
+
+    def getCTS(self):
+        """Read terminal status line: Clear To Send"""
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('getCTS() -> state of RTS (%r)' % (self.cts,))
+        return self.cts
+
+    def getDSR(self):
+        """Read terminal status line: Data Set Ready"""
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('getDSR() -> state of DTR (%r)' % (self.dsr,))
+        return self.dsr
+
+    def getRI(self):
+        """Read terminal status line: Ring Indicator"""
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('returning dummy for getRI()')
+        return False
+
+    def getCD(self):
+        """Read terminal status line: Carrier Detect"""
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('returning dummy for getCD()')
+        return True
+
+    # - - - platform specific - - -
+    # None so far
+
+
+# assemble Serial class with the platform specific implementation and the base
+# for file-like behavior. for Python 2.6 and newer, that provide the new I/O
+# library, derive from io.RawIOBase
+try:
+    import io
+except ImportError:
+    # classic version with our own file-like emulation
+    class Serial(LoopbackSerial, FileLike):
+        pass
+else:
+    # io library present
+    class Serial(LoopbackSerial, io.RawIOBase):
+        pass
+
+
+# simple client test
+if __name__ == '__main__':
+    import sys
+    s = Serial('loop://')
+    sys.stdout.write('%s\n' % s)
+
+    sys.stdout.write("write...\n")
+    s.write("hello\n")
+    s.flush()
+    sys.stdout.write("read: %s\n" % s.read(5))
+
+    s.close()
diff --git a/scripts/serial/urlhandler/protocol_rfc2217.py b/scripts/serial/urlhandler/protocol_rfc2217.py
new file mode 100644
index 0000000..981ba45
--- /dev/null
+++ b/scripts/serial/urlhandler/protocol_rfc2217.py
@@ -0,0 +1,11 @@
+#! python
+#
+# Python Serial Port Extension for Win32, Linux, BSD, Jython
+# see ../__init__.py
+#
+# This is a thin wrapper to load the rfc2271 implementation.
+#
+# (C) 2011 Chris Liechti <cliechti@gmx.net>
+# this is distributed under a free software license, see license.txt
+
+from serial.rfc2217 import Serial
diff --git a/scripts/serial/urlhandler/protocol_socket.py b/scripts/serial/urlhandler/protocol_socket.py
new file mode 100644
index 0000000..dc59923
--- /dev/null
+++ b/scripts/serial/urlhandler/protocol_socket.py
@@ -0,0 +1,291 @@
+#! python
+#
+# Python Serial Port Extension for Win32, Linux, BSD, Jython
+# see __init__.py
+#
+# This module implements a simple socket based client.
+# It does not support changing any port parameters and will silently ignore any
+# requests to do so.
+#
+# The purpose of this module is that applications using pySerial can connect to
+# TCP/IP to serial port converters that do not support RFC 2217.
+#
+# (C) 2001-2011 Chris Liechti <cliechti@gmx.net>
+# this is distributed under a free software license, see license.txt
+#
+# URL format:    socket://<host>:<port>[/option[/option...]]
+# options:
+# - "debug" print diagnostic messages
+
+from serial.serialutil import *
+import time
+import socket
+import select
+import logging
+
+# map log level names to constants. used in fromURL()
+LOGGER_LEVELS = {
+    'debug': logging.DEBUG,
+    'info': logging.INFO,
+    'warning': logging.WARNING,
+    'error': logging.ERROR,
+    }
+
+POLL_TIMEOUT = 2
+
+class SocketSerial(SerialBase):
+    """Serial port implementation for plain sockets."""
+
+    BAUDRATES = (50, 75, 110, 134, 150, 200, 300, 600, 1200, 1800, 2400, 4800,
+                 9600, 19200, 38400, 57600, 115200)
+
+    def open(self):
+        """\
+        Open port with current settings. This may throw a SerialException
+        if the port cannot be opened.
+        """
+        self.logger = None
+        if self._port is None:
+            raise SerialException("Port must be configured before it can be used.")
+        if self._isOpen:
+            raise SerialException("Port is already open.")
+        try:
+            # XXX in future replace with create_connection (py >=2.6)
+            self._socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
+            self._socket.connect(self.fromURL(self.portstr))
+        except Exception, msg:
+            self._socket = None
+            raise SerialException("Could not open port %s: %s" % (self.portstr, msg))
+
+        self._socket.settimeout(POLL_TIMEOUT) # used for write timeout support :/
+
+        # not that there anything to configure...
+        self._reconfigurePort()
+        # all things set up get, now a clean start
+        self._isOpen = True
+        if not self._rtscts:
+            self.setRTS(True)
+            self.setDTR(True)
+        self.flushInput()
+        self.flushOutput()
+
+    def _reconfigurePort(self):
+        """\
+        Set communication parameters on opened port. For the socket://
+        protocol all settings are ignored!
+        """
+        if self._socket is None:
+            raise SerialException("Can only operate on open ports")
+        if self.logger:
+            self.logger.info('ignored port configuration change')
+
+    def close(self):
+        """Close port"""
+        if self._isOpen:
+            if self._socket:
+                try:
+                    self._socket.shutdown(socket.SHUT_RDWR)
+                    self._socket.close()
+                except:
+                    # ignore errors.
+                    pass
+                self._socket = None
+            self._isOpen = False
+            # in case of quick reconnects, give the server some time
+            time.sleep(0.3)
+
+    def makeDeviceName(self, port):
+        raise SerialException("there is no sensible way to turn numbers into URLs")
+
+    def fromURL(self, url):
+        """extract host and port from an URL string"""
+        if url.lower().startswith("socket://"): url = url[9:]
+        try:
+            # is there a "path" (our options)?
+            if '/' in url:
+                # cut away options
+                url, options = url.split('/', 1)
+                # process options now, directly altering self
+                for option in options.split('/'):
+                    if '=' in option:
+                        option, value = option.split('=', 1)
+                    else:
+                        value = None
+                    if option == 'logging':
+                        logging.basicConfig()   # XXX is that good to call it here?
+                        self.logger = logging.getLogger('pySerial.socket')
+                        self.logger.setLevel(LOGGER_LEVELS[value])
+                        self.logger.debug('enabled logging')
+                    else:
+                        raise ValueError('unknown option: %r' % (option,))
+            # get host and port
+            host, port = url.split(':', 1) # may raise ValueError because of unpacking
+            port = int(port)               # and this if it's not a number
+            if not 0 <= port < 65536: raise ValueError("port not in range 0...65535")
+        except ValueError, e:
+            raise SerialException('expected a string in the form "[rfc2217://]<host>:<port>[/option[/option...]]": %s' % e)
+        return (host, port)
+
+    #  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
+
+    def inWaiting(self):
+        """Return the number of characters currently in the input buffer."""
+        if not self._isOpen: raise portNotOpenError
+        # Poll the socket to see if it is ready for reading.
+        # If ready, at least one byte will be to read.
+        lr, lw, lx = select.select([self._socket], [], [], 0)
+        return len(lr)
+
+    def read(self, size=1):
+        """\
+        Read size bytes from the serial port. If a timeout is set it may
+        return less characters as requested. With no timeout it will block
+        until the requested number of bytes is read.
+        """
+        if not self._isOpen: raise portNotOpenError
+        data = bytearray()
+        if self._timeout is not None:
+            timeout = time.time() + self._timeout
+        else:
+            timeout = None
+        while len(data) < size and (timeout is None or time.time() < timeout):
+            try:
+                # an implementation with internal buffer would be better
+                # performing...
+                t = time.time()
+                block = self._socket.recv(size - len(data))
+                duration = time.time() - t
+                if block:
+                    data.extend(block)
+                else:
+                    # no data -> EOF (connection probably closed)
+                    break
+            except socket.timeout:
+                # just need to get out of recv from time to time to check if
+                # still alive
+                continue
+            except socket.error, e:
+                # connection fails -> terminate loop
+                raise SerialException('connection failed (%s)' % e)
+        return bytes(data)
+
+    def write(self, data):
+        """\
+        Output the given string over the serial port. Can block if the
+        connection is blocked. May raise SerialException if the connection is
+        closed.
+        """
+        if not self._isOpen: raise portNotOpenError
+        try:
+            self._socket.sendall(to_bytes(data))
+        except socket.error, e:
+            # XXX what exception if socket connection fails
+            raise SerialException("socket connection failed: %s" % e)
+        return len(data)
+
+    def flushInput(self):
+        """Clear input buffer, discarding all that is in the buffer."""
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('ignored flushInput')
+
+    def flushOutput(self):
+        """\
+        Clear output buffer, aborting the current output and
+        discarding all that is in the buffer.
+        """
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('ignored flushOutput')
+
+    def sendBreak(self, duration=0.25):
+        """\
+        Send break condition. Timed, returns to idle state after given
+        duration.
+        """
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('ignored sendBreak(%r)' % (duration,))
+
+    def setBreak(self, level=True):
+        """Set break: Controls TXD. When active, to transmitting is
+        possible."""
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('ignored setBreak(%r)' % (level,))
+
+    def setRTS(self, level=True):
+        """Set terminal status line: Request To Send"""
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('ignored setRTS(%r)' % (level,))
+
+    def setDTR(self, level=True):
+        """Set terminal status line: Data Terminal Ready"""
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('ignored setDTR(%r)' % (level,))
+
+    def getCTS(self):
+        """Read terminal status line: Clear To Send"""
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('returning dummy for getCTS()')
+        return True
+
+    def getDSR(self):
+        """Read terminal status line: Data Set Ready"""
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('returning dummy for getDSR()')
+        return True
+
+    def getRI(self):
+        """Read terminal status line: Ring Indicator"""
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('returning dummy for getRI()')
+        return False
+
+    def getCD(self):
+        """Read terminal status line: Carrier Detect"""
+        if not self._isOpen: raise portNotOpenError
+        if self.logger:
+            self.logger.info('returning dummy for getCD()')
+        return True
+
+    # - - - platform specific - - -
+
+    # works on Linux and probably all the other POSIX systems
+    def fileno(self):
+        """Get the file handle of the underlying socket for use with select"""
+        return self._socket.fileno()
+
+
+# assemble Serial class with the platform specific implementation and the base
+# for file-like behavior. for Python 2.6 and newer, that provide the new I/O
+# library, derive from io.RawIOBase
+try:
+    import io
+except ImportError:
+    # classic version with our own file-like emulation
+    class Serial(SocketSerial, FileLike):
+        pass
+else:
+    # io library present
+    class Serial(SocketSerial, io.RawIOBase):
+        pass
+
+
+# simple client test
+if __name__ == '__main__':
+    import sys
+    s = Serial('socket://localhost:7000')
+    sys.stdout.write('%s\n' % s)
+
+    sys.stdout.write("write...\n")
+    s.write("hello\n")
+    s.flush()
+    sys.stdout.write("read: %s\n" % s.read(5))
+
+    s.close()
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
