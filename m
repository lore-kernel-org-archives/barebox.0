Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnLE0-0000Sc-RS
 for barebox@lists.infradead.org; Mon, 13 Mar 2017 08:21:07 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <mol@pengutronix.de>) id 1cnLDe-0000Bk-Na
 for barebox@lists.infradead.org; Mon, 13 Mar 2017 09:20:42 +0100
Received: from mol by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <mol@pengutronix.de>) id 1cnLDe-0005RY-Fv
 for barebox@lists.infradead.org; Mon, 13 Mar 2017 09:20:42 +0100
Date: Mon, 13 Mar 2017 09:20:42 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20170313082042.clsq2tqito7tt7h7@pengutronix.de>
References: <20170303152759.GF4120@mail.ovh.net>
 <20170309143840.GJ4120@mail.ovh.net>
 <20170313072442.qmtz4xvytj745tww@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170313072442.qmtz4xvytj745tww@pengutronix.de>
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
Subject: Re: [PATCH 0/2] efivarfs: rework the filesystem to make it human
 readable
To: barebox@lists.infradead.org

Hi,

On Mon, Mar 13, 2017 at 08:24:42AM +0100, Sascha Hauer wrote:
> On Thu, Mar 09, 2017 at 03:38:40PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > 	Sascha is this one ok?
> 
> I asked Michael to have a look at this series, so far he didn't find
> time.

I'm not sure I like it this way. The old way matches what the Linux kernel
does so it's familiar. And the mix of guids and 'names' is rather
cluttered because they are not grouped separately.
Maybe keep the old version and add something like the by-name etc. symlinks
used in udev:

<guid-for-foo>-bar
<something>
  EFI
    [...]
  foo
    bar -> ../../<guid-for-foo>-bar


Michael

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
