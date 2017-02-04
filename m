Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cZyfH-0001mP-BG
 for barebox@lists.infradead.org; Sat, 04 Feb 2017 11:38:02 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <uol@pengutronix.de>) id 1cZycn-0004FV-RX
 for barebox@lists.infradead.org; Sat, 04 Feb 2017 12:35:25 +0100
Received: from uol by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <uol@pengutronix.de>) id 1cZycn-0007CD-Ja
 for barebox@lists.infradead.org; Sat, 04 Feb 2017 12:35:25 +0100
Date: Sat, 4 Feb 2017 12:35:25 +0100
From: Ulrich =?iso-8859-1?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Message-ID: <20170204113525.rkyuqe6uvtjachnz@pengutronix.de>
References: <CAChPQeC3-EsvZ2s35qcVZL=gusSJf1FKivKjB=LR8LHR1F3POA@mail.gmail.com>
 <CAChPQeBZ0Qgb3a7bk_dJpUf74EB3PNZ9uTY7cVoJJBVt=d=WyA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAChPQeBZ0Qgb3a7bk_dJpUf74EB3PNZ9uTY7cVoJJBVt=d=WyA@mail.gmail.com>
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
Subject: Re: squashfs: corrupted kernel image when booting/reading from
 squashfs
To: barebox@lists.infradead.org

Hi Falco,

On Fri, Feb 03, 2017 at 12:24:47PM +0100, Falco Hyfing wrote:
> I try to boot a kernel-fit.itb from squashfs (xz compressed) volume while the
> same kernel-fit.itb is bootable from a fat volume:

currently barebox' squashfs driver seems to be broken if not used with lzo
compression: the symptom is barebox only reading the first squashfs block
correctly.

I looked into this some months ago, but did not manage to find and fix the bug
in reasonable time. As the barebox driver has been ported from the linux kernel,
the latter is a working reference to look at when debugging.

So you are welcome to hack on it and send patches. :)

Best regards
Ulrich
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
