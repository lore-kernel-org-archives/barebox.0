Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSIyC-0006o3-DY
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 09:50:54 +0000
Date: Thu, 29 Nov 2018 10:50:38 +0100
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20181129095038.t4s2gzvehvvfdd27@pengutronix.de>
References: <20181128112053.6027-1-m.tretter@pengutronix.de>
 <20181128161357.af3564140bf084202355690a@gmail.com>
 <20181129081401.fjppgpeccvidy7eh@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181129081401.fjppgpeccvidy7eh@pengutronix.de>
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
Subject: Re: [PATCH v2 0/4] Xilinx Zynq Ultrascale+ MPSoC support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Michael Tretter <m.tretter@pengutronix.de>

On Thu, Nov 29, 2018 at 09:14:01AM +0100, Sascha Hauer wrote:
> On Wed, Nov 28, 2018 at 04:13:57PM +0300, Antony Pavlov wrote:
> > At the moment barebox uses SPDX identifiers in very few files.
> > 
> > Can we adopt Linux kernel licensing rules for barebox?
> > (https://github.com/torvalds/linux/blob/master/Documentation/process/license-rules.rst)
> 
> I really like the idea of using SPDX, but I never looked into what is
> necessary to use it. Adopt this license-rules file, change the headers
> in the files and be done with it?

"Necessary" depends. Having SPDX-License-Identifier tags in source files
is usually enough for people who know what SPDX is, but for all the
other people and to allow automated license compliance checks with
tools, we also need the rest what the kernel documentation describes.
I think forking that doc would be okay.

I stumbled into that problem already when I tried to package barebox for
Debian [1], the problem here is that the files in the barebox source
tree are historically grown and have different styles of headers and
other quirks in the formatting, which make it rather impossible to
throw it into tools to find out copyright holders. SPDX seems the way to
go for machine-readable license annotations, and many projects already
use it.

[1]: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=900958

 - Roland

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
