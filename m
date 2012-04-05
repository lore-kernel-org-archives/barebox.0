Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yx0-f177.google.com ([209.85.213.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFgm7-0007Ph-HG
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 07:06:32 +0000
Received: by yenm10 with SMTP id m10so639036yen.36
 for <barebox@lists.infradead.org>; Thu, 05 Apr 2012 00:06:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120405065455.GW3852@pengutronix.de>
References: <CAD9ZU8BR35iyRxH1-eEioCdo_mcXeVS+GjiSCiahPSUvcDXgXw@mail.gmail.com>
 <20120405063322.GV3852@pengutronix.de>
 <CAD9ZU8ACc_p2bTq-QtwhHXWz6NP=J-VkKS=0O2vdHkO2oRQUDw@mail.gmail.com>
 <20120405065455.GW3852@pengutronix.de>
Date: Thu, 5 Apr 2012 09:06:30 +0200
Message-ID: <CAD9ZU8Ce_s5pq8Y6wm5dXo_rv-fg2pYx1O+T9bh+7Kq088ySFA@mail.gmail.com>
From: Gabriel Tisan <gabriel.tisan@gmail.com>
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
Subject: Re: debugging on board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

I use external boot mode from NAND. I choosed
CONFIG_NAND_IMX_BOOT_512_2K although I have a flash with 2k page size.

On Thu, Apr 5, 2012 at 8:54 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Thu, Apr 05, 2012 at 08:43:12AM +0200, Gabriel Tisan wrote:
>> Thanks !
>>
>> I have an ARM from Freescale, i.MX35.
>
> Booting from SD card? Internal or external boot mode?
>
> Sascha
>
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

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
