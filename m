Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pz0-f43.google.com ([209.85.210.43])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROrKG-0001g0-M8
 for barebox@lists.infradead.org; Fri, 11 Nov 2011 13:39:25 +0000
Received: by pzk34 with SMTP id 34so5066197pzk.2
 for <barebox@lists.infradead.org>; Fri, 11 Nov 2011 05:39:23 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20111111112738.GQ16886@pengutronix.de>
References: <1320874797-14270-1-git-send-email-lucas.demarchi@profusion.mobi>
 <1320874797-14270-2-git-send-email-lucas.demarchi@profusion.mobi>
 <20111111112738.GQ16886@pengutronix.de>
From: Lucas De Marchi <lucas.demarchi@profusion.mobi>
Date: Fri, 11 Nov 2011 11:39:02 -0200
Message-ID: <CAMOw1v4GiEqYu=t_vTPwNoU-U9nxhrE+SNOwh1H30=dYswm2Xg@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/4] Make fprintf return number of bytes written
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 11, 2011 at 9:27 AM, Sascha Hauer <s.hauer@pengutronix.de> wrot=
e:
> On Wed, Nov 09, 2011 at 07:39:54PM -0200, Lucas De Marchi wrote:
>> Return number of bytes written, like its siblings function. This also
>> removes the warning below on gcc >=3D 4.6.
>>
>> common/console.c:333:7: warning: variable =91i=92 set but not used
>> [-Wunused-but-set-variable]
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@profusion.mobi>
>> ---
>> =A0common/console.c =A0 =A0 =A0 =A0| =A0 =A04 +++-
>> =A0common/console_simple.c | =A0 =A04 +++-
>> =A0include/stdio.h =A0 =A0 =A0 =A0 | =A0 =A02 +-
>> =A03 files changed, 7 insertions(+), 3 deletions(-)
>>
>> diff --git a/common/console.c b/common/console.c
>> index 06e9c29..7f2810e 100644
>> --- a/common/console.c
>> +++ b/common/console.c
>> @@ -327,7 +327,7 @@ void console_flush(void)
>> =A0}
>> =A0EXPORT_SYMBOL(console_flush);
>>
>> -void fprintf (int file, const char *fmt, ...)
>> +int fprintf (int file, const char *fmt, ...)
>> =A0{
>> =A0 =A0 =A0 va_list args;
>> =A0 =A0 =A0 uint i;
>> @@ -343,6 +343,8 @@ void fprintf (int file, const char *fmt, ...)
>>
>> =A0 =A0 =A0 /* Print the string */
>> =A0 =A0 =A0 fputs (file, printbuffer);
>> +
>> + =A0 =A0 =A0 =A0return i;
>> =A0}
>
> I just applied another patch I suggested earlier which fixes the return
> value of the various puts functions. With this I suggest returning the
> return value of fputs here instead of a bogus 1.

It makes sense. Thanks

Lucas De Marchi

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
