Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QW3OY-0003cs-7M
	for barebox@lists.infradead.org; Mon, 13 Jun 2011 09:25:19 +0000
Date: Mon, 13 Jun 2011 11:25:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110613092511.GZ23771@pengutronix.de>
References: <BANLkTiny8AFTWDyP_BqMJWrc=bf5aKBePw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTiny8AFTWDyP_BqMJWrc=bf5aKBePw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: reset and addresses
To: Pinco Pallino <pinco.doublec.pallino@gmail.com>
Cc: barebox@lists.infradead.org

Hi Pinco,

On Sat, Jun 11, 2011 at 06:55:04PM +0200, Pinco Pallino wrote:
> Hi,
> I was trying to understand the initialization code for the ARM
> architecture, but there is something troubling me about addresses and
> relocation.
> =

> 1) As far as I understood from linker script (barebox.lds.S) and start
> file (start.c), the barebox binary file is created to be allocated in
> RAM, properly setting TEXT_BASE. For example, for at91rm9200 TEXT_BASE
> is set to 0x23f00000 (ARM region). Here is also .text_entry section
> with the exception vector table, so the link address of the reset
> routine is actually 0x23f00000. Now the runtime address of the reset
> routine has to be 0x00000000. How is this achieved? I mean, =A0where is
> the information saying that the code in the ELF at 0x23f00000, has to
> be runtime at address 0x00000000? In general how can I know where is
> my code is being executed runtime?

It is executed where you copy and start it.

> BTW, is for this reason in the guide you claim "Code running
> immediately after reset runs at an address it is not linked to:
> "runtime address !=3D link address""?

Yes. The startup code is position independent. It can be executed
anywhere in memory. The startup code copies the barebox image to
the correct address and jumps there.

> =

> 2) Why should I relocate the exception table as seen in
> at91rm9200_lowlevel_init.c? Is this done in case barebox is being
> executed by another bootloader?

Arm expects the exception table to be at 0x0. In order for exceptions
to be trapped correctly we have to copy the exception table there. Most
Arm SoCs do not have RAM at this address, so we use the MMU to map a
page of SDRAM there.

> =

> 3) Why do we set the SP to STACK_BASE + STACK_SIZE - 16 and not just STAC=
K_BASE?

The upper space is reserved for the exception stack.

> =

> I'm aware that these are quite noob questions and I apologize, but
> there is no other place  to ask.

These are no noob questions at all.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
