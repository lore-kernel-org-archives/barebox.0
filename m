Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f43.google.com ([74.125.83.43])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uba3M-0005ls-RE
 for barebox@lists.infradead.org; Sun, 12 May 2013 17:27:21 +0000
Received: by mail-ee0-f43.google.com with SMTP id b15so3170778eek.30
 for <barebox@lists.infradead.org>; Sun, 12 May 2013 10:26:58 -0700 (PDT)
Message-ID: <518FD0E0.6040002@gmail.com>
Date: Sun, 12 May 2013 19:26:56 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130512184935.29bce329@skate> <518FC8A2.20309@gmail.com>
 <20130512191909.754566fc@skate>
In-Reply-To: <20130512191909.754566fc@skate>
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

On 05/12/2013 07:19 PM, Thomas Petazzoni wrote:
> Dear Sebastian Hesselbarth,
>
> On Sun, 12 May 2013 18:51:46 +0200, Sebastian Hesselbarth wrote:
>
>>> How does the remapping of the registers plays with the debug_ll code in
>>> arch/arm/mach-mvebu/include/mach/debug_ll.h, which assumes the UART is
>>> at 0xd0012000 ?
>>
>> Thomas, currently it does not play with debug_ll. That's why I don't
>> remap registers yet. I rather suggest to have a pre-linux boot hook in
>> barebox to allow to tweak platform specific things before control is
>> handed over to linux kernel.
>
> Ok. I guess we have a choice: either we do the remapping very early,
> and we execute everything at 0xf1. Or we do the remapping very late
> (right before jumping into Linux), and Barebox lives with 0xd0.
>
> I'm not sure what the best way to proceed.

Well, considering that we have all .dtsi files for kirkwood and dove
at 0xf10 we could remap early but that will break compatibility with
armadas. If we remap late, it will be compatible with debug_ll from
armada but break dtsi.

We will remap by DT someday, but for now, with that basic support we
have in barebox - just stay at 0xd00.. will take a while to boot into
linux anyway.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
