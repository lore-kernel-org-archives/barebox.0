Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-114.126.com ([220.181.15.114])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggQ25-0002ai-Be
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 08:13:15 +0000
From: =?UTF-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Message-ID: <f50ffe18-7a58-4427-3050-1ca29eb9832e@126.com>
Date: Mon, 7 Jan 2019 16:13:04 +0800
MIME-Version: 1.0
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: unalignment access on cortex-a8 caues exception
To: barebox@lists.infradead.org

My board based friendlyarm-tiny210, cpu is s5pv210. It integrates the
ARM Cortex-A8 core.

I want to perform unalignment access, but barebox crash.

The flowwing code used to test unalignment access:

	static int do_ldr(int argc, char *argv[])
	{
		unsigned int sctlr;
		unsigned int xx;

		asm volatile("mrc p15, 0, %[result], c1, c0, 0": [result]"=r"(sctlr));
		printf("sctlr = 0x%08x\n", sctlr);

		asm volatile(
			"ldr r0, =0x30000001\n\t"
			"ldr %[result], [r0], #4": [result]"=r"(xx));  // this cause `data fault` exception

		return 0;
	}
	BAREBOX_CMD_START(ldr)
		.cmd = do_ldr,
		BAREBOX_CMD_DESC("This command test ldr")
		BAREBOX_CMD_GROUP(CMD_GRP_CUSTOM)
	BAREBOX_CMD_END

The corresponding asm code is:
	000547b0 <do_ldr>:
	   547b0:       e92d4010        push    {r4, lr}
	   547b4:       ee111f10        mrc     15, 0, r1, cr1, cr0, {0}
	   547b8:       e59f0010        ldr     r0, [pc, #16]   ; 547d0 <do_ldr+0x20>
	   547bc:       ebfeb133        bl      c90 <printf>
	   547c0:       e3a00213        mov     r0, #805306369  ; 0x30000001
	   547c4:       e4903004        ldr     r3, [r0], #4
	   547c8:       e3a00000        mov     r0, #0
	   547cc:       e8bd8010        pop     {r4, pc}
	   547d0:       0007b65a        andeq   fp, r7, sl, asr r6


When run this function under barebox prompt, barebox output flowwing
message:

     sctlr = 0x00c51078
     unable to handle paging request at address 0x30000001
     pc : [<5ff547cc>]    lr : [<5ff547c0>]
     sp : 5ffefe00  ip : 00000030  fp : 5ffeff38
     r10: 00000000  r9 : 3ffb25a0  r8 : 3ffb0308
     r7 : 3ffb2730  r6 : 00000001  r5 : 5ff943fc  r4 : 3ffb2730
     r3 : 5ff8f724  r2 : 00000002  r1 : 0000000a  r0 : 30000001
     Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
     [<5ff547cc>] (do_ldr+0x1c/0x24) from [<5ff0373c>] (execute_command+0x38/0x78)
     [<5ff0373c>] (execute_command+0x38/0x78) from [<5ff09d2c>] (run_list_real+0x840/0x970)
     [<5ff09d2c>] (run_list_real+0x840/0x970) from [<5ff09328>] (parse_stream_outer+0x144/0x208)
     [<5ff09328>] (parse_stream_outer+0x144/0x208) from [<5ff0a050>] (run_shell+0x4c/0x8c)
     [<5ff0a050>] (run_shell+0x4c/0x8c) from [<5ff010e8>] (start_barebox+0xbc/0xe8)
     [<5ff010e8>] (start_barebox+0xbc/0xe8) from [<5ff6448c>] (barebox_non_pbl_start+0x138/0x15c)
     [<5ff6448c>] (barebox_non_pbl_start+0x138/0x15c) from [<5ff00004>] (__bare_init_start+0x0/0x10)

     [<5ff65c54>] (unwind_backtrace+0x0/0x90) from [<5ff01448>] (panic+0x28/0x44)
     [<5ff01448>] (panic+0x28/0x44) from [<5ff64200>] (do_exception+0x10/0x14)
     [<5ff64200>] (do_exception+0x10/0x14) from [<5ff64284>] (do_data_abort+0x2c/0x38)
     [<5ff64284>] (do_data_abort+0x2c/0x38) from [<5ff63f14>] (do_abort_6+0x48/0x54)

It shows that `A` bit in SCTLR was cleared. But whenever access
0x30000001, `data fault` exception raised.

According arm cortex-a8 technical reference manual:

     A, bit[1]
	Alignment check enable. This is the enable bit for Alignment
	fault checking. The possible values of this bit are:

             * 0 Alignment fault checking disabled.
             * 1 Alignment fault checking enabled.

**Why unalignment access cause `data fault` even the `A` bit cleared**

CONFIG_MMU **not enabled** in my config file. Does this cause the
strange behaviour?

Anybody help me please!!


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
