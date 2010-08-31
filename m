Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.coresystems.de ([80.81.252.135])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OqW9r-0004hr-97
	for barebox@lists.infradead.org; Tue, 31 Aug 2010 19:06:15 +0000
Received: from hsi-kbw-095-208-161-019.hsi5.kabel-badenwuerttemberg.de
	([95.208.161.19] helo=macpro.fritz.box)
	by ra.coresystems.de with esmtpsa (TLSv1:CAMELLIA256-SHA:256)
	(Exim 4.72) (envelope-from <stepan@coresystems.de>)
	id 1OqW9j-0001e8-0e
	for barebox@lists.infradead.org; Tue, 31 Aug 2010 21:06:04 +0200
Message-ID: <4C7D5299.2060503@coresystems.de>
Date: Tue, 31 Aug 2010 21:06:01 +0200
From: Stefan Reinauer <stepan@coresystems.de>
MIME-Version: 1.0
References: <4C7CD898.9040902@coresystems.de>
	<20100831131817.GA1883@game.jcrosoft.org>
	<4C7D08A3.8000505@coresystems.de>
	<20100831151819.GA22790@game.jcrosoft.org>
	<4C7D26FF.2030706@coresystems.de>
	<20100831170814.GC22790@game.jcrosoft.org>
In-Reply-To: <20100831170814.GC22790@game.jcrosoft.org>
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
To: barebox@lists.infradead.org

 On 8/31/10 7:08 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
>>> I build it on MacOS too
>>>
>> How did you overcome the programs in scripts/ using Linux system headers
>> that are not there with HOSTCC (even with a Linux cross toolchain)?
> the tool chain provive it and it's the same for compiling the kernel on MacOS

Hm... maybe I need a different host toolchain on MacOS then?

I am using Xcode 3.2.2, i.e. gcc version 4.2.1 (Apple Inc. build 5659)
for the host parts - that's those not intended for the target but for
running on MacOS during the build process, like setupmbr, mk_elfconfig
and modpost. And that toolchain does for example not come with an elf.h
header file (mostly because ELF is not used on MacOS). For obvious
reasons, the target compiler's (cross compiler) include files are taboo
for compiling the host programs.

Best regards,
Stefan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
