Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RIlrj-0004Ql-1P
	for barebox@lists.infradead.org; Tue, 25 Oct 2011 18:36:48 +0000
Received: by faaf16 with SMTP id f16so1068490faa.36
	for <barebox@lists.infradead.org>; Tue, 25 Oct 2011 11:36:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4EA5BFB3.6030801@eukrea.com>
References: <1319289593-15251-1-git-send-email-fvanderwerf@gmail.com>
	<20111022202035.GK23421@pengutronix.de>
	<CAJeSw6Be=2jNOw1SSz1xB-7bXL9RyrUuLz+yWcZvxfNap6RkwQ@mail.gmail.com>
	<CAA4bVAGRrH4bwozuWfV9Ck4c=vPfRE4oOPLzWFU2u8--8avkLw@mail.gmail.com>
	<20111024170753.GN23421@pengutronix.de>
	<CAJeSw6CfdF5UuN0fk=trKi-bJD009yDcasjkp_f2twR9giRaCw@mail.gmail.com>
	<4EA5B65D.4020405@eukrea.com>
	<20111024193042.GO23421@pengutronix.de>
	<4EA5BFB3.6030801@eukrea.com>
Date: Tue, 25 Oct 2011 20:36:44 +0200
Message-ID: <CAJeSw6AbKXD9BgSF8FOcxtfFEnwgx4436KAmtQ8dW4GPeJyFeQ@mail.gmail.com>
From: Fabian van der Werf <fvanderwerf@gmail.com>
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
Subject: Re: [PATCH] usb: fix unaligned access
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Oct 24, 2011 at 9:42 PM, Eric B=E9nard <eric@eukrea.com> wrote:
> Le 24/10/2011 21:30, Sascha Hauer a =E9crit :
>>
>> On Mon, Oct 24, 2011 at 09:02:53PM +0200, Eric B=E9nard wrote:
>>>
>>> Hi,
>>>
>>> Le 24/10/2011 20:37, Fabian van der Werf a =E9crit :
>>>>
>>>> Okay, I think it may be a compiler problem. The latest code sourcery
>>>> compiler builds a barebox that breaks on usb. 2009q1-203 builds fine,
>>>> however.
>>>>
>>>> In the usb code the compiler should be able to figure out that the
>>>> access is unaligned from the packed structure. So I guess it should
>>>> split up the access in multiple loads/stores. I will look into the
>>>> binaries to confirm this. The latest compiler may be broken or maybe
>>>> the default behaviour has changed because armv7 actually supports
>>>> unaligned access.
>>>>
>>> can't this be the same problem described here with gcc 4.6 :
>>> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/791552
>>>
>>> solved by this patch :
>>>
>>> https://launchpadlibrarian.net/73908303/0001-USB-ehci-remove-structure-=
packing-from-ehci_def.patch
>>>
>>> with the following explanation :
>>> The kernel source marks ehci_regs as packed. gcc 4.6 treats all
>>> accesses to packed structures as unaligned and ends up reading the
>>> status register multiple times.
>>
>> If Fabians compiler would treat every access to packed structure members
>> as unaligned everything would be fine. The problem seems to be that it
>> doesn't treat it as unaligned. Let's wait for Fabians binary analysis.
>>
> maybe the complete explanation will explain better the problem as barebox
> seems to have the same readl as linux :
> http://gcc.gnu.org/ml/gcc/2011-02/msg00035.html


I have looked at the disassembly and the compiler does indeed emit an
unaligned access.

Considering the following code from ehci_init()
/* Port Indicators */
if (HCS_INDICATOR(reg))
	descriptor.hub.wHubCharacteristics |=3D 0x80; /* wHubCharacteristics is
unaligned */
/* Port Power Control */
if (HCS_PPC(reg))
	descriptor.hub.wHubCharacteristics |=3D 0x01;

My older (gcc 4.3.3) compiler correctly uses byte loads/stores:
0x8f0171e4 <+148>:	tst	r1, #65536	; 0x10000
0x8f0171e8 <+152>:	and	r3, r1, #15
0x8f0171ec <+156>:	strb	r3, [r0, #2]
0x8f0171f0 <+160>:	beq	0x8f017210 <ehci_init+192>
0x8f0171f4 <+164>:	ldrb	r2, [r0, #4]
0x8f0171f8 <+168>:	ldrb	r3, [r0, #3]
0x8f0171fc <+172>:	orr	r3, r3, r2, lsl #8
0x8f017200 <+176>:	orr	r3, r3, #128	; 0x80
0x8f017204 <+180>:	strb	r3, [r0, #3]
0x8f017208 <+184>:	lsr	r3, r3, #8
0x8f01720c <+188>:	strb	r3, [r0, #4]
0x8f017210 <+192>:	tst	r1, #16
0x8f017214 <+196>:	beq	0x8f017238 <ehci_init+232>
0x8f017218 <+200>:	ldr	r3, [pc, #92]	; 0x8f01727c
0x8f01721c <+204>:	ldrb	r1, [r3, #4]
0x8f017220 <+208>:	ldrb	r2, [r3, #3]
0x8f017224 <+212>:	orr	r2, r2, r1, lsl #8
0x8f017228 <+216>:	orr	r2, r2, #1
0x8f01722c <+220>:	strb	r2, [r3, #3]
0x8f017230 <+224>:	lsr	r2, r2, #8
0x8f017234 <+228>:	strb	r2, [r3, #4]

My newer compiler (gcc 4.5.2) uses unaligned halfword loads/stores:
0x8f0159d8 <+148>:	tst	r2, #65536	; 0x10000
0x8f0159dc <+152>:	and	r1, r2, #15
0x8f0159e0 <+156>:	strb	r1, [r3, #2]
0x8f0159e4 <+160>:	ldrhne	r1, [r3, #3]
0x8f0159e8 <+164>:	orrne	r1, r1, #128	; 0x80
0x8f0159ec <+168>:	strhne	r1, [r3, #3]
0x8f0159f0 <+172>:	tst	r2, #16
0x8f0159f4 <+176>:	ldrhne	r2, [r3, #3]
0x8f0159f8 <+180>:	orrne	r2, r2, #1
0x8f0159fc <+184>:	strhne	r2, [r3, #3]

I found this post:
http://communities.mentor.com/community/cs/archives/arm-gnu/msg04203.html.
That mentions that unaligned access is the default for armv6 and
armv7. There are two possible fixes:
 - disable alignment fault checking for armv6 and armv7
 - build with the -mno-unaligned-access option

Besides that, I think we should look whether the structure really
needs to be packed. As far as I understand the code, the structure is
not used for i/o access, so packing is not necessary.

Regards,
Fabian


>
> Eric
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
