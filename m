Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtZOd-0007SP-Tv
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 14:50:53 +0000
Received: by mail-lf1-x12d.google.com with SMTP id l10so2190714lfh.9
 for <barebox@lists.infradead.org>; Tue, 12 Feb 2019 06:50:49 -0800 (PST)
Date: Tue, 12 Feb 2019 17:50:45 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20190212175045.d8af82f1a3fdc47c21957d72@gmail.com>
In-Reply-To: <1549976247670.75244@mixed-mode.de>
References: <1549976247670.75244@mixed-mode.de>
Mime-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox support for Arm Cortex-M0 Boards
To: Kai Che <Kai.Che@mixed-mode.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, 12 Feb 2019 12:57:26 +0000
Kai Che <Kai.Che@mixed-mode.de> wrote:

Hi!

> does barebox support any kind of Arm-Cortex M0 Boards? e.g. STM32F0 or si=
miliar?

At the moment barebox does not support ARM-Cortex.
I suppose there is no problem to port barebox to STM32.
However STM32F0 definitely is not a preferred STM32 target chip for porting.
Barebox is intended to be a BOOTLOADER. Barebox is intended to load somethi=
ng into RAM.
STM32F098VC is an advanced STMF0 family chip in terms of RAM and ROM size.
STM32F098VC has 256 KB of flash ROM and 32 KB of SRAM.
I suppose that barebox can be linked to put code into flash ROM (e.g. see R=
OMKERNEL
option for blackfin linux kernel port) and 32 KB of RAM can be enough for d=
ata
but IMHO 32 KB is not enough for comfort and useful work.

AFAIR It is possible to run risc-v barebox (both code and data) inside 192 =
KB RAM memory
space in a VERY VERY MINIMAL configuration, just demo.

Barebox can be really useful on linux-capable STM32 chips and board, e.g.
STM32F429 DISCO board (https://www.st.com/en/evaluation-tools/32f429idiscov=
ery.html)

> I couldn't find any mention of such a board in the board support section =
of=A0the documentation.
> =

> I hope I didn't overlook something.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
