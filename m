Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.z9.com ([64.142.101.243])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4gUB-0000zK-A2
 for barebox@lists.infradead.org; Sun, 10 Feb 2013 23:39:06 +0000
Received: from GPontisPC by z9.com (MDaemon PRO v12.5.8)
 with ESMTP id md50000245161.msg
 for <barebox@lists.infradead.org>; Sun, 10 Feb 2013 15:38:45 -0800
From: "George Pontis" <GPontis@z9.com>
Date: Sun, 10 Feb 2013 15:38:41 -0800
Message-ID: <034201ce07e7$c23b9e90$46b2dbb0$@com>
MIME-Version: 1.0
Content-Language: en-us
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
Subject: Trouble booting kernel since 2012.12.1
To: barebox@lists.infradead.org

Having some trouble booting Linux from recent versions of barebox, and need
some pointers about where to look.

I'm working with custom hardware based on the i.MX53. It is roughly
comparable to the i.MX53 LOCO board, and I started with that board support
as a base for my own port. Up through barebox 2012.12.1 things were working
well. However, with the 2013.01 and 2013.02 releases I can't get the kernel
to boot successfully. It always hangs after displaying the arch number, but
before posting the message "Booting Linux on physical CPU 0". All the lines
displayed up to that point are identical. I have tried booting a kernel via
TFTP and root FS via NFS. Also with the rootfs loaded as an initrd. The same
barebox environment, kernel, and rootfs works in both modes when I'm running
2012.12.1 or 2012.11.

I see that a new environment has been introduced during this time, but did
not do anything to move over to it. Could this be the source of my problem,
or need I look elsewhere ?

George



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
