Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qw0-f49.google.com ([209.85.216.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QpExY-0001AJ-Pb
	for barebox@lists.infradead.org; Fri, 05 Aug 2011 07:36:49 +0000
Received: by qwi2 with SMTP id 2so1470853qwi.36
	for <barebox@lists.infradead.org>; Fri, 05 Aug 2011 00:36:41 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110805064355.GB31404@pengutronix.de>
References: <1312468508-9205-1-git-send-email-antonynpavlov@gmail.com>
	<20110805064355.GB31404@pengutronix.de>
Date: Fri, 5 Aug 2011 11:36:41 +0400
Message-ID: <CAA4bVAFQhqVOAibqLHwb3wZiZAtmbdfKn+k2rHUuqU16n4BCtg@mail.gmail.com>
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
Subject: Re: [PATCH] serial_ns16550: switch to ns16550_priv structure
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 5 August 2011 10:43, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Antony, Jean,
>
> Please stop fighting battles, there's enough work for all of us ;)

;)))

I think Jean-Christophe's patch and my patch are just the same.
The difference is in details, naming, formatting etc.
IMHO in some points Jean-Christophe's patch is better,
in other point my patch is better.

I don't like 'unsigned long' type for pointer in 'struct
NS16550_plat'. (see
http://lists.infradead.org/pipermail/barebox/2011-July/003957.html).
But I think, that we must change it in separate patch.

> On Thu, Aug 04, 2011 at 06:35:08PM +0400, Antony Pavlov wrote:
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>> =A0drivers/serial/serial_ns16550.c | =A0181 +++++++++++++++++++++++-----=
-----------
>> =A0drivers/serial/serial_ns16550.h | =A0 16 ++++
>> =A02 files changed, 123 insertions(+), 74 deletions(-)
>>
>> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns1=
6550.c
>> index 36d39cd..a9f565e 100644
>> --- a/drivers/serial/serial_ns16550.c
>> +++ b/drivers/serial/serial_ns16550.c
>> @@ -48,6 +48,42 @@
>>
>> =A0/*********** Private Functions **********************************/
>>
>> +static unsigned int ns16550_generic_readb(unsigned long base,
>> + =A0 =A0 =A0 =A0 =A0 =A0 unsigned char reg_idx)
>> +{
>> + =A0 =A0 return readb((char *)base + reg_idx);
>> +}
>
> Try building this with sparse enabled (make C=3D1):
>
> =A0CHECK =A0 drivers/serial/serial_ns16550.c
> drivers/serial/serial_ns16550.c:54:16: warning: incorrect type in argumen=
t 1 (different address spaces)
> drivers/serial/serial_ns16550.c:54:16: =A0 =A0expected void const volatil=
e [noderef] <asn:2>*<noident>
> drivers/serial/serial_ns16550.c:54:16: =A0 =A0got char *
...
> drivers/serial/serial_ns16550.c:84:9: =A0 =A0expected void const volatile=
 [noderef] <asn:2>*<noident>
> drivers/serial/serial_ns16550.c:84:9: =A0 =A0got char *

Yeahhhh, I got many error messages from sparse, but they are very different!

I use ARCH=3Dmips.

Do you use ARCH=3Darm, isn't it?

:)))

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
