Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qa0-f42.google.com ([209.85.216.42])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZFw6-0005XI-3e
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 07:01:58 +0000
Received: by mail-qa0-f42.google.com with SMTP id b33so3967206qad.15
 for <barebox@lists.infradead.org>; Thu, 15 Nov 2012 23:01:56 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 16 Nov 2012 15:01:55 +0800
Message-ID: <CAG9dEfJuCxdatiXCK-iWK=hOFEPJ8rjwB_SfC0uOBH5WT_tyzQ@mail.gmail.com>
From: Kevin Huanpeng Du <q24688@gmail.com>
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
Subject: common.h dependence leak
To: barebox@lists.infradead.org

Hi, all:
I am study barebox, I want to remove all files not used, so I write this script.
here is a part of removing header (.h) files.
firstly, I didnot add LINE22 for speed.
but it not works for common.h.
I guess the file 'include/common.h' is leak of dependence in Makefiles.
Is anyone can check.

 1
  2 git checkout -f
  3 git clean -dfx
  4
  5
  6 hh=`find -name "*.h"`
  7
  8
  9 echo "CLEAN"
 10 make distclean  2>/dev/null 1>/dev/null
 11 wait
 12 echo "CONFIG"
 13 make -s omap3530_beagle_xload_defconfig  2>/dev/null 1>/dev/null
 14 wait
 15
 16 echo "START"
 17 for f in $hh
 18 do
 19
 20   rm $f
 21   echo -n -e "        $f\r"
 22   make clean 2>/dev/null 1>/dev/null   # LINE 22
 23   wait
 24   make -s -j24 2>/dev/null 1>/dev/null
 25   r=$?
 26   wait
 27
 28   if [ $r != 0 ]
 29   then
 30     echo "[KEEP]"
 31     git checkout $f
 32   else
 33     echo "[DEL]"
 34   fi
 35
 36
 37 done
 38

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
