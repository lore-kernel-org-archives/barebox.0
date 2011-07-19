Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iw0-f177.google.com ([209.85.214.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QjA7i-0001sl-9U
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 13:14:12 +0000
Received: by iwn35 with SMTP id 35so4567635iwn.36
	for <barebox@lists.infradead.org>; Tue, 19 Jul 2011 06:14:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110718210440.GK20587@pengutronix.de>
References: <1310994370-28444-1-git-send-email-antonynpavlov@gmail.com>
	<20110718210440.GK20587@pengutronix.de>
Date: Tue, 19 Jul 2011 15:14:03 +0200
Message-ID: <CAJfOKBzxdZJh7Sguoe=pQqbw=_4ebBpjnF=BgOzwZ6HD9inY2w@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
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
Subject: Re: [PATCH v2 1/2] debug_ll.h: add PUTS_LL() function
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

2011/7/18 Sascha Hauer <s.hauer@pengutronix.de>:
> On Mon, Jul 18, 2011 at 05:06:09PM +0400, Antony Pavlov wrote:
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>
> Applied both to next.
>
> Thanks
> =A0Sascha
>
>> ---
>> =A0include/debug_ll.h | =A0 13 +++++++++++++
>> =A01 files changed, 13 insertions(+), 0 deletions(-)
>>
>> diff --git a/include/debug_ll.h b/include/debug_ll.h
>> index e99ae7d..6b1b174 100644
>> --- a/include/debug_ll.h
>> +++ b/include/debug_ll.h
>> @@ -35,9 +35,22 @@
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ch =3D ((v >> (i*=
4)) & 0xf);\
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ch +=3D (ch >=3D =
10) ? 'a' - 10 : '0';\
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PUTC_LL (ch); }})
>> +
>> +static __inline__ void PUTS_LL(char * str)
>> +{
>> + =A0 =A0 while (*str) {
>> + =A0 =A0 =A0 =A0 =A0 =A0 if (*str =3D=3D '\n') {
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 PUTC_LL('\r');
>> + =A0 =A0 =A0 =A0 =A0 =A0 }
>> + =A0 =A0 =A0 =A0 =A0 =A0 PUTC_LL(*str);
>> + =A0 =A0 =A0 =A0 =A0 =A0 str++;
>> + =A0 =A0 }
>> +}
>> +
>> =A0#else
>> =A0# define PUTC_LL(c) do {} while (0)
>> =A0# define PUTHEX_LL(v) do {} while (0)
>> +# define PUTS_LL(c) do {} while (0)
>>
>> =A0#endif
>>

Is there any reason for not using vsprintf in a printf_ll function
which would use puts_ll / putc_ll ??

Franck.


>> --
>> 1.7.5.4
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
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
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
