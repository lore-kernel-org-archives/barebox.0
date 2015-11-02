Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x231.google.com ([2a00:1450:4010:c07::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtN79-0006ud-TK
 for barebox@lists.infradead.org; Mon, 02 Nov 2015 21:58:08 +0000
Received: by lfbn126 with SMTP id n126so68608905lfb.2
 for <barebox@lists.infradead.org>; Mon, 02 Nov 2015 13:57:46 -0800 (PST)
Date: Tue, 3 Nov 2015 01:20:55 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20151103012055.1fd914dbb7d224a0c56fb0d4@gmail.com>
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
Subject: some patches are missed in the next branch
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi!

These patches were added to the next branch last month:

  ARM: mvebu: Lenovo IX4 300D: Fix pblb generation
  scripts/kwbimage: Make BINARY files relative to config file
  scripts/kwbimage: Move configfile opening to the function that reads it
  usb: ehci-hcd: Use regular mdelay()
  Revert "usb: ehci-hcd: detect re-entrance"
  Revert "usb: ehci-hcd: use mdelay_non_interruptible()"
  usb: core: return -EAGAIN on usb_* functions reentrance
  input: usb_kbd: skip poll on -EAGAIN error
  net: mvneta: add Armada XP compatible
  clk: mvebu: Add corediv clock driver for Armada 370/XP

Now they have gone away! Why?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
