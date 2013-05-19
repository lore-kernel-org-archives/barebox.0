Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ue5PT-00049j-Cp
 for barebox@lists.infradead.org; Sun, 19 May 2013 15:20:31 +0000
Date: Sun, 19 May 2013 17:20:10 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130519172010.14f28d69@skate>
In-Reply-To: <5198AE3B.4080204@gmail.com>
References: <1368400146-30443-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130519073403.GY32299@pengutronix.de>
 <5198883E.5080803@gmail.com>
 <20130519103936.GA32299@pengutronix.de>
 <5198AE3B.4080204@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH] of: add ranges address translation for default bus
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Dear Sebastian Hesselbarth,

On Sun, 19 May 2013 12:49:31 +0200, Sebastian Hesselbarth wrote:

> But I will not start working on it before Thomas finds some time to
> test/comment on the (not yet) published consolidation patches.

I had a look at them, and it looks great to me. The only problem that I
could see from a quick review is that your patch "arm: mvebu: introduce
common console UART config" breaks functional bisectability because it
moves the UART used for earlyprintk from 0xd0 to 0xf1, even though the
SoC and board code is not yet migrated to use the common lowlevel code
that does the remapping at 0xf1. I'm personally not overly choked if
the functional bisectability is broken at this point, but maybe Sascha
will.

I believe you should simply post your patches on the list, there's no
need to get a prior ack from me. Maybe we can simply ask Sascha to wait
for your opinion on my patches, and my opinion on your patches before
applying them? I very much prefer to see patches being posted publicly
rather than having those 'private' reviews. Sascha, are you ok?

Thanks for your work Sebastian!

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
