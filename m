Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fEXOE-0000qy-97
 for barebox@lists.infradead.org; Fri, 04 May 2018 09:52:35 +0000
Received: by mail-lf0-x244.google.com with SMTP id f18-v6so4419536lfc.5
 for <barebox@lists.infradead.org>; Fri, 04 May 2018 02:52:23 -0700 (PDT)
Date: Fri, 4 May 2018 13:08:51 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180504130851.8b5f6f69b0475b929e533e01@gmail.com>
In-Reply-To: <20180504055408.lnzhtx6tozemob4p@pengutronix.de>
References: <20180429130907.20506-1-linux@rempel-privat.de>
 <20180429130907.20506-4-linux@rempel-privat.de>
 <20180504055408.lnzhtx6tozemob4p@pengutronix.de>
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
Subject: Re: [RFC PATCH 3/7] bootm: add kexec ELF support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>

On Fri, 4 May 2018 07:54:08 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Sun, Apr 29, 2018 at 03:09:03PM +0200, Oleksij Rempel wrote:
> > +static int do_bootm_elf(struct image_data *data)
> > +{
> > +	kexec_load_bootm_data(data);
> > +
> > +	reboot(LINUX_REBOOT_CMD_KEXEC, data);
> > +
> > +	return -ERESTARTSYS;
> > +}
> > +
> =

> I can't really judge this series. This is the only thing I stumbled
> upon: I see no reason to name the architecture specific kexec function
> 'reboot'. I would expect some kexec specific name, like arch_kexec or
> similar.
> =


This reboot function is copy-n-paste from linux kernel reboot syscall (see =
linux/kernel/reboot.c
for details).
At the moment there is only one constant for reboot()'s first argument (LIN=
UX_REBOOT_CMD_KEXEC),
so it's reasonable to elimenate this first argument and rename function to =
kexec_reboot().

> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
