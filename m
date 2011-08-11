Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QrPJu-0001br-6r
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 07:04:47 +0000
Received: by wwf10 with SMTP id 10so1290192wwf.18
	for <barebox@lists.infradead.org>; Thu, 11 Aug 2011 00:04:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110811062518.GZ31404@pengutronix.de>
References: <CAA4bVAH7aOUcCC0aHWLorE_FAaeBdnUvQcj8d3ZCH4W+ko7adA@mail.gmail.com>
	<20110811062518.GZ31404@pengutronix.de>
Date: Thu, 11 Aug 2011 11:04:43 +0400
Message-ID: <CAA4bVAFK=xvXaJSEenWp9u9ndtBw1UTsf+hugez2Tim-G3=+Wg@mail.gmail.com>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On 11 August 2011 10:25, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Thu, Aug 11, 2011 at 12:24:27AM +0400, Antony Pavlov wrote:
>> Hi!
>>
>> I have a Toshiba AC100 smartbook. It is based on Nvidia Tegra 250 T20 ch=
ip.
>> I want to port barebox to it.
>>
>> I have successfully built and run u-boot for AC100 from
>> https://github.com/chpec/uboot-ac100.git. This u-boot version has lcd,
>> serial port and USB support.
>> There is another tegra support u-boot branch:
>> https://github.com/muromec/uboot-tegra.git
>> Also linux has satisfactory tegra support.
>>
>> I want to discuss source file organization for Tegra and AC100 support
>> in the barebox.
>> AFAIK tegra is not resemble to current arm machines, supported by barebo=
x.
>>
>> For example, this is the comment from barebox tegra source code:
>>
>> /*
>> =A0* Tegra2 uses 2 separate CPUs - the AVP (ARM7TDMI) and the CPU (dual =
A9s).
>> =A0* U-Boot runs on the AVP first, setting things up for the CPU (PLLs,
>> =A0* muxes, clocks, clamps, etc.). Then the AVP halts, and expects the C=
PU
>> =A0* to pick up its reset vector, which points here.
>> =A0*/
>
> Does this mean you have to build two U-Boot binaries?
AFAIK, no.

> How big is the code that runs on the AVP?
I can't say it just now.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
