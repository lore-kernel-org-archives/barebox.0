Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x234.google.com ([2a00:1450:4008:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ubwls-0002bQ-5Z
 for barebox@lists.infradead.org; Mon, 13 May 2013 17:42:49 +0000
Received: by mail-bk0-f52.google.com with SMTP id mz1so415503bkb.25
 for <barebox@lists.infradead.org>; Mon, 13 May 2013 10:42:26 -0700 (PDT)
Message-ID: <519125FE.9030008@gmail.com>
Date: Mon, 13 May 2013 19:42:22 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130513075852.GG32299@pengutronix.de> <5190AFA1.1080503@gmail.com>
 <20130513105722.GP32299@pengutronix.de> <5190E56F.9080903@gmail.com>
 <20130513162313.4f5849a9@skate> <519110D0.5040801@gmail.com>
 <20130513182141.12af9b31@skate> <51911510.8050207@gmail.com>
 <20130513183418.4f9ce9e2@skate> <51911971.2040303@gmail.com>
 <20130513191447.21181904@skate>
In-Reply-To: <20130513191447.21181904@skate>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/5] arm: initial support for Marvell Dove SoCs
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On 05/13/13 19:14, Thomas Petazzoni wrote:
>> Turned out to be easier than I thought!
>>
>> You can always read from 0xd0020080 (REG_BASE_REMAP) without lockup.
>>
>> So if that what you read equals 0xd0000000, you are still on boot-up
>> reg bases. If not, and as long as we only remap to 0xf1000000 you are
>> remapped to 0xf1000000.
>
> Are you sure this is safe? Imagine you have 4 GB of RAM. Once registers
> are remapped to 0xf1000000, what you read at 0xd0020080 is RAM.

Well, no it is not "safe" in a way you know what you get back from that
read. But it is "safe" in a way it does not kill axi or mbus.

> And, what happens if by chance (or lack therefore), what the RAM
> contains at 0xd0020080 is 0xd0000000 ? You'll believe you're still
> mapped at the old location.

If it is RAM and if it contains 0xd0000000 you are fooled and assume
you are not remapped.

> Now that I think of it, not sure of what will happen though, you will
> write 0xf1000000 at this address, and then continue with the rest of
> boot. Would that be a problem?

Well, I can think of some dirty tricks to raise chances it is the remap
register:

1. Read 0xd0020080
2. if it is not 0xd0000000 you are remapped to something
3. if it is 0xd0000000, remap internal registers to 0xf1000000

4. Read 0xf1020080
5. if it is not 0xf1000000 you are remapped to something you can
    only guess.
6. if it is 0xf1000000, the chances you are on 0xf1000000 are
    quite good

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
