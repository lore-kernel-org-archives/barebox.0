Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlczW-0001IK-1m
 for barebox@lists.infradead.org; Thu, 11 Jul 2019 17:36:23 +0000
Received: by mail-lj1-x235.google.com with SMTP id p17so6644621ljg.1
 for <barebox@lists.infradead.org>; Thu, 11 Jul 2019 10:36:21 -0700 (PDT)
Date: Thu, 11 Jul 2019 20:36:17 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20190711203617.4014fbc3a8c357e2de2d422d@gmail.com>
In-Reply-To: <d00a48e4-406c-c4ae-7d2d-4c89c3428fda@eks-engel.de>
References: <d00a48e4-406c-c4ae-7d2d-4c89c3428fda@eks-engel.de>
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
Subject: Re: MII command to read and write specific registers
To: Benjamin Beckmeyer <beb@eks-engel.de>
Cc: barebox@lists.infradead.org

On Thu, 11 Jul 2019 15:30:01 +0200
Benjamin Beckmeyer <beb@eks-engel.de> wrote:

> Hey all,
> is there a possibility to read/write specific registers from/to different=
 MII addresses?
> =

> I know that there is miitool but it just can give me the first 16 registe=
rs of a PHY.
> But I need write specific registers e.g. MII addr 2 register 0 and read M=
II addr 2 =

> register 1. I know uboot is having the mii command(exactly what I would n=
eed), and I =

> have seen that there were parameters for address and register in miitool =
but they =

> were deleted lastly.
> =


Hi Benjamin!

You can use /dev/mdio* devices for reading/writing MII registers.
E.g.
  md -s /dev/mdio0-phy00
  mw -d /dev/mdio0-phy00 -w 0 0x12345678

Just after barebox boot there is no /dev/mdio* devices.
After network interface initialization (e.g. after ifup command) or
after miitool command  the /dev/mdio* devices appear.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
