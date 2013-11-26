Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vc0-x232.google.com ([2607:f8b0:400c:c03::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vl8qL-00072Q-Gq
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 02:57:41 +0000
Received: by mail-vc0-f178.google.com with SMTP id lh4so3390136vcb.37
 for <barebox@lists.infradead.org>; Mon, 25 Nov 2013 18:57:20 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CANvTkNZJFP+SiHtm3GwJayNwv6zarRHnoCd3HjtaCL5MdQ2Q1A@mail.gmail.com>
References: <CANvTkNZJFP+SiHtm3GwJayNwv6zarRHnoCd3HjtaCL5MdQ2Q1A@mail.gmail.com>
Date: Tue, 26 Nov 2013 10:57:20 +0800
Message-ID: <CANvTkNYY9DrfYfsp5CMoph=LdsoUvO0i4daEMgBHCvQdCGF+ug@mail.gmail.com>
From: Kevin Du Huanpeng <u74147@gmail.com>
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
Subject: Re: [PATCH] mips start.S: using marco EXPORT(_start) result _start
 symbol can not be found in System.map
To: barebox@lists.infradead.org

sorry, maybe my mistake.
forget about this mail.


2013/11/26 Kevin Du Huanpeng <u74147@gmail.com>:
> the _start symbol is not found in System.map if using EXPORT(_start) .
> when TEXT_BASE changed, I can't see if the _start linked to the right
> address in System.map.
>
> - - -
> diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
> index 7e2ae5e..75d7ac8 100644
> --- a/arch/mips/boot/start.S
> +++ b/arch/mips/boot/start.S
> @@ -49,9 +49,8 @@ _pc:  addiu   \rd, ra, \label - _pc           #
> label is assumed to be
>         .text
>         .section ".text_bare_init"
>         .align 4
> -
> -EXPORT(_start)
> -
> +       .globl _start
> +_start:
>         b       __start
>          nop
> - - -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
