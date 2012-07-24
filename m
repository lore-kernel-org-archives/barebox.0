Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Stl55-0007Pv-7b
 for barebox@lists.infradead.org; Tue, 24 Jul 2012 19:47:44 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1Stl4t-0004UM-9h
 for barebox@lists.infradead.org; Tue, 24 Jul 2012 21:47:31 +0200
Received: from ppp-62-216-192-135.dynamic.mnet-online.de ([62.216.192.135])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Tue, 24 Jul 2012 21:47:31 +0200
Received: from bernhard by ppp-62-216-192-135.dynamic.mnet-online.de with
 local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Tue, 24 Jul 2012 21:47:31 +0200
From: Bernhard Walle <bernhard@bwalle.de>
Date: Tue, 24 Jul 2012 21:47:22 +0200
Message-ID: <jumu48$on5$1@dough.gmane.org>
References: <juh698$uj7$1@dough.gmane.org>
 <20120723200526.GB30009@pengutronix.de>
Mime-Version: 1.0
In-Reply-To: <20120723200526.GB30009@pengutronix.de>
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
Subject: Re: Booting kernel from FAT partition on beagle board
To: barebox@lists.infradead.org

Am 23.07.12 22:05, schrieb Sascha Hauer:
> On Sun, Jul 22, 2012 at 05:29:44PM +0200, Bernhard Walle wrote:
>
> earlyprintk does not take options.

Ok, but IIRC it doesn't harm. However, I tried without that options and
it does't work.

> Have you enabled earlyprintk support in your config? At least you
> should something then.

Sure,

bwalle@kopernikus % grep EARLY_PR configs/beagle/kernelconfig-3.5
CONFIG_EARLY_PRINTK=y

Any ideas? How to debug (without JTAG)?


Regards,
Bernhard


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
