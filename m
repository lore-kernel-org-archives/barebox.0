Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f58.mail.ru ([217.69.128.75])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIQ3q-0004zV-IL
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 19:52:07 +0000
Received: from mail by f58.mail.ru with local (envelope-from
 <shc_work@mail.ru>) id 1SIQ3o-00068g-2U
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 23:52:04 +0400
Resent-Message-Id: <E1SIQ3o-00068g-2U.shc_work-mail-ru@f58.mail.ru>
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Thu, 12 Apr 2012 23:49:53 +0400
References: <1334247624-24896-2-git-send-email-shc_work@mail.ru>
 <1334247624-24896-1-git-send-email-shc_work@mail.ru>
 <20120412210415.3a0313e2@eb-e6520>
In-Reply-To: <20120412210415.3a0313e2@eb-e6520>
ReSent-To: barebox@lists.infradead.org
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Message-ID: <E1SIQ3u-00050I-BW@merlin.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCAyLzddIGkuTVg1MzogTW92ZSBzcGVjaWZpYyBpLk1Y?=
 =?UTF-8?B?NTMgc2lsaWNvbiBkZWZpbml0aW9ucyB0byBpbXg1My1yZWdzLmg=?=
To: barebox@lists.infradead.org

Hello.

...
> > +/* silicon revisions specific to i.MX53 */
> > +#define MX53_CHIP_REV_1_0	0x10
> > +#define MX53_CHIP_REV_2_0	0x20
> > +#define MX53_CHIP_REV_2_1	0x21
> > +
> >  #endif /* __MACH_IMX53_REGS_H */

> The goal was to move chip revision to imx-regs.h and remove them from
> other files (as MX25/35/51/53 seems to share the same pattern for chip
> revision)

Maybe you're right.
Then we need to add definitions for the MX51 versions in the same style?
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
