Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qw0-f49.google.com ([209.85.216.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QhfQr-0004q0-Tz
	for barebox@lists.infradead.org; Fri, 15 Jul 2011 10:15:47 +0000
Received: by qwi2 with SMTP id 2so640449qwi.36
	for <barebox@lists.infradead.org>; Fri, 15 Jul 2011 03:15:34 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110715084218.GM6069@pengutronix.de>
References: <1309861164-11327-1-git-send-email-antonynpavlov@gmail.com>
	<20110715084218.GM6069@pengutronix.de>
Date: Fri, 15 Jul 2011 14:15:34 +0400
Message-ID: <CAA4bVAEYusniJ5DYrzgtEqr7kQ8zWOnybPwN2ZmZge8J3HYqfQ@mail.gmail.com>
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
Subject: Re: [PATCH v1-very-draft 1/5] barebox draft pci support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15 July 2011 12:42, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> I finally found some time to look at this. Having pci support for
> barebox would be great.
>
> It seems what missing in this patch is the integration into the
> barebox device infrastructure. barebox already has an idea about
> bus_type which is used for USB. a bus can have its own match
> function to implement id based driver<->device matching. You would
> need a struct device_d member in struct pci_device.
>
> As for the resource part Jean Christophe already started to convert
> barebox from struct device_d->base to use real resources like
> the Linux Kernel.

Absens of real resouces is painful.

If Jean Christophe started work on resources, where I can see it?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
