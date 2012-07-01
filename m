Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gg0-f177.google.com ([209.85.161.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SlTrs-0000Bl-Ls
 for barebox@lists.infradead.org; Sun, 01 Jul 2012 23:47:54 +0000
Received: by ggcs5 with SMTP id s5so4015334ggc.36
 for <barebox@lists.infradead.org>; Sun, 01 Jul 2012 16:47:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAAfyv37Xm7MAuTToGeDr56gTYBVy6ZJTnXf=vcX3HmZfCoNkZw@mail.gmail.com>
References: <CAAfyv37Xm7MAuTToGeDr56gTYBVy6ZJTnXf=vcX3HmZfCoNkZw@mail.gmail.com>
Date: Mon, 2 Jul 2012 01:47:49 +0200
Message-ID: <CAAfyv37eSHJnDDoOJgJLggxa4BLvNAZXho87L56DzZ2QV36mMA@mail.gmail.com>
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
Subject: Re: panda board crash when detecting usb devices
To: barebox@lists.infradead.org

Similar issue when shutdown barebox (before kernel startup):

barebox@Texas Instrument's Panda:/ bootm /boot/uImage
   Image Name:   Linux-3.5.0-rc5-00035-g3a9049e-d
   OS:           Linux
   Architecture: ARM
   Type:         Kernel Image
   Compression:  uncompressed
   Data Size:    3868768 Bytes =  3.7 MB
   Load Address: 80008000
   Entry Point:  80008000
commandline: console=ttyO2,115200
arch_number: 2791
Here1.1
unable to handle NULL pointer dereference at address 0x00000004
pc : [<8f00ab84>]    lr : [<8f00ab74>]
sp : 8cfffd48  ip : 8d001ce8  fp : 8d00ffb0
r10: 00000000  r9 : 8d00e2dd  r8 : 8f03ba94
r7 : 8d00e2dd  r6 : 80000100  r5 : 00000000  r4 : 8d014160
r3 : 00000000  r2 : 00000000  r1 : 0000000a  r0 : 8f02820a
Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
[<8f00ab84>] (ehci_halt+0x24/0x98) from [<8f00796c>]
(devices_shutdown+0x28/0x44)
[<8f00796c>] (devices_shutdown+0x28/0x44) from [<8f006a74>]
(shutdown_barebox+0x8/0x10)
[<8f006a74>] (shutdown_barebox+0x8/0x10) from [<8f022ef4>]
(start_linux+0x1dc/0x238)
[<8f022ef4>] (start_linux+0x1dc/0x238) from [<8f02313c>]
(__do_bootm_linux+0x198/0x1c4)
[<8f02313c>] (__do_bootm_linux+0x198/0x1c4) from [<8f00e668>]
(do_bootm+0x6dc/0x7f8)
[<8f00e668>] (do_bootm+0x6dc/0x7f8) from [<8f0053e0>]
(execute_command+0x38/0x7c)
[<8f0053e0>] (execute_command+0x38/0x7c) from [<8f001aac>]
(run_list_real+0x8b8/0x9b0)
[<8f001aac>] (run_list_real+0x8b8/0x9b0) from [<8f001cec>]
(parse_stream_outer+0x148/0x238)
[<8f001cec>] (parse_stream_outer+0x148/0x238) from [<8f002074>]
(run_shell+0x3c/0x7c)
[<8f002074>] (run_shell+0x3c/0x7c) from [<8f006a1c>] (start_barebox+0xd4/0x10c)
[<8f006a1c>] (start_barebox+0xd4/0x10c) from [<84081164>] (0x84081164)

[<8f0238f8>] (unwind_backtrace+0x0/0xa8) from [<8f014520>] (panic+0x28/0x48)
[<8f014520>] (panic+0x28/0x48) from [<8f023e98>] (do_exception+0x10/0x14)
[<8f023e98>] (do_exception+0x10/0x14) from [<8f023f24>]
(do_data_abort+0x2c/0x38)
[<8f023f24>] (do_data_abort+0x2c/0x38) from [<8f023b30>] (data_abort+0x50/0x60)


barebox 2012.06.0-00148-ga6e358b #0 Sun Jul 1 23:49:04 CEST 2012


On Mon, Jul 2, 2012 at 12:53 AM, Belisko Marek <marek.belisko@gmail.com> wrote:
> In current next there is issue with usb command on panda board:
>
> barebox@Texas Instrument's Panda:/ usb
> USB: scanning bus for devices...
> unable to handle NULL pointer dereference at address 0x00000004
> pc : [<8f00ac10>]    lr : [<8f00a41c>]
> sp : 8cfffde0  ip : 8d001ce8  fp : 00000000
> r10: 00000000  r9 : 8cffff44  r8 : 8f033a34
> r7 : 00100100  r6 : 00200200  r5 : 8d014160  r4 : 8d01416c
> r3 : 00000000  r2 : 00000000  r1 : 00000000  r0 : 8d01416c
> Flags: nzCv  IRQs off  FIQs off  Mode SVC_32
> [<8f00ac10>] (ehci_init+0x1c/0x128) from [<8f00a41c>] (usb_rescan+0xa4/0xfc)
> [<8f00a41c>] (usb_rescan+0xa4/0xfc) from [<8f01332c>] (do_usb+0x4c/0x64)
> [<8f01332c>] (do_usb+0x4c/0x64) from [<8f0053e0>] (execute_command+0x38/0x7c)
> [<8f0053e0>] (execute_command+0x38/0x7c) from [<8f001aac>]
> (run_list_real+0x8b8/0x9b0)
> [<8f001aac>] (run_list_real+0x8b8/0x9b0) from [<8f001cec>]
> (parse_stream_outer+0x148/0x238)
> [<8f001cec>] (parse_stream_outer+0x148/0x238) from [<8f002074>]
> (run_shell+0x3c/0x7c)
> [<8f002074>] (run_shell+0x3c/0x7c) from [<8f006a1c>] (start_barebox+0xd4/0x10c)
> [<8f006a1c>] (start_barebox+0xd4/0x10c) from [<84081164>] (0x84081164)
>
> [<8f023898>] (unwind_backtrace+0x0/0xa8) from [<8f0144bc>] (panic+0x28/0x48)
> [<8f0144bc>] (panic+0x28/0x48) from [<8f023e38>] (do_exception+0x10/0x14)
> [<8f023e38>] (do_exception+0x10/0x14) from [<8f023ec4>]
> (do_data_abort+0x2c/0x38)
> [<8f023ec4>] (do_data_abort+0x2c/0x38) from [<8f023ad0>] (data_abort+0x50/0x60)
>
>
> It is crashing in ehci_halt() in first ehci_read call. IMO ehci_read
> access wrong memory (that is reason do data_abort?)
> I have rev. A2. Any ideas?
>
> Thanks,
>
> Marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com

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
