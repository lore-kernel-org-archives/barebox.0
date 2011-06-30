Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QcDIs-0006Yd-CG
	for barebox@lists.infradead.org; Thu, 30 Jun 2011 09:12:55 +0000
Received: by wwf22 with SMTP id 22so1473427wwf.18
	for <barebox@lists.infradead.org>; Thu, 30 Jun 2011 02:12:50 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110630025844.GK17355@game.jcrosoft.org>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
	<1309317858-11861-3-git-send-email-antonynpavlov@gmail.com>
	<20110630025844.GK17355@game.jcrosoft.org>
Date: Thu, 30 Jun 2011 13:12:50 +0400
Message-ID: <BANLkTikxFEto3VLFJ5zMvvx1OCvfE3SX-g@mail.gmail.com>
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
Subject: Re: [PATCH 3/4] MIPS: add qemu malta board support to barebox
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 30 June 2011 06:58, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
>> +static struct NS16550_plat serial_plat =3D {
>> + =A0 =A0 =A0 .clock =3D 1843200, /* no matter */
> why no matter?

This is the part of the file arch/mips/boards/qemu-malta/serial.c.

It is support for the emulated rs232 port.
The emulated rs232 port print characters to stdio of qemu.
Emulated port has no need for correct speed setup.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
