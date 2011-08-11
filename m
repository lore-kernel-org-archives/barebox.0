Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QrOUv-00016q-EJ
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 06:12:06 +0000
Received: by wyh11 with SMTP id 11so1478740wyh.36
	for <barebox@lists.infradead.org>; Wed, 10 Aug 2011 23:12:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAA4bVAH7aOUcCC0aHWLorE_FAaeBdnUvQcj8d3ZCH4W+ko7adA@mail.gmail.com>
References: <CAA4bVAH7aOUcCC0aHWLorE_FAaeBdnUvQcj8d3ZCH4W+ko7adA@mail.gmail.com>
Date: Thu, 11 Aug 2011 10:12:01 +0400
Message-ID: <CAA4bVAGXexJ78beeeAbk91H61WXzd_kXPRtrZO=jCxhcoyoK7g@mail.gmail.com>
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
Subject: Re: [RFC] add Tegra support to barebox
To: barebox <barebox@lists.infradead.org>

On 11 August 2011 00:24, Antony Pavlov <antonynpavlov@gmail.com> wrote:

> AFAIK tegra is not resemble to current arm machines, supported by barebox.
>
> For example, this is the comment from barebox tegra source code:

Sorry, of cause, this is a comment from __U-Boot__ tegra source code:

> /*
> =A0* Tegra2 uses 2 separate CPUs - the AVP (ARM7TDMI) and the CPU (dual A=
9s).
> =A0* U-Boot runs on the AVP first, setting things up for the CPU (PLLs,
> =A0* muxes, clocks, clamps, etc.). Then the AVP halts, and expects the CPU
> =A0* to pick up its reset vector, which points here.
> =A0*/


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
