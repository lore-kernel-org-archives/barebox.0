Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaSeT-0006S8-MN
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 14:48:48 +0000
Received: from cpebcc8100fb8db-cmbcc8100fb8d8.cpe.net.cable.rogers.com
 ([174.116.196.46]:59253 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1TaSeS-0004kk-JN
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 09:48:44 -0500
Date: Mon, 19 Nov 2012 09:48:41 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1211190946120.13661@oneiric>
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
Subject: where is tftp mounting documented in the source code?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  perusing the wiki and ran across page on TFTP support:
http://wiki.barebox.org/doku.php?id=filesystems:tftp which suggests:

  mount 192.168.1.1 tftp /mnt/tftp
  bootm /mnt/tftp/uImage

but where is that documented in the source or help?  if i configure in
long help options, then i get:

barebox:/ help mount
Usage: mount [[-t <fstype] <device> <mountpoint>]
Mount a filesystem of a given type to a mountpoint.
If no fstype is specified, try to detect it automatically.
If no argument is given, list mounted filesystems.

which says nothing about tftp mounting.  where would someone already
running barebox bring up help info that explains the tftp mounting?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
