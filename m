Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f270.mail.ru ([217.69.128.231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGB1o-00041R-Pn
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 16:29:21 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Thu, 14 Mar 2013 20:29:11 +0400
Message-ID: <1363278551.867951799@f270.mail.ru>
In-Reply-To: <1363273593.4022.59.camel@mars>
References: <1363263561.4022.37.camel@mars> <1363268762.5588.1.camel@lovely>
 <1363273593.4022.59.camel@mars>
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
Subject: =?UTF-8?B?UmVbNV06IE9tYXA0IERTUyBjbG9ja3M=?=
To: =?UTF-8?B?Q2hyaXN0b3BoIEZyaXR6?= <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

> On Thu, 2013-03-14 at 14:46 +0100, Christoph Fritz wrote:
> > On Thu, 2013-03-14 at 14:33 +0100, Sascha Hauer wrote:
> 
> > > I wouldn't expect a bug in the code. This would have been discovered
> > > already.
> > 
> > Register CM_DSS_DSS_CLKCTRL (0x4a009120) reads 0x00070F02 and so the
> > field [17:16] IDLEST reads 0x3 which means "Module is disabled and
> > cannot be accessed". On linux, its 0x2 which means "functional".
> 
> I already asked about this on the TI E2E Community forum
> http://e2e.ti.com/support/omap/f/849/t/251717.aspx but without gaining
> success.
> 
> Overall, isn't it weird that DSS is offline (as indicated by IDLEST)?
> 
> I suppose in ./arch/arm/mach-omap/omap4_clock.c this check:
> 
> /* Check for DSS Clocks */
> while ((__raw_readl(0x4A009100) & 0xF00) != 0xE00)
> 	;
> 
> should get extended to also check for correct IDLEST ...which would
> currently end in an endless loop :)

I revised commands/mem. All correct in the code, so problem is not here.

About DSS: I cannot help you with this CPU, but here is one point from
OMAP4430TRM:
"The main access to all DSS registers is through the L3 interconnect.
The access through the L4_PER interconnect is provided for back software
compatibility."

Maybe it help you.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
