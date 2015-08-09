Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg003.nifty.com ([202.248.44.41]
 helo=conssluserg003-v.nifty.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZOZff-0006u4-DU
 for barebox@lists.infradead.org; Sun, 09 Aug 2015 23:06:28 +0000
Received: from mail-yk0-f173.google.com (mail-yk0-f173.google.com
 [209.85.160.173]) (authenticated)
 by conssluserg003-v.nifty.com with ESMTP id t79N60b9017121
 for <barebox@lists.infradead.org>; Mon, 10 Aug 2015 08:06:01 +0900
Received: by ykdt205 with SMTP id t205so46330571ykd.1
 for <barebox@lists.infradead.org>; Sun, 09 Aug 2015 16:05:59 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 10 Aug 2015 08:05:59 +0900
Message-ID: <CAK7LNAQ5jJLpkszp5iT65zfcaQsfPqqvk0U=p+cB+E+tqN-oEQ@mail.gmail.com>
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
Subject: [Question] device-tree-rebasing include path
To: barebox@lists.infradead.org

Hi Sascha,

I have a question about the include path
of device-tree-rebasing.


When I saw scripts/Makefile.lib, I noticed that
"-I $(srctree)/dts/src" is included for pre-processor,
whereas "-i $(srctree)/dts/src/$(SRCARCH)" for DTC-native.

The root of device-tree-rebasing is dts/src/ when we use '#include',
but dts/src/$(SRCARCH) when we use '/include/'


Is this intentional?

In my opinion, #include and /include/
should be able to include files in the same way.


Here,

dtc_cpp_flags  = -Wp,-MD,$(depfile).pre -nostdinc  \
     -I$(srctree)/arch/$(SRCARCH)/dts/include      \
     -I$(srctree)/dts/include                      \
     -I$(srctree)/dts/src/                         \
     -undef -D__DTS__


cmd_dtc = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
      $(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
      -i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
      -i $(srctree)/dts/src/$(SRCARCH) \
      -d $(depfile).dtc $(dtc-tmp) ; \
      cat $(depfile).pre $(depfile).dtc > $(depfile)






-- 
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
