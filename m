Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCyVd-00033t-E7
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 20:30:50 +0000
Received: from mail641.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 60944DC1E40
 for <barebox@lists.infradead.org>; Tue,  5 Mar 2013 21:41:48 +0100 (CET)
Date: Tue, 5 Mar 2013 21:29:50 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130305202950.GP23022@game.jcrosoft.org>
References: <1362498748.832582078@f53.mail.ru>
 <20130305190041.GB1906@pengutronix.de>
 <1362510919.493936441@f30.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362510919.493936441@f30.mail.ru>
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
Subject: Re: debug in PBL
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 23:15 Tue 05 Mar     , Alexander Shiyan wrote:
> > On Tue, Mar 05, 2013 at 07:52:28PM +0400, Alexander Shiyan wrote:
> > > Hello All.
> > > 
> > > I tried to compile latest bb.
> > > pcm038 + pbl + debug level 7
> > > 
> > > Compilation failed with following error:
> > >   LD      arch/arm/pbl/zbarebox
> > > arch/arm/mach-imx/built-in-pbl.o: In function `imx_nand_load_image':
> > > /home/git/bb-mar05/arch/arm/mach-imx/external-nand-boot.c:232: undefined reference to `printf'
> > > 
> > > How we should handle debug messages in PBL in this case?
> > 
> > Until recently the debug macro was defined empty, now it expands to
> > printf and only compiled away when the debug level is lower. It seems
> > we have to either drop the debug() calls in the pbl or add an empty
> > printf implementation.
> 
> As far i understand "__PBL__" condition should be used for this?
yes __PBL__ indicate you are compiled for the pbl target

Best Regards,
J.
> 
> ---
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
