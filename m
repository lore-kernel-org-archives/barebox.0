Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
MIME-Version: 1.0
In-Reply-To: <54043FDA.4050707@gmail.com>
References: <54043FDA.4050707@gmail.com>
Date: Mon, 1 Sep 2014 12:13:34 +0200
Message-ID: <CAMuHMdVB55rXpR7UpRH_y12gMx+1tH48yf0bCqXMaQLL3i-YdA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
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
Subject: Re: [RFC] MTD m25p80 3-byte addressing and boot problem
To: Matteo Fortini <matteo.fortini@gmail.com>
Cc: barebox@lists.infradead.org, MTD Maling List <linux-mtd@lists.infradead.org>, mike@steroidmicros.com

Hi Matteo,

On Mon, Sep 1, 2014 at 11:43 AM, Matteo Fortini
<matteo.fortini@gmail.com> wrote:
> If a Linux/Barebox system is using an SPI flash of size >= 16 MB, the driver
> is switching to 3-byte addressing to be able to use linear access to the
> whole memory.
>
> This leads to the impossibility to boot a board after a warm reset, because
> all bootloaders use the standard 2-byte addressing (if the board doesn't
> physically reset the flash or do something similar).

> The solution proposed on freescale forums is not final: it involves
> switching back to 2-byte addressing after every access, which still leaves a
> small window in which a warm reset would be fatal.

Indeed. So the board won't boot anymore if that happens.

> One solution would be to use the bank command in the flash, using each 16MB
> bank linearly, and changing bank depending on the address. This would be
> messy for accesses which are crossing the boundary, but it is doable.

IMHO this is even more dangerous: what if the board is warm-resetted
while a non-first bank is in use? The board may not boot anymore, but worse,
if the boot loader would write to the FLASH, it would write to the wrong bank,
overwriting innocent data.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
