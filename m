Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Q65-00059h-7y
 for barebox@lists.infradead.org; Wed, 04 Sep 2019 07:52:59 +0000
Received: from [2001:67c:670:100:6a05:caff:fe2d:a9b1]
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1i5Q62-0000UE-2O
 for barebox@lists.infradead.org; Wed, 04 Sep 2019 09:52:54 +0200
References: <20190827150918.16247-1-ahmad@a3f.at>
 <20190904065321.rowojfaibla3rimy@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <979a1f83-5291-9bdf-21f4-48e1ea5cfeeb@pengutronix.de>
Date: Wed, 4 Sep 2019 09:52:52 +0200
MIME-Version: 1.0
In-Reply-To: <20190904065321.rowojfaibla3rimy@pengutronix.de>
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
Subject: Re: [PATCH v2 00/10] Add initial support for -fsanitize={ubsan,asan}
To: barebox@lists.infradead.org

On 9/4/19 8:53 AM, Sascha Hauer wrote:
> On Tue, Aug 27, 2019 at 05:09:08PM +0200, Ahmad Fatoum wrote:
>> This series adds undefined behavior and address sanitizer support to
>> barebox. Both are fully functional on sandbox, where they are also used
>> to implement dump_stack() now.
>>
>> I haven't yet read about how Kernel AddressSanitizer works, so this one
>> only works on sandbox via libasan for now.
>>
>> The undefined behavior sanitizer depends on the compiler instrumenting
>> potential pitfalls and then calling the routines in lib/ubsan.c if it
>> catches something undefined, so that should readily work on other arches
>> as well. I tested it on sandbox and the i.MX6Q so far.
>>
>> Eventually, it should be possible to enable it for all the non-PBL stuff
>> with a single Kconfig option, but for now you need to explicitly add a
>>
>> 	UBSAN_SANITIZE_myfile.o := y
>>
>> in the respective Makefile. Enabling it wholesale doesn't yet work on
>> ARM, I suspect it might be due to binary size.
>>
>> Changes in v2:
>> 	v1 was incomplete and sent our more by mistake,
>> 	so no changelog.
> 
> Applied, thanks

Could you swap patch 08 and 09? Patch 08 depends on the KASAN symbol
in the Kconfig option of SANDBOX_UNWIND, but this symbol is introduced
in patch 09..


> 
> Sascha
> 
> 


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
