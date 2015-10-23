Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg002.nifty.com ([202.248.44.40]
 helo=conssluserg002-v.nifty.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZpWEL-0001ei-Kc
 for barebox@lists.infradead.org; Fri, 23 Oct 2015 06:53:38 +0000
Received: from mail-yk0-f172.google.com (mail-yk0-f172.google.com
 [209.85.160.172]) (authenticated)
 by conssluserg002-v.nifty.com with ESMTP id t9N6r5Si026984
 for <barebox@lists.infradead.org>; Fri, 23 Oct 2015 15:53:06 +0900
Received: by ykaz22 with SMTP id z22so109926460yka.2
 for <barebox@lists.infradead.org>; Thu, 22 Oct 2015 23:53:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20151022131655.GP14356@pengutronix.de>
References: <1445484848-32599-1-git-send-email-yamada.masahiro@socionext.com>
 <20151022131655.GP14356@pengutronix.de>
Date: Fri, 23 Oct 2015 15:53:04 +0900
Message-ID: <CAK7LNATvFkEKXmKYNpvwHt8cXxHZ=Lj+hrA5kUz=em5+ix6dyw@mail.gmail.com>
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
Subject: Re: [PATCH 1/2] kbuild: fix DTC-native include path for dts/ directory
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha,



Sorry, this problems seem to happen both #include and /include/
are used in mixture.

I will re-consider how they should be handled.

Disregard my patches for now.

Masahiro



2015-10-22 22:16 GMT+09:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Thu, Oct 22, 2015 at 12:34:06PM +0900, Masahiro Yamada wrote:
>> For the pre-processor to include sources below dts/ directory,
>> -I$(srctree)/dts/src is specified as an include path.  On the other
>> hand, for the DTC-native, -i $(srctree)/dts/src/$(SRCARCH) is
>> currently specified.
>>
>> Theoretically, the pre-processor style (#include) and DTC-native
>> style (/include/) should work with the same include paths.
>>
>> Currently, there are no users for the latter, so we can fix it safely.
>>
>> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
>> ---
>>
>>  scripts/Makefile.lib | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
>> index e991f33..c529d15 100644
>> --- a/scripts/Makefile.lib
>> +++ b/scripts/Makefile.lib
>> @@ -258,7 +258,7 @@ quiet_cmd_dtc = DTC     $@
>>  cmd_dtc = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
>>       $(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
>>               -i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
>> -             -i $(srctree)/dts/src/$(SRCARCH) \
>> +             -i $(srctree)/dts/src/ \
>>               -d $(depfile).dtc $(dtc-tmp) ; \
>>       cat $(depfile).pre $(depfile).dtc > $(depfile)
>
> Seems there are indeed users for this. This patch breaks these defconfigs:
>
>  config:     arm              am335x_defconfig
> FATAL ERROR: Couldn't open "am33xx-clocks.dtsi": No such file or directory
> scripts/Makefile.lib:266: recipe for target 'arch/arm/dts/am335x-bone-common.dtb' failed
> make[1]: *** [arch/arm/dts/am335x-bone-common.dtb] Error 1
> make[1]: *** Waiting for unfinished jobs....
> FATAL ERROR: Couldn't open "am33xx-clocks.dtsi": No such file or directory
> scripts/Makefile.lib:266: recipe for target 'arch/arm/dts/am335x-afi-gf.dtb' failed
> make[1]: *** [arch/arm/dts/am335x-afi-gf.dtb] Error 1
> Makefile:772: recipe for target 'arch/arm/dts' failed
> make: *** [arch/arm/dts] Error 2
> make: *** Waiting for unfinished jobs....
>
>
>  config:     arm              am335x_mlo_defconfig
> FATAL ERROR: Couldn't open "am33xx-clocks.dtsi": No such file or directory
> scripts/Makefile.lib:266: recipe for target 'arch/arm/dts/am335x-afi-gf.dtb' failed
> make[1]: *** [arch/arm/dts/am335x-afi-gf.dtb] Error 1
> make[1]: *** Waiting for unfinished jobs....
> FATAL ERROR: Couldn't open "am33xx-clocks.dtsi": No such file or directory
> scripts/Makefile.lib:266: recipe for target 'arch/arm/dts/am335x-bone-common.dtb' failed
> make[1]: *** [arch/arm/dts/am335x-bone-common.dtb] Error 1
> Makefile:772: recipe for target 'arch/arm/dts' failed
> make: *** [arch/arm/dts] Error 2
> make: *** Waiting for unfinished jobs....
>
>
>  config:     arm              mvebu_defconfig
> FATAL ERROR: Couldn't open "skeleton64.dtsi": No such file or directory
> scripts/Makefile.lib:266: recipe for target 'arch/arm/dts/armada-xp-gp-bb.dtb' failed
> make[1]: *** [arch/arm/dts/armada-xp-gp-bb.dtb] Error 1
> make[1]: *** Waiting for unfinished jobs....
> FATAL ERROR: Couldn't open "skeleton64.dtsi": No such file or directory
> scripts/Makefile.lib:266: recipe for target 'arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dtb' failed
> make[1]: *** [arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dtb] Error 1
> FATAL ERROR: Couldn't open "skeleton64.dtsi": No such file or directory
> scripts/Makefile.lib:266: recipe for target 'arch/arm/dts/armada-370-mirabox-bb.dtb' failed
> make[1]: *** [arch/arm/dts/armada-370-mirabox-bb.dtb] Error 1
> Makefile:772: recipe for target 'arch/arm/dts' failed
> make: *** [arch/arm/dts] Error 2
> make: *** Waiting for unfinished jobs....
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



-- 
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
