Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2alu-0004tU-HX
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 06:45:31 +0000
Date: Thu, 3 Jul 2014 08:45:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140703064504.GN14257@pengutronix.de>
References: <alpine.LFD.2.11.1407021457320.4254@localhost>
 <CAOpc7mEjkLo6Z12tVVH8PeY3Pv6JkoY0TXH_kz82jwbDjzW9tg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mEjkLo6Z12tVVH8PeY3Pv6JkoY0TXH_kz82jwbDjzW9tg@mail.gmail.com>
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
Subject: Re: real pedantic whining: "devicetree" isn't really a single word
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Wed, Jul 02, 2014 at 10:12:33PM +0200, Holger Schurig wrote:
> Oh, please bear with us germans, indians, italians and whoever we are
> with our limited pidgin-english knowledge.
> 
> No, to turn it the other way around: it's great that a native-english
> speaker with knowledge and taste of the language goes over the
> documentation.
> 
> And at least it's now called "device tree", and no longer just "of"
> (from open firmware) :-)

Yeah, naming functions of_* is one thing, but writing of in text
looks just ugly and confusing. Writing OF is only slightly better.
Speaking of "device tree" is surely better, but unfortunately this is such
a generic term. What else do we have?

- Flat Device Tree (FDT), describes the binary format
- Device Tree Blob (DTB), same as FDT
- Device Tree Source (DTS)

There's just no good name for this mechanism.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
