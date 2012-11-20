Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TamYg-0006qZ-LW
 for barebox@lists.infradead.org; Tue, 20 Nov 2012 12:04:08 +0000
Date: Tue, 20 Nov 2012 07:03:58 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20121120080831.GE10369@pengutronix.de>
Message-ID: <alpine.DEB.2.02.1211200702001.26129@oneiric>
References: <alpine.DEB.2.02.1211190946120.13661@oneiric>
 <20121120080831.GE10369@pengutronix.de>
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
Subject: Re: where is tftp mounting documented in the source code?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Tue, 20 Nov 2012, Sascha Hauer wrote:

> On Mon, Nov 19, 2012 at 09:48:41AM -0500, Robert P. J. Day wrote:
> >
> >   perusing the wiki and ran across page on TFTP support:
> > http://wiki.barebox.org/doku.php?id=filesystems:tftp which suggests:
> >
> >   mount 192.168.1.1 tftp /mnt/tftp
>
> This was the original mount behaviour. This was recently changed to
> mount -t fstype <ip> /dir, mainly to allow making the fstype option
> optional for autodetecting the type. The wiki page is out of date
> here. As a sidenote I brought back the old behaviour as a
> compatibility option to not break old environments.

  so ... the wiki page should be updated to show both the old and new
behaviour?  and the "help mount" content should be extended as well?
what's the proper fix here?

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
