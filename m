Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RPswH-0005yx-Fh
 for barebox@lists.infradead.org; Mon, 14 Nov 2011 09:34:54 +0000
Received: by wyi11 with SMTP id 11so5519701wyi.36
 for <barebox@lists.infradead.org>; Mon, 14 Nov 2011 01:34:50 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <8739drj2pf.fsf@free.fr>
References: <8739drj2pf.fsf@free.fr>
Date: Mon, 14 Nov 2011 12:34:50 +0300
Message-ID: <CAA4bVAGvndiAjGmNGNeJGm=R_t+fm6krwqVHjhqBftBm-wP6Cg@mail.gmail.com>
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
Subject: Re: Barebox newbie questions : arch/arm/{plat,
 mach} split and interrupts
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On 13 November 2011 22:29, Robert Jarzmik <robert.jarzmik@free.fr> wrote:

> As I'm a bit new to barebone, and after reading a bit the code for the ARM
> architectures, I have questions :
>
> ...
>
> =A0(2) In arch/arm, I understand that interruptions are never used (do_ir=
q()
> =A0 =A0 implementation is quite clear about that). Is that a design decis=
ion and
> =A0 =A0 why ?
> =A0 =A0 If so, I suppose that active polling for each device is required.=
 Am I
> =A0 =A0 right here ?
>

Barebox is a firmware. So there are two main requirements for firmware:
 * easy adaptation for new board (new board revision);
 * small RAM/ROM footprint.

No interrupt support will help you to fulfill the both requirements.

Moreover, if you have a board with some interrupt damage (e.g. PCI
interrupt pin broken or
erroneously routed) you can start firmware and easy find the problem.
 But if your firmware use the interrupts and your board have broken
PCI interrupts
and console on RS232 connected via PCI  when ... you will have very
funny hardware quest :)))

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
