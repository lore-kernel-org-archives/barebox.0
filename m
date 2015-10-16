Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp08.smtpout.orange.fr ([80.12.242.130]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZnA17-0003UK-CK
 for barebox@lists.infradead.org; Fri, 16 Oct 2015 18:46:14 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <87d1wk74nt.fsf@belgarion.home> <561BFECA.1010105@gmail.com>
 <87k2qr6go0.fsf@belgarion.home> <561C111E.7010106@gmail.com>
 <874mhv5cxm.fsf@belgarion.home> <561CD48A.9000301@gmail.com>
 <20151013102725.GH7858@pengutronix.de> <87wpur3ves.fsf@belgarion.home>
 <562017CD.4050105@gmail.com>
Date: Fri, 16 Oct 2015 20:40:13 +0200
Message-ID: <877fmm3bea.fsf@belgarion.home>
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
Subject: Re: [PATCH 00/17] Armada 370/XP NAND driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> writes:

> Robert,
>
> I pushed another version of the patch set with the following changes:
>
> - Bail out of mrvl_nand_probe_dt early if
>   !IS_ENABLED(CONFIG_OFTREE) || host->dev->platform_data
>
> - Move clkdev_add_physbase() before add_generic_device("mrvl_nand")
>   (Thanks Sascha!)
>
> I hope the issues are resolved now and thanks a lot for testing
> again!
Nope, see [1].
It's this part with match which is NULL in my case:
	const struct mrvl_nand_variant *variant = match->data;

Cheers.

-- 
Robert

[1] Backtrace
unable to handle NULL pointer dereference at address 0x00000004
pc : [<83f15b90>]    lr : [<83f15b7c>]
sp : 83fffed0  ip : 000001c8  fp : 00000000
r10: 00000002  r9 : 83706870  r8 : 83f8c74c
r7 : 00000000  r6 : 00000000  r5 : 83706930  r4 : 00000000
r3 : 83706870  r2 : 83f8518c  r1 : 00000000  r0 : 00000000
Flags: NzCv  IRQs off  FIQs off  Mode SVC_32
[<83f15b90>] (mrvl_nand_probe+0x1a0/0x604) from [<83f0bed8>] (device_probe+0x30/0xb8)
[<83f0bed8>] (device_probe+0x30/0xb8) from [<83f0bfa4>] (match.part.3+0x44/0x54)
[<83f0bfa4>] (match.part.3+0x44/0x54) from [<83f0c518>] (register_device+0x120/0x15c)
[<83f0c518>] (register_device+0x120/0x15c) from [<83f0c7ac>] (add_generic_device+0x3c/0x48)
[<83f0c7ac>] (add_generic_device+0x3c/0x48) from [<83f5a8ec>] (zylonite_devices_init+0x84/0xe8)
[<83f5a8ec>] (zylonite_devices_init+0x84/0xe8) from [<83f01258>] (start_barebox+0x30/0xe8)
[<83f01258>] (start_barebox+0x30/0xe8) from [<83f5cddc>] (__start+0x124/0x13c)
[<83f5cddc>] (__start+0x124/0x13c) from [<8386c1d0>] (0x8386c1d0)

[<83f5c534>] (unwind_backtrace+0x0/0x90) from [<83f01628>] (panic+0x28/0x38)
[<83f01628>] (panic+0x28/0x38) from [<83f5cb9c>] (do_exception+0x10/0x14)
[<83f5cb9c>] (do_exception+0x10/0x14) from [<83f5cc28>] (do_data_abort+0x2c/0x38)
[<83f5cc28>] (do_data_abort+0x2c/0x38) from [<83f5c8f4>] (do_abort_6+0x48/0x54)

@belgarion:~/mio_linux/barebox$ arm-none-eabi-addr2line -e barebox -i 0x83f15b90
/home/rj/mio_linux/barebox/drivers/mtd/nand/nand_mrvl_nfc.c:1174
/home/rj/mio_linux/barebox/drivers/mtd/nand/nand_mrvl_nfc.c:1204

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
