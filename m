Delivery-date: Mon, 27 Jan 2025 21:15:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcVWJ-005EsZ-2M
	for lore@lore.pengutronix.de;
	Mon, 27 Jan 2025 21:15:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcVWJ-0000mM-Lf
	for lore@pengutronix.de; Mon, 27 Jan 2025 21:15:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NHIS7ie33eg7it6dih84BVE4xRk2/fDMWoULw4WpVCE=; b=4AZPrV6FF1N52ksIrOPgf1f/jw
	jU0CSu3mN1ouPaQfUqQ4LmSfPgXP9WkocjvkiylKbKlTsp2DJ0PhF0ysh4/omnvK9MnwKUEmouh/H
	IF8i1mvQD2oHmlektASFk47IMRKWKs11/JeTeZseQt2oCLWK8ALj+OMCqe07KIXmWPc/Fs6SN2GBy
	BEBdJoF6MOsCgONpFk6nSXy85V0NCjcqlrVSW2mqi14QAnke4177pL/84lWVhvDz9GP7Aybl+UNFj
	SdiQspHGrDj2GPEZgg5aOp9F1GIXsxHGaPXMGpKHb9UOvn9utIEh+n/HEJ//FzbFvgW6kSpIS7Im+
	DWyxKpzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcVVn-00000003BV2-304F;
	Mon, 27 Jan 2025 20:15:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcVVk-00000003BTS-0gbj
	for barebox@lists.infradead.org;
	Mon, 27 Jan 2025 20:15:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tcVVi-0000eE-Fk; Mon, 27 Jan 2025 21:15:06 +0100
Message-ID: <10e36faf-7960-4e18-b977-492ad3101374@pengutronix.de>
Date: Mon, 27 Jan 2025 21:15:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Khem Raj <raj.khem@gmail.com>
Cc: barebox@lists.infradead.org, =?UTF-8?Q?Enrico_J=C3=B6rns?=
 <ejo@pengutronix.de>
References: <20250127195109.3928003-1-a.fatoum@pengutronix.de>
 <CAMKF1srm-7i871xqOxkaXZnwToPqGPws4BrzdV8OTvk1WiYuVw@mail.gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAMKF1srm-7i871xqOxkaXZnwToPqGPws4BrzdV8OTvk1WiYuVw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_121508_200267_20079838 
X-CRM114-Status: GOOD (  21.91  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH RFT v3] scripts: define _GNU_SOURCE for all source files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Khem,

On 27.01.25 21:00, Khem Raj wrote:
> On Mon, Jan 27, 2025 at 11:51 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>> musl doesn't define loff_t, unless _GNU_SOURCE is defined, which
>> we don't do everywhere and glibc didn't mind.
>>
>> This led to build errors with musl when code makes it into
>> scripts/ that uses loff_t. This was already fixed once e.g. in commit
>> c0d065fb0aa0 ("scripts: bareboximd: remove usage of loff_t").
>>
>> To fix this issue for good, let's define _GNU_SOURCE globally for all files.
>>
> 
> Since the project is using this define sporadically, it might not be
> concerning but
> It enables GNU-specific extensions and features and if you are
> targeting multiple platforms ( non-linux too )
> then you might want to check those platforms for supporting gnu
> extensions as well.

Good point. AFAICS, _GNU_SOURCE was defined to make asprintf available
and now loff_t. For non-Linux platforms, there's a

  #ifndef __linux__
  typedef long long loff_t;
  #endif

and asprintf was required on nearly all platforms anyways, because the
bundled device tree compiler source makes use of it.

I thus think that this change shouldn't break anything that worked before.
Supporting build on platforms that don't have asprintf might be nice, but
so far nobody complained about that.

Thanks,
Ahmad

> 
>> Link: https://lore.kernel.org/all/CAMKF1sqX7gFCEH78fHS+jkUSieL5crAU_RwAUO-daJL0u+fj0g@mail.gmail.com/
>> Fixes: 5171f4d0696f ("scripts: implement read_fd and pread_full for tools")
>> Suggested-by: Khem Raj <raj.khem@gmail.com>
>> Reported-by: Enrico Jörns <ejo@pengutronix.de>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> @Enrico, please give this a test. I only tested against glibc.
>>
>> v2 -> v3:
>>   - set _GNU_SOURCE instead of defining loff_t (Khem)
>> v1 -> v2:
>>   - include <linux/types.h> from scripts/common.h (Enrico)
>> v2 was here:
>>   https://lore.barebox.org/barebox/20250127143146.2965544-1-a.fatoum@pengutronix.de/T/#u
>> ---
>>  scripts/Makefile         | 4 ++++
>>  scripts/imx/imx-image.c  | 1 -
>>  scripts/imx/imx.c        | 1 -
>>  scripts/imx9image.c      | 1 -
>>  scripts/kernel-install.c | 1 -
>>  scripts/keytoc.c         | 1 -
>>  scripts/kwbimage.c       | 1 -
>>  7 files changed, 4 insertions(+), 6 deletions(-)
>>
>> diff --git a/scripts/Makefile b/scripts/Makefile
>> index a780f05bd90f..c1a5b4b74775 100644
>> --- a/scripts/Makefile
>> +++ b/scripts/Makefile
>> @@ -60,6 +60,10 @@ rk-usb-loader-target-userldlibs += `$(CROSS_PKG_CONFIG) --libs libusb-1.0`
>>
>>  userccflags += -I $(srctree)/$(src)/include -isystem $(srctree)/scripts/include
>>
>> +# We need to explicitly set the macro to empty, otherwise it's defined to =1
>> +userccflags += -D_GNU_SOURCE=""
>> +KBUILD_HOSTCFLAGS += -D_GNU_SOURCE=""
>> +
>>  subdir-y                       += mod
>>  subdir-y                       += imx
>>  subdir-$(CONFIG_DTC)           += dtc
>> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
>> index 9ba60dbc5b4c..a8ac34091fc0 100644
>> --- a/scripts/imx/imx-image.c
>> +++ b/scripts/imx/imx-image.c
>> @@ -1,7 +1,6 @@
>>  // SPDX-License-Identifier: GPL-2.0-or-later
>>  // SPDX-FileCopyrightText: 2013 Sascha Hauer, Pengutronix
>>
>> -#define _GNU_SOURCE
>>  #include <stdio.h>
>>  #include <unistd.h>
>>  #include <getopt.h>
>> diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
>> index 5ccc116cfe3c..26027f0f3548 100644
>> --- a/scripts/imx/imx.c
>> +++ b/scripts/imx/imx.c
>> @@ -1,7 +1,6 @@
>>  // SPDX-License-Identifier: GPL-2.0-or-later
>>  // SPDX-FileCopyrightText: 2016 Sascha Hauer, Pengutronix
>>
>> -#define _GNU_SOURCE
>>  #include <stdio.h>
>>  #include <stdlib.h>
>>  #include <string.h>
>> diff --git a/scripts/imx9image.c b/scripts/imx9image.c
>> index 53fb879882e8..61b7cc943f00 100644
>> --- a/scripts/imx9image.c
>> +++ b/scripts/imx9image.c
>> @@ -8,7 +8,6 @@
>>   *
>>   */
>>
>> -#define _GNU_SOURCE
>>  #include <stdio.h>
>>  #include <string.h>
>>  #include <stdlib.h>
>> diff --git a/scripts/kernel-install.c b/scripts/kernel-install.c
>> index d943f0288f39..240122f2d224 100644
>> --- a/scripts/kernel-install.c
>> +++ b/scripts/kernel-install.c
>> @@ -72,7 +72,6 @@
>>   *
>>   */
>>
>> -#define _GNU_SOURCE
>>  #include <stdio.h>
>>  #include <string.h>
>>  #include <stdlib.h>
>> diff --git a/scripts/keytoc.c b/scripts/keytoc.c
>> index c60df8a5f017..2a0d7c415bf0 100644
>> --- a/scripts/keytoc.c
>> +++ b/scripts/keytoc.c
>> @@ -9,7 +9,6 @@
>>   *
>>   */
>>  #pragma GCC diagnostic ignored "-Wdeprecated-declarations"
>> -#define _GNU_SOURCE
>>  #include <stdio.h>
>>  #include <string.h>
>>  #include <time.h>
>> diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
>> index 370c54c983b5..c58c80e5415f 100644
>> --- a/scripts/kwbimage.c
>> +++ b/scripts/kwbimage.c
>> @@ -30,7 +30,6 @@
>>   * headers in v1 images
>>   */
>>
>> -#define _GNU_SOURCE
>>  #include <stdio.h>
>>  #include <stdint.h>
>>  #include <sys/types.h>
>> --
>> 2.39.5
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


