Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vx0-f177.google.com ([209.85.220.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QVRSn-0007j4-KA
	for barebox@lists.infradead.org; Sat, 11 Jun 2011 16:55:10 +0000
Received: by vxd2 with SMTP id 2so3707387vxd.36
	for <barebox@lists.infradead.org>; Sat, 11 Jun 2011 09:55:04 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 11 Jun 2011 18:55:04 +0200
Message-ID: <BANLkTiny8AFTWDyP_BqMJWrc=bf5aKBePw@mail.gmail.com>
From: Pinco Pallino <pinco.doublec.pallino@gmail.com>
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
Subject: reset and addresses
To: barebox@lists.infradead.org

Hi,
I was trying to understand the initialization code for the ARM
architecture, but there is something troubling me about addresses and
relocation.

1) As far as I understood from linker script (barebox.lds.S) and start
file (start.c), the barebox binary file is created to be allocated in
RAM, properly setting TEXT_BASE. For example, for at91rm9200 TEXT_BASE
is set to 0x23f00000 (ARM region). Here is also .text_entry section
with the exception vector table, so the link address of the reset
routine is actually 0x23f00000. Now the runtime address of the reset
routine has to be 0x00000000. How is this achieved? I mean, =A0where is
the information saying that the code in the ELF at 0x23f00000, has to
be runtime at address 0x00000000? In general how can I know where is
my code is being executed runtime?
BTW, is for this reason in the guide you claim "Code running
immediately after reset runs at an address it is not linked to:
"runtime address !=3D link address""?

2) Why should I relocate the exception table as seen in
at91rm9200_lowlevel_init.c? Is this done in case barebox is being
executed by another bootloader?

3) Why do we set the SP to STACK_BASE + STACK_SIZE - 16 and not just STACK_=
BASE?

I'm aware that these are quite noob questions and I apologize, but
there is no other place  to ask.

Thank you.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
