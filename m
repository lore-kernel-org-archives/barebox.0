Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fEaD0-0001Kw-Rn
 for barebox@lists.infradead.org; Fri, 04 May 2018 12:53:12 +0000
Received: by mail-lf0-x242.google.com with SMTP id m18-v6so30786572lfb.0
 for <barebox@lists.infradead.org>; Fri, 04 May 2018 05:53:00 -0700 (PDT)
Date: Fri, 4 May 2018 16:09:28 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180504160928.1bff26bf7e9853754be00d83@gmail.com>
In-Reply-To: <c55d956a-84e3-0a6c-0505-c5f0d722a9ae@rempel-privat.de>
References: <20180429130907.20506-1-linux@rempel-privat.de>
 <20180429130907.20506-4-linux@rempel-privat.de>
 <20180504055408.lnzhtx6tozemob4p@pengutronix.de>
 <20180504130851.8b5f6f69b0475b929e533e01@gmail.com>
 <c55d956a-84e3-0a6c-0505-c5f0d722a9ae@rempel-privat.de>
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
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Fri, 4 May 2018 11:53:48 +0200
Oleksij Rempel <linux@rempel-privat.de> wrote:

> Am 04.05.2018 um 12:08 schrieb Antony Pavlov:
> > On Fri, 4 May 2018 07:54:08 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > =

> >> On Sun, Apr 29, 2018 at 03:09:03PM +0200, Oleksij Rempel wrote:
> >>> +static int do_bootm_elf(struct image_data *data)
> >>> +{
> >>> +	kexec_load_bootm_data(data);
> >>> +
> >>> +	reboot(LINUX_REBOOT_CMD_KEXEC, data);
> >>> +
> >>> +	return -ERESTARTSYS;
> >>> +}
> >>> +
> >>
> >> I can't really judge this series. This is the only thing I stumbled
> >> upon: I see no reason to name the architecture specific kexec function
> >> 'reboot'. I would expect some kexec specific name, like arch_kexec or
> >> similar.
> >>
> > =

> > This reboot function is copy-n-paste from linux kernel reboot syscall (=
see linux/kernel/reboot.c
> > for details).
> > At the moment there is only one constant for reboot()'s first argument =
(LINUX_REBOOT_CMD_KEXEC),
> > so it's reasonable to elimenate this first argument and rename function=
 to kexec_reboot().
> =

> amy be better to rename it to kexec_arch or kexec_mach. kexec_reboot is
> kind if misleading

Linux uses machine_kexec(struct kimage *image) in arch/mips/kernel/machine_=
kexec.c.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
