Delivery-date: Fri, 05 Aug 2022 09:41:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJrx4-00CFKR-6T
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 09:41:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJrx4-0005sU-IR
	for lore@pengutronix.de; Fri, 05 Aug 2022 09:40:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
	References:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jAcudjCW6oczX09Ksbo1l9sbsegbRnRg/bo2atDJVto=; b=zh7vstaAuXy6/9XdOVDzyuVmKs
	QFaJuwwtbnGoBvdWVCRAdEAAJzDxozXdJ167Fp6BnPCep5ulwjJpdgazeQ16sj7/fNrVRrKC/mobP
	3yDxOHF1aOiLSzmHDWmDKuJoSxFEX9dMDbNq5G/5nDp04M3QBkCW8UDW/fWvfpgEYrtKXA8eVOBTv
	8yegM8zF+cFS1+hhKZMi8trkcM+ARu4zMt7Y2QZ0cZFZ9dGSC2g8Tws7biYKSdFnsyB/+Uck0Kejp
	BOmQp+Tj+08ZgfISnG9Pf5eunFI7Jr1xFpr8cmkT//oCdbf3iWwCjqvjSyXoVlzd/Bl2JDunjfevF
	eMLYJLPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJrvg-00CwbR-TW; Fri, 05 Aug 2022 07:39:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJrvb-00CwYz-5y
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 07:39:29 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1oJrvZ-0005Xm-CL; Fri, 05 Aug 2022 09:39:25 +0200
Received: from uol by dude.hi.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1oJrvY-007tLa-Rl; Fri, 05 Aug 2022 09:39:24 +0200
References: <20220805040927.1658824-1-ahmad@a3f.at>
 <20220805040927.1658824-2-ahmad@a3f.at>
User-agent: mu4e 1.6.9; emacs 29.0.50
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Date: Fri, 05 Aug 2022 09:29:46 +0200
In-reply-to: <20220805040927.1658824-2-ahmad@a3f.at>
Message-ID: <6ry1w3t9zn.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_003927_414560_8E618C34 
X-CRM114-Status: GOOD (  52.34  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] Documentation: devel: porting: bring up to date
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Fri, Aug 05 2022 at 06:09 +0200, Ahmad Fatoum <ahmad@a3f.at> wrote:
> Recent barebox rework has simplified things a bit, so update the porting
> doc accordingly.
>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  Documentation/devel/porting.rst | 62 ++++++++++++++++++++-------------
>  1 file changed, 38 insertions(+), 24 deletions(-)
>
> diff --git a/Documentation/devel/porting.rst b/Documentation/devel/portin=
g.rst
> index 1abaabc03ae1..0533d6d1ed20 100644
> --- a/Documentation/devel/porting.rst
> +++ b/Documentation/devel/porting.rst
> @@ -81,9 +81,9 @@ barebox images
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20=20
>  In a typical build, the barebox build process generates multiple images
> -(:ref:`multi_image`).  All enabled PBLs are linked with the same barebox
> -proper binary and then the resulting image are processed to be in the
> -format expected by the loader.
> +(:ref:`multi_image`).  All enabled PBLs are each linked with the same
> +barebox proper binary and then the resulting image are processed to be

again a kind request for a drive-by typo fix:

  s/image/images/

Best regards
Ulrich


> +in the format expected by the loader.
>=20=20
>  The loader is often a BootROM, but maybe another first stage bootloader
>  or a hardware debugger.
> @@ -110,10 +110,10 @@ Entry point
>=20=20
>  The PBL's entry point is the first of your code that's run. What happens
>  there depends on the previously running code. If a previous stage has al=
ready
> -set up a stack and initialized the DRAM, the only thing you need to do
> -is to call the common PBL code with a memory region and your device tree=
 blob::
> +initialized the DRAM, the only thing you need to do is to set up a stack=
 and
> +call the common PBL code with a memory region and your device tree blob::
>=20=20
> -  ENTRY_FUNCTION(start_my_board, r0, r1, r2)
> +  ENTRY_FUNCTION_WITHSTACK(start_my_board, MY_STACK_TOP, r0, r1, r2)
>    {
>    	extern char __dtb_my_board_start[];
>    	void *fdt;
> @@ -128,11 +128,15 @@ is to call the common PBL code with a memory region=
 and your device tree blob::
>=20=20
>  Lets look at this line by line:
>=20=20
> - - ``ENTRY_FUNCTION(start_my_board, r0, r1, r2)``
> + - ``ENTRY_FUNCTION_WITHSTACK(start_my_board, STACK_TOP, r0, r1, r2)``
>     The entry point is special: It needs to be located at the beginning o=
f the
>     image, it does not return and may run before a stack is set up.
> -   The ``ENTRY_POINT()`` macro takes care of these details and passes al=
ong
> -   a number of registers, in case the Boot ROM has placed something inte=
resting there.
> +   To make it possible to write this entry point in C, the macro places
> +   a machine code prologue that uses ``STACK_TOP`` as the initial stack
> +   pointer. If the stack is already set up, you may pass 0 here.
> +
> +   Additionally, the macro passes along a number of registers, in case t=
he
> +   Boot ROM has placed something interesting there.
>=20=20
>   - ``extern char __dtb_my_board_start[];``
>     When a device tree is built as part of the PBL, ``__dtb_*_start`` and
> @@ -171,14 +175,17 @@ Looking at other boards you might see some differen=
t patterns:
>=20=20
>   - ``__naked``: All functions called before stack is correctly initializ=
ed must be
>     marked with this attribute. Otherwise, function prologue and epilogue=
 may access
> -   the uninitialized stack. If the compiler for the target architecture =
doesn't
> -   support the attribute, stack must be set up in non-inline assembly:
> -   Either a barebox assembly entry point or in earlier firmware.
> -   The compiler may still spill excess local C variables used in a naked=
 function
> -   to the stack before it was initialized.
> -   A naked function should thus preferably only contain inline assembly,=
 set up a
> -   stack and jump directly after to a ``noinline`` non naked function wh=
ere the
> -   stack is then normally usable.
> +   the uninitialized stack. Note that even with ``__naked``, the compile=
r may still
> +   spill excess local C variables used in a naked function to the stack =
before it
> +   was initialized. A naked function should thus preferably only contain=
 inline
> +   assembly, set up a stack and jump directly after to a ``noinline`` no=
n naked
> +   function where the stack is then normally usable. This pattern is oft=
en seen
> +   together with ``ENTRY_FUNCTION``. Modern boards better avoid this foo=
tgun
> +   by using ``ENTRY_FUNCTION_WITHSTACK``, which will take care to initia=
lize the
> +   stack beforehand. If either a barebox assembly entry point,
> +   ``ENTRY_FUNCTION_WITHSTACK`` or earlier firmware has set up the stack=
, there is
> +   no reason to use ``__naked``, just use ``ENTRY_FNCTION_WITHSTACK`` wi=
th a zero
> +   stack top.
>=20=20
>   - ``noinline``: Compiler code inlining is oblivious to stack manipulati=
on in
>     inline assembly. If you want to ensure a new function has its own sta=
ck frame
> @@ -186,8 +193,9 @@ Looking at other boards you might see some different =
patterns:
>     a ``__noreturn noinline`` function.
>=20=20
>   - ``arm_setup_stack``: For 32-bit ARM, ``arm_setup_stack`` initializes =
the stack
> -   top when called from a naked C function, which allows to write the en=
try point
> -   directly in C. The stack pointer will be decremented before pushing v=
alues.
> +   top when called from a naked C function, which allowed to write the e=
ntry point
> +   directly in C. Modern code should use ``ENTRY_FUNCTION_WITHSTACK`` in=
stead.
> +   Note that in both cases the stack pointer will be decremented before =
pushing values.
>     Avoid interleaving with C-code. See ``__naked`` above for more detail=
s.
>=20=20
>   - ``__dtb_z_my_board_start[];``: Because the PBL normally doesn't parse=
 anything out
> @@ -362,12 +370,11 @@ Considerations when writing Linux drivers also appl=
y to barebox:
>  Miscellaneous Linux porting advice:
>=20=20
>    * Branches dependent on ``system_state``: Take the ``SYSTEM_BOOTING`` =
branch
> -  * ``struct of_clk_hw_simple_get``: rename to ``struct of_clk_src_simpl=
e_get``
>    * ``usleep`` and co.: use ``[mud]elay``
> -  * ``.of_node``: use ``.device_node``
> +  * ``.of_node``: use ``.device_node`` or ``dev_of_node``
>    * ``jiffies``: use ``get_time_ns()``
>    * ``time_before``: use ``!is_timeout()``
> -  * ``clk_hw_register_fixed_rate_with_accuracy``: use ``clk_register_fix=
ed_rate`` without accuracy
> +  * ``clk_hw_register_fixed_rate_with_accuracy``: use ``clk_hw_register_=
fixed_rate`` without accuracy
>    * ``CLK_SET_RATE_GATE`` can be ignored
>    * ``clk_prepare``: is for the non-atomic code preparing for clk enable=
ment. Merge it into ``clk_enable``
>=20=20
> @@ -503,6 +510,10 @@ This can be done by implementing three functions:
>     and resumes execution at the new location. This can be omitted
>     if barebox won't initially execute out of ROM.
>=20=20
> + - ``relocate_to_adr_full()``: This function does what
> +   ``relocate_to_adr()`` does and in addition moves the piggy data
> +   (the usually compressed barebox appended to the prebootloader).
> +
>  Of course, for these functions to work. The linker script needs
>  to ensure that the ELF relocation records are included in the
>  final image and define start and end markers so code can iterate
> @@ -511,7 +522,7 @@ over them.
>  To ease debugging, even when relocation has no yet happened,
>  barebox supports ``DEBUG_LL``, which acts similarly to the
>  PBL console, but does not require relocation. This is incompatible
> -with multi-image, function mso this should only be considered while debu=
gging.
> +with multi-image, so this should only be considered while debugging.
>=20=20
>  Linker scripts
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> @@ -526,4 +537,7 @@ Generic DT image
>  It's a good idea to have the architecture generate an image that
>  looks like and can be booted just like a Linux kernel. This allows
>  easy testing with QEMU or booting from barebox or other bootloaders.
> -Refer to ``BOARD_GENERIC_DT`` for examples.
> +Refer to ``BOARD_GENERIC_DT`` for examples. If not possible, the
> +(sub-)architecture making use of the image should
> +``register_image_handler`` that can chain-boot the format from
> +a running barebox. This allows for quick debugging iterations.
--=20
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


