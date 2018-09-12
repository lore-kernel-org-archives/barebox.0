Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x229.google.com ([2a00:1450:400c:c09::229])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g05TQ-0004gJ-1h
 for barebox@lists.infradead.org; Wed, 12 Sep 2018 13:46:31 +0000
Received: by mail-wm0-x229.google.com with SMTP id c14-v6so2478616wmb.4
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2018 06:46:17 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 12 Sep 2018 15:45:47 +0200
Message-Id: <20180912134550.3970-5-aleksander@aleksander.es>
In-Reply-To: <20180912134550.3970-1-aleksander@aleksander.es>
References: <20180912134550.3970-1-aleksander@aleksander.es>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 4/7] bbremote: implement support for GPIO operations
To: barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com, Aleksander Morgado <aleksander@aleksander.es>

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 scripts/remote/controller.py | 36 ++++++++++++++
 scripts/remote/main.py       | 37 ++++++++++++++
 scripts/remote/messages.py   | 93 ++++++++++++++++++++++++++++++++++++
 3 files changed, 166 insertions(+)

diff --git a/scripts/remote/controller.py b/scripts/remote/controller.py
index 10037b890..b4493591d 100644
--- a/scripts/remote/controller.py
+++ b/scripts/remote/controller.py
@@ -73,6 +73,24 @@ def unpack(data):
     elif p_type == BBType.i2c_write_return:
         logging.debug("received: i2c_write_return")
         return BBPacketI2cWriteReturn(raw=data)
+    elif p_type == BBType.gpio_get_value:
+        logging.debug("received: gpio_get_value")
+        return BBPacketGpioGetValue(raw=data)
+    elif p_type == BBType.gpio_get_value_return:
+        logging.debug("received: gpio_get_value_return")
+        return BBPacketGpioGetValueReturn(raw=data)
+    elif p_type == BBType.gpio_set_value:
+        logging.debug("received: gpio_set_value")
+        return BBPacketGpioSetValue(raw=data)
+    elif p_type == BBType.gpio_set_value_return:
+        logging.debug("received: gpio_set_value_return")
+        return BBPacketGpioSetValueReturn(raw=data)
+    elif p_type == BBType.gpio_set_direction:
+        logging.debug("received: gpio_set_direction")
+        return BBPacketGpioSetDirection(raw=data)
+    elif p_type == BBType.gpio_set_direction_return:
+        logging.debug("received: gpio_set_direction_return")
+        return BBPacketGpioSetDirectionReturn(raw=data)
     else:
         logging.debug("received: UNKNOWN")
         return BBPacket(raw=data)
@@ -163,6 +181,24 @@ class Controller(Thread):
         logging.info("i2c write return: %r", r)
         return (r.exit_code,r.written)
 
+    def gpio_get_value(self, gpio):
+        self._send(BBPacketGpioGetValue(gpio=gpio))
+        r = self._expect(BBPacketGpioGetValueReturn)
+        logging.info("gpio get value return: %r", r)
+        return r.value
+
+    def gpio_set_value(self, gpio, value):
+        self._send(BBPacketGpioSetValue(gpio=gpio, value=value))
+        r = self._expect(BBPacketGpioSetValueReturn)
+        logging.info("gpio set value return: %r", r)
+        return 0
+
+    def gpio_set_direction(self, gpio, direction, value):
+        self._send(BBPacketGpioSetDirection(gpio=gpio, direction=direction, value=value))
+        r = self._expect(BBPacketGpioSetDirectionReturn)
+        logging.info("gpio set direction return: %r", r)
+        return r.exit_code
+
     def reset(self, force):
         self._send(BBPacketReset(force=force))
 
diff --git a/scripts/remote/main.py b/scripts/remote/main.py
index 0f7783927..cef5d92ee 100644
--- a/scripts/remote/main.py
+++ b/scripts/remote/main.py
@@ -119,6 +119,28 @@ def handle_i2c_write(args):
     return res
 
 
+def handle_gpio_get_value(args):
+    ctrl = get_controller(args)
+    value = ctrl.gpio_get_value(args.gpio)
+    print ("%u" % value);
+    ctrl.close()
+    return 0
+
+
+def handle_gpio_set_value(args):
+    ctrl = get_controller(args)
+    ctrl.gpio_set_value(args.gpio, args.value)
+    ctrl.close()
+    return 0
+
+
+def handle_gpio_set_direction(args):
+    ctrl = get_controller(args)
+    res = ctrl.gpio_set_direction(args.gpio, args.direction, args.value)
+    ctrl.close()
+    return res
+
+
 def handle_reset(args):
     ctrl = get_controller(args)
     ctrl.reset(args.force)
@@ -225,6 +247,21 @@ parser_i2c_write.add_argument('flags', type=auto_int, help="flags")
 parser_i2c_write.add_argument('data', help="data")
 parser_i2c_write.set_defaults(func=handle_i2c_write)
 
+parser_gpio_get_value = subparsers.add_parser('gpio-get-value', help="run gpio get value command")
+parser_gpio_get_value.add_argument('gpio', type=auto_int, help="gpio")
+parser_gpio_get_value.set_defaults(func=handle_gpio_get_value)
+
+parser_gpio_set_value = subparsers.add_parser('gpio-set-value', help="run gpio set value command")
+parser_gpio_set_value.add_argument('gpio', type=auto_int, help="gpio")
+parser_gpio_set_value.add_argument('value', type=auto_int, help="value")
+parser_gpio_set_value.set_defaults(func=handle_gpio_set_value)
+
+parser_gpio_set_direction = subparsers.add_parser('gpio-set-direction', help="run gpio set direction command")
+parser_gpio_set_direction.add_argument('gpio', type=auto_int, help="gpio")
+parser_gpio_set_direction.add_argument('direction', type=auto_int, help="direction (0: input, 1: output)")
+parser_gpio_set_direction.add_argument('value', type=auto_int, help="value (if output)")
+parser_gpio_set_direction.set_defaults(func=handle_gpio_set_direction)
+
 parser_reset = subparsers.add_parser('reset', help="run reset command")
 parser_reset_force = parser_reset.add_mutually_exclusive_group(required=False)
 parser_reset_force.add_argument('--force', dest='force', action='store_true')
diff --git a/scripts/remote/messages.py b/scripts/remote/messages.py
index bc40cbcc3..abd331c8b 100644
--- a/scripts/remote/messages.py
+++ b/scripts/remote/messages.py
@@ -26,6 +26,12 @@ class BBType(object):
     i2c_read_return = 16
     i2c_write = 17
     i2c_write_return = 18
+    gpio_get_value = 19
+    gpio_get_value_return = 20
+    gpio_set_value = 21
+    gpio_set_value_return = 22
+    gpio_set_direction = 23
+    gpio_set_direction_return = 24
 
 
 class BBPacket(object):
@@ -343,3 +349,90 @@ class BBPacketI2cWriteReturn(BBPacket):
     def _pack_payload(self):
         # header size is always 4 bytes (HH) and we have 8 bytes of fixed data (HLH), so buffer offset is 14
         return struct.pack("!HLH", 12, self.exit_code, self.written)
+
+
+class BBPacketGpioGetValue(BBPacket):
+    def __init__(self, raw=None, gpio=None):
+        self.gpio = gpio
+        super(BBPacketGpioGetValue, self).__init__(BBType.gpio_get_value, raw=raw)
+
+    def __repr__(self):
+        return "BBPacketGpioGetValue(gpio=%u)" % (self.gpio)
+
+    def _unpack_payload(self, payload):
+        self.gpio = struct.unpack("!L", payload[:4])
+
+    def _pack_payload(self):
+        return struct.pack("!L", self.gpio)
+
+
+class BBPacketGpioGetValueReturn(BBPacket):
+    def __init__(self, raw=None, value=None):
+        self.value = value
+        super(BBPacketGpioGetValueReturn, self).__init__(BBType.gpio_get_value_return, raw=raw)
+
+    def __repr__(self):
+        return "BBPacketGpioGetValueReturn(value=%u)" % (self.value)
+
+    def _unpack_payload(self, payload):
+        self.value = struct.unpack("!B", payload[:1])
+
+    def _pack_payload(self):
+        return struct.pack("!B", self.value)
+
+
+class BBPacketGpioSetValue(BBPacket):
+    def __init__(self, raw=None, gpio=None, value=None):
+        self.gpio = gpio
+        self.value = value
+        super(BBPacketGpioSetValue, self).__init__(BBType.gpio_set_value, raw=raw)
+
+    def __repr__(self):
+        return "BBPacketGpioSetValue(gpio=%u,value=%u)" % (self.gpio, self.value)
+
+    def _unpack_payload(self, payload):
+        self.gpio = struct.unpack("!LB", payload[:5])
+
+    def _pack_payload(self):
+        return struct.pack("!LB", self.gpio, self.value)
+
+
+class BBPacketGpioSetValueReturn(BBPacket):
+    def __init__(self, raw=None, value=None):
+        self.value = value
+        super(BBPacketGpioSetValueReturn, self).__init__(BBType.gpio_set_value_return, raw=raw)
+
+    def __repr__(self):
+        return "BBPacketGpioSetValueReturn()"
+
+
+class BBPacketGpioSetDirection(BBPacket):
+    def __init__(self, raw=None, gpio=None, direction=None, value=None):
+        self.gpio = gpio
+        self.direction = direction
+        self.value = value
+        super(BBPacketGpioSetDirection, self).__init__(BBType.gpio_set_direction, raw=raw)
+
+    def __repr__(self):
+        return "BBPacketGpioSetDirection(gpio=%u,direction=%u,value=%u)" % (self.gpio, self.direction, self.value)
+
+    def _unpack_payload(self, payload):
+        self.gpio = struct.unpack("!LBB", payload[:6])
+
+    def _pack_payload(self):
+        return struct.pack("!LBB", self.gpio, self.direction, self.value)
+
+
+class BBPacketGpioSetDirectionReturn(BBPacket):
+    def __init__(self, raw=None, exit_code=None):
+        self.exit_code = exit_code
+        super(BBPacketGpioSetDirectionReturn, self).__init__(BBType.gpio_set_direction_return, raw=raw)
+
+    def __repr__(self):
+        return "BBPacketGpioSetDirectionReturn(exit_code=%u)" % (self.exit_code)
+
+    def _unpack_payload(self, payload):
+        self.exit_code = struct.unpack("!L", payload[:4])
+
+    def _pack_payload(self):
+        return struct.pack("!L", self.exit_code)
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
