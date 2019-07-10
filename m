Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from your2.active-elements.de ([88.99.59.121] helo=atsonline.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl7jz-0003z0-K1
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 08:14:17 +0000
Received: from Mail-10-6.ATS-Intranet.local (p57800e76.dip0.t-ipconnect.de
 [87.128.14.118])
 by xenon.active-elements.de (Postfix) with ESMTPSA id D5AA24022538
 for <barebox@lists.infradead.org>; Wed, 10 Jul 2019 10:14:10 +0200 (CEST)
References: <875f8014-b696-b0dc-3c9b-0a9e2d573aa6@atsonline.de>
 <20190710075821.vhbdbkv67raa4zf4@pengutronix.de>
From: Andreas Geisenhainer <Andreas.Geisenhainer@atsonline.de>
Message-ID: <a3b5da64-bfab-3f51-cbcd-f75e100b24e4@atsonline.de>
Date: Wed, 10 Jul 2019 10:14:10 +0200
MIME-Version: 1.0
In-Reply-To: <20190710075821.vhbdbkv67raa4zf4@pengutronix.de>
Content-Language: en-US
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
Subject: Re: Oselas 2018.12.0 toolchain seems to break barebox for AM335x
To: barebox@lists.infradead.org

Hello Sascha, hello ML.

On 2019-07-10 9:58 a.m., Sascha Hauer wrote:
> Hi Andreas,
>
> On Mon, Jul 08, 2019 at 04:15:00PM +0200, Andreas Geisenhainer wrote:
>> We're running barebox an a Phytec PhyCORE AM335x platform, and the
>> behaviour does emerge for the default "barebox-am335x-phytec-phycore.img"
>> image from barebox.
> I just tried to reproduce this on a beaglebone black as this is at least
> the same SoC. Unfortunately I was not successful.
>
> Unfortunately this disappeared after some changes and never came back.
Thanks for trying.
> Does your barebox always crash or does the behaviour change when you try
> adding debugging? you might want to add some putc_ll() at earlier places
> to see how far you get.
It crashes every time, as far as i can tell, since there is no more output.
I'm working around the the problem for a bit, but will investigate further
into it. There should be a Beaglebone Black around here. I'll try to
reproduce it on this platform and get back to you.

kind regards
Andreas

-- 
        _
   __ _| |_ ___
  / _` | __/ __|
| (_| | |_\__ \
  \__,_|\__|___/
Elektronik GmbH


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
