Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bblp7-0002lu-Dz
 for barebox@lists.infradead.org; Mon, 22 Aug 2016 09:47:18 +0000
Received: by mail-wm0-x243.google.com with SMTP id i5so12604818wmg.2
 for <barebox@lists.infradead.org>; Mon, 22 Aug 2016 02:46:56 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
In-Reply-To: <CABDcavb3DN9Hc-Gr-vYG6aPHBgMYhM__4BzxVAjEqp5MdhB6qA@mail.gmail.com>
References: <CABDcavbrkt2q3cQ5Tzi3d0pU+Pm3v4S3OGzFo_aG_SNgmEgOnA@mail.gmail.com>
 <CABDcavYP7m5BvVk1Ki=uZe7GdSp8RGwMu_kCV-SQO2+0kb5_NQ@mail.gmail.com>
 <20160818063059.GD20657@pengutronix.de>
 <CABDcavYO3AtqLPuaDwtOfpm4Vs-qazrD8xzC4wu0wrJ8uL5mvw@mail.gmail.com>
 <20160822054521.GU20657@pengutronix.de>
 <CABDcavb3DN9Hc-Gr-vYG6aPHBgMYhM__4BzxVAjEqp5MdhB6qA@mail.gmail.com>
Date: Mon, 22 Aug 2016 11:46:53 +0200
Message-ID: <87mvk5nnjm.fsf@gmail.com>
MIME-Version: 1.0
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
Subject: Re: Fwd: Shouldn't boot_board be called from boot instead of init?
To: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com> writes:

> With defaultenv-2 the "board configuration" is scattered through a
> number of tiny files, some of which contain just a single value (see
> for example nv/autoboot_timeout or nv/user). I find this more
> difficult to manage -- you need to edit a lot of tiny files instead of
> just one. Also I feel that the flow of control is less obvious for the
> same reason.

Hi,

on my device I use defaultenv-1 for the same reason. Basically I just
have one env/bin/init and one env/config file and that's it. And the
env/config one is even so small that I could fold it into env/bin/init.

This even more so as my device is "set in stone", e.g. there is no SPI
EEPROM or other means (partition) to store an environment. What comes
with the compiled barebox is the environment.

Having things in one place and not scattered around makes things visible
at a glance.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
