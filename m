Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x235.google.com ([2a00:1450:400c:c09::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adZxR-00015Q-BY
 for barebox@lists.infradead.org; Wed, 09 Mar 2016 08:59:06 +0000
Received: by mail-wm0-x235.google.com with SMTP id l68so61152391wml.1
 for <barebox@lists.infradead.org>; Wed, 09 Mar 2016 00:58:44 -0800 (PST)
Date: Wed, 9 Mar 2016 09:58:37 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20160309085831.GA1563@omega>
References: <56D831C6.1010101@eurek.it>
 <8737s7ei86.fsf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8737s7ei86.fsf@gmail.com>
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
Subject: Re: Ethernet PHY KSZ9031 is not working
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org, gianluca <gianlucarenzi@eurek.it>

Hi,

On Thu, Mar 03, 2016 at 03:42:01PM +0100, Holger Schurig wrote:
> > USB Host-A has to be tested, but if I type:
> >
> >>> usb
> >> USB: scanning bus for devices...
> >> Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> >> 1 USB Device(s) found
> >
> > so I can suppose the host controller is working.
> 
> I'm unsure if that is correct. When you see the USB IDs of some
> connected devices then you be (a bit) sure(rer).
> 
> 
> > - DDR3 Memory Controller
> > Memtest is passing all tests. So I can suppose the timings are quite
> > good enough to use the Dynamic RAM correctly. I will do a stress test
> > later...
> 
> I had a system once where the memtest in barebox worked, but memtester
> from Linux found issues.
> 

do you know why memtester from Linux found issues?
Maybe we can grab some patterns from [0] and simple do the same what
linux does (inclusive disable caching).


My experience with memtester is:

I saw some people which use memtester under Linux and randomly
"MTD/filesystem broken" messages blobs out while running memtester. I would
guess that the memtester written in some memory mapped area of connected
NAND devices.

- Alex

[0] http://lxr.free-electrons.com/source/mm/memtest.c#L6

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
