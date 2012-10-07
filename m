Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-f177.google.com ([209.85.223.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKkpd-0005od-Hi
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 06:59:23 +0000
Received: by mail-ie0-f177.google.com with SMTP id e14so7755874iej.36
 for <barebox@lists.infradead.org>; Sat, 06 Oct 2012 23:59:12 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20121005213302.GZ1322@pengutronix.de>
References: <1349455505-31731-1-git-send-email-s.hauer@pengutronix.de>
 <1349455505-31731-3-git-send-email-s.hauer@pengutronix.de>
 <87txu8y9rb.fsf@free.fr> <20121005213302.GZ1322@pengutronix.de>
Date: Sun, 7 Oct 2012 10:59:11 +0400
Message-ID: <CAA4bVAHx30kTebTfvLMZ-pSjpnAtmpThCcxMEEnBNNx5vhZBKA@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/4] introduce region_overlap() function
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 6 October 2012 01:33, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Fri, Oct 05, 2012 at 09:55:04PM +0200, Robert Jarzmik wrote:
>> Sascha Hauer <s.hauer@pengutronix.de> writes:
>>
>> > To check if two regions overlap
>> >
>> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> > ---
>> >  include/common.h |   13 +++++++++++++
>> >  1 file changed, 13 insertions(+)
>> >
>> > diff --git a/include/common.h b/include/common.h
>> > index c1f44b4..e30774a 100644
>> > --- a/include/common.h
>> > +++ b/include/common.h
>> > @@ -256,4 +256,17 @@ static inline void barebox_banner(void) {}
>> >             (__x < 0) ? -__x : __x;         \
>> >     })
>> >
>> > +/*
>> > + * Check if two regions overlap. returns true if they do, false otherwise
>> > + */
>> > +static inline bool region_overlap(unsigned long starta, unsigned long lena,
>> > +           unsigned long startb, unsigned long lenb)
>> > +{
>> > +   if (starta + lena <= startb)
>> > +           return 0;
>> > +   if (startb + lenb <= starta)
>> > +           return 0;
>> > +   return 1;
>> > +}
>> > +
>> >  #endif     /* __COMMON_H_ */
>>
>> Or if you look for perfomance (I presume not in barebox) :
>> static inline bool region_overlap(unsigned long starta, unsigned long lena,
>>               unsigned long startb, unsigned long lenb)
>> {
>>         return starta <= startb + lenb && starta + lena >= startb;
>> }
>>
>> It's a bit more obfuscated, but performance wise no branch prediction :)
>
> You made me curious. I tried to compile both and here is the result on
> ARM (I swapped the arguments left and right of the &&):
>
> 00025000 <_region_overlap>:
>    25000:       e0811000        add     r1, r1, r0
>    25004:       e1510002        cmp     r1, r2
>    25008:       9a000004        bls     25020 <_region_overlap+0x20>
>    2500c:       e0832002        add     r2, r3, r2
>    25010:       e1520000        cmp     r2, r0
>    25014:       93a00000        movls   r0, #0
>    25018:       83a00001        movhi   r0, #1
>    2501c:       e12fff1e        bx      lr
>    25020:       e3a00000        mov     r0, #0
>    25024:       e12fff1e        bx      lr
>
> 00025000 <__region_overlap>:
>    25000:       e0811000        add     r1, r1, r0
>    25004:       e1510002        cmp     r1, r2
>    25008:       3a000004        bcc     25020 <__region_overlap+0x20>
>    2500c:       e0832002        add     r2, r3, r2
>    25010:       e1500002        cmp     r0, r2
>    25014:       83a00000        movhi   r0, #0
>    25018:       93a00001        movls   r0, #1
>    2501c:       e12fff1e        bx      lr
>    25020:       e3a00000        mov     r0, #0
>    25024:       e12fff1e        bx      lr
>
> Maybe gcc isn't so clever on other architectures, I don't know ;)

You made me curious too.

I compiled this piece of code for MIPS:

--- code ---
#include <stdbool.h>

bool _region_overlap(unsigned long starta, unsigned long lena,
unsigned long startb, unsigned long lenb)
{
        if (starta + lena <= startb)
                return 0;
        if (startb + lenb <= starta)
                return 0;
        return 1;
}

bool __region_overlap(unsigned long starta, unsigned long lena,
unsigned long startb, unsigned long lenb)
{
        return starta <= startb + lenb && starta + lena >= startb;
}
--- /code ---

I used gcc 4.6.2 with the '-O2' option.

Here is the result:

00000000 <_region_overlap>:
   0:   00a42821        addu    a1,a1,a0
   4:   00c5282b        sltu    a1,a2,a1
   8:   10a00003        beqz    a1,18 <_region_overlap+0x18>
   c:   00e63021        addu    a2,a3,a2
  10:   03e00008        jr      ra
  14:   0086102b        sltu    v0,a0,a2
  18:   03e00008        jr      ra
  1c:   00001021        move    v0,zero

00000020 <__region_overlap>:
  20:   00e63821        addu    a3,a3,a2
  24:   00e4382b        sltu    a3,a3,a0
  28:   14e00004        bnez    a3,3c <__region_overlap+0x1c>
  2c:   00a42021        addu    a0,a1,a0
  30:   0086302b        sltu    a2,a0,a2
  34:   03e00008        jr      ra
  38:   38c20001        xori    v0,a2,0x1
  3c:   03e00008        jr      ra
  40:   00001021        move    v0,zero

You can see that the shorten obfuscated function (__region_overlap)
has ONE MORE processor instruction!

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
