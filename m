Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f26.mail.ru ([128.140.169.155])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USsEb-00049o-89
 for barebox@lists.infradead.org; Thu, 18 Apr 2013 17:02:58 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Thu, 18 Apr 2013 21:02:52 +0400
Message-ID: <1366304572.52315039@f26.mail.ru>
In-Reply-To: <20130418115918.GG1906@pengutronix.de>
References: <1366188021.710900767@f16.mail.ru>
 <1366283186.701174674@f366.mail.ru>
 <20130418115918.GG1906@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IEJvb3QgZnJvbSBTRCBmYWlsIGFmdGVyIDIwMTMuMDI=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Thu, Apr 18, 2013 at 03:06:26PM +0400, Alexander Shiyan wrote:
> > 
> > So. OK, I temporary patch my board and it working now.
> > Please forget about correct memory size, it is not true.
> > Size is incorrect. Both banks are enabled and size detected as 512M.
> > I think this size is programmed by flash_header:
> >   { .ptr_type = 4, .addr = 0x83fd9000, .val = 0xb2a20000, },
> >   { .ptr_type = 4, .addr = 0x83fd9008, .val = 0xb2a20000, },
> > 
> > After program NAND and start from NAND, size is still wrong...
> > So, what we can do it this case for proper operation? Disable second bank?
> 
> When writing the autodetection code I assumed that all boards correctly
> setup the SDRAM controller. Appearently I was wrong.
> 
> I suggest disabling the second chip select since it's not used on your
> board. However, I begin doubting that it was the right decision to
> depend on ram size detection.

Yes, disabling second bank is helps.
So, I repair my second board (same as first, but with real 512M of SDRAM).
Works, but of course memory is fixed at 256M. Tomorrow I will test current
2013.04 on this board since probably problem appears only on 256M-version.
Currently I think about return fixed table of memory in the board file or get
memory size by testing memory. In both cases we need to disable ESDCTL
module and now I do not know how make it better rather than simple remove
this module from Makefile.
Thanks.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
