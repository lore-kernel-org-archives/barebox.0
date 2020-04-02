Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out203-205-221-149.mail.qq.com ([203.205.221.149] helo=qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jJttL-0003PR-JD
 for barebox@lists.infradead.org; Thu, 02 Apr 2020 07:04:00 +0000
From: you xiaojie <84640926@qq.com>
Date: Thu, 02 Apr 2020 15:03:41 +0800
Message-ID: <2790507.TRZ85U3XWg@allan-home>
In-Reply-To: <1833400.Y7EmvgfLYE@allan-home>
References: <1833400.Y7EmvgfLYE@allan-home>
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
Subject: Re: bug report: fail to boot barebox in marvell 6281 board
To: barebox@lists.infradead.org

the debugging message.

allan@allan-home:/media/allan/c6293bbf-6fa1-49ca-9b01-24855a810e0e/barebox-
test/barebox$ ./scripts/kwboot -b ./images/barebox-huanshuo-hs50a.img -n 15 -B 
115200 -t /dev/ttyUSB0 
Sending boot message. Please reboot the target...
Got expected NAKs
Sending boot image...
  0 % [S.....................................................................]
  2 % [......................................................................]
  4 % [......................................................................]
  7 % [......................................................................]
  9 % [......................................................................]
 11 % [......................................................................]
 14 % [......................................................................]
 16 % [......................................................................]
 18 % [......................................................................]
 21 % [......................................................................]
 23 % [......................................................................]
 25 % [......................................................................]
 28 % [......................................................................]
 30 % [......................................................................]
 32 % [......................................................................]
 35 % [......................................................................]
 37 % [......................................................................]
 39 % [......................................................................]
 42 % [......................................................................]
 44 % [......................................................................]
 46 % [......................................................................]
 49 % [......................................................................]
 51 % [......................................................................]
 53 % [......................................................................]
 56 % [......................................................................]
 58 % [......................................................................]
 60 % [......................................................................]
 63 % [......................................................................]
 65 % [......................................................................]
 68 % [......................................................................]
 70 % [......................................................................]
 72 % [......................................................................]
 75 % [......................................................................]
 77 % [......................................................................]
 79 % [......................................................................]
 82 % [......................................................................]
 84 % [......................................................................]
 86 % [......................................................................]
 89 % [......................................................................]
 91 % [......................................................................]
 93 % [......................................................................]
 96 % [......................................................................]
 98 % [.............................................]
[Type Ctrl-\ + c to quit]
uncompress.c: memory at 0x00000000, size 0x20000000
uncompress.c: enabling MMU, ttb @ 0x1ffe4000
uncompress.c: uncompressing barebox binary at 0x010053e0 (size 0x00057dfe) to 
0x1fe00000 (uncompressed size: 0x000a4ee0)
uncompress.c: jumping to uncompressed image at 0x1fe00000
start.c: memory at 0x00000000, size 0x20000000
start.c: found DTB in boarddata, copying to 0x1fdfcc40
start.c: initializing malloc pool at 0x0fefe620 (size 0x0fefe620)
start.c: starting barebox...
initcall-> globalvar_init+0x0/0x48
allan@allan-home:/media/allan/c6293bbf-6fa1-49ca-9b01-24855a810e0e/barebox-
test/barebox$ scripts/kwboot -b images/barebox-globalscale-guruplug.img -n 15 
-B 115200 -t /dev/ttyUSB0 
Sending boot message. Please reboot the 
target...w\xbb\xbbw\xddww\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbbU\xbb\xddww\xbb\xbb\xddw\xdd\xbb\xdd\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddw\xdd\xbb\xdd\xbb\xbbU\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddww\xbb\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddww\xbb\xbb\xbb\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xddww\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xddw\xdd\xbb\xbbU\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xddw\xdd\xbb\xbbU\xbb\xddww\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbbU\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xddw\xdd\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xddww\xbb\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xddww\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbbU\xbb\xddww\xbb\xbb\xddw\xdd\xbb\xdd\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbbw\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xddww\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddww\xbb\xbb\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddww\xbb\xbb\xbb\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddw\xdd\xbb\xdd\xbb\xddww\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xddww\xbb\xbb\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbbUww\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xddww\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddww\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddww\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xddw\xdd\xbb\xbbU\xbb\xddww\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xddw\xbb\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbbw\xbb\xbbU\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddw\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbbU\xddU\xbb\xddww\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xddww\xbb\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddww\xbb\xbb\xbb\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xddw\xdd\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xddww\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xddww\xbb\xbb\xbb\xbb\xbb\xbb\xbbwU\xbb\xddw\xbb\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xddwU\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xdd\xbbU\xbb\xddww\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xddw\xdd\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xddww\xbb\xbb\xbb\xbbU\xbb\xddww\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddww\xbb\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xddww\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xddww\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xddw\xdd\xbb\xdd\xbb\xddww\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xbb\xddw\xdd\xbb\xdd\xbb\xdd\xbb\xdd\xbb\xbbU\xbb\xdd^C
allan@allan-home:/media/allan/c6293bbf-6fa1-49ca-9b01-24855a810e0e/barebox-
test/barebox$ scripts/kwboot -b images/barebox-globalscale-guruplug.img -n 15 
-B 115200 -t /dev/ttyUSB0 
Sending boot message. Please reboot the target...
Got expected NAKs
Sending boot image...
  0 % [S.....................................................................]
  2 % [......................................................................]
  4 % [......................................................................]
  7 % [......................................................................]
  9 % [......................................................................]
 11 % [......................................................................]
 14 % [......................................................................]
 16 % [......................................................................]
 18 % [......................................................................]
 21 % [......................................................................]
 23 % [......................................................................]
 26 % [......................................................................]
 28 % [......................................................................]
 30 % [......................................................................]
 33 % [......................................................................]
 35 % [......................................................................]
 37 % [......................................................................]
 40 % [......................................................................]
 42 % [......................................................................]
 44 % [......................................................................]
 47 % [......................................................................]
 49 % [......................................................................]
 52 % [......................................................................]
 54 % [......................................................................]
 56 % [......................................................................]
 59 % [......................................................................]
 61 % [......................................................................]
 63 % [......................................................................]
 66 % [......................................................................]
 68 % [......................................................................]
 70 % [......................................................................]
 73 % [......................................................................]
 75 % [......................................................................]
 78 % [......................................................................]
 80 % [......................................................................]
 82 % [......................................................................]
 85 % [......................................................................]
 87 % [......................................................................]
 89 % [......................................................................]
 92 % [......................................................................]
 94 % [......................................................................]
 96 % [......................................................................]
 99 % [......................]
[Type Ctrl-\ + c to quit]
uncompress.c: memory at 0x00000000, size 0x20000000
uncompress.c: enabling MMU, ttb @ 0x1ffe4000
uncompress.c: uncompressing barebox binary at 0x01004820 (size 0x00057dfe) to 
0x1fe00000 (uncompressed size: 0x000a4ee0)
uncompress.c: jumping to uncompressed image at 0x1fe00000
start.c: memory at 0x00000000, size 0x20000000
start.c: found DTB in boarddata, copying to 0x1fdfd800
start.c: initializing malloc pool at 0x0fefec00 (size 0x0fefec00)
start.c: starting barebox...
initcall-> globalvar_init+0x0/0x48




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
