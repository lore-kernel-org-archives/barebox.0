Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f333.i.mail.ru ([217.69.140.229])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gol5q-0001jJ-W0
 for barebox@lists.infradead.org; Wed, 30 Jan 2019 08:19:37 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
MIME-Version: 1.0
Date: Wed, 30 Jan 2019 11:19:30 +0300
Message-ID: <1548836370.666230746@f333.i.mail.ru>
In-Reply-To: <1548835382.499237981@f484.i.mail.ru>
References: <1548322649.666663534@f388.i.mail.ru>
 <20190130060800.kjizme7u36nwvflz@pengutronix.de>
 <1548835382.499237981@f484.i.mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?UmU6IGluaXRyZCBwcm9ibGVt?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>>On Thu, Jan 24, 2019 at 12:37:29PM +0300, Alexander Shiyan wrote:
>>> I decided to change the size of the UBI volume for the root file system to 60 MB.
>>> Now I get a weird OOM error. Turning on debug information shows a conflict,
>>> but I do not quite understand where to look for the problem.
>>> Where is the starting point to try to solve this problem?
>>> 
>>> malloc space: 0x95df8d40 -> 0x97df8d3f (size 32 MiB)
>>> 
>>> Loading ARM Linux zImage '/dev/nand0.system.ubi.kernel'
>>> __request_region ok: 0x92000000:0x922a244f
>>The Kernel documentation recommends putting the Kernel 32MiB into SDRAM
>>to avoid relocation. This is what we see here.
>>
>>> __request_region: 0x923a3000:0x95e02fff conflicts with 0x95df8d40:0x97df8d3f
>>
>>Now we try allocate space for the initrd above it which is 60MiB. This
>>conflicts with the malloc space.
>>
>>So yes, you're out of memory.
>Memory should be enough (256 Mb). I think the problem is that the memory is
>divided into two banks of 128 Mb each.
>
>Just look for a next line:
>__request_region: 0x923a3000:0x95e02fff outside parent resource 0x98000000:0x9fffffff
>
>Maybe we need some kind of option to merge nearby banks?

Problem is resolved by adding:
global.bootm.initrd.loadaddr=0x98000000

...But I do not really like this method.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
