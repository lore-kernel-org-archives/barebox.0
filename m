Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f30.mail.ru ([217.69.129.95])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCxKe-0003Hl-8V
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 19:15:25 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Tue, 05 Mar 2013 23:15:19 +0400
Message-ID: <1362510919.493936441@f30.mail.ru>
In-Reply-To: <20130305190041.GB1906@pengutronix.de>
References: <1362498748.832582078@f53.mail.ru>
 <20130305190041.GB1906@pengutronix.de>
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
Subject: =?UTF-8?B?UmVbMl06IGRlYnVnIGluIFBCTA==?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Tue, Mar 05, 2013 at 07:52:28PM +0400, Alexander Shiyan wrote:
> > Hello All.
> > 
> > I tried to compile latest bb.
> > pcm038 + pbl + debug level 7
> > 
> > Compilation failed with following error:
> >   LD      arch/arm/pbl/zbarebox
> > arch/arm/mach-imx/built-in-pbl.o: In function `imx_nand_load_image':
> > /home/git/bb-mar05/arch/arm/mach-imx/external-nand-boot.c:232: undefined reference to `printf'
> > 
> > How we should handle debug messages in PBL in this case?
> 
> Until recently the debug macro was defined empty, now it expands to
> printf and only compiled away when the debug level is lower. It seems
> we have to either drop the debug() calls in the pbl or add an empty
> printf implementation.

As far i understand "__PBL__" condition should be used for this?

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
