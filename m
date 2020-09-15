Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIB0I-0003pc-9P
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 13:28:16 +0000
References: <20200914130640.21416-1-s.hauer@pengutronix.de>
 <20200914130640.21416-4-s.hauer@pengutronix.de>
 <da8f70a1-921f-ad94-ffb1-855eb4004f86@pengutronix.de>
 <20200915071215.GZ4498@pengutronix.de>
 <5e8911d3-2fe2-f2c7-09da-c971d97e8ff3@pengutronix.de>
 <20200915131219.GP4498@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <7d170c31-d117-0493-6487-364de7b285b9@pengutronix.de>
Date: Tue, 15 Sep 2020 15:28:10 +0200
MIME-Version: 1.0
In-Reply-To: <20200915131219.GP4498@pengutronix.de>
Content-Language: en-US
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/4] fs: free unused dentries
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hello,

On 9/15/20 3:12 PM, Sascha Hauer wrote:
> On Tue, Sep 15, 2020 at 10:01:23AM +0200, Ahmad Fatoum wrote:
>> Hello Sascha,
>>
>> On 9/15/20 9:12 AM, Sascha Hauer wrote:
>>> On Tue, Sep 15, 2020 at 07:25:15AM +0200, Ahmad Fatoum wrote:
>>>> Hello Sascha,
>>>>
>>>> On 9/14/20 3:06 PM, Sascha Hauer wrote:
>>>>> So far we only ever freed dentries when the filesystem they are on is
>>>>> unmounted. With this patch we actually trust reference counting and free
>>>>> the dentries once the reference count hits zero.
>>>>
>>>> Unless I revert this patch, I run into a crash doing:
>>>>
>>>> dd if=/dev/zero of=barebox.env count=1
>>>> ./barebox --image=barebox.env
>>>> barebox@barebox sandbox:/ saveenv
>>>> saving environment
>>>
>>> "saveenv" answers with: "saveenv: No such file or directory". Did you
>>> mean to do a "saveenv /dev/fd0"?
>>>
>>>> barebox@barebox sandbox:/ reset
>>>> =================================================================
>>>> ==894761==ERROR: AddressSanitizer: heap-use-after-free on address 0x60e000005d70 at pc 0x5617cfde210a bp 0x7ffff89957d0 sp 0x7ffff89957c8
>>>
>>> I can't reproduce this here unfortunately.
>>
>> Sorry, should've been ./barebox --env=barebox.env
>>
>> I can reproduce it with upstream/next (91a23b64445b8861acbfd96fcc03082b343b0211)
>> and sandbox_defconfig (+CONFIG_RESET). saveenv; reset results in a segmentation fault.
>> CONFIG_KASAN=y
>> CONFIG_MALLOC_LIBC=y
>> gives the better debugging output.
> 
> Hm, still can't reproduce, neither with
> 91a23b64445b8861acbfd96fcc03082b343b0211 nor with current next.

Just tried on the build server; could you try to run nv autoboot=abort; reset instead?

> 
> Sascha
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
