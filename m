Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OfIJk-0003wb-E3
	for barebox@lists.infradead.org; Sat, 31 Jul 2010 20:06:01 +0000
Received: by eyd10 with SMTP id 10so1097728eyd.36
	for <barebox@lists.infradead.org>; Sat, 31 Jul 2010 13:05:57 -0700 (PDT)
Message-ID: <4C548221.6030404@dawes.za.net>
Date: Sat, 31 Jul 2010 22:05:53 +0200
From: Rogan Dawes <rogan@dawes.za.net>
MIME-Version: 1.0
References: <4C532D05.7020407@dawes.za.net> <4C540747.7000602@dawes.za.net>
	<4C5418BF.3000301@eukrea.com> <4C543F3A.1040709@dawes.za.net>
	<4C54460D.1050804@eukrea.com> <4C5449CD.8000203@dawes.za.net>
	<4C54525F.5030306@eukrea.com> <4C546E3F.4020002@dawes.za.net>
	<4C547A96.1080001@eukrea.com>
In-Reply-To: <4C547A96.1080001@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Porting to Marvell 88F5182?
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 2010/07/31 9:33 PM, Eric B=E9nard wrote:
> Le 31/07/2010 20:41, Rogan Dawes a =E9crit :
>> Ok, cool. Which is the simplest ARM board for me to use as a template?
>>
> I don't know which is the simplest, you will have to wait for Sascha's
> answer as he is the best person who can answer to this question.
>
>> I'm not much of a coder, more a "copy and paste monkey", I'm afraid, so
>> I dunno how well I'll do :-) But I'm willing to give it a shot!
>>
> before copy and pasting things, maybe you should look how a same board
> is supported under barebox & u-boot and then you will be able to port
> u-boot support of your cpu & board to barebox.
>
> You may also find some hints in Documentation/porting.txt

That's good advice. Thanks!

>> I've looked at the arch/arm/mach-s3c24xx directory, which *seems* to be
>> the simplest (in terms of fewest files :-) ). Would this be a reasonable
>> place to start?
>>
> You also need to look (at least) in drivers/serial.
>
> Eric

Thanks for your help!

Rogan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
