Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SZI6m-0008EY-UK
 for barebox@lists.infradead.org; Tue, 29 May 2012 08:48:54 +0000
Date: Tue, 29 May 2012 10:48:44 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120529104844.4df2752d@eb-e6520>
In-Reply-To: <20111213192606.GA27267@pengutronix.de>
References: <4EE62D17.1090709@eukrea.com> <4EE66F10.7090409@eukrea.com>
 <20111213094800.GF27267@pengutronix.de>
 <4EE76AC1.3070603@eukrea.com>
 <20111213192606.GA27267@pengutronix.de>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="MP_/JWydUZ=hvOVixAS02jTn2Df"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: magicvar breaks tftp (or ramfs)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--MP_/JWydUZ=hvOVixAS02jTn2Df
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi Sascha,

Le Tue, 13 Dec 2011 20:26:06 +0100,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :

> On Tue, Dec 13, 2011 at 04:09:53PM +0100, Eric B=E9nard wrote:
> > Hi Sascha,
> >=20
> > Le 13/12/2011 10:48, Sascha Hauer a =E9crit :
> > >Sometimes it helps to enable
> > >
> > >CONFIG_KALLSYMS
> > >CONFIG_ARM_UNWIND
> > >
> > >to get a proper stack trace
> > >
> > Thanks for the hint I was not aware barebox also had these options.
> >=20
> > The culprit is show_progress :
> > [<87f1c340>] (show_progress+0x14/0xf0) from [<87f1e590>] (tftp_send+0x1=
94/0x1e4)
> > [<87f1e590>] (tftp_send+0x194/0x1e4) from [<87f1e784>] (do_tftpb+0x1a4/=
0x2d0)
> > [<87f1e784>] (do_tftpb+0x1a4/0x2d0) from [<87f065e0>] (execute_command+=
0x30/0x60)
> > [<87f065e0>] (execute_command+0x30/0x60) from [<87f03d4c>]
> > (run_list_real+0x7b4/0x894)
> > [<87f03d4c>] (run_list_real+0x7b4/0x894) from [<87f03350>]
> > (parse_stream_outer+0x104/0x1e4)
> > [<87f03350>] (parse_stream_outer+0x104/0x1e4) from [<87f03ed8>]
> > (run_shell+0x3c/0x5c)
> > [<87f03ed8>] (run_shell+0x3c/0x5c) from [<87f07870>] (start_barebox+0xe=
0/0x11c)
> > [<87f07870>] (start_barebox+0xe0/0x11c) from [<800011d8>] (0x800011d8)
> >=20
> > And I get the problem with
> > arm-none-linux-gnueabi-gcc (Sourcery G++ Lite 2011.03-41) 4.5.2
> > it works with :
> > arm-none-linux-gnueabi-gcc (Sourcery G++ Lite 2010q1-202) 4.4.1
> >=20
> > So that seems to be a toolchain issue (adding some printf in
> > show_progress make the problem disappear ...).
>=20
> I really want to believe this, but I wouldn't be so sure. I think
> it's more likely that you found a bug in barebox that your new
> toolchain happens to trigger. Could you provide the objdump of
> show_progress along with a complete stack trace including register
> contents?
>=20
here is the full trace.
There is something strange as it seems a wrong value gets loaded into R3
leading to the error.

Eric


--MP_/JWydUZ=hvOVixAS02jTn2Df
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=log_barebox.txt

TFTP from server 192.168.1.15 ('eukrea-cpuimx35/uImage-eukrea-cpuimx35.bin' -> '/dev/nand0.kernel.bb')
	unable to handle paging request at address 0x87f2eee6
pc : [<87f1b204>]    lr : [<87f1f8b4>]
sp : 876ff9c0  ip : 87f3a7c8  fp : 00000000
r10: 00000000  r9 : 876ffbdc  r8 : 87f3d7b8
r7 : 87f3d7dc  r6 : 87f3d7d0  r5 : 877d4887  r4 : 00000000
r3 : 87f2eee6  r2 : ef46ff12  r1 : 00000002  r0 : 00000000
Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
[<87f1b204>] (show_progress+0x18/0x11c) from [<87f1f8b4>] (tftp_send+0x19c/0x1f0)
[<87f1f8b4>] (tftp_send+0x19c/0x1f0) from [<87f1fda8>] (do_tftpb+0x1ac/0x300)
[<87f1fda8>] (do_tftpb+0x1ac/0x300) from [<87f068d8>] (execute_command+0x38/0x7c)
[<87f068d8>] (execute_command+0x38/0x7c) from [<87f039c4>] (run_list_real+0x840/0x92c)
[<87f039c4>] (run_list_real+0x840/0x92c) from [<87f03bf4>] (parse_stream_outer+0x144/0x240)
[<87f03bf4>] (parse_stream_outer+0x144/0x240) from [<87f030fc>] (parse_string_outer+0xe0/0x104)
[<87f030fc>] (parse_string_outer+0xe0/0x104) from [<87f037e0>] (run_list_real+0x65c/0x92c)
[<87f037e0>] (run_list_real+0x65c/0x92c) from [<87f03bf4>] (parse_stream_outer+0x144/0x240)
[<87f03bf4>] (parse_stream_outer+0x144/0x240) from [<87f030b8>] (parse_string_outer+0x9c/0x104)
[<87f030b8>] (parse_string_outer+0x9c/0x104) from [<87f03160>] (source_script+0x40/0x64)
[<87f03160>] (source_script+0x40/0x64) from [<87f03d4c>] (do_source+0x5c/0x70)
[<87f03d4c>] (do_source+0x5c/0x70) from [<87f068d8>] (execute_command+0x38/0x7c)
[<87f068d8>] (execute_command+0x38/0x7c) from [<87f039c4>] (run_list_real+0x840/0x92c)
[<87f039c4>] (run_list_real+0x840/0x92c) from [<87f03bf4>] (parse_stream_outer+0x144/0x240)
[<87f03bf4>] (parse_stream_outer+0x144/0x240) from [<87f030b8>] (parse_string_outer+0x9c/0x104)
[<87f030b8>] (parse_string_outer+0x9c/0x104) from [<87f03160>] (source_script+0x40/0x64)
[<87f03160>] (source_script+0x40/0x64) from [<87f039a4>] (run_list_real+0x820/0x92c)
[<87f039a4>] (run_list_real+0x820/0x92c) from [<87f03bf4>] (parse_stream_outer+0x144/0x240)
[<87f03bf4>] (parse_stream_outer+0x144/0x240) from [<87f03fb8>] (run_shell+0x3c/0x5c)
[<87f03fb8>] (run_shell+0x3c/0x5c) from [<87f08038>] (start_barebox+0xd4/0x110)
[<87f08038>] (start_barebox+0xd4/0x110) from [<8000106c>] (0x8000106c)

[<87f27ff0>] (unwind_backtrace+0x0/0x90) from [<87f18404>] (panic+0x28/0x48)
[<87f18404>] (panic+0x28/0x48) from [<87f284bc>] (do_exception+0x10/0x14)
[<87f284bc>] (do_exception+0x10/0x14) from [<87f28548>] (do_data_abort+0x2c/0x38)
[<87f28548>] (do_data_abort+0x2c/0x38) from [<87f28210>] (data_abort+0x50/0x60)



87f1b1ec <show_progress>:
87f1b1ec:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
87f1b1f0:	e1a04000 	mov	r4, r0
87f1b1f4:	e59f30f0 	ldr	r3, [pc, #240]	; 87f1b2ec <show_progress+0x100>
87f1b1f8:	e3540000 	cmp	r4, #0
87f1b1fc:	e5930000 	ldr	r0, [r3]
87f1b200:	e58d0008 	str	r0, [sp, #8]
87f1b204:	e5d33004 	ldrb	r3, [r3, #4]
87f1b208:	e5cd300c 	strb	r3, [sp, #12]
87f1b20c:	aa00000a 	bge	87f1b23c <show_progress+0x50>
87f1b210:	e59f30d8 	ldr	r3, [pc, #216]	; 87f1b2f0 <show_progress+0x104>
87f1b214:	e28d0010 	add	r0, sp, #16
87f1b218:	e5932000 	ldr	r2, [r3]
87f1b21c:	e2021003 	and	r1, r2, #3
87f1b220:	e0801001 	add	r1, r0, r1
87f1b224:	e2822001 	add	r2, r2, #1
87f1b228:	e5511008 	ldrb	r1, [r1, #-8]
87f1b22c:	e5832000 	str	r2, [r3]
87f1b230:	e59f00bc 	ldr	r0, [pc, #188]	; 87f1b2f4 <show_progress+0x108>
87f1b234:	ebffaf5a 	bl	87f06fa4 <printf>
87f1b238:	ea00002a 	b	87f1b2e8 <show_progress+0xfc>
87f1b23c:	e59f30b4 	ldr	r3, [pc, #180]	; 87f1b2f8 <show_progress+0x10c>
87f1b240:	e593c000 	ldr	ip, [r3]
87f1b244:	e35c0000 	cmp	ip, #0
87f1b248:	0a000022 	beq	87f1b2d8 <show_progress+0xec>
87f1b24c:	e1a03fc4 	asr	r3, r4, #31
87f1b250:	e1a00304 	lsl	r0, r4, #6
87f1b254:	e1a01303 	lsl	r1, r3, #6
87f1b258:	e0900004 	adds	r0, r0, r4
87f1b25c:	e1811d24 	orr	r1, r1, r4, lsr #26
87f1b260:	e0a11003 	adc	r1, r1, r3
87f1b264:	e1a04001 	mov	r4, r1
87f1b268:	e3a05000 	mov	r5, #0
87f1b26c:	e1943005 	orrs	r3, r4, r5
87f1b270:	e88d0003 	stm	sp, {r0, r1}
87f1b274:	1a000003 	bne	87f1b288 <show_progress+0x9c>
87f1b278:	e1a0100c 	mov	r1, ip
87f1b27c:	eb002e30 	bl	87f26b44 <__aeabi_uidiv>
87f1b280:	e88d0021 	stm	sp, {r0, r5}
87f1b284:	ea000002 	b	87f1b294 <show_progress+0xa8>
87f1b288:	e1a0000d 	mov	r0, sp
87f1b28c:	e1a0100c 	mov	r1, ip
87f1b290:	ebfff463 	bl	87f18424 <__div64_32>
87f1b294:	e59d4000 	ldr	r4, [sp]
87f1b298:	ea00000e 	b	87f1b2d8 <show_progress+0xec>
87f1b29c:	e1a00006 	mov	r0, r6
87f1b2a0:	e3a01041 	mov	r1, #65	; 0x41
87f1b2a4:	eb002edc 	bl	87f26e1c <__aeabi_idivmod>
87f1b2a8:	e3510000 	cmp	r1, #0
87f1b2ac:	1a000003 	bne	87f1b2c0 <show_progress+0xd4>
87f1b2b0:	e3560000 	cmp	r6, #0
87f1b2b4:	0a000001 	beq	87f1b2c0 <show_progress+0xd4>
87f1b2b8:	e59f003c 	ldr	r0, [pc, #60]	; 87f1b2fc <show_progress+0x110>
87f1b2bc:	ebffaf38 	bl	87f06fa4 <printf>
87f1b2c0:	e59f0038 	ldr	r0, [pc, #56]	; 87f1b300 <show_progress+0x114>
87f1b2c4:	ebffaf36 	bl	87f06fa4 <printf>
87f1b2c8:	e5953000 	ldr	r3, [r5]
87f1b2cc:	e2833001 	add	r3, r3, #1
87f1b2d0:	e5853000 	str	r3, [r5]
87f1b2d4:	ea000000 	b	87f1b2dc <show_progress+0xf0>
87f1b2d8:	e59f5024 	ldr	r5, [pc, #36]	; 87f1b304 <show_progress+0x118>
87f1b2dc:	e5956000 	ldr	r6, [r5]
87f1b2e0:	e1560004 	cmp	r6, r4
87f1b2e4:	baffffec 	blt	87f1b29c <show_progress+0xb0>
87f1b2e8:	e8bd807f 	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
87f1b2ec:	87f30e2e 	ldrbhi	r0, [r3, lr, lsr #28]!
87f1b2f0:	87f3e90c 	ldrbhi	lr, [r3, ip, lsl #18]!
87f1b2f4:	87f30e27 	ldrbhi	r0, [r3, r7, lsr #28]!
87f1b2f8:	87f3e908 	ldrbhi	lr, [r3, r8, lsl #18]!
87f1b2fc:	87f30e2b 	ldrbhi	r0, [r3, fp, lsr #28]!
87f1b300:	87f28f2e 	ldrbhi	r8, [r2, lr, lsr #30]!
87f1b304:	87f3e910 			; <UNDEFINED> instruction: 0x87f3e910

--MP_/JWydUZ=hvOVixAS02jTn2Df
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--MP_/JWydUZ=hvOVixAS02jTn2Df--
