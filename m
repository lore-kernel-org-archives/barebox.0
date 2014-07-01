Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x22a.google.com ([2607:f8b0:4002:c01::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X1s2z-0006dA-T6
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 07:00:10 +0000
Received: by mail-yh0-f42.google.com with SMTP id i57so5744722yha.1
 for <barebox@lists.infradead.org>; Mon, 30 Jun 2014 23:59:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.11.1406301135120.14954@localhost>
References: <alpine.LFD.2.11.1406301135120.14954@localhost>
Date: Tue, 1 Jul 2014 08:59:47 +0200
Message-ID: <CAOpc7mFKJ-9diZS_=ziSeN24XHGJ4=7rTUxsKBv5jDXCqk_BsA@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: recommendation for ARM cross-compiler for building for beaglebone
 black?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

I don't have a clue if that is the "best" toolchain, but I'm using this:

#############################################################################
##  Toolchain
#############################################################################
# http://www.linaro.org/downloads/#008

GCC_LINARO_FILE=gcc-linaro-arm-linux-gnueabihf-4.8-2014.04_linux.tar.xz
GCC_LINARO_HTTP=http://releases.linaro.org/14.04/components/toolchain/binaries/
GCC_LINARO_DIR=gcc-linaro-arm-linux-gnueabihf-4.8-2014.04_linux
CROSS_COMPILE=`pwd`/$(GCC_LINARO_DIR)/bin/arm-linux-gnueabihf-

.PHONY:: toolchain
toolchain all:: $(GCC_LINARO_DIR)/STAMP

downloads:: downloads/$(GCC_LINARO_FILE)
downloads/$(GCC_LINARO_FILE):
        @test `id -u` != 0 || { echo "\n---> Not as root, dude!
($@)\n"; exit 1; }
        mkdir -p downloads
        wget -q -c -P downloads $(GCC_LINARO_HTTP)/$(GCC_LINARO_FILE)

$(GCC_LINARO_DIR)/STAMP: downloads/$(GCC_LINARO_FILE)
        @test `id -u` != 0 || { echo "\n---> Not as root, dude!
($@)\n"; exit 1; }
        tar xaf $<
        touch $@

Works okay with barebox and Linux.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
