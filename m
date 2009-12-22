Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NNBop-0004W2-3k
	for barebox@lists.infradead.org; Tue, 22 Dec 2009 20:59:02 +0000
Received: from cpe00142a336e11-cm001ac318e826.cpe.net.cable.rogers.com
	([174.113.191.234] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NNBon-0001gJ-5z
	for barebox@lists.infradead.org; Tue, 22 Dec 2009 15:58:57 -0500
Date: Tue, 22 Dec 2009 15:56:55 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912221552470.17516@localhost>
MIME-Version: 1.0
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
Subject: building for sandbox, warning: "__BIG_ENDIAN" is not defined
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  perhaps showing my ignorance of how big vs little endian should be
implemented, but in configuring and building the sandbox version, i
get:

...
  CC      common/environment.o
In file included from common/environment.c:37:
include/envfs.h:47:23: warning: "__BIG_ENDIAN" is not defined
...

  this isn't surprising since, as i read it, because this is x86_64,
it's the little-endian headers that are included, but the envfs.h
header contains the preprocessor checking:

#ifndef __BYTE_ORDER
#error "No byte order defined in __BYTE_ORDER"
#endif

#if __BYTE_ORDER == __LITTLE_ENDIAN
... snip ...
#elif __BYTE_ORDER == __BIG_ENDIAN
... snip ...

  clearly(?), depending on which endianness is being used, one or the
other of __LITTLE_ENDIAN or __BIG_ENDIAN won't be defined, right?  so,
no matter what, *one* of those tests is going to generate a warning.

  am i reading that correctly?  is there a proper way to handle
endianness that doesn't generate a preprocessor warning?  thanks.

rday
--

========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
