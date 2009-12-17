Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Date: Thu, 17 Dec 2009 11:32:44 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20091217103244.GF19548@pengutronix.de>
References: <1260907745-7444-1-git-send-email-jacmet@sunsite.dk>
	<4B27F157.8050103@pengutronix.de>
	<87zl5knfj8.fsf@macbook.be.48ers.dk>
	<4B27F42A.5030001@pengutronix.de>
	<20091216130836.GA16638@pengutronix.de>
	<20091217100206.GK15126@pengutronix.de>
	<87bphx6gp4.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87bphx6gp4.fsf@macbook.be.48ers.dk>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] cramfs: probe(): fix cdev lookup
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: u-boot-v2@lists.infradead.org

Hello Peter,

On Thu, Dec 17, 2009 at 11:24:55AM +0100, Peter Korsgaard wrote:
> >>>>> "Sascha" =3D=3D Sascha Hauer <s.hauer@pengutronix.de> writes:
> =

>  >> > doh! I'm out of brown paper bags.
>  >> instead of sizeof("...") - 1, strlen should work.
> =

>  Sascha> Yes, it works, but adds to the binary space. This doesn't matter=
 in this
>  Sascha> case since the binary size does not really matter for the sandbo=
x, but
>  Sascha> we don't want other people to copy such things.
> =

> Notice that this is in fs/cramfs/crams.c, so not specific to sandbox. I
> would imagine gcc would be smart enough to replace strlen("/dev/") with
> the constant 5, but apparently not:
> =

> nm -S fs/cramfs/cramfs.o{.orig,}|grep cramfs_probe
> 0000000000000053 000000000000015d t cramfs_probe
> 0000000000000053 000000000000016f t cramfs_probe
hmmmm, I have here:

	ukleinek@cassiopeia:~$ cat test.c
	#include <string.h>

	size_t strlen(const char *s)
	{
		return 2;
	}

	int main(int argc, char **argv)
	{
		printf("strlen(\"Peter Korsgaard\") =3D %d\n", strlen("Peter Korsgaard"));
		return 0;
	}

	ukleinek@cassiopeia:~$ gcc test.c -o test
	ukleinek@cassiopeia:~$ ./test
	strlen("Peter Korsgaard") =3D 15

So the compiler *is* smart.  (Maybe even smarter than most people
expect.)

Compiling that with an arm compiler and disassembling yields:

	00000000 <strlen>:
	   0:	e1a0c00d 	mov	ip, sp
	   4:	e92dd800 	push	{fp, ip, lr, pc}
	   8:	e24cb004 	sub	fp, ip, #4	; 0x4
	   c:	e24dd008 	sub	sp, sp, #8	; 0x8
	  10:	e50b0010 	str	r0, [fp, #-16]
	  14:	e3a03002 	mov	r3, #2	; 0x2
	  18:	e1a00003 	mov	r0, r3
	  1c:	e24bd00c 	sub	sp, fp, #12	; 0xc
	  20:	e89da800 	ldm	sp, {fp, sp, pc}

	00000024 <main>:
	  24:	e1a0c00d 	mov	ip, sp
	  28:	e92dd800 	push	{fp, ip, lr, pc}
	  2c:	e24cb004 	sub	fp, ip, #4	; 0x4
	  30:	e24dd008 	sub	sp, sp, #8	; 0x8
	  34:	e50b0010 	str	r0, [fp, #-16]
	  38:	e50b1014 	str	r1, [fp, #-20]
	  3c:	e59f0014 	ldr	r0, [pc, #20]	; 58 <main+0x34>
	  40:	e3a0100f 	mov	r1, #15	; 0xf
	  44:	ebfffffe 	bl	0 <printf>
	  48:	e3a03000 	mov	r3, #0	; 0x0
	  4c:	e1a00003 	mov	r0, r3
	  50:	e24bd00c 	sub	sp, fp, #12	; 0xc
	  54:	e89da800 	ldm	sp, {fp, sp, pc}
	  58:	00000000 	.word	0x00000000

So the 15 is hardcoded as you can see at address 40.

Best regards
Uwe

-- =

Pengutronix e.K.                              | Uwe Kleine-K=F6nig         =
   |
Industrial Linux Solutions                    | http://www.pengutronix.de/ =
 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
