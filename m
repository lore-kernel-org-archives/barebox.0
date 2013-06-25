Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22a.google.com ([2a00:1450:4008:c01::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrZNT-00023K-DW
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 19:58:12 +0000
Received: by mail-bk0-f42.google.com with SMTP id jk13so4666820bkc.15
 for <barebox@lists.infradead.org>; Tue, 25 Jun 2013 12:57:46 -0700 (PDT)
Message-ID: <51C9F636.6080805@gmail.com>
Date: Tue, 25 Jun 2013 21:57:42 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372152047-28134-9-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130625194847.GL32299@pengutronix.de>
In-Reply-To: <20130625194847.GL32299@pengutronix.de>
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
Subject: Re: [PATCH 8/9] OF: base: convert of_add_memory to OF API
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 06/25/2013 09:48 PM, Sascha Hauer wrote:
> On Tue, Jun 25, 2013 at 11:20:46AM +0200, Sebastian Hesselbarth wrote:
>> Convert of_add_memory parsing to make use of of_address_to_resource
>> instead of parsing memory ranges itself. This makes some functions
>> dead code which are also removed.
>>
>> Signed-off-by: Sebastian Hesselbarth<sebastian.hesselbarth@gmail.com>
>
> Haven't investigated further yet, but this one breaks my loco board
> with:
>
> mmu: Error: Can't request SDRAM region for ttb
> prefetch abort
> pc : [<00000004>]    lr : [<7ff20563>]
> sp : 8fffff30  ip : 7ff20563  fp : 8fff4000
> r10: 8fff4000  r9 : 00000000  r8 : 000298ec
> r7 : 20000000  r6 : 7ff43e74  r5 : 7ff37824  r4 : 7ff37824
> r3 : 7ff205a1  r2 : 00000000  r1 : ffffffff  r0 : 00000000
> Flags: nzCv  IRQs off  FIQs off  Mode SVC_32
> [<7ff20563>] (__mmu_cache_on+0xb/0x10) from [<7ff202d3>] (mmu_init+0x7b/0x1f4)
> [<7ff202d3>] (mmu_init+0x7b/0x1f4) from [<7ff049f3>] (start_barebox+0x17/0xc4)
> [<7ff049f3>] (start_barebox+0x17/0xc4) from [<7ff1ff09>] (__start+0x51/0x5c)
> [<7ff1ff09>] (__start+0x51/0x5c) from [<7ff00005>] (__bare_init_start+0x1/0xc)
>
> It looks like the memory cannot be found anymore.

Ok, I just reworked Marvell Dove to boot from DT. I will have a look at
loco code to get an impression of how of_add_memory should be called
and add that to Dove. Maybe I can reproduce it there too.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
