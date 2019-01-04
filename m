Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gfL8n-0003lw-VC
 for barebox@lists.infradead.org; Fri, 04 Jan 2019 08:47:43 +0000
Received: by mail-lf1-x141.google.com with SMTP id p86so24911757lfg.5
 for <barebox@lists.infradead.org>; Fri, 04 Jan 2019 00:47:41 -0800 (PST)
Date: Fri, 4 Jan 2019 11:47:37 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20190104114737.7070d48ba7a2b486d6ee46e0@gmail.com>
In-Reply-To: <20190103111809.ctogjrhe4d2eyxg7@pengutronix.de>
References: <20181218071943.2560-1-antonynpavlov@gmail.com>
 <20190103111809.ctogjrhe4d2eyxg7@pengutronix.de>
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
Subject: Re: [PATCH v3 00/10] Add initial RISC-V architecture support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 3 Jan 2019 12:18:09 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Tue, Dec 18, 2018 at 10:19:33AM +0300, Antony Pavlov wrote:
> > This patchseries adds initial RISC-V architecture support for barebox.
> =

> It's very nice to get RISC-V support for barebox.
> =

> The code looks fine from a first glance. I would prefer using multi
> image support from the start of course, but I think I can live without
> it.
> I do not have the bandwidth to look at the code so closely to give any
> valuable input though. I am fine to apply it if you want to, or you
> could continue to develop it out of tree if that's more convenient for
> you. Your choice.

Hi Sascha!

Please apply RISC-V patchseries.

It's looks like people need a good bootloader for RISC-V ;)
E.g.:

  https://www.mail-archive.com/coreboot@coreboot.org/msg52977.html
  https://forums.sifive.com/t/coreboot-or-u-boot/1186

I'm planning to add linux-capable 64-bit SiFive Unleashed board support in =
the next RISC-V patchseries.
See https://www.sifive.com/boards/hifive-unleashed for details.
At least current qemu supports Unleashed-class boards.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
