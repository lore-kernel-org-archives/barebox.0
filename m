Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RJn6P-0006iL-Jm
	for barebox@lists.infradead.org; Fri, 28 Oct 2011 14:08:10 +0000
Received: by wwf27 with SMTP id 27so3951702wwf.18
	for <barebox@lists.infradead.org>; Fri, 28 Oct 2011 07:08:08 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4EAAAC7B.2030608@erwinrol.com>
References: <4EAA6994.1020005@erwinrol.com>
	<CAA4bVAEMFedmy71RUk1LKbfG-E13UoMKSBeKncLG3p=dnjVczg@mail.gmail.com>
	<4EAAAC7B.2030608@erwinrol.com>
Date: Fri, 28 Oct 2011 18:08:07 +0400
Message-ID: <CAA4bVAGOTpF0YS88uw19Na=t8pf1Uk-UcgAXEQw7aBtFjZugww@mail.gmail.com>
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

>> There is initial support for Tegra 2 in my private git.
>>
>> I shall send the patches in a while.
>>
>> The current status:
>> =A0* barebox can start on Toshiba AC100 smartbook after U-Boot (not
>> mainstream U-Boot);
>
> Is this because of the tegra 2 CPU or because of the AC100 ? I am looking
> into the Tegra 2 board from MSC (true embedded board)

There are the reasons:
 * current Tegra support lacks low-level hardware initialization
(neither Tegra 2 nor AC100);
 * I have no mean to easily recover wrongly burned boot flash memory
on AC100, so I am in no hurry to burn barebox into AC100 :))

> I should get my board somewhere next week (I hope), and will start to tak=
e a
> deeper look into things.
>
> Most important thing will be, does it boot Linux and how fast does it do
> that.

You mean does AC100 boot linux or does barebox boot linux?

> - Erwin
>
> PS: do you have any general links of info on the Tegra 2 cpu ?

No, I have no links of info, but I have many links of code :)))
Most of them are AC100 related:

   https://github.com/chpec/uboot-ac100.git
   https://github.com/muromec/uboot-tegra.git
   http://ac100.grandou.net/
   https://wiki.edubuntu.org/ARM/AC100
   git://gitorious.org/~marvin24/ac100/marvin24s-kernel.git

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
