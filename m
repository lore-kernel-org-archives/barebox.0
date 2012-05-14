Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STrLi-0003k5-S7
 for barebox@lists.infradead.org; Mon, 14 May 2012 09:13:51 +0000
Received: by yhjj52 with SMTP id j52so4712470yhj.36
 for <barebox@lists.infradead.org>; Mon, 14 May 2012 02:13:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120514085532.GJ13302@pengutronix.de>
References: <1336929884-19292-1-git-send-email-antonynpavlov@gmail.com>
 <1336929884-19292-3-git-send-email-antonynpavlov@gmail.com>
 <20120514085532.GJ13302@pengutronix.de>
Date: Mon, 14 May 2012 13:13:49 +0400
Message-ID: <CAA4bVAFAo+Sn1gB1bb=hjFC3gx26E8UmiGKPfnKa6Qu+RfBugQ@mail.gmail.com>
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
Subject: Re: [RFC 2/3] MIPS: add the initial support for lowlevel init
To: barebox <barebox@lists.infradead.org>

On 14 May 2012 12:55, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sun, May 13, 2012 at 09:24:43PM +0400, Antony Pavlov wrote:
>> This commit introduce the initial support for
>> machine specific lowlevel initialization
>> (e.g. RAM controller or cache memory).
>>
>> To return from mach_init_lowlevel() it uses
>> explicit mach_init_lowlevel_return label.
>> This saves ra register for using inside mach_init_lowlevel()
>>
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>> =A0arch/mips/boot/start.S | =A0 =A08 ++++++++
>> =A01 file changed, 8 insertions(+)
>>
>> diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
>> index 6bf5baa..6db104b 100644
>> --- a/arch/mips/boot/start.S
>> +++ b/arch/mips/boot/start.S
>> @@ -74,6 +74,14 @@ __start:
>> =A0 =A0 =A0 and =A0 =A0 k0, k1
>> =A0 =A0 =A0 mtc0 =A0 =A0k0, CP0_STATUS
>>
>> +#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
>> + =A0 =A0 b =A0 =A0 =A0 mach_init_lowlevel
>> + =A0 =A0 =A0nop
> =A0 =A0 =A0 ^^^^
>
> Space after tab.

It not a bug, it is a feature! :))

The nop instruction is in a branch delay slot, so add a space before it.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
