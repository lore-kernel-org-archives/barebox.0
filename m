Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs8SG-0003LM-4j
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 15:20:26 +0000
Received: by mail-pf1-x42c.google.com with SMTP id h69-v6so711246pfd.4
 for <barebox@lists.infradead.org>; Tue, 21 Aug 2018 08:20:13 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Tue, 21 Aug 2018 17:19:59 +0200
Message-Id: <20180821152001.5747-3-aleksander@aleksander.es>
In-Reply-To: <20180821152001.5747-1-aleksander@aleksander.es>
References: <20180821152001.5747-1-aleksander@aleksander.es>
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
Subject: [PATCH 2/4] bbremote: implement i2c read/write support
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Aleksander Morgado <aleksander@aleksander.es>

Extend the bbremote script with operations to perform binary i2c
read/write operations.

E.g.:

    barebox:/ i2c_read -b 0 -a 0x68 -r 0x06A0 -c 4 -w
    0x8f 0x30 0x00 0x00

    barebox:/ i2c_write -b 0 -a 0x68 -r 0x06A0 -w 0x87 0x30 0x00 0x00

    barebox:/ i2c_read -b 0 -a 0x68 -r 0x06A0 -c 4 -w
    0x87 0x30 0x00 0x00

    barebox:/ i2c_write -b 0 -a 0x68 -r 0x06A0 -w 0x8f 0x30 0x00 0x00

    barebox:/ i2c_read -b 0 -a 0x68 -r 0x06A0 -c 4 -w
    0x8f 0x30 0x00 0x00

    ===================================================================

    $ ./scripts/bbremote --port /dev/ttyUSB2 i2c-read 0x00 0x68 0x06A0 0x01 4
    8f300000

    $ ./scripts/bbremote --port /dev/ttyUSB2 i2c-write 0x00 0x68 0x06A0 0x01 "87300000"
    4 bytes written

    $ ./scripts/bbremote --port /dev/ttyUSB2 i2c-read 0x00 0x68 0x06A0 0x01 4
    87300000

    $ ./scripts/bbremote --port /dev/ttyUSB2 i2c-write 0x00 0x68 0x06A0 0x01 "8f300000"
    4 bytes written

    $ ./scripts/bbremote --port /dev/ttyUSB2 i2c-read 0x00 0x68 0x06A0 0x01 4
    8f300000

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 scripts/remote/controller.py | 24 ++++++++++
 scripts/remote/main.py       | 37 ++++++++++++++++
 scripts/remote/messages.py   | 86 ++++++++++++++++++++++++++++++++++++
 3 files changed, 147 insertions(+)

diff --git a/scripts/remote/controller.py b/scripts/remote/controller.py
index 2ed834613..e94ad88c0 100644
--- a/scripts/remote/controller.py
+++ b/scripts/remote/controller.py
@@ -58,6 +58,18 @@ def unpack(data):
     elif p_type == BBType.reset:
         logging.debug("received: reset")
         return BBPacketReset(raw=data)
+    elif p_type == BBType.i2c_read:
+        logging.debug("received: i2c_read")
+        return BBPacketI2cRead(raw=data)
+    elif p_type == BBType.i2c_read_return:
+        logging.debug("received: i2c_read_return")
+        return BBPacketI2cReadReturn(raw=data)
+    elif p_type == BBType.i2c_write:
+        logging.debug("received: i2c_write")
+        return BBPacketI2cWrite(raw=data)
+    elif p_type == BBType.i2c_write_return:
+        logging.debug("received: i2c_write_return")
+        return BBPacketI2cWriteReturn(raw=data)
     else:
         logging.debug("received: UNKNOWN")
         return BBPacket(raw=data)
@@ -136,6 +148,18 @@ class Controller(Thread):
         logging.info("Mw return: %r", r)
         return (r.exit_code,r.written)
 
+    def i2c_read(self, bus, addr, reg, flags, size):
+        self._send(BBPacketI2cRead(bus=bus, addr=addr, reg=reg, flags=flags, size=size))
+        r = self._expect(BBPacketI2cReadReturn)
+        logging.info("i2c read return: %r", r)
+        return (r.exit_code,r.data)
+
+    def i2c_write(self, bus, addr, reg, flags, data):
+        self._send(BBPacketI2cWrite(bus=bus, addr=addr, reg=reg, flags=flags, data=data))
+        r = self._expect(BBPacketI2cWriteReturn)
+        logging.info("i2c write return: %r", r)
+        return (r.exit_code,r.written)
+
     def reset(self, force):
         self._send(BBPacketReset(force=force))
 
diff --git a/scripts/remote/main.py b/scripts/remote/main.py
index 38d280bfe..0f7783927 100644
--- a/scripts/remote/main.py
+++ b/scripts/remote/main.py
@@ -98,6 +98,27 @@ def handle_mw(args):
     return res
 
 
+def handle_i2c_read(args):
+    ctrl = get_controller(args)
+    (res,data) = ctrl.i2c_read(args.bus, args.address, args.reg, args.flags, args.size)
+    if res == 0:
+        print(binascii.hexlify(data))
+    ctrl.close()
+    return res
+
+
+def handle_i2c_write(args):
+    ctrl = get_controller(args)
+    data=args.data
+    if ((len(data) % 2) != 0):
+        data="0"+data
+    (res,written) = ctrl.i2c_write(args.bus, args.address, args.reg, args.flags, binascii.unhexlify(data))
+    if res == 0:
+        print("%i bytes written" % written)
+    ctrl.close()
+    return res
+
+
 def handle_reset(args):
     ctrl = get_controller(args)
     ctrl.reset(args.force)
@@ -188,6 +209,22 @@ parser_mw.add_argument('address', type=auto_int, help="address")
 parser_mw.add_argument('data', help="data")
 parser_mw.set_defaults(func=handle_mw)
 
+parser_i2c_read = subparsers.add_parser('i2c-read', help="run i2c read command")
+parser_i2c_read.add_argument('bus', type=auto_int, help="bus")
+parser_i2c_read.add_argument('address', type=auto_int, help="address")
+parser_i2c_read.add_argument('reg', type=auto_int, help="reg")
+parser_i2c_read.add_argument('flags', type=auto_int, help="flags")
+parser_i2c_read.add_argument('size', type=auto_int, help="size")
+parser_i2c_read.set_defaults(func=handle_i2c_read)
+
+parser_i2c_write = subparsers.add_parser('i2c-write', help="run i2c write command")
+parser_i2c_write.add_argument('bus', type=auto_int, help="bus")
+parser_i2c_write.add_argument('address', type=auto_int, help="address")
+parser_i2c_write.add_argument('reg', type=auto_int, help="reg")
+parser_i2c_write.add_argument('flags', type=auto_int, help="flags")
+parser_i2c_write.add_argument('data', help="data")
+parser_i2c_write.set_defaults(func=handle_i2c_write)
+
 parser_reset = subparsers.add_parser('reset', help="run reset command")
 parser_reset_force = parser_reset.add_mutually_exclusive_group(required=False)
 parser_reset_force.add_argument('--force', dest='force', action='store_true')
diff --git a/scripts/remote/messages.py b/scripts/remote/messages.py
index 729f2e617..bc40cbcc3 100644
--- a/scripts/remote/messages.py
+++ b/scripts/remote/messages.py
@@ -22,6 +22,10 @@ class BBType(object):
     mw = 12
     mw_return = 13
     reset = 14
+    i2c_read = 15
+    i2c_read_return = 16
+    i2c_write = 17
+    i2c_write_return = 18
 
 
 class BBPacket(object):
@@ -257,3 +261,85 @@ class BBPacketReset(BBPacket):
 
     def _pack_payload(self):
         return struct.pack("?", self.force)
+
+
+class BBPacketI2cRead(BBPacket):
+    def __init__(self, raw=None, bus=None, addr=None, reg=None, flags=None, size=None):
+        self.bus = bus
+        self.addr = addr
+        self.reg = reg
+        self.flags = flags
+        self.size = size
+        super(BBPacketI2cRead, self).__init__(BBType.i2c_read, raw=raw)
+
+    def __repr__(self):
+        return "BBPacketI2cRead(bus=0x%x,addr=0x%x,reg=0x%x,flags=0x%x,size=%u)" % (self.bus, self.addr, self.reg, self.flags, self.size)
+
+    def _unpack_payload(self, payload):
+        buffer_offset, self.bus, self.addr, self.reg, self.flags, self.size = struct.unpack("!HBBHBH", payload[:9])
+
+    def _pack_payload(self):
+        # header size is always 4 bytes (HH) and we have 9 bytes of fixed data (HBBHBH), so buffer offset is 13
+        return struct.pack("!HBBHBH", 13, self.bus, self.addr, self.reg, self.flags, self.size)
+
+
+class BBPacketI2cReadReturn(BBPacket):
+    def __init__(self, raw=None, exit_code=None, data=None):
+        self.exit_code = exit_code
+        self.data = data
+        super(BBPacketI2cReadReturn, self).__init__(BBType.i2c_read_return, raw=raw)
+
+    def __repr__(self):
+        return "BBPacketI2cReadReturn(exit_code=%i, data=%s)" % (self.exit_code, binascii.hexlify(self.data))
+
+    def _unpack_payload(self, payload):
+        buffer_offset, self.exit_code, data_size, data_offset = struct.unpack("!HLHH", payload[:10])
+        # header size is always 4 bytes (HH), so adjust the absolute data offset without the header size
+        absolute_data_offset = buffer_offset + data_offset - 4
+        self.data = payload[absolute_data_offset:absolute_data_offset + data_size]
+
+    def _pack_payload(self):
+        # header size is always 4 bytes (HH) and we have 10 bytes of fixed data (HLHH), so buffer offset is 14
+        return struct.pack("!HLHH%ds" % len(self.data), 14, self.exit_code, len(self.data), 0, self.data)
+        return self.text
+
+
+class BBPacketI2cWrite(BBPacket):
+    def __init__(self, raw=None, bus=None, addr=None, reg=None, flags=None, data=None):
+        self.bus = bus
+        self.addr = addr
+        self.reg = reg
+        self.flags = flags
+        self.data = data
+        super(BBPacketI2cWrite, self).__init__(BBType.i2c_write, raw=raw)
+
+    def __repr__(self):
+        return "BBPacketI2cWrite(bus=0x%x,addr=0x%x,reg=0x%x,flags=0x%x,data=%r)" % (self.bus, self.addr, self.reg, self.flags, self.data)
+
+    def _unpack_payload(self, payload):
+        buffer_offset, self.bus, self.addr, self.reg, self.flags, data_size, data_offset = struct.unpack("!HBBHBHH", payload[:11])
+        # header size is always 4 bytes (HH), so adjust the absolute data offset without the header size
+        absolute_data_offset = buffer_offset + data_offset - 4
+        self.data = payload[absolute_data_offset:absolute_data_offset+data_size]
+
+    def _pack_payload(self):
+        # header size is always 4 bytes (HH) and we have 11 bytes of fixed data (HBBHBHH), so buffer offset is 15
+        data_size = len(self.data)
+        return struct.pack("!HBBHBHH%ds" % data_size, 15, self.bus, self.addr, self.reg, self.flags, data_size, 0, self.data)
+
+
+class BBPacketI2cWriteReturn(BBPacket):
+    def __init__(self, raw=None, exit_code=None, written=None):
+        self.exit_code = exit_code
+        self.written = written
+        super(BBPacketI2cWriteReturn, self).__init__(BBType.i2c_write_return, raw=raw)
+
+    def __repr__(self):
+        return "BBPacketI2cWriteReturn(exit_code=%i, written=%i)" % (self.exit_code, self.written)
+
+    def _unpack_payload(self, payload):
+        buffer_offset, self.exit_code, self.written = struct.unpack("!HLH", payload[:8])
+
+    def _pack_payload(self):
+        # header size is always 4 bytes (HH) and we have 8 bytes of fixed data (HLH), so buffer offset is 14
+        return struct.pack("!HLH", 12, self.exit_code, self.written)
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
