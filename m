Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.coresystems.de ([80.81.252.135])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OqTFu-0004fb-9x
	for barebox@lists.infradead.org; Tue, 31 Aug 2010 16:00:20 +0000
Message-ID: <4C7D26FF.2030706@coresystems.de>
Date: Tue, 31 Aug 2010 17:59:59 +0200
From: Stefan Reinauer <stepan@coresystems.de>
MIME-Version: 1.0
References: <4C7CD898.9040902@coresystems.de>
	<20100831131817.GA1883@game.jcrosoft.org>
	<4C7D08A3.8000505@coresystems.de>
	<20100831151819.GA22790@game.jcrosoft.org>
In-Reply-To: <20100831151819.GA22790@game.jcrosoft.org>
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
Subject: Re: barebox on x86
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

 Hi Jean-Christophe,

On 8/31/10 5:18 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 15:50 Tue 31 Aug     , Stefan Reinauer wrote:
>>  Hi Jean-Christophe,
>>
>> On 8/31/10 3:18 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
>>> why do you touch it?
>> Sorry, touch _what_ in particular?
>>
>>> barebox is self content so I do not understand why you do such modificaton
>>> specially uf we are supposed to do crosscompile
>>>
>> Unfortunately that assumption is wrong, at least for the x86 target.
>> Almost all my patch does is trying to fix exactly that (along with
>> dropping the requirement to use Linux on the host side)
>>
>> And, yes, I am using an i386-elf- cross compiler.
> you need a linux toolchains and it's build correctly

So, barebox needs glibc and a Linux kernel to build? Hm. Then consider
my patch fixing that problem. Almost. With my patch it's self-content.
But the linking problems are still open. Do you have any hint on those,
too, maybe?

> I build it on MacOS too
>
How did you overcome the programs in scripts/ using Linux system headers
that are not there with HOSTCC (even with a Linux cross toolchain)?

> Best Regards,
> J.
>

Best regards,
Stefan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
