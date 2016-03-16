Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x231.google.com ([2a00:1450:400c:c09::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1agAf3-0002Pz-5o
 for barebox@lists.infradead.org; Wed, 16 Mar 2016 12:34:50 +0000
Received: by mail-wm0-x231.google.com with SMTP id l68so186977691wml.0
 for <barebox@lists.infradead.org>; Wed, 16 Mar 2016 05:34:28 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
In-Reply-To: <20160309085831.GA1563@omega> (Alexander Aring's message of "Wed, 
 9 Mar 2016 09:58:37 +0100")
References: <56D831C6.1010101@eurek.it> <8737s7ei86.fsf@gmail.com>
 <20160309085831.GA1563@omega>
Date: Wed, 16 Mar 2016 13:34:24 +0100
Message-ID: <87zityiotr.fsf@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Ethernet PHY KSZ9031 is not working
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org, gianluca <gianlucarenzi@eurek.it>

Alexander Aring <alex.aring@gmail.com> writes:
> do you know why memtester from Linux found issues?

No, I actually didn't even look into the source code.

> I saw some people which use memtester under Linux and randomly
> "MTD/filesystem broken" messages blobs out while running memtester. I would
> guess that the memtester written in some memory mapped area of connected
> NAND devices.

In my case this wasn't the issue ... I don't have NAND in my hardware.

Later, when our hardware guy fixed layout and DDR3 timing values with
the Freescale tool, memtester worked perfectly. Barebox' memory test
however didn't show an error before the rework ... and afterwards also
not :-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
