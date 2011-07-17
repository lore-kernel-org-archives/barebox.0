Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QiTp7-0007ps-Qh
	for barebox@lists.infradead.org; Sun, 17 Jul 2011 16:04:06 +0000
Received: by vws8 with SMTP id 8so2174144vws.36
	for <barebox@lists.infradead.org>; Sun, 17 Jul 2011 09:03:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110717152224.GO6069@pengutronix.de>
References: <CAHwEkO2Zy7KN_9_ja_a+rCyxiDovHDWu5oZW8yGrUFxFjiLWMA@mail.gmail.com>
	<20110717152224.GO6069@pengutronix.de>
From: Vikram Narayanan <vikram186@gmail.com>
Date: Sun, 17 Jul 2011 21:33:29 +0530
Message-ID: <CAHwEkO2csr82Bkxm64mTp=Vqh_5vnphvQq5XPTK_LMg9s8UBjA@mail.gmail.com>
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
Subject: Re: XIP support in barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sun, Jul 17, 2011 at 8:52 PM, Sascha Hauer <s.hauer@pengutronix.de> wrot=
e:
> Hi Vikram,
>
> On Sat, Jul 16, 2011 at 01:37:49PM +0530, Vikram Narayanan wrote:
>> Hi,
>>
>> Is there any support available for creating execute in place (XIP)
>> images in barebox?
>
> Why would we need support for creating XIP images? What we need is
> support for booting XIP images. barebox does not support this atm, but I
> think adding support for it should be simple.
Thanks for the answer. Patching the code from uClinux's XIP stuff
would be fine I think.
Is that right?

-
Thanks,
Vikram
>
> Sascha
>
> --
> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |
> Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | http://www.p=
engutronix.de/ =A0|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0=
 =A0|
> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-=
206917-5555 |
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
