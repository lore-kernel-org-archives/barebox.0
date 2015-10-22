Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg001.nifty.com ([202.248.44.39]
 helo=conssluserg001-v.nifty.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zp6fZ-0005jh-FS
 for barebox@lists.infradead.org; Thu, 22 Oct 2015 03:36:02 +0000
Received: from mail-yk0-f180.google.com (mail-yk0-f180.google.com
 [209.85.160.180]) (authenticated)
 by conssluserg001-v.nifty.com with ESMTP id t9M3ZYul031831
 for <barebox@lists.infradead.org>; Thu, 22 Oct 2015 12:35:35 +0900
Received: by ykaz22 with SMTP id z22so71092915yka.2
 for <barebox@lists.infradead.org>; Wed, 21 Oct 2015 20:35:33 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150819143626.GJ18700@pengutronix.de>
References: <CAK7LNAQ5jJLpkszp5iT65zfcaQsfPqqvk0U=p+cB+E+tqN-oEQ@mail.gmail.com>
 <20150819143626.GJ18700@pengutronix.de>
Date: Thu, 22 Oct 2015 12:35:33 +0900
Message-ID: <CAK7LNATGFU2JrwhxMeYSuFm3pSGTUvo19AdJdf4q0ch4Hq7YbA@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
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
Subject: Re: [Question] device-tree-rebasing include path
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,


2015-08-19 23:36 GMT+09:00 Sascha Hauer <s.hauer@pengutronix.de>:
> Hi Masahiro,
>
> On Mon, Aug 10, 2015 at 08:05:59AM +0900, Masahiro Yamada wrote:
>> Hi Sascha,
>>
>> I have a question about the include path
>> of device-tree-rebasing.
>>
>>
>> When I saw scripts/Makefile.lib, I noticed that
>> "-I $(srctree)/dts/src" is included for pre-processor,
>> whereas "-i $(srctree)/dts/src/$(SRCARCH)" for DTC-native.
>>
>> The root of device-tree-rebasing is dts/src/ when we use '#include',
>> but dts/src/$(SRCARCH) when we use '/include/'
>>
>>
>> Is this intentional?
>
> Nope, this is not intentional. Currently there is no user for /include/ for
> something in dts/, so we could change this to be consistent without
> breaking anything.
>
> Sascha


OK, thanks.


I have sent a patch.



-- 
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
