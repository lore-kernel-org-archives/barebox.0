Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from p02c12o147.mxlogic.net ([208.65.145.80])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIiYN-0003h5-T6
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 15:36:52 +0000
From: ANDY KENNEDY <ANDY.KENNEDY@adtran.com>
Date: Fri, 13 Apr 2012 15:37:04 +0000
Message-ID: <F9C551623D2CBB4C9488801D14F864C614B2F7@ex-mb1.corp.adtran.com>
Content-Language: en-US
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
Subject: I want to use Barebox
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

I first saw Barebox about a year ago, did a little poking around and
realized that this seems like the way to go for booting an embedded
system.  I am, however, meeting opposition to implementing Barebox in
our current system.  I need some help on questions I cannot answer.  If
you could, please take the time to answer the following few issues.

1)  I have a concern that barebox is not mainstream enough yet.

2)  I have a feeling we will always be porting everyone's bsp (that
    already has a working u-boot) to barebox.

3)  I also don't really see the real advantage over standard u-boot
    (what's the 'killer' application?).


From my point of view, the answer to 3 is clear:  It uses the Linux
kernel as part of the boot, it can house an initrd so that extending
the utilities of the bootloader will be easier to handle, etc.  If this
is in error, please correct me.

As for 1 & 2, these I just don't know about.  I'm guessing that anything
supported in either the Linux kernel or already in u-boot should be
fairly easy to port into Barebox.  Here, however, I have to define for
Mgt clearly what does "fairly" mean.

Thanks in advance for any help you can provide.

Andy

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
