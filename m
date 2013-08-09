Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f361.i.mail.ru ([217.69.141.3])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V7gio-0004Gg-3f
 for barebox@lists.infradead.org; Fri, 09 Aug 2013 07:02:51 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Fri, 09 Aug 2013 11:02:26 +0400
Message-ID: <1376031746.511086137@f361.i.mail.ru>
In-Reply-To: <20130809065817.GY26614@pengutronix.de>
References: <1375868734-32357-1-git-send-email-s.hauer@pengutronix.de>
 <1375946248.679028165@f304.i.mail.ru>
 <20130809065817.GY26614@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?UmU6IFtQQVRDSF0gUmV2ZXJ0ICJBUk06IFVzZSBhcm1saW51eF9ib290cGFy?=
 =?UTF-8?B?YW1zIGFkZHJlc3MgZm9yIERUQiI=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> > > > On Wed, Aug 07, 2013 at 01:55:42PM +0400, Alexander Shiyan wrote:
> > > > > > This patch placed the flattened devicetree to armlinux_bootparams.
> > > > > > armlinux_bootparams normally is at SDRAM_START + 0x100. The kernels
> > > > > > initial page tables are normally at SDRAM_START + 0x4000, so the
> > > > > > flattened devicetree gets overwritten once it exceeds 0x3f00 bytes
> > > > > > which is quite common.
> > > > > > 
> > > > > > Revert this patch for now once a better solution can be found
> > > > > 
> > > > > In such a case, tree may be placed immediately after the kernel?
> > > > > It can also serve as an automatic option "ARM_APPENDED_DTB".
> > > > 
> > > > Did you actually stumbled over this problem? Normally the dtb is
> > > > allocated using malloc. The malloc region normally shouldn't overlap
> > > > with the kernels text region unless you are really tight of memory.
> > > > Was this on a clps711x?
> > > 
> > > I described it here:
> > > http://www.spinics.net/lists/u-boot-v2/msg15612.html
> > 
> > Seems this issue can be resolved by decrease MALLOC_SIZE.
> > 
> > ...
> >     0xc0380000 - 0xc077ffff (size 0x00400000) malloc space
> > ...
> 
> Does this mean you are fine with reverting the patch?

Unfortunately I cannot test this now.
In any case if this breaks other builds, yes, we should revert this.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
