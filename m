Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f41.google.com ([74.125.82.41])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RJmHD-00064j-6b
	for barebox@lists.infradead.org; Fri, 28 Oct 2011 13:15:16 +0000
Received: by wwe32 with SMTP id 32so2291634wwe.0
	for <barebox@lists.infradead.org>; Fri, 28 Oct 2011 06:15:12 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4EAA6994.1020005@erwinrol.com>
References: <4EAA6994.1020005@erwinrol.com>
Date: Fri, 28 Oct 2011 17:15:12 +0400
Message-ID: <CAA4bVAEMFedmy71RUk1LKbfG-E13UoMKSBeKncLG3p=dnjVczg@mail.gmail.com>
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
Subject: Re: Tegra 2
To: Erwin Rol <mailinglists@erwinrol.com>
Cc: barebox@lists.infradead.org

On 28 October 2011 12:36, Erwin Rol <mailinglists@erwinrol.com> wrote:
> Hey all,
>
> If I remember right a while back someone mentioned Tegra 2 here. I would
> like to ask what the status is of Tegra 2 support. Or if there is support=
 at
> all ? :-)

There is initial support for Tegra 2 in my private git.

I shall send the patches in a while.

The current status:
 * barebox can start on Toshiba AC100 smartbook after U-Boot (not
mainstream U-Boot);
 * barebox support console on Tegra's internal serial port;
 * barebox support USB host controller and Ethernet-USB

Barebox does not support:
 * cache&mmu initialization;
 * graphical output;
 * i2c (so barebox can't use AC100's keyboard for input);
 * mmc controller.

Currently, I'm working on porting of tegra-fb and i2c support.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
