Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo5.mail-out.ovh.net ([178.32.116.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TbBmw-0000f8-8Z
 for barebox@lists.infradead.org; Wed, 21 Nov 2012 15:00:36 +0000
Received: from mail243.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 7C0B0FFB39B
 for <barebox@lists.infradead.org>; Wed, 21 Nov 2012 16:08:19 +0100 (CET)
Date: Wed, 21 Nov 2012 15:58:29 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121121145829.GO8327@game.jcrosoft.org>
References: <CACQ1gAiZgvEkppTdJheWxsDYGW8LpiAPe6eU-jO9x3i5x9Q+sQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACQ1gAiZgvEkppTdJheWxsDYGW8LpiAPe6eU-jO9x3i5x9Q+sQ@mail.gmail.com>
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
Subject: Re: USB host Unrecoverable Error on AT91SAM9x5-ek
To: Richard Genoud <richard.genoud@gmail.com>
Cc: barebox@lists.infradead.org

On 14:52 Wed 21 Nov     , Richard Genoud wrote:
> Hi,
> 
> I'm trying to use the usb host on an at91sam9x5-ek bord (g35 based)
> and all I get is an error. :


I known this issue thats why we do not have it yet the USB supprot on sam9x5
and other Atmel soc

This is a ohci core issue O do not yet get the time and the tools to debug it

Best Regards,
J.
> 
> # usb
> USB: scanning bus for devices...
> ERROR: OHCI Unrecoverable Error, controller usb-ohci disabled
> 
>      Couldn't reset port 1
> Bus 001 Device 001: ID 0000:0000 OHCI Root Hub
> 2 USB Device(s) found
> (tried with an usb key or a usb mouse)
> 
> I'm on the next branch commit 502779a91f6421de1b3538711a40cb6fcd4012ae
> 
> With DEBUG defined, I get :
> # usb
> USB: scanning bus for devices...
> hc_reset
> USB HC reset_hc usb-ohci: ctrl = 0x0 ;
> OHCI controller usb-ohci state
> control: 0x0000008f HCFS=operational IE PLE CBSR=3
> cmdstatus: 0x00000000 SOC=0
> intrstatus: 0x00000014 UE SF
> intrenable: 0x00000053 RHSC UE WDH SO
> ed_periodcurrent fc665320
> unable to handle paging request at address 0xfc665320
> pc : [<26f1d6c4>]    lr : [<26f1d6bc>]
> sp : 26affd78  ip : 00000000  fp : 00000000
> r10: 26f52356  r9 : 00000000  r8 : 26f52356
> r7 : 26f52356  r6 : 26b0c0b8  r5 : 26f52356  r4 : fc665320
> r3 : 00000000  r2 : f801c014  r1 : 0000000a  r0 : 0000001a
> Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
> [<26f1d6c4>] (maybe_print_eds+0x28/0x5c) from [<26f1dde4>]
> (ohci_dump.clone.16+0x178/0x25c)
> [<26f1dde4>] (ohci_dump.clone.16+0x178/0x25c) from [<26f1dff8>]
> (ohci_init+0x130/0x160)
> [<26f1dff8>] (ohci_init+0x130/0x160) from [<26f1ad84>] (usb_rescan+0xc0/0x118)
> [<26f1ad84>] (usb_rescan+0xc0/0x118) from [<26f28aac>] (do_usb+0x4c/0x64)
> [<26f28aac>] (do_usb+0x4c/0x64) from [<26f056b4>] (execute_command+0x38/0x78)
> [<26f056b4>] (execute_command+0x38/0x78) from [<26f01a5c>]
> (run_list_real+0x8e4/0xa10)
> [<26f01a5c>] (run_list_real+0x8e4/0xa10) from [<26f01ce8>]
> (parse_stream_outer+0x160/0x288)
> [<26f01ce8>] (parse_stream_outer+0x160/0x288) from [<26f020ac>]
> (run_shell+0x44/0x84)
> [<26f020ac>] (run_shell+0x44/0x84) from [<26f07260>] (start_barebox+0xac/0xdc)
> [<26f07260>] (start_barebox+0xac/0xdc) from [<26f44014>]
> (board_init_lowlevel_return+0xc/0x14)
> 
> [<26f43ad0>] (unwind_backtrace+0x0/0xb0) from [<26f2ae10>] (panic+0x28/0x48)
> [<26f2ae10>] (panic+0x28/0x48) from [<26f43f38>] (do_exception+0x10/0x14)
> [<26f43f38>] (do_exception+0x10/0x14) from [<26f43fc4>]
> (do_data_abort+0x2c/0x38)
> [<26f43fc4>] (do_data_abort+0x2c/0x38) from [<26f43ce8>] (data_abort+0x48/0x60)
> 
> => If I comment the line "maybe_print_eds("ed_periodcurrent",
> readl(&regs->ed_periodcurrent));" in drivers/usb/host/ohci-hcd.c
> I get:
> usb
> USB: scanning bus for devices...
> hc_reset
> USB HC reset_hc usb-ohci: ctrl = 0x0 ;
> OHCI controller usb-ohci state
> control: 0x0000008f HCFS=operational IE PLE CBSR=3
> cmdstatus: 0x00000000 SOC=0
> intrstatus: 0x00000014 UE SF
> intrenable: 0x00000053 RHSC UE WDH SO
> drivers/usb/host/ohci-hcd.c: hcca branch int  1( 1): ed: c0000000; ed:
> a22cbed9; ed: f587ccb0; ed: f4f98a01; ed: a49dee9e;
> drivers/usb/host/ohci-hcd.c: hcca branch int  2( 2): ed: fc66532e; ed:
> f09ae433; ed: e447ffc; ed: 654be7df; ed: cbedae0c;
> drivers/usb/host/ohci-hcd.c: hcca branch int  3( 3): ed: fc1accdf; ed:
> 4316d7b9; ed: c4a2999a; ed: a5b87a57; ed: fc2aeffe;
> drivers/usb/host/ohci-hcd.c: hcca branch int  4( 4): ed: a22cbed9; ed:
> f587ccb0; ed: f4f98a01; ed: a49dee9e; ed: f2acc667;
> drivers/usb/host/ohci-hcd.c: hcca branch int  5( 5): ed: f09ae433; ed:
> e447ffc; ed: 654be7df; ed: cbedae0c; ed: e79be57a;
> drivers/usb/host/ohci-hcd.c: hcca branch int  6( 6): ed: 4316d7b9; ed:
> c4a2999a; ed: a5b87a57; ed: fc2aeffe; ed: ab73c4ea;
> drivers/usb/host/ohci-hcd.c: hcca branch int  7( 7): ed: f587ccb0; ed:
> f4f98a01; ed: a49dee9e; ed: f2acc667; ed: 49bcfe93;
> drivers/usb/host/ohci-hcd.c: hcca branch int  8( 8): ed: e447ffc; ed:
> 654be7df; ed: cbedae0c; ed: e79be57a; ed: 79ff7a6d;
> drivers/usb/host/ohci-hcd.c: hcca branch int  9( 9): ed: c4a2999a; ed:
> a5b87a57; ed: fc2aeffe; ed: ab73c4ea; ed: ac2fee9a;
> drivers/usb/host/ohci-hcd.c: hcca branch int 10( a): ed: f4f98a01; ed:
> a49dee9e; ed: f2acc667; ed: 49bcfe93; ed: fc3d3c04;
> drivers/usb/host/ohci-hcd.c: hcca branch int 11( b): ed: 654be7df; ed:
> cbedae0c; ed: e79be57a; ed: 79ff7a6d; ed: 30fef681;
> drivers/usb/host/ohci-hcd.c: hcca branch int 12( c): ed: a5b87a57; ed:
> fc2aeffe; ed: ab73c4ea; ed: ac2fee9a; ed: 8ae337d9;
> drivers/usb/host/ohci-hcd.c: hcca branch int 13( d): ed: a49dee9e; ed:
> f2acc667; ed: 49bcfe93; ed: fc3d3c04; ed: 54dc01a2;
> drivers/usb/host/ohci-hcd.c: hcca branch int 14( e): ed: cbedae0c; ed:
> e79be57a; ed: 79ff7a6d; ed: 30fef681; ed: ec7f3dcd;
> drivers/usb/host/ohci-hcd.c: hcca branch int 15( f): ed: fc2aeffe; ed:
> ab73c4ea; ed: ac2fee9a; ed: 8ae337d9; ed: f6dda7ba;
> drivers/usb/host/ohci-hcd.c: hcca branch int 16(10): ed: f2acc667; ed:
> 49bcfe93; ed: fc3d3c04; ed: 54dc01a2; ed: 3478aeb3;
> drivers/usb/host/ohci-hcd.c: hcca branch int 17(11): ed: e79be57a; ed:
> 79ff7a6d; ed: 30fef681; ed: ec7f3dcd; ed: a31e44db;
> drivers/usb/host/ohci-hcd.c: hcca branch int 18(12): ed: ab73c4ea; ed:
> ac2fee9a; ed: 8ae337d9; ed: f6dda7ba; ed: 1d579bf2;
> drivers/usb/host/ohci-hcd.c: hcca branch int 19(13): ed: 49bcfe93; ed:
> fc3d3c04; ed: 54dc01a2; ed: 3478aeb3; ed: ecbaecbe;
> drivers/usb/host/ohci-hcd.c: hcca branch int 20(14): ed: 79ff7a6d; ed:
> 30fef681; ed: ec7f3dcd; ed: a31e44db; ed:    2;
> drivers/usb/host/ohci-hcd.c: hcca branch int 21(15): ed: ac2fee9a; ed:
> 8ae337d9; ed: f6dda7ba; ed: 1d579bf2; ed: d7bfa9cb;
> drivers/usb/host/ohci-hcd.c: hcca branch int 22(16): ed: fc3d3c04; ed:
> 54dc01a2; ed: 3478aeb3; ed: ecbaecbe; ed: 97da4aad;
> drivers/usb/host/ohci-hcd.c: hcca branch int 23(17): ed: 30fef681; ed:
> ec7f3dcd; ed: a31e44db; ed:    2; ed: f9c2ce1f;
> drivers/usb/host/ohci-hcd.c: hcca branch int 24(18): ed: 8ae337d9; ed:
> f6dda7ba; ed: 1d579bf2; ed: d7bfa9cb; ed: 351dada6;
> drivers/usb/host/ohci-hcd.c: hcca branch int 25(19): ed: 54dc01a2; ed:
> 3478aeb3; ed: ecbaecbe; ed: 97da4aad; ed: ca9fb47b;
> drivers/usb/host/ohci-hcd.c: hcca branch int 26(1a): ed: ec7f3dcd; ed:
> a31e44db; ed:    2; ed: f9c2ce1f; ed: cfca54cd;
> drivers/usb/host/ohci-hcd.c: hcca branch int 27(1b): ed: f6dda7ba; ed:
> 1d579bf2; ed: d7bfa9cb; ed: 351dada6; ed: fd3b46fe;
> drivers/usb/host/ohci-hcd.c: hcca branch int 28(1c): ed: 3478aeb3; ed:
> ecbaecbe; ed: 97da4aad; ed: ca9fb47b; ed: 5702ef67;
> drivers/usb/host/ohci-hcd.c: hcca branch int 29(1d): ed: a31e44db; ed:
>    2; ed: f9c2ce1f; ed: cfca54cd; ed: 76d8fdfe;
> drivers/usb/host/ohci-hcd.c: hcca branch int 30(1e): ed: 1d579bf2; ed:
> d7bfa9cb; ed: 351dada6; ed: fd3b46fe; ed: 88ffff16;
> drivers/usb/host/ohci-hcd.c: hcca branch int 31(1f): ed: ecbaecbe; ed:
> 97da4aad; ed: ca9fb47b; ed: 5702ef67; ed: 5cb8e55a;
> hcca frame #0002
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000000
> roothub.portstatus [1] = 0x00000000
> roothub.portstatus [2] = 0x00000000
> SUB URB:[   2] dev: 0,ep: 0-I,type:CTRL,len:0/64 stat:0x80000000
> SUB(rh) URB:[   2] dev: 0,ep: 0-I,type:CTRL,len:0/64 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000000
> roothub.portstatus [1] = 0x00000000
> roothub.portstatus [2] = 0x00000000
> RET(rh) URB:[   2] dev: 0,ep: 0-I,type:CTRL,len:0/64 stat:0x0
> SUB URB:[   2] dev: 0,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> SUB(rh) URB:[   2] dev: 0,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000000
> roothub.portstatus [1] = 0x00000000
> roothub.portstatus [2] = 0x00000000
> RET(rh) URB:[   2] dev: 0,ep: 0-O,type:CTRL,len:0/0 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/18 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/18 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000000
> roothub.portstatus [1] = 0x00000000
> roothub.portstatus [2] = 0x00000000
> RET(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/18 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/9 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/9 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000000
> roothub.portstatus [1] = 0x00000000
> roothub.portstatus [2] = 0x00000000
> RET(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/9 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/25 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/25 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000000
> roothub.portstatus [1] = 0x00000000
> roothub.portstatus [2] = 0x00000000
> RET(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/25 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000100 PPS
> roothub.portstatus [1] = 0x00010301 CSC LSDA PPS CCS
> roothub.portstatus [2] = 0x00000100 PPS
> RET(rh) URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/255 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/255 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000100 PPS
> roothub.portstatus [1] = 0x00010301 CSC LSDA PPS CCS
> roothub.portstatus [2] = 0x00000100 PPS
> RET(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/255 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/255 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/255 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000100 PPS
> roothub.portstatus [1] = 0x00010301 CSC LSDA PPS CCS
> roothub.portstatus [2] = 0x00000100 PPS
> RET(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/255 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000100 PPS
> roothub.portstatus [1] = 0x00010301 CSC LSDA PPS CCS
> roothub.portstatus [2] = 0x00000100 PPS
> RET(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/9 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/9 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000100 PPS
> roothub.portstatus [1] = 0x00010301 CSC LSDA PPS CCS
> roothub.portstatus [2] = 0x00000100 PPS
> RET(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/9 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000100 PPS
> roothub.portstatus [1] = 0x00010301 CSC LSDA PPS CCS
> roothub.portstatus [2] = 0x00000100 PPS
> RET(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000100 PPS
> roothub.portstatus [1] = 0x00010301 CSC LSDA PPS CCS
> roothub.portstatus [2] = 0x00000100 PPS
> RET(rh) URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000100 PPS
> roothub.portstatus [1] = 0x00010301 CSC LSDA PPS CCS
> roothub.portstatus [2] = 0x00000100 PPS
> RET(rh) URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000100 PPS
> roothub.portstatus [1] = 0x00010301 CSC LSDA PPS CCS
> roothub.portstatus [2] = 0x00000100 PPS
> RET(rh) URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000100 PPS
> roothub.portstatus [1] = 0x00010301 CSC LSDA PPS CCS
> roothub.portstatus [2] = 0x00000100 PPS
> RET(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000100 PPS
> roothub.portstatus [1] = 0x00010301 CSC LSDA PPS CCS
> roothub.portstatus [2] = 0x00000100 PPS
> RET(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000100 PPS
> roothub.portstatus [1] = 0x00010301 CSC LSDA PPS CCS
> roothub.portstatus [2] = 0x00000100 PPS
> RET(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000100 PPS
> roothub.portstatus [1] = 0x00000301 LSDA PPS CCS
> roothub.portstatus [2] = 0x00000100 PPS
> RET(rh) URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000100 PPS
> roothub.portstatus [1] = 0x00100303 PRSC LSDA PPS PES CCS
> roothub.portstatus [2] = 0x00000100 PPS
> RET(rh) URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000100 PPS
> roothub.portstatus [1] = 0x00100303 PRSC LSDA PPS PES CCS
> roothub.portstatus [2] = 0x00000100 PPS
> RET(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000100 PPS
> roothub.portstatus [1] = 0x00000303 LSDA PPS PES CCS
> roothub.portstatus [2] = 0x00000100 PPS
> RET(rh) URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x0
> SUB URB:[   2] dev: 0,ep: 0-I,type:CTRL,len:0/64 stat:0x80000000
> SUB URB:[   2] dev: 0,ep: 0-I,type:CTRL,len:0/64 stat:0x80000000
> Interrupt: 50 frame: 2
> ERROR: OHCI Unrecoverable Error, controller usb-ohci disabled
> OHCI controller usb-ohci state
> control: 0x0000009f HCFS=operational CLE IE PLE CBSR=3
> cmdstatus: 0x00000002 SOC=0 CLF
> intrstatus: 0x00000054 RHSC UE SF
> intrenable: 0x00000053 RHSC UE WDH SO
> ed_controlhead 26b98000
> 00402000
> 26baa0c0
> 26baa000
> 00000000
> drivers/usb/host/ohci-hcd.c: hcca branch int  1( 1): ed: c0000000; ed:
> a22cbed9; ed: f587ccb0; ed: f4f98a01; ed: a49dee9e;
> drivers/usb/host/ohci-hcd.c: hcca branch int  2( 2): ed: fc66532e; ed:
> f09ae433; ed: e447ffc; ed: 654be7df; ed: cbedae0c;
> drivers/usb/host/ohci-hcd.c: hcca branch int  3( 3): ed: fc1accdf; ed:
> 4316d7b9; ed: c4a2999a; ed: a5b87a57; ed: fc2aeffe;
> drivers/usb/host/ohci-hcd.c: hcca branch int  4( 4): ed: a22cbed9; ed:
> f587ccb0; ed: f4f98a01; ed: a49dee9e; ed: f2acc667;
> drivers/usb/host/ohci-hcd.c: hcca branch int  5( 5): ed: f09ae433; ed:
> e447ffc; ed: 654be7df; ed: cbedae0c; ed: e79be57a;
> drivers/usb/host/ohci-hcd.c: hcca branch int  6( 6): ed: 4316d7b9; ed:
> c4a2999a; ed: a5b87a57; ed: fc2aeffe; ed: ab73c4ea;
> drivers/usb/host/ohci-hcd.c: hcca branch int  7( 7): ed: f587ccb0; ed:
> f4f98a01; ed: a49dee9e; ed: f2acc667; ed: 49bcfe93;
> drivers/usb/host/ohci-hcd.c: hcca branch int  8( 8): ed: e447ffc; ed:
> 654be7df; ed: cbedae0c; ed: e79be57a; ed: 79ff7a6d;
> drivers/usb/host/ohci-hcd.c: hcca branch int  9( 9): ed: c4a2999a; ed:
> a5b87a57; ed: fc2aeffe; ed: ab73c4ea; ed: ac2fee9a;
> drivers/usb/host/ohci-hcd.c: hcca branch int 10( a): ed: f4f98a01; ed:
> a49dee9e; ed: f2acc667; ed: 49bcfe93; ed: fc3d3c04;
> drivers/usb/host/ohci-hcd.c: hcca branch int 11( b): ed: 654be7df; ed:
> cbedae0c; ed: e79be57a; ed: 79ff7a6d; ed: 30fef681;
> drivers/usb/host/ohci-hcd.c: hcca branch int 12( c): ed: a5b87a57; ed:
> fc2aeffe; ed: ab73c4ea; ed: ac2fee9a; ed: 8ae337d9;
> drivers/usb/host/ohci-hcd.c: hcca branch int 13( d): ed: a49dee9e; ed:
> f2acc667; ed: 49bcfe93; ed: fc3d3c04; ed: 54dc01a2;
> drivers/usb/host/ohci-hcd.c: hcca branch int 14( e): ed: cbedae0c; ed:
> e79be57a; ed: 79ff7a6d; ed: 30fef681; ed: ec7f3dcd;
> drivers/usb/host/ohci-hcd.c: hcca branch int 15( f): ed: fc2aeffe; ed:
> ab73c4ea; ed: ac2fee9a; ed: 8ae337d9; ed: f6dda7ba;
> drivers/usb/host/ohci-hcd.c: hcca branch int 16(10): ed: f2acc667; ed:
> 49bcfe93; ed: fc3d3c04; ed: 54dc01a2; ed: 3478aeb3;
> drivers/usb/host/ohci-hcd.c: hcca branch int 17(11): ed: e79be57a; ed:
> 79ff7a6d; ed: 30fef681; ed: ec7f3dcd; ed: a31e44db;
> drivers/usb/host/ohci-hcd.c: hcca branch int 18(12): ed: ab73c4ea; ed:
> ac2fee9a; ed: 8ae337d9; ed: f6dda7ba; ed: 1d579bf2;
> drivers/usb/host/ohci-hcd.c: hcca branch int 19(13): ed: 49bcfe93; ed:
> fc3d3c04; ed: 54dc01a2; ed: 3478aeb3; ed: ecbaecbe;
> drivers/usb/host/ohci-hcd.c: hcca branch int 20(14): ed: 79ff7a6d; ed:
> 30fef681; ed: ec7f3dcd; ed: a31e44db; ed:    2;
> drivers/usb/host/ohci-hcd.c: hcca branch int 21(15): ed: ac2fee9a; ed:
> 8ae337d9; ed: f6dda7ba; ed: 1d579bf2; ed: d7bfa9cb;
> drivers/usb/host/ohci-hcd.c: hcca branch int 22(16): ed: fc3d3c04; ed:
> 54dc01a2; ed: 3478aeb3; ed: ecbaecbe; ed: 97da4aad;
> drivers/usb/host/ohci-hcd.c: hcca branch int 23(17): ed: 30fef681; ed:
> ec7f3dcd; ed: a31e44db; ed:    2; ed: f9c2ce1f;
> drivers/usb/host/ohci-hcd.c: hcca branch int 24(18): ed: 8ae337d9; ed:
> f6dda7ba; ed: 1d579bf2; ed: d7bfa9cb; ed: 351dada6;
> drivers/usb/host/ohci-hcd.c: hcca branch int 25(19): ed: 54dc01a2; ed:
> 3478aeb3; ed: ecbaecbe; ed: 97da4aad; ed: ca9fb47b;
> drivers/usb/host/ohci-hcd.c: hcca branch int 26(1a): ed: ec7f3dcd; ed:
> a31e44db; ed:    2; ed: f9c2ce1f; ed: cfca54cd;
> drivers/usb/host/ohci-hcd.c: hcca branch int 27(1b): ed: f6dda7ba; ed:
> 1d579bf2; ed: d7bfa9cb; ed: 351dada6; ed: fd3b46fe;
> drivers/usb/host/ohci-hcd.c: hcca branch int 28(1c): ed: 3478aeb3; ed:
> ecbaecbe; ed: 97da4aad; ed: ca9fb47b; ed: 5702ef67;
> drivers/usb/host/ohci-hcd.c: hcca branch int 29(1d): ed: a31e44db; ed:
>    2; ed: f9c2ce1f; ed: cfca54cd; ed: 76d8fdfe;
> drivers/usb/host/ohci-hcd.c: hcca branch int 30(1e): ed: 1d579bf2; ed:
> d7bfa9cb; ed: 351dada6; ed: fd3b46fe; ed: 88ffff16;
> drivers/usb/host/ohci-hcd.c: hcca branch int 31(1f): ed: ecbaecbe; ed:
> 97da4aad; ed: ca9fb47b; ed: 5702ef67; ed: 5cb8e55a;
> hcca frame #0002
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000100 PPS
> roothub.portstatus [1] = 0x00000303 LSDA PPS PES CCS
> roothub.portstatus [2] = 0x00000100 PPS
> hc_reset
> USB HC reset_hc usb-ohci: ctrl = 0x9F ;
> RET(ctlr) URB:[   2] dev: 0,ep: 0-I,type:CTRL,len:0/64 stat:0xfffffffb
> SUB URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000000
> roothub.portstatus [1] = 0x00000000
> roothub.portstatus [2] = 0x00000000
> RET(rh) URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000000
> roothub.portstatus [1] = 0x00000000
> roothub.portstatus [2] = 0x00000000
> RET(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x0
> 
>      Couldn't reset port 1
> SUB URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000000
> roothub.portstatus [1] = 0x00000000
> roothub.portstatus [2] = 0x00000000
> RET(rh) URB:[   2] dev: 1,ep: 0-O,type:CTRL,len:0/0 stat:0x0
> SUB URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x80000000
> SUB(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x80000000
> roothub.a: 02000003 POTPGT=2 NDP=3
> roothub.b: 00000000 PPCM=0000 DR=0000
> roothub.status: 00000000
> roothub.portstatus [0] = 0x00000000
> roothub.portstatus [1] = 0x00000000
> roothub.portstatus [2] = 0x00000000
> RET(rh) URB:[   2] dev: 1,ep: 0-I,type:CTRL,len:0/4 stat:0x0
> Bus 001 Device 001: ID 0000:0000 OHCI Root Hub
> 2 USB Device(s) found
> 
> 
> Does this ring a bell to someone ?
> 
> regards,
> 
> Richard
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
