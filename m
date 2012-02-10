Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvrE3-0003uM-Et
 for barebox@lists.infradead.org; Fri, 10 Feb 2012 14:13:24 +0000
Received: by laam7 with SMTP id m7so2945623laa.36
 for <barebox@lists.infradead.org>; Fri, 10 Feb 2012 06:13:20 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CALQ+5afyqAu7NP5yks7pJcJzbpm3u2G7USn1MSTnbby1-3r4mw@mail.gmail.com>
References: <CALQ+5acXuFBGkeRgv+xR8FE2_ykWxbRggEi-AVaJhZm-ZzLk7g@mail.gmail.com>
 <20120131114045.GO1990@pengutronix.de>
 <CALQ+5afWB0hQBXzkH2Vgo7FBAPP=z2jqDqxeTB07cRTkvPOfjQ@mail.gmail.com>
 <20120131131256.GP1990@pengutronix.de>
 <CALQ+5afyqAu7NP5yks7pJcJzbpm3u2G7USn1MSTnbby1-3r4mw@mail.gmail.com>
From: Igor Trevisan <igt1972@gmail.com>
Date: Fri, 10 Feb 2012 15:13:00 +0100
Message-ID: <CALQ+5afG3jjozSRaeLrt5MfmeBBgjsRh6UVHNd5RpnZ0iP7Nvg@mail.gmail.com>
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
Subject: Re: IIM on iMX27 "how-to" needed
To: barebox@lists.infradead.org

Sorry,

I replied to Sasha privately and not to the list!


On Fri, Feb 10, 2012 at 2:05 PM, Igor Trevisan <igt1972@gmail.com> wrote:
>>
>> You could try imx_iim0.explicit_sense_enable=3D0, maybe this helps.
>>
>
> Again... This helps!
> Sorry, I misunderstood the logic of the sense flag!
> (I think I owe you at least a beer...;)
>
> By the way, now I can read the first two banks:
>
> barebox:/ =A0md -b -s /dev/imx_iim_bank1
> 00000000: 41 ce 3c ad 4d 89 93 00 00 00 00 00 00 00 00 00 =A0 =A0A.<.M...=
........
> 00000010: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 =A0 =A0........=
........
> barebox:/
> barebox:/
> barebox:/ =A0md -b -s /dev/imx_iim_bank0
> 00000000: 59 20 81 40 20 00 00 00 00 00 00 00 00 00 00 00 =A0 =A0Y .@ ...=
........
> 00000010: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 =A0 =A0........=
........
>
> Now I would like to go further and try to program some fuse bits
> (I need to store some codes...).
> I think I need first of all to set:
> imx_iim0.permanent_write_enable=3D1
>
> I did this, then I tried to write with
>
> mw -b 0x10028814 0xbb
>
> but reading back I still find:
> barebox:/ =A0md -b -s /dev/imx_iim_bank0
> 00000000: 59 20 81 40 20 00 00 00 00 00 00 00 00 00 00 00 =A0 =A0Y .@ ...=
........
> 00000010: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 =A0 =A0........=
........
>
> Which is the right way to write the fuse bits?
> Thanks in advance,
> I.
>
>
>
>
> --
> "Don't find fault, find a remedy."
> (Henry Ford)



-- =

"Don't find fault, find a remedy."
(Henry Ford)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
