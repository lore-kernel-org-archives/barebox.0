Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJEZD-00075b-BT
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 01:47:55 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id DB73EFF8875
 for <barebox@lists.infradead.org>; Sun, 15 Apr 2012 03:48:59 +0200 (CEST)
Date: Sun, 15 Apr 2012 03:29:49 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120415012949.GD30672@game.jcrosoft.org>
References: <20120414161509.GC30672@game.jcrosoft.org>
 <1334420262-4823-1-git-send-email-plagnioj@jcrosoft.com>
 <20120414195236.353b42df@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120414195236.353b42df@eb-e6520>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] beagle: add default env support
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 19:52 Sat 14 Apr     , Eric B=E9nard wrote:
> Le Sat, 14 Apr 2012 18:17:40 +0200,
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> =

> > update defconfig too to support oftree
> > =

> .../...
> > +# can be either 'nfs', 'tftp' or 'nand'
> > +kernel_loc=3Dnfs
> > +# can be either 'net', 'nand' or 'initrd'
> > +rootfs_loc=3Dnet
> > +# can be either 'nfs', 'tftp', 'nand' or empty
> > +oftree_loc=3Dnfs
> > +
> I understand that NFS can be useful for development, but I think we
> should have a default configuration for the "standard" way to use the
> board. In the present case, this is booting from a SDCard and not from
> NFS.
boot from SD card does not work barebox does not detect the SDCard on any
version

I try on via beagle c3
with 2GB and 8GB

where my loco deteect it both

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
