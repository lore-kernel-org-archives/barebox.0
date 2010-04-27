Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tyo201.gate.nec.co.jp ([202.32.8.193])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O6Zrv-0000PO-Sf
	for barebox@lists.infradead.org; Tue, 27 Apr 2010 01:45:49 +0000
Message-ID: <4BD641C1.6010409@renesas.com>
Date: Tue, 27 Apr 2010 10:45:37 +0900
From: Shinya Kuribayashi <shinya.kuribayashi.px@renesas.com>
MIME-Version: 1.0
References: <1272013443-29196-1-git-send-email-s.hauer@pengutronix.de>
	<1272013443-29196-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1272013443-29196-11-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 10/14] arm: reimplement startup code in C
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sashca,

On 4/23/2010 6:03 PM, Sascha Hauer wrote:
> Lets translate the startup code to a language we all understand better.
> Tested on pcm038 (arm v5) and pcm043 (arm v6).
>
> Signed-off-by: Sascha Hauer<s.hauer@pengutronix.de>
> ---
>   arch/arm/cpu/Makefile              |    6 +-
>   arch/arm/cpu/start-arm.S           |  248 ------------------------------------
>   arch/arm/cpu/start.c               |  107 ++++++++++++++++
>   arch/arm/include/asm/barebox-arm.h |    3 +
>   arch/arm/lib/barebox.lds.S         |    2 +-
>   5 files changed, 112 insertions(+), 254 deletions(-)
>   delete mode 100644 arch/arm/cpu/start-arm.S
>   create mode 100644 arch/arm/cpu/start.c

Some random comments:

* Even though I'm an ARM newbie, but with some training I've found
   that the existing startup code originating from U-Boot is
   reasonably simple and easy to read.

   Current code is not as bad as you ARM experts feel it is ;-)

* I also agree that C version tells us a lot nicer than aseemblers
   about what's going on in the sequence, especially
   board_init_lowlevel_return() part looks quite easy-to-follow.

* That said, I don't think implementing startup code using inline
   assemblers _with_Extended_ASM_ is easy to maintain.  Are you
   really happy with such core parts implemented in 'C'?

   This patch has proved that we could write even the startup seq-
   ences with 'C' (with extended asm.), but that doesn't necessarily
   means that's the way to go.

* I don't think that all startup sequences necessarily need to be
   impelmented in 'C'.

   Board_init_lowlevel() is worth trying 'C' as it does a bunch of
   machine-specific register operations, which are easy-to-follow
   if they're implemented in 'C'.  Patch 12/14 and 14/14 look very
   nice!

   Board_init_lowlevel_return() is also worth trying as well.

   However, having ASM and C code for the startup sequences might be
   slightly a mess, hmm.

* Leaving good comments, for example describing C version of start-
   up code somewhere in the tree, might suffice.

Note that I'm not objecting these changes.  I'm all for your changes
in the project, especially on steering ARM area.

-- 
Shinya Kuribayashi
Renesas Electronics

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
