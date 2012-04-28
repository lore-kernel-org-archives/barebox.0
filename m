Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOA86-0000Er-Nz
 for barebox@lists.infradead.org; Sat, 28 Apr 2012 16:04:16 +0000
Received: by iaky10 with SMTP id y10so2957949iak.36
 for <barebox@lists.infradead.org>; Sat, 28 Apr 2012 09:04:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1335621130-935-1-git-send-email-antonynpavlov@gmail.com>
References: <1335621130-935-1-git-send-email-antonynpavlov@gmail.com>
Date: Sat, 28 Apr 2012 20:04:13 +0400
Message-ID: <CAA4bVAE_Q=Fisk0HP7MJ8RgHs3UafwTvUp6TAgp6FdeU+S00bQ@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [RFC 1/2] MIPS: start.S: add "barebox" label at _start + 8
To: barebox@lists.infradead.org

On 28 April 2012 17:52, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
> =A0arch/mips/boot/start.S | =A0 =A08 ++++++++
> =A01 file changed, 8 insertions(+)
>
> diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
> index b756d40..d8f4fd5 100644
> --- a/arch/mips/boot/start.S
> +++ b/arch/mips/boot/start.S
> @@ -52,6 +52,14 @@ _pc: addiu =A0 \rd, ra, \label - _pc =A0 =A0 =A0 =A0 =
=A0 # label is assumed to be
> =A0 =A0 =A0 =A0.align 4
>
> =A0EXPORT(_start)
> +
> + =A0 =A0 =A0 b =A0 =A0 =A0 __start
> + =A0 =A0 =A0 =A0nop
> +
> + =A0 =A0 =A0 .ascii =A0"barebox"

There is the problem with mips64 (thank to Jean-Christophe).
We must set offset for "barebox" string more explicitly.

I will remake the patches.

> + =A0 =A0 =A0 .byte =A0 0
> +
> +__start:
> =A0 =A0 =A0 =A0/* disable watchpoints */
> =A0 =A0 =A0 =A0mtc0 =A0 =A0zero, CP0_WATCHLO
> =A0 =A0 =A0 =A0mtc0 =A0 =A0zero, CP0_WATCHHI
> --
> 1.7.10
>


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
