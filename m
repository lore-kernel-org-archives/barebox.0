Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ob0-f177.google.com ([209.85.214.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SlT0w-0007mA-4U
 for barebox@lists.infradead.org; Sun, 01 Jul 2012 22:53:12 +0000
Received: by obbta17 with SMTP id ta17so7824546obb.36
 for <barebox@lists.infradead.org>; Sun, 01 Jul 2012 15:53:06 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 2 Jul 2012 00:53:06 +0200
Message-ID: <CAAfyv37Xm7MAuTToGeDr56gTYBVy6ZJTnXf=vcX3HmZfCoNkZw@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: panda board crash when detecting usb devices
To: barebox@lists.infradead.org

In current next there is issue with usb command on panda board:

barebox@Texas Instrument's Panda:/ usb
USB: scanning bus for devices...
unable to handle NULL pointer dereference at address 0x00000004
pc : [<8f00ac10>]    lr : [<8f00a41c>]
sp : 8cfffde0  ip : 8d001ce8  fp : 00000000
r10: 00000000  r9 : 8cffff44  r8 : 8f033a34
r7 : 00100100  r6 : 00200200  r5 : 8d014160  r4 : 8d01416c
r3 : 00000000  r2 : 00000000  r1 : 00000000  r0 : 8d01416c
Flags: nzCv  IRQs off  FIQs off  Mode SVC_32
[<8f00ac10>] (ehci_init+0x1c/0x128) from [<8f00a41c>] (usb_rescan+0xa4/0xfc)
[<8f00a41c>] (usb_rescan+0xa4/0xfc) from [<8f01332c>] (do_usb+0x4c/0x64)
[<8f01332c>] (do_usb+0x4c/0x64) from [<8f0053e0>] (execute_command+0x38/0x7c)
[<8f0053e0>] (execute_command+0x38/0x7c) from [<8f001aac>]
(run_list_real+0x8b8/0x9b0)
[<8f001aac>] (run_list_real+0x8b8/0x9b0) from [<8f001cec>]
(parse_stream_outer+0x148/0x238)
[<8f001cec>] (parse_stream_outer+0x148/0x238) from [<8f002074>]
(run_shell+0x3c/0x7c)
[<8f002074>] (run_shell+0x3c/0x7c) from [<8f006a1c>] (start_barebox+0xd4/0x10c)
[<8f006a1c>] (start_barebox+0xd4/0x10c) from [<84081164>] (0x84081164)

[<8f023898>] (unwind_backtrace+0x0/0xa8) from [<8f0144bc>] (panic+0x28/0x48)
[<8f0144bc>] (panic+0x28/0x48) from [<8f023e38>] (do_exception+0x10/0x14)
[<8f023e38>] (do_exception+0x10/0x14) from [<8f023ec4>]
(do_data_abort+0x2c/0x38)
[<8f023ec4>] (do_data_abort+0x2c/0x38) from [<8f023ad0>] (data_abort+0x50/0x60)


It is crashing in ehci_halt() in first ehci_read call. IMO ehci_read
access wrong memory (that is reason do data_abort?)
I have rev. A2. Any ideas?

Thanks,

Marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
